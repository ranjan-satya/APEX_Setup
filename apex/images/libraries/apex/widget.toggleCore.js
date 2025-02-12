/*!
 Copyright (c) 2014, 2024, Oracle and/or its affiliates.
 */

/**
 * Basic toggle logic to expand, collapse an arbitrary element using an arbitrary controlling element.
 *
 */

apex.ToggleCore = function( pOptions )  {
    "use strict";

    return (function( $ ) {
        pOptions = $.extend( {},
            {
                useSessionStorage: true,
                defaultExpandedPreference: false,
                onClick: function() {},
                onResize: function() {},
                onInitialize: function() {
                    if (userPreference) {
                        forceExpand();
                    } else {
                        forceCollapse();
                    }
                },
                onCollapse: function() {},
                onExpand: function() {},
                isPreferenceGlobal: false
            },
            pOptions
        );

        var key = pOptions.key,
            defaultExpandedPreference = pOptions.defaultExpandedPreference,
            onExpand = pOptions.onExpand,
            onCollapse = pOptions.onCollapse,
            onResize = pOptions.onResize,
            onClick = pOptions.onClick,
            onInitialize = pOptions.onInitialize,
            content = pOptions.content,
            contentClassExpanded = pOptions.contentClassExpanded,
            contentClassCollapsed = pOptions.contentClassCollapsed,
            controllingElement$ = pOptions.controllingElement,
            controllingElementSelector = pOptions.controllingElementSelector,
            useSessionStorage = pOptions.useSessionStorage,
            isPreferenceGlobal = pOptions.isPreferenceGlobal;

        var sessionStorage = apex.storage.getScopedSessionStorage(
            {
                prefix: "ORA_WWV_apex.toggleCore." + key,
                usePageId: !isPreferenceGlobal,
                useAppId: true
            }
        );

        var expanded = false;
        var userPreference = defaultExpandedPreference;
        // If local storage of the userPreference for this widget's contracted exists, get its value.
        if (useSessionStorage) {
            var storedContractedPreference = sessionStorage.getItem("preferenceForExpanded");
            if (storedContractedPreference) {
                userPreference = storedContractedPreference === 'true';
            }
        }
        //If the controlling element is not valid (null, undefined or empty, try using the controllingElement selector if it was passed in)
        if (!controllingElement$ || controllingElement$.length < 1) {
            controllingElement$ = $(controllingElementSelector);
        }
        // We can assume that the controlling element, if it exists, will always be the toggle function.
        if ( controllingElement$ ) {
            controllingElement$.on( "click", function (pEvent) {
                onClick.call(toggleCore);
                toggle();
                controllingElement$.trigger( "focus" );
                pEvent.preventDefault();
            });
        }
        // UserPreference, like expanded, ought not to be exposed/modified by objects outside toggleCore.
        var setUserPreference = function (pUserPreference) {
            userPreference = pUserPreference;
            // Because we know the user "wants" the button to be closed or open, we can set and store their preference here.
            if (useSessionStorage) {
                sessionStorage.setItem("preferenceForExpanded", userPreference);
            }
        };
        var forceExpand = function () {
            expanded = false;
            expand.call(toggleCore);
        };
        var forceCollapse = function () {
            expanded = true;
            collapse.call(toggleCore);
        };

        var expand =  function (pUserWantsToSetPreference) {
            if (expanded) {
                return;
            } //You cannot expand a ToggleCore if it is already expanded.
            expanded = true;
            if (pUserWantsToSetPreference) {
                setUserPreference(expanded);
            } // Sometimes a ToggleCore may be expanded without a user's intention.
            // Not passing in whether or not the users wants that preference
            // is equivalent to no preference.
            content.removeClass(contentClassCollapsed).addClass(contentClassExpanded);
            onExpand();
        };
        var collapse = function (pUserWantsToSetPreference) {
            if (!expanded) {
                return;
            }
            expanded = false;
            if (pUserWantsToSetPreference) {
                setUserPreference(expanded);
            }
            content.addClass(contentClassCollapsed).removeClass(contentClassExpanded);
            onCollapse();
        };
        //"toggle" is assumed to called only when the user clicks the controlling element or by some intention of the user
        //Therefore we can set the preference for this expansion/collapsing.
        var toggle = function () {
            if (!expanded) {
                expand.call(toggleCore, true);
            } else {
                collapse.call(toggleCore, true);
            }
        };
        //Store the object literal so that all calls to its function occur within its namespace.
        var toggleCore = {
            "key": key,
            "setUserPreference" : setUserPreference,
            "doesUserPreferExpanded": function() {
                return userPreference;
            },
            "isExpanded": function () {
                return expanded;
            },
            "toggle": function() {
                toggle.call(toggleCore);
            },
            "expand": function () {
                expand.call(toggleCore);
            },
            "collapse": function() {
                collapse.call(toggleCore);
            },
            "forceExpand": forceExpand,
            "forceCollapse": forceCollapse,
            "resize": function() {
                onResize.call(toggleCore); // Is there a special function that should be executed on a resize event?
                // Note that this function and initialize are not directly related to the toggle logic.
                // They are attached nonetheless to toggleCore to allow for easy access to "me"
            },
            "initialize": function() {
                onInitialize.call(toggleCore); // Is there a special function that should be executed when the page starts?
            }
        };
        return toggleCore;
    } )( apex.jQuery );
};

// ToggleCore used to be a global (before APEX 24.1). Now it's under the apex namespace.
// For compatibility purposes, we still expose it as a global.
window.ToggleCore = apex.ToggleCore;