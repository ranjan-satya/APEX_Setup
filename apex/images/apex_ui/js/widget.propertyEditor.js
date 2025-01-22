/*!
 * Copyright (c) 2013, 2024, Oracle and/or its affiliates.
 */

/**
 * @fileOverview
 * Property Editor - A jQuery UI based widget for the APEX Property Editor
 * Turns a standard DIV element into a Property Editor:
 *   apex.jQuery( "#myDiv" ).propertyeditor();
 *
 * Depends:
 *    jquery.ui.core.js
 *    jquery.ui.widget.js
 *    jquery.ui.tooltip.js
 *    apex/util.js
 *    apex/debug.js
 *    apex/locale.js
 *    apex/lang.js
 */

 ( function ( $, util, debug, locale, lang ) {
  "use strict";

  const PROPERTY_EDITOR =                       "a-PropertyEditor",
      PROPERTY_EDITOR_WRAPPER =               PROPERTY_EDITOR + "-wrapper",
      SEL_PROPERTY_EDITOR_WRAPPER =           "." + PROPERTY_EDITOR_WRAPPER,
      PROPERTY_EDITOR_STACKED =               PROPERTY_EDITOR + "--stacked",
      PROPERTY_GROUP =                        PROPERTY_EDITOR + "-propertyGroup",
      SEL_PROPERTY_GROUP =                    "." + PROPERTY_GROUP,
      PROPERTY_EDITOR_MESSAGE =               PROPERTY_EDITOR + "-message",
      PROPERTY_EDITOR_MESSAGE_TEXT =          PROPERTY_EDITOR + "-messageText",
      PROPERTY_EDITOR_EDIT_PARENT =           PROPERTY_EDITOR + "-editParent",
      PROPERTY_EDITOR_FILTER =                PROPERTY_EDITOR + "-filter",
      STICKY_FILTER =                         'a-Button--stickyFilter',
      TOOLBAR_LEFT =                          "a-Toolbar-items--left",
      HAS_ACTIVE_FILTER =                     "has-active-filter",
      PROPERTY_GROUP_HEADER =                 PROPERTY_GROUP + "-header",
      SEL_PROPERTY_GROUP_HEADER =             "." + PROPERTY_GROUP_HEADER,
      PROPERTY_GROUP_BUTTON =                 PROPERTY_GROUP + "-button",
      PROPERTY_GROUP_TITLE =                  PROPERTY_GROUP + "-title",
      PROPERTY_GROUP_BODY =                   PROPERTY_GROUP + "-body",
      PROPERTY =                              "a-Property",
      PROPERTY_NOT_FOUND =                    PROPERTY + '-notFound',
      PROPERTY_STACKED =                      PROPERTY + "--stacked",
      PROPERTY_BUTTON_CONTAINER =             PROPERTY + "-buttonContainer",
      PROPERTY_BUTTON_CONTAINER_COMBOBOX =    PROPERTY_BUTTON_CONTAINER + "--comboBox",
      PROPERTY_LABEL_CONTAINER =              PROPERTY + "-labelContainer",
      PROPERTY_LABEL =                        PROPERTY + "-label",
      PROPERTY_LABEL_WITH_ICON =              PROPERTY_LABEL + "--withIcon",
      PROPERTY_RADIO_GROUP =                  PROPERTY + "-radioGroup",
      PROPERTY_RADIO_GROUP_PILL_BUTTONS =     PROPERTY_RADIO_GROUP + "--buttonSet",
      PROPERTY_RADIO =                        PROPERTY + "-radio",
      PROPERTY_RADIO_LABEL =                  PROPERTY_RADIO + "-label",
      PROPERTY_RADIO_INPUT =                  PROPERTY_RADIO + "-input",
      PROPERTY_CHECKBOX_GROUP =               PROPERTY + "-checkboxGroup",
      PROPERTY_CHECKBOX =                     PROPERTY + "-checkbox",
      PROPERTY_CHECKBOX_LABEL =               PROPERTY_CHECKBOX + "-label",
      PROPERTY_CHECKBOX_INPUT =               PROPERTY_CHECKBOX + "-input",
      PROPERTY_FIELD_CONTAINER =              PROPERTY + "-fieldContainer",
      PROPERTY_FIELD_CONTAINER_COMBOBOX =     PROPERTY_FIELD_CONTAINER + "--comboBox",
      PROPERTY_FIELD_CONTAINER_RADIOGROUP =   PROPERTY_FIELD_CONTAINER + "--radioGroup",
      PROPERTY_FIELD_CONTAINER_CHECKBOXGROUP =PROPERTY_FIELD_CONTAINER + "--checkboxGroup",
      PROPERTY_FIELD_CONTAINER_COLORPICKER =  PROPERTY_FIELD_CONTAINER + "--colorPicker",
      PROPERTY_FIELD_CONTAINER_YES_NO =       PROPERTY_FIELD_CONTAINER + "--switch",
      PROPERTY_FIELD =                        PROPERTY + "-field",
      PROPERTY_FIELD_READ_ONLY =              PROPERTY_FIELD + "--readOnly",
      PROPERTY_FIELD_TEXT =                   PROPERTY_FIELD + "--text",
      PROPERTY_FIELD_TEXTAREA =               PROPERTY_FIELD + "--textarea",
      PROPERTY_FIELD_SELECT =                 PROPERTY_FIELD + "--select",
      PROPERTY_FIELD_FILTER =                 PROPERTY_FIELD + "--filter",
      PROPERTY_UNIT_CONTAINER =               PROPERTY + "-unitContainer",
      PROPERTY_UNIT =                         PROPERTY + "-unit",
      PROPERTY_SCROLLABLE =                   PROPERTY + "--scrollable",
  //
      SHOW_ALL =                              "js-showAll",
  //
      BUTTON =                                "a-Button",
      BUTTON_SMALL =                          BUTTON + "--small",
      BUTTON_NO_LABEL =                       BUTTON + "--noLabel",
      BUTTON_WITH_FONT_ICON =                 BUTTON + "--withIcon",
      BUTTON_FULL =                           BUTTON + "--full",
      BUTTON_PRIMARY =                        BUTTON + "--primary",
      ICON_BUTTON =                           BUTTON + " " + BUTTON_SMALL + " " + BUTTON_NO_LABEL + " " + BUTTON_WITH_FONT_ICON,
  //
      IS_ACTIVE =                             "is-active",
      IS_FOCUSED =                            "is-focused",
      IS_ERROR =                              "is-error",
      IS_WARNING =                            "is-warning",
      IS_EXPANDED =                           "is-expanded",
      IS_VARIABLE =                           "is-variable",
      IS_EMPTY =                              "is-empty",
      IS_CHANGED =                            "is-changed",
      IS_DISABLED =                           "is-disabled",
  // icon classes
      ICON =                                  "a-Icon",
      ICON_EXPANDED =                         ICON + " icon-down-arrow",
      ICON_COLLAPSED =                        ICON + " icon-right-arrow",
      ICON_REQUIRED_FIELD =                   ICON + " icon-required",
      ICON_ERROR =                            ICON + " icon-error",
      ICON_WARNING =                          ICON + " icon-warning",
      ICON_LOV =                              ICON + " icon-popup-lov",
      ICON_VARIABLE =                         ICON + " icon-variable",
      ICON_QUICK_PICK =                       ICON + " icon-quick-pick",
      ICON_COLOR_PREVIEW =                    ICON + " icon-color-preview",
      ICON_LARGE =                            ICON + "--large",
      ICON_LARGE_WARNING =                    ICON + " " + ICON_LARGE + " icon-warning",
      ICON_EDIT_DIALOG =                      ICON + " icon-open-in-dialog",
  // utility classes
      VISUALLY_HIDDEN =                       "u-vh",
      DIALOG_FLUSH_BODY =                     "ui-dialog-flushBody",
      TEXT_LOWER =                            "u-textLower",
      TEXT_UPPER =                            "u-textUpper",
      cHIDE =                                 'u-hidden',
      PROPERTY_HIGHLIGHT =                    'a-Property-highlight',
  // ARIA attributes
      ARIA_LABEL =                            "aria-label",
      ARIA_DESCRIBEDBY =                      "aria-describedby",
      ARIA_HIDDEN =                           "aria-hidden",
      ARIA_CONTROLS =                         "aria-controls";

  const DATA_PROPERTY_ID =                      "data-property-id",
      DATA_GROUP_ID =                         "data-group-id";

  /*
   * These are the the basic property types supported by the
   * propertyEditor. It is possible to extend these by adding
   * new property types. See addPropertyType.
   */
  const PROP_TYPE = {
      COMBOBOX:        "COMBOBOX",
      NUMBER:          "NUMBER",
      INTEGER:         "INTEGER",
      SELECT_LIST:     "SELECT LIST",
      TEXT:            "TEXT",
      TEXTAREA:        "TEXTAREA",
      YES_NO:          "YES NO",
      PILL_BUTTONS:    "PILL BUTTONS",
      CHECKBOXES:      "CHECKBOXES",
      RADIOS:          "RADIOS",
      COLOR:           "COLOR",
      POPUP_LOV:       "POPUP LOV",
      STATIC_LOV_GRID: "STATIC LOV VALUES", // the grid in the static lov dialog
      STATIC_LOV_BTN:  "STATIC LOV", // the "Static Values" button under "List of Values" section of the Property Pane
      TPL_OPTIONS_BTN: "TEMPLATE OPTIONS", // Template Options button under the Appearance section
      LINK_TARGET_BTN: "LINK", // Target Button under the Link section
      LINK_ITEMS_GRID: "LINK SET ITEMS" // The grid in the link builder
  };

  var VALUE_VARIES = {}; // marker object indicates a property value that varies across multiple components

  let gMessagePrefix = "PE.";

  const hasOwnProperty = util.hasOwnProperty;

  // Global functions, used by both widget and property type plug-ins.
  function msg( pKey ) {
      return lang.getMessage( gMessagePrefix + pKey );
  }

  function format( pKey ) {
      var pattern = msg( pKey ),
          args = [ pattern ].concat( Array.prototype.slice.call( arguments, 1 ) );
      return lang.format.apply( this, args );
  }

  function formatNoEscape( pKey ) {
      var pattern = msg( pKey ),
          args = [ pattern ].concat( Array.prototype.slice.call( arguments, 1 ) );
      return lang.formatNoEscape.apply( this, args );
  }

  function renderDivOpen( out, pOptions ) {
      var lOptions = $.extend( {
          "class": "",
          style: ""
      }, pOptions );

      out.markup( "<div" );
      if ( lOptions.class ) {
          out.attr( "class", Array.isArray( lOptions.class ) ? lOptions.class.join( " " ) : lOptions.class );
      }
      if ( lOptions.style ) {
          out.attr( "style", lOptions.style );
      }
      out.markup( ">" );
  }
  function renderDivClose( out ) {
      out.markup( "</div>" );
  }
  function renderIcon( out, pIcon, pText ) {
      out.markup( "<span" )
          .attr( "class", pIcon )
          .attr( ARIA_HIDDEN, true )
          .markup( "></span>" );
      if ( pText ) {
          out.markup( "<span" )
              .attr( "class", VISUALLY_HIDDEN )
              .markup( ">" )
              .content( pText )
              .markup( "</span>" );
      }
  }

  function getIndeterminateMap( prop ) {
      var iMap = {},
          mData = prop.metaData;

      if ( mData && mData.multiSelectData && mData.multiSelectData.indeterminateMap ) {
          iMap = mData.multiSelectData.indeterminateMap;
      }

      return iMap;
  }

  function isValueVariable ( prop ) {
      var isVariable = false,
          propertyValue = prop.value,
          indeterminateMap;

      if ( propertyValue.constructor === Object && Object.keys( propertyValue ).length === 0 ) {
          // Note that {} === {} is false;
          // {} in prop.value could come from templateOptionsHelper.js
          // which is not equal to VALUE_VARIES in this file.
          isVariable = true;
      } else {

          indeterminateMap = getIndeterminateMap( prop );

          if ( hasOwnProperty( indeterminateMap, propertyValue ) ) {
              isVariable = indeterminateMap[ propertyValue ];
          }

      }

      return isVariable;
  }

  function makeGroupSelector( groupId ) {
      return "[" + DATA_GROUP_ID + "='" + util.escapeCSS( groupId ) + "']";
  }

  function makePropertySelector( propName ) {
      return "[" + DATA_PROPERTY_ID + "='" + util.escapeCSS( propName ) + "']";
  }

  function isKeyAllowed( { event, type }) {
      /* Base allowed keys are:
       * 8: backspace
       * 9: tab
       * 13: enter
       * 27: escape
       * 35: end
       * 36: home
       * 37,39: left cursor, right cursor
       * 45: insert
       * 46: delete
       * 48 to 57: 0 to 9 number keys
       * 96 to 105: 0 to 9 number keypad
       * 107: plus keypad
       * 109: minus keypad
       * 189: minus key
       * Based on prop type, more keys can be allowed
       */
      let allowedKeys = [8,9,13,27,35,36,37,39,45,46,48,49,50,51,52,53,54,55,56,57,96,97,98,99,100,101,102,103,104,105,107,109,189];

      // If prop type is number then allow comma or period
      if ( type === PROP_TYPE.NUMBER ) {
          const decimalSeparator = locale.getDecimalSeparator();
          if ( decimalSeparator === "." ) {
              allowedKeys.push( 190 ); // period
              allowedKeys.push( 110 ); // period keypad
          } else if ( decimalSeparator === "," ) {
              allowedKeys.push( 188 ); // comma
          }
      }

      return (
          // Allowed keys
          allowedKeys.includes(event.which) ||
          // Allow    Ctrl+A,    Ctrl+X,    Ctrl+C,    Ctrl+V
          // Allow Command+A, Command+X, Command+C, Command+V
          ((event.ctrlKey || event.metaKey) && ([65,67,86,88].includes(event.which)))
      );
  }



  var gPropertyTypes = {};

  // a property type should have as little access to the property editor as possible
  // It does not render the label.
  // It gets a base id that it can use to make other ids by adding a suffix but it
  // must use the id as is for at least one element this will be the element that it gets back
  // as input to some of the other calls.


  var gPropertyTypeBasePrototype = {
      // the property type interface
      renderDivOpen:  renderDivOpen,
      renderDivClose: renderDivClose,
      renderIcon:     renderIcon,
      stacked:        false,
      noLabel:        false,
      labelVisible:   true,
      render: function( /* out, id, prop, pLastComponents */ ) {         //todo pass both to pProperty and pElement
          // perhaps the default is a textarea?
      },
      init: function( pElement$, prop /*, pLastComponents */ ) {
          this.addKeyboardHandlersForVariesState( pElement$, prop );
          this.addTooltipsForErrors( pElement$, prop );
      },
      destroy: function( pElement$ /*, prop */ ) {
          // clean up event handlers
          pElement$.closest( "div." + PROPERTY ).off();
      },
      validate: function() {
          // Useful when a property type is required to validate itself, rather than when the validation is
          // handled externally
          // xxx default should return something?
      },
      setValue: function( pElement$, prop, pValue /*, pLastComponents */ ) {
          // This function, or any function that overrides it, should not update the prop's value or oldValue,
          //  nor should it trigger a change event, as that is handled outside of the individual props.
          // It should only update the prop's visual value.
          pElement$.val( pValue );
      },
      addValue: function( pElement$, prop, pValue ) {
          var i,
              lValueExists = false,
              lValue = pElement$.val(),
              lValues = ( lValue ) ? lValue.split( prop.metaData.multiValueDelimiter ) : [];

          for ( i = 0; i < lValues.length; i++ ) {
              if ( pValue === lValues[ i ] ) {
                  lValueExists = true;
                  break;
              }
          }

          if ( !lValueExists ) {
              lValues.push( pValue );
          }

          pElement$.val( lValues.join( prop.metaData.multiValueDelimiter ) );

      },
      getValue: function( pProperty$ ) {
          // get value of element in the property DIV with the data-property-id attribute
          var lValue = pProperty$.find( "[" + DATA_PROPERTY_ID + "]" ).val();

          // If property is in the value varies state, return the constant as the value
          //todo could this go in wrapper? depends on lValue="" check for non-standard types.
          if ( pProperty$.hasClass( IS_VARIABLE ) && lValue === "" ) {
              lValue = VALUE_VARIES;
          }
          return lValue;
      },
      getDisplayValue: function( prop /*, pLastComponents */ ) {
          return prop.value;
      },
      setFocus: function( pElement$ ) {
          pElement$[ 0 ].focus();
      },
      // end property type interface

      // rendering helpers

      renderCommonAttributes: function( out, id, prop ) {
          out.attr( "id", id )
              .attr( DATA_PROPERTY_ID, prop.propertyName )
              //.attr( "aria-describedby", "help" ) too noisy, because help is not ignored when help tab is hidden
              .optionalAttr( "aria-required", ( prop.metaData.isRequired ) ? "true" : null )
              .optionalAttr( "aria-invalid", ( prop.errors.length > 0 ) ? "true" : null );
      },
      //todo switch other callers of renderCommonAttributes to use commonAttributes interface
      commonAttributes: function( pProperty ) {
          var lCommonAttributes = {};
          lCommonAttributes[ DATA_PROPERTY_ID ] = pProperty.propertyName;
          // Commented out, as this is too verbose, still announcing help even when the help tab is not displayed
          // lCommonAttributes[ "aria-describedby" ] = "help";
          lCommonAttributes[ "aria-required" ] = ( pProperty.metaData.isRequired );
          lCommonAttributes[ "aria-invalid" ] = ( pProperty.errors.length > 0 );
          return lCommonAttributes;
      },

      // base render
      renderBase: function ( out, pOptions ) {
        var lAttr, lData,
            lOptions = $.extend( {
                id:         "",
                type:       "text",
                value:      "",
                inputClass: [],
                data:       {},
                readonly:   false,
                maxLength:  "",
                attributes: {}
            }, pOptions );

        out.attr( "id", lOptions.id )
            .attr( "type", lOptions.type )
            .attr( "value", lOptions.value )
            .optionalAttr( "readonly", lOptions.readonly );

        if ( lOptions.inputClass.length > 0 ) {
            out.attr( "class", Array.isArray( lOptions.inputClass ) ? lOptions.inputClass.join( " " ) : lOptions.inputClass );
        }

        if ( lOptions.maxLength ) {
            out.attr( "maxlength", lOptions.maxLength );
        }

        if ( lOptions.ariaDescribedBy ) {
            out.attr( "aria-describedby", lOptions.ariaDescribedBy );
        }

        if ( !$.isEmptyObject( lOptions.data ) ) {
            for ( lData in lOptions.data ) {
                if ( hasOwnProperty( lOptions.data, lData ) ) {
                    out.attr( "data-" + lData, lOptions.data[ lData ] );
                }
            }
        }

        if ( !$.isEmptyObject( lOptions.attributes ) ) {
            for ( lAttr in lOptions.attributes ) {
                if ( hasOwnProperty( lOptions.attributes, lAttr ) ) {
                    out.attr( lAttr, lOptions.attributes[ lAttr ] );
                }
            }
        }
    },

      // base render input
      renderBaseInput: function ( out, pOptions ) {
          out.markup( "<input" );
          this.renderBase( out, pOptions );
          out.markup( " />" );
      },

      renderText: function ( out, pId, pProperty, pOptions ) {
          var lOptions,
              lDisplayValue = pProperty.value,
              lReadonly = false,
              lClasses = [],
              lData = {},
              lIsVariable = ( lDisplayValue === VALUE_VARIES );

          pOptions = $.extend( {
              "class":        PROPERTY_FIELD_TEXT,
              type:           "text",
              textCase:       pProperty.metaData.textCase,
              manualEntry:    true,
              attributes:     {}
          }, pOptions );

          lClasses.push( PROPERTY_FIELD );
          lClasses.push( pOptions.class );

          // add text case class
          if ( pOptions.textCase ) {
              lClasses.push( this.getTextCaseClass( pOptions.textCase ) );
          }

          // set readonly related values
          if ( pProperty.metaData.isReadOnly ) {
              lReadonly = true;
              lClasses.push( PROPERTY_FIELD_READ_ONLY );

              // Only get value if we are not in multi-edit / value varies state
              if ( !lIsVariable ) {
                  lDisplayValue = gPropertyTypes[ pProperty.metaData.type ].getDisplayValue( pProperty );
              }
          }

          // When manual entry is disabled (popup lov), text field renders read-only and also sets a display value
          // based on the current property LOV metadata, by value
          if ( !pOptions.manualEntry ) {
              lReadonly = true;
              lClasses.push( PROPERTY_FIELD_READ_ONLY );

              // Only get values if we are not in multi-edit / value varies state
              // Don't perform an unnecessary AJAX call to get a display value for a null value
              if ( !lIsVariable && pProperty.value !== "" ) {
                  lData[ "return-value" ] = pProperty.value;
                  pProperty.metaData.lovValues( function( pLovValues ) {

                      var lDisplayValue,
                          lProperty$ = $( makePropertySelector( pProperty.propertyName ) );

                      if ( pLovValues.length > 0 && pLovValues[ 0 ].r === pProperty.value ) {
                          lDisplayValue = pLovValues[ 0 ].d;
                      } else {
                          lDisplayValue = pProperty.value;
                      }

                      gPropertyTypes[ pProperty.metaData.type ].setValue( lProperty$, pProperty, pProperty.value, this.options.data.lastComponents, lDisplayValue );

                  }, {
                      id: pProperty.value
                  } );
              }

          }

          // for multi-edit, deal with value varies state, overrides any other display value
          if ( lIsVariable ) {
              lDisplayValue = "";
              lClasses.push( IS_VARIABLE );
          }

          lOptions = {
              id:         pId,
              type:       pOptions.type,
              value:      lDisplayValue,
              inputClass: lClasses,
              data:       lData,
              attributes: $.extend( pOptions.attributes, this.commonAttributes( pProperty ) ),
              readonly:   lReadonly
          };

          // max length
          if ( pProperty.metaData.maxLen ) {
              lOptions.maxLength = pProperty.metaData.maxLen;
          }

          // Unit postfix
          if ( pProperty.metaData.unit ) {
              lOptions.ariaDescribedBy = lOptions.id + "_unit";
          }

          // Preview postfix
          if ( pOptions.hasPreview ) {
              lOptions.ariaDescribedBy = `${(lOptions.ariaDescribedBy ? " " : "" )}${lOptions.id}_preview`;
          }

          if ( pOptions.tagName ) {
            out.markup( `<${pOptions.tagName}` );
            this.renderBase( out, lOptions );
            out.markup( ">" );
            out.markup( `</${pOptions.tagName}>` );
          } else {
            this.renderBaseInput( out, lOptions );
          }
      },

      renderOption: function ( out, pLovValue, pCompareValue ) {
          out.markup( "<option" )
              .attr( "value", pLovValue.r )
              .optionalAttr( "selected", ( pLovValue.r === pCompareValue ) ? "true" : null );
          if ( hasOwnProperty( pLovValue, "isSupported" ) ) {
              out.attr( "data-is-supported", ( pLovValue.isSupported ) ? "true" : "false" );
          }
          if ( hasOwnProperty( pLovValue, "isLegacy" ) ) {
              out.attr( "data-is-legacy", ( pLovValue.isLegacy ) ? "true" : "false" );
          }
          out.markup( ">" )
              .content( pLovValue.d )
              .markup( "</option>" );

          return ( pLovValue.r === pCompareValue );
      },

      renderLovValues: function( out, pLovValues, pValue ) {
          var i,
              lLovValues  = pLovValues,
              lValueFound = false;

          if ( typeof lLovValues === "function" ) {
              lLovValues = lLovValues();
          }

          for ( i = 0; i < lLovValues.length; i++ ) {

              if ( hasOwnProperty( lLovValues[ i ], "group" ) ) {
                  out.markup( "<optgroup" )
                      .attr( "label", lLovValues[ i ].group )
                      .markup( ">" );
                  if ( this.renderLovValues( out, lLovValues[ i ].values, pValue ) ) {
                      lValueFound = true;
                  }
                  out.markup( "</optgroup>" );
              } else {
                  if ( this.renderOption( out, lLovValues[ i ], pValue ) ) {
                      lValueFound = true;
                  }
              }
          }
          return lValueFound;
      },

      renderIconButton: function( out, pOptions ) {
          let lOptions = $.extend( {
              id:              "",
              icon:            "",
              text:            "",
              ariaDescribedby: "",
              ariaControls:    "",
              dataFor:         null,
              disabled:        false,
              isMenuButton:    false,
              addContainer:    false,
              containerClass:  "",
              buttonClass:     ""
          }, pOptions );

          if ( lOptions.addContainer ) {
              this.renderDivOpen( out, {
                  "class": PROPERTY_BUTTON_CONTAINER + ( ( lOptions.containerClass ) ? " " + lOptions.containerClass: "" )
              } );
          }
          out.markup( "<button type='button'" )
              // See more details in bug 34975147
              // This is a workaround for the JAWS bug when buttons become not accessible in Forms mode
              // when rendered within a grid cell.
              // Filed to Vispero, reproducible in JAWS 2022 and 2023, once fixed, this line can be removed.
              // todo: retest using JAWS 2024
              .attr( "role", "button" )
              .attr( "id",    lOptions.id )
              .attr( "class", ICON_BUTTON + ( ( lOptions.buttonClass ) ? " " + lOptions.buttonClass : "" ) )
              .attr( "title", lOptions.text )
              .attr( ARIA_LABEL, lOptions.text )
              .optionalAttr( ARIA_DESCRIBEDBY, lOptions.ariaDescribedby )
              .optionalAttr( ARIA_CONTROLS, lOptions.ariaControls )
              .optionalAttr( "disabled", lOptions.disabled );
          if ( lOptions.dataFor ) {
              out.attr( "data-for", lOptions.dataFor );
          }
          if ( lOptions.isMenuButton ) {
              out.attr( "aria-haspopup", "true" )
                  .attr( "aria-expanded", "false" )
                  .attr( "data-menu", lOptions.id + "_menu" );
          }
          out.markup( ">" );
          this.renderIcon( out, lOptions.icon );
          out.markup( "</button>" );

          if ( lOptions.addContainer ) {
              this.renderDivClose( out );
          }
      },

      addValueVariesStateStyle: function( pElement$, pProperty$, pElementId, pThis ) {
          var outBefore = util.htmlBuilder(),
              outAfter = util.htmlBuilder();

          pElement$.addClass( IS_VARIABLE );
          pProperty$.addClass( IS_VARIABLE );

          pThis.renderIcon( outBefore, ICON_VARIABLE );
          outAfter.markup( "<span" )
              .attr( "class", VISUALLY_HIDDEN )
              .markup( ">" )
              .content( msg( "VALUE_VARIES_POSTFIX" ) )
              .markup( "</span>" );

          $( "#" + pElementId + "_label" )
              .prepend( outBefore.toString() )
              .append( outAfter.toString() );
      },

      removeValueVariesStateStyle: function( pElement$, pProperty$ ) {
          var lLabel$ = $( "#" + pElement$.attr( "id" ) + "_label" );

          pElement$.removeClass( IS_VARIABLE );
          pProperty$.removeClass( IS_VARIABLE );

          lLabel$
              .find( "span.icon-variable" )
              .remove()
              .end()
              .find( "span." + VISUALLY_HIDDEN )
              .remove();
      },

      addKeyboardHandlersForVariesState: function( pElement$, prop ) {
          var that, lProperty$, lElementId;

          // only add keyboard handlers if the property is editable
          if ( !prop.metaData.isReadOnly ) {
              that = this;
              lProperty$ = pElement$.closest( "div." + PROPERTY );
              lElementId = pElement$.attr( "id" );
              lProperty$
                  .on( "keydown", "#" + lElementId, function( pEvent ) {
                      var input$ = $( this );
                      if ( pEvent.which === $.ui.keyCode.ESCAPE && prop.value === VALUE_VARIES ) {

                          that.addValueVariesStateStyle( input$, lProperty$, lElementId, that );

                          setTimeout( function() {
                              input$[0].value = "";
                          }, 1 );
                      }
                  } ).on( "keypress", "#" + lElementId, function( pEvent ) {
                  var input$ = $( this );
                  if ( pEvent.which && input$.hasClass( IS_VARIABLE ) ) {
                      that.removeValueVariesStateStyle( input$, lProperty$ );
                  }
              } );
          }
      },

      addChangeHandlersForVariesState: function( pElement$, prop ) {
          var that, lProperty$, lElementId;

          // only add change handlers if the property is editable
          if ( !prop.metaData.isReadOnly ) {
              that = this;
              lProperty$ = pElement$.closest( "div." + PROPERTY );
              lElementId = pElement$.attr( "id" );
              lProperty$.on( "change", "#" + lElementId, function() {
                  var lElement$ = $( this ),
                      lValue = lElement$.val();


                  if ( lElement$.hasClass( IS_VARIABLE ) ) {
                      that.removeValueVariesStateStyle( lElement$, lProperty$ );
                  } else if ( lValue === "" && prop.value === VALUE_VARIES ) {
                      that.addValueVariesStateStyle( lElement$, lProperty$, lElementId, that );
                  }
              } );
          }
      },

      // Register tooltip handlers for this property
      //
      // At time of initialisation, if errors / warnings exists, the property is given a tooltip.
      //
      addTooltipsForErrors: function ( pElement$, prop ) {
          var lId = pElement$.attr( "id" );

          // Remove jQuery UI's default mouse over / out handling, we only want tooltips to appear on focus
          pElement$.tooltip().off( "mouseover mouseout" );

          if ( prop.errors.length > 0 ) {
              pElement$.tooltip( {
                  items: "#" + lId,
                  content: function( callback ) {
                      var lTooltipText, i;
                      lTooltipText = "<ul>";
                      for ( i = 0; i < prop.errors.length; i++ ) {
                          lTooltipText += "<li>" + prop.errors[ i ] + "</li>";
                      }
                      lTooltipText += "</ul>";
                      callback( lTooltipText );
                  },
                  position: {
                      my: "left bottom",
                      at: "left top",
                      of: "#" + lId + "_label"
                  }
              } );
          }
          if ( prop.warnings.length > 0 ) {
              pElement$.tooltip( {
                  items: "#" + lId,
                  content: function( callback ) {
                      var lTooltipText, i;
                      lTooltipText = "<ul>";
                      for ( i = 0; i < prop.warnings.length; i++ ) {
                          lTooltipText += "<li>" + prop.warnings[ i ] + "</li>";
                      }
                      lTooltipText += "</ul>";
                      callback( lTooltipText );
                  },
                  position: {
                      my: "left bottom",
                      at: "left top",
                      of: "#" + lId + "_label"
                  }
              } );
          }
      },

      initQuickPicks: function( pElement$, prop, append ) {
        let i, lMenuId, lMenuItem, lQuickPickMenu$;

        function action() {
            // ref to this is OK because action is called in context of menu item
            if ( append ) {
                pElement$.val( pElement$.val() + this.value ).trigger( "change" );
            } else {
                pElement$.val( this.value ).trigger( "change" );
            }
        }

        if ( prop.metaData.quickPicks && !prop.metaData.isReadOnly && prop.metaData.quickPicks()?.length ) {

            lMenuId = pElement$.attr( "id" ) + "_quickPickBtn_menu";

            lQuickPickMenu$ = $( "#" + lMenuId );

            if ( lQuickPickMenu$.length === 0 ) {

                // menu ID matches up with data-menu attribute value rendered by renderIconButton when isMenuButton is true
                lQuickPickMenu$ = $( "<div id='" + lMenuId + "'></div>" ).appendTo( "body" );
            }

            // Always re-init the items, irrespective of whether the menu already existed or not
            lQuickPickMenu$.menu( {
                items: [ {} ], // dummy item to initialize the menu
                beforeOpen: ( event, ui ) => {
                    let lQuickPicks = prop.metaData.quickPicks();
                    let lItems = [];
                    // If property is optional, add a quick pick option equal to the property's null value
                    if ( !prop.metaData.isRequired ) {
                        if ( prop.metaData.nullText === undefined ) {
                            lItems.push( {
                                type:   "action",
                                label:  msg( "QUICK_PICK.CLEAR" ),
                                hide: function() {
                                    // Hide null option when property is already null
                                    return ( pElement$.val() === "" );
                                },
                                action: function() {
                                    pElement$.val( "" ).trigger( "change" );
                                }
                            } );
                            lItems.push( {
                                type: "separator",
                                hide: function() {
                                    // Hide separator when property is already null
                                    return ( pElement$.val() === "" );
                                }
                            } );
                        } else {
                            // A null text which looks like a normal option should be handled like a regular value
                            // and always be displayed
                            lItems.push( {
                                type:   "action",
                                label:  prop.metaData.nullText,
                                action: function() {
                                    pElement$.val( "" ).trigger( "change" );
                                }
                            } );
                        }
                    }
                    for ( i = 0; i < lQuickPicks.length; i++ ) {
                        lMenuItem = {
                            type:   "action",
                            label:  lQuickPicks[ i ].d,
                            value:  lQuickPicks[ i ].r,
                            action
                        };
                        if ( lQuickPicks[i].icon ) {
                            lMenuItem.icon = lQuickPicks[i].icon;
                        }
                        if ( lQuickPicks[i].iconStyle ) {
                            lMenuItem.iconStyle = lQuickPicks[i].iconStyle;
                        }
                        // disable the no-columns-available entry
                        if ( lQuickPicks[i].r === "-" ) {
                            lMenuItem.disabled = true;
                        }

                        lItems.push( lMenuItem );
                    }
                    ui.menu.items = lItems;
                }
            } );

          // set flag in prop so it knows if it has initialised quick picks (used to optimised clean
          // up so we know which prop's need to have their quick pick menu's removed)
          prop.metaData.hasInitQuickPick = true;
        }
      },

      removeQuickPick: function( pElement$, prop ) {
          var lMenuId;

          // if the property has initialised quick picks, remove the corresponding quick pick menu DIV
          if ( prop.metaData.hasInitQuickPick ) {
              lMenuId = pElement$.attr( "id" ) + "_quickPickBtn_menu";
              $( "#" + lMenuId ).remove();
          }

      },

      addLabelClickHandler: function ( pElement$, prop ) {
          var that = this,
              lProperty$ = pElement$.closest( "div." + PROPERTY ),
              lElementId = pElement$.attr( "id" );

          lProperty$.on( "click", "#" + lElementId + "_label", function() {
              that.setFocus( pElement$, prop );
          } );
      },

      renderQuickPickButton: function( out, id, prop, pAddContainer ) {
          var lQuickPicks,
              lAddContainer = !!pAddContainer;

          if ( prop.metaData.quickPicks ) {
              lQuickPicks = prop.metaData.quickPicks();
              if ( !prop.metaData.isReadOnly ) {
                  if ( lQuickPicks.length >  0 ) {
                      this.renderIconButton( out, {
                          id:              id + "_quickPickBtn",
                          icon:            ICON_QUICK_PICK,
                          text:            msg( "QUICK_PICK" ),
                          ariaDescribedby: id + "_label",
                          ariaControls:    id,
                          isMenuButton:    true,
                          addContainer:   lAddContainer,
                          buttonClass:    "a-Button--quickPick"
                      } );
                  }
              }
          }
      },

      renderRadioCheckbox: function ( out, id, prop, type, pOptions ) {
          var lOptions,lId, lInputType, lInputDivClass, lInputClass, lLabelClass,
              isValueVaries     = $.isEmptyObject( prop.value ), // isValueVariable( prop ), //
              indeterminateMap  = getIndeterminateMap( prop ),

              // isVariable is used for data attribute on UI used
              // so init to can set indeterminate state for each checkbox
              isVariable = 'N';

          var isChecked = function( inputVal, currentVal ){
              var checked = false;

              if ( isValueVaries ) {

                  if ( indeterminateMap[ inputVal ] === true ) {

                      isVariable = 'Y';
                      checked = false;

                  } else {

                      isVariable = 'N';
                      checked = hasOwnProperty( indeterminateMap, inputVal );

                  }

              } else {
                  checked = $.inArray( inputVal, currentVal ) !== -1;
              }

              return checked;
          };

          if ( type === PROP_TYPE.CHECKBOXES ) {
              lInputType = "checkbox";
              lInputDivClass = PROPERTY_CHECKBOX;
              lInputClass = PROPERTY_CHECKBOX_INPUT;
              lLabelClass = PROPERTY_CHECKBOX_LABEL;
          } else {
              lInputType = "radio";
              lInputDivClass = PROPERTY_RADIO;
              lInputClass = PROPERTY_RADIO_INPUT;
              lLabelClass = PROPERTY_RADIO_LABEL;
          }

          lOptions = $.extend( {
              type: lInputType,
              name: id + "_name",
              inputValue: null,
              inputLabel: null,
              currentValue: !isValueVaries ? prop.value.split( ":" ) : prop.value
          }, pOptions );

          lId = id + lOptions.inputValue;

          this.renderDivOpen( out, { "class": lInputDivClass } );
          out.markup( "<input" )
              .attr( "type", lOptions.type )
              .attr( "id", lId )
              .attr( "value", lOptions.inputValue )
              .attr( "name", lOptions.name )
              .attr( "class", lInputClass )
              .attr( ARIA_LABEL, lOptions.inputLabel )
              .optionalAttr( "checked", isChecked( lOptions.inputValue, lOptions.currentValue ) )
              .optionalAttr( 'data-' + IS_VARIABLE, isValueVaries ? isVariable : null )
              .markup( " />" );
          out.markup( "<label" )
              .attr( "for", lId )
              .attr( "class", lLabelClass )
              .attr( ARIA_HIDDEN, "true" )
              .markup( ">" );
          if ( lOptions.icon ) {
              out.markup( '<span class="a-Icon ' + lOptions.icon + '"></span>' );
          } else {
              out.content( lOptions.inputLabel );
          }
          out.markup( "</label>" );
          this.renderDivClose( out );
      },

      renderRadiosCheckboxes: function ( out, id, prop, type ) {
          var i, lLovValues,
              lFieldContainerClass = [],
              lFieldGroupClass = [],
              lLabelId = id + "_label";

          lFieldContainerClass.push( PROPERTY_FIELD_CONTAINER );

          if ( type === PROP_TYPE.CHECKBOXES ) {
              lFieldContainerClass.push( PROPERTY_FIELD_CONTAINER_CHECKBOXGROUP );
              lFieldGroupClass.push ( PROPERTY_CHECKBOX_GROUP );
          } else if ( type === PROP_TYPE.RADIOS ) {
              lFieldContainerClass.push( PROPERTY_FIELD_CONTAINER_RADIOGROUP );
              lFieldGroupClass.push( PROPERTY_RADIO_GROUP );
          }

          this.renderDivOpen( out, { "class": lFieldContainerClass } );

          if ( !prop.metaData.isReadOnly ) {

              if ( prop.value === VALUE_VARIES ) {
                  lFieldGroupClass.push( IS_VARIABLE );
              }

              out.markup( "<div" )
                  .attr( "role", "group" )
                  .attr( "class", lFieldGroupClass.join( " " ) )
                  .attr( "aria-labelledby", lLabelId )
                  .attr( "tabindex", "-1" );              // todo review if this is still required if we use setFocus callback
              this.renderCommonAttributes( out, id, prop );
              out.markup( ">" );

              // use default lovValues unless this is a yes/no control then use specific values for that
              if ( prop.metaData.type !== PROP_TYPE.YES_NO ) {
                  lLovValues = prop.metaData.lovValues;
                  if ( typeof lLovValues === "function" ) {
                      lLovValues = lLovValues();
                  }

                  for ( i = 0; i < lLovValues.length; i++ ) {
                      this.renderRadioCheckbox( out, id, prop, type, {
                          inputValue: lLovValues[ i ].r,
                          inputLabel: lLovValues[ i ].d,
                          icon:       lLovValues[ i ].icon
                      } );
                  }
              } else {
                  this.renderRadioCheckbox( out, id, prop, type, {
                      inputValue: prop.metaData.yesValue,
                      inputLabel: msg( "YES" )
                  } );
                  this.renderRadioCheckbox( out, id, prop, type, {
                      inputValue: prop.metaData.noValue,
                      inputLabel: msg( "NO" )
                  } );
              }
              this.renderDivClose( out );     // close radioGroup

          } else {
              this.renderText( out, id, prop );
          }

          this.renderDivClose( out );     // close main prop DIV

      },

      getTextCaseClass: function ( pTextCase ) {
          var lClass = "";
          if ( pTextCase === "UPPER" ) {
              lClass = TEXT_UPPER;
          } else if ( pTextCase === "LOWER" ) {
              lClass = TEXT_LOWER;
          }
          return lClass;
      }

  };

  // Add new property type interface, creates new object that inherits from the base prototype
  function addPropertyType( pType, pOptions, pBaseType ) {
      var lBase, that;

      if ( pBaseType ) {
          lBase = gPropertyTypes [ pBaseType ];
      } else {
          lBase = gPropertyTypeBasePrototype;
      }

      if ( !pOptions && pBaseType ) {
          // just set up an alias to the base type
          gPropertyTypes[ pType ] = lBase;
          return;
      }

      that = $.extend( Object.create( lBase ), pOptions );
      // provide access to base type methods via super function
      // xxx I suspect that this can have trouble if the base type doesn't directly implement a method
      // C extends B extends A, A and C implement method foo, but B doesn't calling C.foo where C.foo calls the super foo ends up calling C.foo twice
      // I think
      that.super = ( function() {
          var slice = Array.prototype.slice,
              parentSuper = that.super;
          return function( methodName ) {
              var returnValue,
                  args = slice.call( arguments, 1 ),
                  temp = this.super;
              this.super = parentSuper;
              returnValue = lBase[methodName].apply( this, args );
              this.super = temp;
              return returnValue;
          };
      } )();
      gPropertyTypes[ pType ] = that;
  }

  /*
   * Add widget's core property types
   */
  addPropertyType( PROP_TYPE.TEXT, {
      render: function( out, id, prop, lastComponents, options ) {
          this.renderDivOpen( out, {
            "class": PROPERTY_FIELD_CONTAINER
          } );
          this.renderText( out, id, prop, options );
          this.renderDivClose( out );    // close PROPERTY_FIELD_CONTAINER
          this.renderQuickPickButton( out, id, prop, true );
      },
      init: function( pElement$, prop ) {
          this.initQuickPicks( pElement$, prop );
          this.super( "init", pElement$, prop );
      },
      destroy: function( pElement$, prop ) {
          this.removeQuickPick( pElement$, prop );
          this.super( "destroy", pElement$, prop );
      }
  } );

  addPropertyType( PROP_TYPE.NUMBER, {
      init: function( pElement$, prop, lastComponents ) {

          // Only add key handling if the property is editable
          if ( !prop.metaData.isReadOnly && !prop.metaData.supportsSubstitution ) {
              // Only allow certain keys through
              pElement$.on( "keydown", function( event ) {
                  if (!isKeyAllowed({event, type: PROP_TYPE.NUMBER})) {
                      event.preventDefault();
                  }
              } );
          }

          this.super( "init", pElement$, prop, lastComponents );
      }
  }, PROP_TYPE.TEXT );

  addPropertyType( PROP_TYPE.INTEGER, {
      init: function( pElement$, prop, lastComponents ) {

          // Only add key handling if the property is editable
          if ( !prop.metaData.isReadOnly && !prop.metaData.supportsSubstitution ) {
              // Only allow certain keys through, same as NUMBER but without the separators
              pElement$.on( "keydown", function( event ) {
                  if (!isKeyAllowed({event, type: PROP_TYPE.INTEGER})) {
                      event.preventDefault();
                  }
              } );
          }

          this.super( "init", pElement$, prop, lastComponents );
      }
  }, PROP_TYPE.TEXT );

  addPropertyType( PROP_TYPE.TEXTAREA, {
      stacked: true,
      render: function( out, id, prop, lastComponents, pHasExternalEdit ) {
          var lValue,
              lClasses = PROPERTY_FIELD + " " + PROPERTY_FIELD_TEXTAREA;

          this.renderDivOpen( out, { "class": PROPERTY_BUTTON_CONTAINER } );
          if ( pHasExternalEdit ) {
              this.renderIconButton( out, {
                  id:              id + "_modalBtn",
                  icon:            ICON_EDIT_DIALOG,
                  text:            msg( "CODE_EDITOR" ),
                  ariaDescribedby: id + "_label",
                  // The code editor button pointing to the edit field looks confusing. Therefore,
                  // the Code editor button points to the label of the edit field instead.
                  ariaControls:    id + "_label"
              } );
          }
          this.renderQuickPickButton( out, id, prop );
          this.renderDivClose( out );

          this.renderDivOpen( out, { "class": PROPERTY_FIELD_CONTAINER } );
          lValue = prop.value;
          if ( lValue === VALUE_VARIES ) {
              lValue = "";
              lClasses += " " + IS_VARIABLE;
          }

          lClasses += " " + this.getTextCaseClass( prop.metaData.textCase );

          // no wrap attribute defined, defaulting to 'soft' for plain textareas so wrapping is preserved
          out.markup( "<textarea rows=3" )
              .attr( "maxlength", prop.metaData.maxLen )
              .attr( "class", lClasses )
              .optionalAttr( "readonly", ( prop.metaData.isReadOnly ) ? "true" : null );
          this.renderCommonAttributes( out, id, prop );
          out.markup( ">" )
              .content( lValue )
              .markup( "</textarea>" );

          this.renderDivClose( out );    // close PROPERTY_FIELD_CONTAINER
      },
      init: function( pElement$, prop, lastComponents ) {
          var STANDARD_HEIGHT = 50,
              MAX_HEIGHT = 150,
              lScrollHeight = pElement$.prop( "scrollHeight" );

          // Does the textarea have content that produces scroll
          if ( lScrollHeight > STANDARD_HEIGHT ) {

              // If so, adjust the height, but within a maximum
              if ( lScrollHeight > MAX_HEIGHT ) {
                  lScrollHeight = MAX_HEIGHT;
              }
              pElement$.height( lScrollHeight );
          }
          this.initQuickPicks( pElement$, prop, true );
          this.super( "init", pElement$, prop, lastComponents );
      },
      destroy: function( pElement$, prop ) {
          this.removeQuickPick( pElement$, prop );
          this.super( "destroy", pElement$, prop );
      }

  } );
  addPropertyType( PROP_TYPE.COMBOBOX, {
      manualEntry: true,
      render: function( out, id, prop ) {

          this.renderDivOpen( out, {
              "class": [ PROPERTY_FIELD_CONTAINER, PROPERTY_FIELD_CONTAINER_COMBOBOX ]
          } );

          this.renderText( out, id, prop, {
              manualEntry: this.manualEntry
          } );

          this.renderDivClose( out );    // close PROPERTY_FIELD_CONTAINER

          this.renderIconButton( out, {
              id:              id + "_lovBtn",
              icon:            ICON_LOV,
              text:            msg( "LIST_OF_VALUES" ),
              ariaDescribedby: id + "_label",
              ariaControls:    id,
              addContainer:    true,
              containerClass: PROPERTY_BUTTON_CONTAINER_COMBOBOX
          } );

          this.renderQuickPickButton( out, id, prop, true );

      },
      init: function( pElement$, prop, lastComponents, options ) {
          var that = this,
              lOptions = $.extend( {
                  columnDefinitions: [
                      {
                          name:      "d",
                          title:     prop.metaData.prompt
                      }
                  ],
                  filters: [
                      {
                          name:  "search",
                          title: msg( "SEARCH" ),
                          type:  "search"
                      }
                  ],
                  filterLov: function( pFilters, pRenderLovEntries ) {

                      if ( typeof prop.metaData.lovValues === "function" ) {
                          prop.metaData.lovValues( function( pLovEntries ) {

                              // If manual entry is disabled and property is optional, we need a null text option
                              if ( !that.manualEntry && !prop.metaData.isRequired ) {
                                  pLovEntries.unshift( {
                                      r: "",
                                      d: ( prop.metaData.nullText !== undefined  ) ? prop.metaData.nullText : msg( "SELECT" )
                                  } );
                              }
                              pRenderLovEntries( pLovEntries, pFilters.search );
                          }, pFilters );

                      } else {

                          pRenderLovEntries( prop.metaData.lovValues, pFilters.search );

                      }

                  },
                  multiValue: false,
                  dialogTitle: formatNoEscape( "PICK", prop.metaData.prompt ), // escaping done by jQueryUI dialog
                  resizable: false,
                  resultsDisplay: "table"
              }, options );

          function openLovDialog() {
              var out = util.htmlBuilder();

              out.markup( "<div" )
                  .attr( "id", "lovDlg" )
                  .attr( "title", lOptions.dialogTitle )
                  .markup( ">" )
                  .markup( "</div>" );

              $( out.toString() ).lovDialog( {
                  modal:             true,
                  minWidth:          520,
                  height:            500,
                  filters:           lOptions.filters,
                  columnDefinitions: lOptions.columnDefinitions,
                  filterLov:         lOptions.filterLov,
                  dialogClass:       DIALOG_FLUSH_BODY,
                  resizable:         lOptions.resizable,
                  multiValue:        lOptions.multiValue,
                  valueSelected: function( pEvent, pData ) {
                      var lValue, lDisplayValue;

                      // If return value is not undefined use it (allow "" though hence why the undefined check),
                      // otherwise fallback to first column as defined by columnDefinitions
                      lValue = ( pData.r !== undefined ) ? pData.r : pData[ lOptions.columnDefinitions[ 0 ].name ];

                      // If manual entry is not allowed (popup lov), we need the display value as well
                      if ( !that.manualEntry ) {
                          lDisplayValue = ( pData.d ) ? pData.d : lValue;
                      }

                      if ( !prop.metaData.multiValueDelimiter ) {
                          that.setValue( pElement$, prop, lValue, lastComponents, lDisplayValue );
                      } else {

                          // Separate display value not currently supported for multi-value
                          that.super( "addValue", pElement$, prop, lValue );
                      }

                      pElement$.trigger( "change" );
                  },
                  resultsDisplay:    lOptions.resultsDisplay
              } );
          }

          var lLovButton$ = $( "#" + pElement$.attr( "id" ) + "_lovBtn" );
          this.super( "init", pElement$, prop, lastComponents );
          lLovButton$.on( "click", openLovDialog );

          // readonly state controls whether LOV button is disabled or not
          lLovButton$.prop( "disabled", prop.metaData.isReadOnly );

          this.initQuickPicks( pElement$, prop );
      },
      setValue: function( pElement$, prop, pValue, pLastComponents, pDisplayValue ) {

          if ( this.manualEntry ) {
              pElement$.val( pValue );
          } else {
              pElement$.data( "return-value", pValue );
              if ( pDisplayValue ) {
                  pElement$.val( pDisplayValue );
              }
          }

      },
      getValue: function( pProperty$ ) {
          var lValue;
          if ( this.manualEntry ) {
              lValue = this.super( "getValue", pProperty$ );
          } else {
              lValue = pProperty$.find( "[" + DATA_PROPERTY_ID + "]" ).data( "return-value" );
          }
          return lValue;
      },
      destroy: function( pElement$, prop ) {
          this.removeQuickPick( pElement$, prop );
          this.super( "destroy", pElement$, prop );
      }
  } );
  addPropertyType( PROP_TYPE.CHECKBOXES, {
      noLabel: true,
      render: function( out, id, prop ) {
          this.renderRadiosCheckboxes( out, id, prop, PROP_TYPE.CHECKBOXES );
      },
      init: function( pElement$, prop ) {

          this.addChangeHandlersForVariesState( pElement$, prop );
          this.addLabelClickHandler( pElement$, prop );
          this.addTooltipsForErrors( pElement$, prop );

          if ( !prop.metaData.isReadOnly ) {
              if ( $.isEmptyObject( prop.value ) && prop.value !== '' ) {
              // prop.value maybe an empty string if no checkbox selected
                  pElement$
                      .find( 'input[data-' + IS_VARIABLE + '=Y]' )
                      .prop( 'indeterminate', true );

                  pElement$
                      .find( 'input' )
                      .on( 'click', function(){
                          var components = prop.metaData.multiSelectData ? prop.metaData.multiSelectData.components : [],
                              propertyId = prop.propertyName === 'general' ? prop.propertyId : prop.propertyName,
                              indeterminateValues = [],
                              i;

                          var property;

                          var getIndeterminateValues = function(){
                              var indeterminateValues = [];

                              pElement$
                                  .find( 'input' )
                                  .each( function(){
                                      var cb$ = $( this );
                                      if ( cb$.prop( 'indeterminate' ) ) {
                                          indeterminateValues.push( cb$.val() );
                                      }
                                  } );

                              return indeterminateValues;
                          };

                          $( this )
                              .prop( 'indeterminate', false )
                              .removeAttr( 'data-is-variable' );

                          indeterminateValues = getIndeterminateValues();

                          for ( i = 0; i < components.length; i++ ){
                              property = components[ i ].getProperty( propertyId );
                              // trace back to the multi-selected components and store indetermined values in these properties
                              // so the value of this property can be calculated and saved separately for each component.
                              property._indeterminateValues = indeterminateValues;
                          }
                      } );
              }

          }

      },
      getValue: function( pProperty$ ) {
          var lValueArray = [];
          pProperty$.find( "input" ).each( function() {
              if ( this.checked ) {
                  lValueArray.push( this.value );
              }
          } );
          return lValueArray.join( ":" );
      },
      getDisplayValue: function( prop ) {
          var lLovValues, lReadOnlyDisplayValue, i,
              lReadOnlyDisplayValueArray = [],
              lPropertyValueArray = prop.value.split( ":" );

          lLovValues = prop.metaData.lovValues;
          if ( typeof lLovValues === "function" ) {
              lLovValues = lLovValues();
          }
          if ( lLovValues ) {
              for ( i = 0; i < lLovValues.length; i++ ) {
                  if ( $.inArray( lLovValues[ i ].r, lPropertyValueArray ) > -1 ) {
                      lReadOnlyDisplayValueArray.push( lLovValues[ i ].d );
                  }
              }
              lReadOnlyDisplayValue = lReadOnlyDisplayValueArray.join( ":" );
          }
          return lReadOnlyDisplayValue;
      },
      setValue: function( pElement$, prop, pValue ) {
          var lCheckboxes$ = pElement$.find( "input" ),
              lValues = pValue.split( ":" );

          lCheckboxes$.prop( "checked", false );

          lCheckboxes$.each( function () {
              var lCheckbox$ = $( this );
              if ( $.inArray( lCheckbox$.val(), lValues ) > -1 ) {
                  lCheckbox$.prop( "checked", true );
              }
          } );
      },
      setFocus: function( pElement$, pProperty ) {
          if ( !pProperty.metaData.isReadOnly ) {
              pElement$.find( ":input" )[ 0 ].focus();
          } else {
              pElement$[ 0 ].focus();
          }
      }
  } );
  addPropertyType( PROP_TYPE.RADIOS, {
      noLabel: true,
      render: function( out, id, prop ) {
          this.renderRadiosCheckboxes( out, id, prop, PROP_TYPE.RADIOS );
      },
      init: function( pElement$, prop ) {
          this.addChangeHandlersForVariesState( pElement$, prop );
          this.addLabelClickHandler( pElement$, prop );
          this.addTooltipsForErrors( pElement$, prop );
      },
      getValue: function( pProperty$ ) {
          var lValue = "";
          pProperty$.find( "input" ).each( function() {
              if ( this.checked ) {
                  lValue = this.value;
                  return false;
              }
          } );
          return lValue;
      },
      getDisplayValue: function( prop ) {
          var lLovValues, lReadOnlyDisplayValue, i;

          lLovValues = prop.metaData.lovValues;
          if ( typeof lLovValues === "function" ) {
              lLovValues = lLovValues();
          }
          if ( lLovValues ) {
              for ( i = 0; i < lLovValues.length; i++ ) {
                  if ( lLovValues[ i ].r === prop.value ) {
                      lReadOnlyDisplayValue = lLovValues[ i ].d;
                      break;
                  }
              }
          }
          return lReadOnlyDisplayValue;
      },
      setValue: function( pElement$, prop, pValue ) {
          var lRadios$ = pElement$.find( "input" );
          lRadios$.each( function () {
              var lRadio$ = $( this );

              if ( lRadio$.prop( "checked" ) ) {

                  // if current value is the same as the new value, exit and do nothing
                  if ( lRadio$.val() === pValue ) {
                      return false;
                  }

                  // if the radio is checked, uncheck it
                  lRadio$.prop( "checked", false );
              } else {

                  // if the radio is unchecked, check against the new value and if matches, check it
                  if ( lRadio$.val() === pValue ) {
                      lRadio$.prop( "checked", true );

                      // we have the new value, so exit each loop
                      return false;
                  }
              }
          } );
      },
      setFocus: function( pElement$, pProperty ) {
          if ( !pProperty.metaData.isReadOnly ) {
              pElement$.find( ":input" )[ 0 ].focus();
          } else {
              pElement$[ 0 ].focus();
          }
      }
  } );

  addPropertyType( PROP_TYPE.YES_NO, {
      init: function( pElement$, prop, lastComponents ) {
          this.super( "init", pElement$, prop, lastComponents );

          if ( !prop.metaData.isReadOnly ) {
              if ( prop.value === VALUE_VARIES ) {
                  pElement$.prop( "indeterminate", true );
              }
          }
      },
      getDisplayValue: function ( prop ) {
          return ( prop.metaData.yesValue === prop.value ) ? msg( "YES" ) : msg( "NO" );
      },
      render: function( out, id, prop ) {
          var lId,
          lFieldContainerClass = PROPERTY_FIELD_CONTAINER + " " + PROPERTY_FIELD_CONTAINER_YES_NO,
          lLabelId = id + "_label",
          lClasses = 'a-Switch';

          lId = id;

          this.renderDivOpen( out, { "class": lFieldContainerClass } );

          if ( !prop.metaData.isReadOnly ) {
              if ( prop.value === VALUE_VARIES ) {
                  lClasses += " " + IS_VARIABLE;
              }
              out.markup( "<label" )
                  .attr( "for", lId )
                  .attr( "class", lClasses )
                  .attr( "aria-labelledby", lLabelId )
                  .attr( "tabindex", "-1" )
                  .markup( ">" );
              out.markup( "<input" )
                  .attr( "type", "checkbox" )
                  .attr( "role", "switch" )
                  .attr( "id", lId )
                  .attr( DATA_PROPERTY_ID, prop.propertyName )
                  .attr( "value", prop.metaData.yesValue )
                  .optionalAttr( "checked", ( prop.value === prop.metaData.yesValue ? "true" : null ) )
                  .markup( " />" );
              out.markup( "<span class='a-Switch-toggle'></span>" );
              out.markup( "</label>" );
          } else {
              this.renderText( out, id, prop );
          }
          this.renderDivClose( out );
      },
      getValue: function( pProperty$, prop ) {
          var returnvalue;
          if ( pProperty$.find( "input" ).prop( "checked" ) ) {
              returnvalue = prop.metaData.yesValue;
          } else {
              returnvalue = prop.metaData.noValue;
          }
          return returnvalue;
      },
      setValue: function( pElement$, prop, pValue ){
          pElement$.prop( "checked", ( pValue === prop.metaData.yesValue ? "true" : null ) );
      },
      setFocus: function( pElement$ ) {
          pElement$[ 0 ].focus();
      }
  }, PROP_TYPE.CHECKBOXES );

  addPropertyType( PROP_TYPE.PILL_BUTTONS, {
      init: function( pElement$, prop, lastComponents ) {
          this.super( "init", pElement$, prop, lastComponents );
          // only give appearance of pill buttons if the property is editable, if readonly we just render a read-only text
          if ( !prop.metaData.isReadOnly ) {
              pElement$.addClass( PROPERTY_RADIO_GROUP_PILL_BUTTONS );
          }
      }
  }, PROP_TYPE.RADIOS );

  addPropertyType( PROP_TYPE.SELECT_LIST, {
      render: function( out, id, prop, lastComponents, pButton ) {
          var lClasses = PROPERTY_FIELD + " " + PROPERTY_FIELD_SELECT,
              lValue = prop.value,
              lValueFound = false,
              isValueVaries = isValueVariable( prop );

          this.renderDivOpen( out, { "class": PROPERTY_FIELD_CONTAINER } );

          if ( !prop.metaData.isReadOnly ) {
              if ( isValueVaries ) {
                  lClasses += " " + IS_VARIABLE;
              }

              out.markup( "<select size=1" )
                  .attr( "class", lClasses );
              this.renderCommonAttributes( out, id, prop );
              out.markup( ">" );
              if ( isValueVaries ) {
                  lValueFound = this.renderOption( out, {
                      r: "",
                      d: ""
                  }, "" );
                  if ( !prop.metaData.isRequired ) {
                      this.renderOption( out, {
                          r: "",
                          d: ( prop.metaData.nullText !== undefined  ) ? prop.metaData.nullText : msg( "SELECT" )
                      }, null );
                  }
                  lValue = "";
              } else {
                  // Add "- Select -" if it's an optional select list or a required select list has no value
                  if ( !prop.metaData.isRequired || lValue === "" ) {
                      lValueFound = this.renderOption( out, {
                          r: "",
                          d: ( prop.metaData.nullText !== undefined ) ? prop.metaData.nullText : msg( "SELECT" )
                      }, lValue );
                  }
              }
              // Add the current value as extra value if it wasn't contained in our LOV values
              if ( !this.renderLovValues( out, prop.metaData.lovValues, lValue ) && !lValueFound ) {
                  this.renderOption( out, {
                      r: lValue,
                      d: format( "INVALID", lValue )
                  }, lValue );
              }

              out.markup( "</select>" );
          } else {
              this.renderText( out, id, prop );
          }

          renderDivClose( out );    // close PROPERTY_FIELD_CONTAINER

          this.renderQuickPickButton( out, id, prop, true );

          if ( pButton ) {
              this.renderIconButton( out, {
                  id:           id + "_btn",
                  icon:         pButton.icon,
                  text:         pButton.text,
                  addContainer: true
              } );
          }

      },
      init: function( pElement$, prop ) {
          this.addChangeHandlersForVariesState( pElement$, prop );
          this.addTooltipsForErrors( pElement$, prop );
          this.initQuickPicks( pElement$, prop );
      },
      getDisplayValue: function( prop ) {
          var lLovValues, lReadOnlyDisplayValue;

          if ( prop.value !== "" ) {
              lLovValues = prop.metaData.lovValues;
              if ( typeof lLovValues === "function" ) {
                  lLovValues = lLovValues();
              }
              if ( lLovValues ) {
                  for ( let i = 0; i < lLovValues.length; i++ ) {
                    if ( hasOwnProperty( lLovValues[ i ], "values" ) ) {
                        for ( let j = 0; j < lLovValues[ i ].values.length; j++ ) {
                            if ( lLovValues[ i ].values[ j ].r === prop.value ) {
                                lReadOnlyDisplayValue = lLovValues[ i ].values[ j ].d;
                                break;
                            }
                        }
                    } else {
                        if ( lLovValues[ i ].r === prop.value ) {
                            lReadOnlyDisplayValue = lLovValues[ i ].d;
                            break;
                        }
                    }
                  }
              }
          } else {
              if ( prop.metaData.nullText ) {
                  lReadOnlyDisplayValue = prop.metaData.nullText;
              } else {
                  lReadOnlyDisplayValue = prop.value;
              }
          }
          return lReadOnlyDisplayValue;
      },
      destroy: function( pElement$, prop ) {
          this.removeQuickPick( pElement$, prop );
          this.super( "destroy", pElement$, prop );
      }
  } );

  addPropertyType( PROP_TYPE.COLOR, {
      render: function( out, id, prop ) {

          // Possible pre-defined color sets
          var COLORS = [
              "#FF3B30",
              "#FF9500",
              "#FFCC00",
              "#4CD964",
              "#34AADC",
              "#007AFF",
              "#5856D6",
              "#FF2D55",
              "#FFFFFF",
              "#C7C7CC",
              "#8E8E93",
              "#000000" ];
          // New standard colors from http://clrs.cc/
          //
          //    "#001f3f",
          //    "#0074d9",
          //    "#7fdbff",
          //    "#39cccc",
          //    "#3d9970",
          //    "#2ecc40",
          //    "#01ff70",
          //    "#ffdc00",
          //    "#ff851b",
          //    "#ff4136",
          //    "#85144b",
          //    "#f012be",
          //    "#b10dc9",
          //    "#ffffff",
          //    "#dddddd",
          //    "#aaaaaa",
          //    "#111111" ];
          //
          // HTML colors from http://en.wikipedia.org/wiki/Web_colors
          //
          //    "#ffffff",
          //    "#c0c0c0",
          //    "#808080",
          //    "#000000",
          //    "#ff0000",
          //    "#800000",
          //    "#ffff00",
          //    "#808000",
          //    "#00ff00",
          //    "#008000",
          //    "#00ffff",
          //    "#008080",
          //    "#0000ff",
          //    "#000080",
          //    "#ff00ff",
          //    "#800080" ];
          //

          // Note: We cannot use the HTML 5 color type support, as this doesn't allow null values

          this.renderDivOpen( out, {
              "class": [ PROPERTY_FIELD_CONTAINER, PROPERTY_FIELD_CONTAINER_COLORPICKER ]
          } );

          this.renderText( out, id, prop, {
              tagName: "a-color-picker",
              manualEntry: this.manualEntry,
              class: "apex-item-color-picker",
              attributes: {
                  'return-value-as': 'HEX',
                  'display-as': "POPUP",
                  'display-mode': "FULL"
              }
          } );

          this.renderDivClose( out );    // close PROPERTY_FIELD_CONTAINER

          // Add quick pick values here in color picker type (not derived from model)
          prop.metaData.quickPicks = function() {
              var i, lColorQuickPicks = [];
              for ( i = 0; i < COLORS.length; i++ ) {
                  lColorQuickPicks.push( {
                      //d: "<span class='" + PROPERTY_COLOR_PREVIEW + "' style='background-color:" + COLORS[ i ] + ";'>" + COLORS[ i ] + "</span>",
                      d: COLORS[ i ],
                      r: COLORS[ i ],
                      icon: ICON_COLOR_PREVIEW,
                      iconStyle: "color: " + COLORS[ i ] + ";"
                  } );
              }
              return lColorQuickPicks;

          };

          this.renderQuickPickButton( out, id, prop, true );
      },
      init: function( pElement$, prop, lastComponents ) {
          var lPropertyWrapper$ = pElement$.closest( '.' + PROPERTY );

          this.super( "init", pElement$, prop, lastComponents );

          apex.item.attach( lPropertyWrapper$ );

          this.initQuickPicks( pElement$, prop );
      },
      setValue: function( pElement$, prop, pValue ) {
          var lId = pElement$.attr( "id" );
          apex.item( lId ).setValue( pValue, null, true );
      },
      destroy: function( pElement$, prop ) {
          this.removeQuickPick( pElement$, prop );
          this.super( "destroy", pElement$, prop );
      }

  }, PROP_TYPE.TEXT );

  addPropertyType( PROP_TYPE.POPUP_LOV, {
      manualEntry: false,
      init: function( pElement$, prop, lastComponents ) {
          this.super( "init", pElement$, prop, lastComponents );
      }
  }, PROP_TYPE.COMBOBOX );

  /* xxx documentation
   * propertySet:
   * array of group objects
   * {
   *   displayGroupId: "string",
   *   collapsed: boolean,
   *   displayGroupTitle: "string",
   *   properties: [
   *     {
   *       propertyName:       "96",
   *       value:              "P1_ITEM1",
   *       errors:             [],         // array of strings xxx so far we only care about the count > 0
   *       warnings:           []          // array of strings xxx so far we only care about the count > 0
   *       metaData: {
   *         displayGroupId:   1,
   *         type:             "TEXT",     // one of PROP_TYPE above also index into dispatch map
   *         prompt:           "Name",
   *         isCommon:         true,
   *         isRequired:       true,
   *         // others, depending on their values, type, etc.
   *     }
   *   ]
   * }
   *
   */

  $.widget( "apex.propertyEditor", {
      /* Note about widgetEventPrefix:
       * jQuery UI documentation states that the widgetEventPrefix property is deprecated, as follows:
       * "This property is deprecated and will be removed in a later release. Event names will be changed to
       * widgetName:eventName (e.g. "draggable:create"."
       * See: http://api.jqueryui.com/jQuery.widget/
       *
       * I tested without widgetEventPrefix in 1.10.3, and event names still just default to widgetName + eventName,
       * (so "propertyeditoractivate", not "propertyeditor:activate"). I therefore believe it's safest to leave
       * that property definition in place for the moment, until the default behaviour is changed, when we can just
       * remove it here, and change the handlers in the controller to use colon separation between widget and event name.
       */
      widgetEventPrefix:      "propertyeditor",
      baseId:                 null,   // used to generate ids for DOM elements
      nextId:                 1,      // used to generate ids for DOM elements
      idMap:                  {},     // map of property names to ids
      propMap:                {},     // map of property names to property objects in propertySet
      deferredPropMap:        {},     // map of properties held to be updated when they become available again after switching to a different property editor and back.
      currentPropertyName:    null,   // current active property name
      hasSearchField:         false,  // flag the existence of search field
      // Default options
      options: {
          data: {     // object with propertySet and components properties
              propertySet:    [],     // this is the metadata that drives the UI
              lastComponents: null    // PE needs to know the last selected components, helps with displaying appropriate messaging and is passed to property type functions in case they need it
          },
          idPrefix:           null,
          showAll:            false,
          labelsAlwaysAbove:  false,
          hideDisplayGroups:  false,
          searchable:         false,  // creates a text field to filter group titles and properties
          searchKey:          null,   // store previously entered keywords
          pinSearch:          false,  // make searchKey persistent across all properties
          focusPropertyName:  null,   // xxx perhaps a set selection method would be better
          externalEdit:       null,   // use if component is to be edited somewhere else (function to handle redirect)
          // callbacks/events
          expand:             null,   // called when a display group is expanded. expand(event, group)
          collapse:           null,   // called when a display group is collapsed. collapse(event, group)
          activate:           null,   // called when a property is active for editing
          // activate( event, property )
          // property is a property from the propertySet or null
          // if there is no active property
          deactivate:         null,   // called when a property is no longer active. Same args as activate
          change:             null    // called when a property value changes
          // change(event, {
          //    propertyName: "string",
          //    property: {}, // from the propertySet
          //    value: any
          // } )
      },


      /*
       * Lifecycle methods
       */
      _create: function() {
          var o = this.options;

          if ( !o.data || !o.data.propertySet ) {
              throw new Error( "Missing required data option." );
          }

          this.baseId = ( o.idPrefix || this.element[0].id || "pe" ) + "_";

          this.element.addClass( PROPERTY_EDITOR );

          if ( this.options.showAll ) {
              this.element.addClass( SHOW_ALL );
          }

          this._on( this._eventHandlers );

          if ( this.options.searchable ) {
              this._on( this.element.prev(), this._SearchEventHandlers );
          }

          // now do the main fresh of the widget
          this.refresh();

          // if labels are always above, just add the stacked class
          if ( this.options.labelsAlwaysAbove ) {
              this.element.addClass( PROPERTY_EDITOR_STACKED );
          }
      },  // end _create

      _eventHandlers: {
          "click": function ( pEvent ) {
              var lGroup$ = null,
                  lTarget$ = $( pEvent.target );

              // Toggle group visibility
              if ( lTarget$.is( SEL_PROPERTY_GROUP_HEADER ) ) {
                  lGroup$ = lTarget$.parent();
              } else if ( lTarget$.parent( SEL_PROPERTY_GROUP_HEADER ).length > 0 ) {
                  lGroup$ = lTarget$.parent().parent();
              } else if ( lTarget$.parent().parent( SEL_PROPERTY_GROUP_HEADER ).length > 0 ) {
                  lGroup$ = lTarget$.parent().parent().parent();
              }
              if ( lGroup$ ) {
                  this._toggle( lGroup$ );
              }

              if ( lTarget$.attr( "id" ) === this.baseId + "externalEdit" ) {
                  this.options.externalEdit();
              }
          },
          "keydown": function ( pEvent ) {
              var next$ = null,
                  lHandled = false,
                  lKeys = $.ui.keyCode,
                  kc = pEvent.keyCode,
                  target$ = $( pEvent.target );

              if ( !target$.is( "." + PROPERTY_GROUP_BUTTON ) ) {
                  return;
              }
              if ( kc === lKeys.HOME ) {
                  next$ = target$.closest( SEL_PROPERTY_EDITOR_WRAPPER ).children( ":visible" ).first();
              } else if ( kc === lKeys.END ) {
                  next$ = target$.closest( SEL_PROPERTY_EDITOR_WRAPPER ).children( ":visible" ).last();
              } else if ( kc === lKeys.DOWN ) {
                  next$ = target$.closest( SEL_PROPERTY_GROUP ).nextAll().filter( ":visible" ).first();
                  // If last visible group, go to first
                  if ( next$.length === 0 ) {
                      next$ = target$.closest( SEL_PROPERTY_EDITOR_WRAPPER ).children( ":visible" ).first();
                  }
              } else if ( kc === lKeys.UP ) {
                  next$ = target$.closest( SEL_PROPERTY_GROUP ).prevAll().filter( ":visible" ).first();
                  // If first visible group, go to last
                  if ( next$.length === 0 ) {
                      next$ = target$.closest( SEL_PROPERTY_EDITOR_WRAPPER ).children( ":visible" ).last();
                  }
              } else if ( kc === lKeys.LEFT ) {
                  this._collapse( target$.closest( SEL_PROPERTY_GROUP ) );
                  lHandled = true;
              } else if ( kc === lKeys.RIGHT ) {
                  this._expand( target$.closest( SEL_PROPERTY_GROUP ) );
                  lHandled = true;
              } else if ( kc === lKeys.SPACE || kc === lKeys.ENTER ) {
                  this._toggle( target$.closest( SEL_PROPERTY_GROUP ) );
                  lHandled = true;
              }
              if ( lHandled ) {
                  pEvent.preventDefault();
              }
              if ( next$ ) {
                  next$.find( "." + PROPERTY_GROUP_BUTTON )[ 0 ].focus();
                  pEvent.preventDefault();
              }
          },
          "focusin div.a-Property": function ( pEvent ) {
              var prop$ = $( pEvent.target ).closest( "div.a-Property" );
              prop$.addClass( IS_ACTIVE + " " + IS_FOCUSED );
              this._activate( prop$ );
          },
          "focusout div.a-Property": function ( pEvent ) {
              var prop$ = $( pEvent.target ).closest( "div.a-Property" );
              prop$.removeClass( IS_ACTIVE + " " + IS_FOCUSED );
          },
          "change div.a-Property": function ( pEvent ) {
              const lEventTarget$ = $( pEvent.target ),
                    property$ = lEventTarget$.closest( "div.a-Property" ),
                    propertyName = property$.find( "[" + DATA_PROPERTY_ID + "]" ).attr( DATA_PROPERTY_ID ),
                    property = this._getProperty( propertyName );

              if( property ) {
                  const newValue = this.getValue( property$, property );

                  // pPropertyId          => propertyName
                  // pValue               => newValue
                  // pSuppressChange      => false        // in order to trigger the change event
                  // pUpdateMetaDataOnly  => true         // visually, the prop is already up to date. only need to update the metadata
                  this.updatePropertyValue( propertyName, newValue, false, true );
              } else {
                  const groupId = lEventTarget$.closest( "div.a-PropertyEditor-propertyGroup" ).attr( DATA_GROUP_ID );

                  // Using .val() as opposed to getValue() as this makes up for a simpler solution avoiding the use of "input" handler,
                  // and also rendering unnecessary to have a full "Property" instance to perform the value update in future stages.
                  // This fixes a bug that only happens with text areas and text fields which are the ones triggering "change" only
                  // after they have been blurred out.
                  this.deferredPropMap[ propertyName ] =  { displayGroupId: groupId, newValue : lEventTarget$.val() };
              }
          },
          "focusin div.a-PropertyEditor-propertyGroup-header": function ( pEvent ) {
              this._deactivate();
              $( pEvent.target )
                  .closest( "div.a-PropertyEditor-propertyGroup-header" )
                  .addClass( IS_FOCUSED );
          },
          "focusout div.a-PropertyEditor-propertyGroup-header": function ( pEvent ) {
              $( pEvent.target )
                  .closest( "div.a-PropertyEditor-propertyGroup-header" )
                  .removeClass( IS_FOCUSED );
          }
      },

      _SearchEventHandlers: {
          "keyup input.a-Property-field--filter": function ( pEvent ) {
              if ( pEvent.which === 27 ) {
                  this.clearSearch(); // ESC pressed
                  this.expandAll();   // in case some display groups were collapsed
              } else {
                  this.search( $( pEvent.target ).val() );
              }
          },
          "click button.a-Button--stickyFilter": function ( pEvent ) {
              var opt = this.options;
              if ( $( pEvent.currentTarget ).toggleClass( IS_ACTIVE ).hasClass( IS_ACTIVE ) ) {
                  opt.pinSearch = true;
              } else {
                  opt.pinSearch = false;
                  opt.searchKey = null;
              }
          }
      },

      _destroy: function() {
          this.element.removeClass( PROPERTY_EDITOR + " " + SHOW_ALL ).empty();
      },

      _setOption: function( key, value ) {
          var i, j, lPropertySet, lDisplayGroup;

          // If the main property set data is being updated, call destroy method for each property in the old property set
          if ( key === "data" ) {
              lPropertySet = this.options.data.propertySet;
              for ( i = 0; i < lPropertySet.length; i++ ) {
                  lDisplayGroup = lPropertySet[ i ];
                  for ( j = 0; j < lDisplayGroup.properties.length; j++ ) {
                      gPropertyTypes[ lDisplayGroup.properties[ j ].metaData.type ].destroy( this._getElement( lDisplayGroup.properties[ j ] ), lDisplayGroup.properties[ j ] );
                  }
              }
          }

          // updates option values in widget storage
          this._super( key, value );

          if ( key === "data" ) {
              if ( !value.propertySet ) {
                  throw new Error( "Missing required properties." );
              }
              this._updateDeferredPropertyValue( value.propertySet );
              this.refresh();
          } else if ( key === "showAll" ) {
              this.element.toggleClass( SHOW_ALL, !!value );
          } else if ( key === "labelsAlwaysAbove" ) {
              this.element.toggleClass( PROPERTY_EDITOR_STACKED, !!value );
          }
      },

      /*
       * Private functions
       */
      _callPropertyInit: function ( pProperty ) {
          var lPropertyName = pProperty.propertyName,
              lProperty$ = this.element.find( makePropertySelector( lPropertyName ) );
          gPropertyTypes[ pProperty.metaData.type ].init( lProperty$, pProperty, this.options.data.lastComponents );
      },

      _renderLabel: function( out, prop ) {
          var lLabelIcons = util.htmlBuilder(),
              lHasErrors   = ( prop.errors.length > 0 ),
              lHasWarnings = ( prop.warnings.length > 0 ),
              lValueVaries = isValueVariable( prop ),
              lLabelClass  = PROPERTY_LABEL,
              lLabelContainerClass = [],
              lLabelId = this._getId( prop ) + "_label";

          lLabelContainerClass.push( PROPERTY_LABEL_CONTAINER );

          if ( !gPropertyTypes[ prop.metaData.type ].labelVisible ) {
              lLabelClass += " " + VISUALLY_HIDDEN;
              lLabelContainerClass.push( PROPERTY_LABEL_CONTAINER + "--hiddenLabel" );
          } else {
              if ( lHasErrors || lHasWarnings || lValueVaries ) {
                  lLabelClass += " " + PROPERTY_LABEL_WITH_ICON;
              }
          }

          // Adding the aria-hidden optional attribute for
          // * checkbox switches. This solution solves bug 33942967 where JAWS was reading the label twice.
          // * Static Values grid. This solves Bug 35300750 - PAGE DESIGNER, PROPERTY EDITOR, STATIC VALUES
          //   DIALOG HAS DUPLICATED OUTPUT FOR SCREEN READER USERS
          // * Static Values button, Template Options button, Link Target button, solves bug 35304298 - PAGE DESIGNER,
          //   PROPERTY PANE, STATIC VALUES BUTTON HAS VERY LONG ACCESSIBLE NAME
          // * Link Builder > "Set Items" grid. This solves Bug 33638611 - LINK BUILDER HAS TOO MANY LABELS FOR
          //   "SET ITEMS" TABLE
          const isAriaHidden = ( prop.metaData.type === PROP_TYPE.YES_NO ) ||
                               ( prop.metaData.type === PROP_TYPE.STATIC_LOV_GRID ) ||
                               ( prop.metaData.type === PROP_TYPE.STATIC_LOV_BTN ) ||
                               ( prop.metaData.type === PROP_TYPE.TPL_OPTIONS_BTN ) ||
                               ( prop.metaData.type === PROP_TYPE.LINK_TARGET_BTN ) ||
                               ( prop.metaData.type === PROP_TYPE.LINK_ITEMS_GRID );
          out.markup( "<div" )
              .attr( "class", lLabelContainerClass.join( " " ) )
              .optionalAttr( ARIA_HIDDEN, isAriaHidden ? "true" : null )
              .markup( ">" );

          if ( !gPropertyTypes[ prop.metaData.type ].noLabel ) {
              out.markup( "<label" )
                  .attr( "id", lLabelId )
                  .attr( "for", this._getId( prop ) )
                  .attr( "class", lLabelClass )
                  .markup( ">" );
          } else {
              out.markup( "<span" )
                  .attr( "id", lLabelId )
                  .attr( "class", lLabelClass )
                  .markup( ">" );
          }

          if ( gPropertyTypes[ prop.metaData.type ].labelVisible ) {
              // Build label's extra icons, depending on certain state (error, warning, value varies)
              if ( lHasErrors ) {
                  renderIcon( lLabelIcons, ICON_ERROR );
              }
              if ( lHasWarnings ) {
                  renderIcon( lLabelIcons, ICON_WARNING );
              }
              if ( lValueVaries ) {
                  renderIcon( lLabelIcons, ICON_VARIABLE );
              }
          }

          out.markup( lLabelIcons.html );

          // Special metaData attribute to display the prompt as HTML. Otherwise display as text
          if ( prop.metaData.promptContainsHtml ) {
              out.markup( prop.metaData.prompt );
          } else {
              out.content( prop.metaData.prompt );
          }

          if ( gPropertyTypes[ prop.metaData.type ].labelVisible ) {
              // Build label's extra icons, depending on certain state (error, warning, value varies)
              if ( lHasErrors ) {
                  out.markup( "<span" )
                      .attr( "class", VISUALLY_HIDDEN )
                      .markup( ">" )
                      .content( msg( "ERROR_POSTFIX" ) )
                      .markup( "</span>" );
              }
              if ( lHasWarnings ) {
                  out.markup( "<span" )
                      .attr( "class", VISUALLY_HIDDEN )
                      .markup( ">" )
                      .content( msg( "WARNING_POSTFIX" ) )
                      .markup( "</span>" );
              }
              if ( lValueVaries ) {
                  out.markup( "<span" )
                      .attr( "class", VISUALLY_HIDDEN )
                      .markup( ">" )
                      .content( msg( "VALUE_VARIES_POSTFIX" ) )
                      .markup( "</span>" );
              }
          }

          if ( !gPropertyTypes[ prop.metaData.type ].noLabel ) {
              out.markup( "</label>" );
          } else {
              out.markup( "</span>" );
          }

          renderDivClose( out );
      },


      _countVisibleProperties: function( pProperties ) {
          var lVisiblePropertyCount, j, lProperty,
              lMultiEdit = ( this.options.data.lastComponents ? this.options.data.lastComponents.length > 1 : false );

          // check if there would be any visible properties *if* showing common
          lVisiblePropertyCount = 0;
          for ( j = 0; j < pProperties.length; j++ ) {
              lProperty = pProperties[ j ];
              if ( lMultiEdit && lProperty.metaData.isUnique ) {
                  continue; // skip unique properties during multi edit
              }
              if ( this._isCommon( lProperty ) ) {
                  lVisiblePropertyCount += 1;
              }
          }
          return lVisiblePropertyCount;
      },
      _renderDisplayGroup: function( out, pDisplayGroup, pIterator ) {
          var j,
              lProperty,
              lHeaderIcon,
              lPropertyCount,
              lVisiblePropertyCount,
              lGroupId,
              lExpanded,
              lGroupClasses,
              lMultiEdit = ( this.options.data.lastComponents ? this.options.data.lastComponents.length > 1 : false ),
              lProperties = pDisplayGroup.properties;

          lPropertyCount = lProperties.length;
          lGroupClasses = PROPERTY_GROUP;


          if ( this.options.hideDisplayGroups ) {
              for ( j = 0; j < lPropertyCount; j++ ) {
                  lProperty = lProperties[ j ];
                  if ( lMultiEdit && lProperty.metaData.isUnique ) {
                      continue; // skip unique properties during multi edit
                  }
                  this._renderProperty( out, lProperty );
              }
          } else {

              // check if there would be any visible properties *if* showing common
              lVisiblePropertyCount = this._countVisibleProperties( lProperties );

              lExpanded = !pDisplayGroup.collapsed;
              if ( lExpanded ) {
                  lHeaderIcon = ICON_EXPANDED;
                  lGroupClasses += " " + IS_EXPANDED;
              } else {
                  lHeaderIcon = ICON_COLLAPSED;
              }

              // if there are no visible properties then hide the whole group when showing common
              if ( lVisiblePropertyCount === 0 ) {
                  lGroupClasses += " " + SHOW_ALL;
              }

              lGroupId = this.baseId + "g_" + pIterator;

              // Main Display Group DIV
              out.markup( "<div role='region'" )
                  .attr( "class", lGroupClasses )
                  .attr( DATA_GROUP_ID, pDisplayGroup.displayGroupId )
                  .attr( "aria-labelledby", lGroupId + "_LABEL" )
                  .markup( ">" );

              /*
               * Display Group Header
               */
              out.markup( "<h2" )
                  .attr( "class", PROPERTY_GROUP_HEADER )
                  .markup( ">" );
              out.markup( "<button type='button'" )
                  .attr( "class", PROPERTY_GROUP_BUTTON )
                  .attr( "aria-controls", lGroupId )
                  .attr( "aria-expanded", lExpanded ? "true" : "false" )
                  .markup( ">" );
              renderIcon( out, lHeaderIcon );
              out.markup( "<span" )
                  .attr( "class", PROPERTY_GROUP_TITLE )
                  .attr( "id", lGroupId + "_LABEL" )
                  .markup( ">" )
                  .content( pDisplayGroup.displayGroupTitle )
                  .markup( "</span>" );
              out.markup( "</button>" );
              out.markup( "</h2>" );

              /*
               * Display Group Body
               */
              out.markup( "<div" )
                  .attr( "id", lGroupId )
                  .attr( "class", PROPERTY_GROUP_BODY );
              if ( !lExpanded ) {
                  out.attr( "style", "display:none;" );
              }
              out.markup( ">" );
              for ( j = 0; j < lPropertyCount; j++ ) {
                  lProperty = lProperties[ j ];
                  if ( lMultiEdit && lProperty.metaData.isUnique ) {
                      continue; // skip unique properties during multi edit
                  }
                  this._renderProperty( out, lProperty );
              }
              renderDivClose( out );    // close PROPERTY_GROUP_BODY

              renderDivClose( out );    // close PROPERTY_GROUP
          }
      },

      _renderDisplayGroups: function( out ) {
          var i,
              lPropertySet = this.options.data.propertySet;
          for ( i = 0; i < lPropertySet.length; i++ ) {
              this._renderDisplayGroup( out, lPropertySet[ i ], i );
          }
      },

      _renderProperty: function( out, prop ) {
          var lPropertyDivStyle,
              lLastComponents = this.options.data.lastComponents,
              lPropertyDivClass = [ PROPERTY ];

          if ( prop.hasChanged ) {
              lPropertyDivClass.push( IS_CHANGED );
          }

          if ( gPropertyTypes[ prop.metaData.type ].stacked ) {
              lPropertyDivClass.push( PROPERTY_STACKED );
          }
          if ( gPropertyTypes[ prop.metaData.type ].minHeight ) {
              lPropertyDivStyle = "min-height: " + gPropertyTypes[ prop.metaData.type ].minHeight + "px;";
          }
          if ( gPropertyTypes[ prop.metaData.type ].maxHeight ) {
              lPropertyDivStyle = "max-height: " + gPropertyTypes[ prop.metaData.type ].maxHeight + "px;";
              lPropertyDivClass.push( PROPERTY_SCROLLABLE );
          }
          if ( gPropertyTypes[ prop.metaData.type ].height ) {
              lPropertyDivStyle = "max-height: " + gPropertyTypes[ prop.metaData.type ].height + "px;";
              lPropertyDivClass.push( PROPERTY_SCROLLABLE );
          }
          if ( prop.errors.length > 0 ) {
              lPropertyDivClass.push( IS_ERROR );
          }
          if ( prop.warnings.length > 0 ) {
              lPropertyDivClass.push( IS_WARNING );
          }
          if ( isValueVariable( prop ) ) {
              lPropertyDivClass.push( IS_VARIABLE );
          }
          if ( !this._isCommon( prop ) ) {
              lPropertyDivClass.push( SHOW_ALL );
          }

          // This DIV marks the beginning of the actual property, and is what is refreshed from updateProperty
          var lPropertyDivOptions = {
              "class": lPropertyDivClass,
              style: lPropertyDivStyle
          };
          renderDivOpen( out, lPropertyDivOptions );

          if ( prop.metaData.isRequired ) {
              renderIcon( out, ICON_REQUIRED_FIELD );
          }

          // todo Should we highlight the property somehow if it's a legacy property? (prop.metaData.isLegacy)

          this._renderLabel( out, prop );

          // Render the property type
          gPropertyTypes[ prop.metaData.type ].render( out, this._getId( prop ), prop, lLastComponents );

          if ( prop.metaData.unit ) {
              out.markup( "<div" )
                  .attr( "class", PROPERTY_UNIT_CONTAINER )
                  .markup( ">" );

              out.markup( "<span" )
                  .attr( "class", PROPERTY_UNIT )
                  .attr( "id", this._getId( prop ) + "_unit" )
                  .markup( ">" )
                  .content( prop.metaData.unit )
                  .markup( "</span>" );

              out.markup( "</div>" );
          }

          renderDivClose( out );    // close PROPERTY
      },

      _getProperty: function( propertyName ) {
          return this.propMap[ propertyName ];
      },

      _getId: function( prop, suffix ) {
          var lId;
          lId = this.idMap[ prop.propertyName ];
          if ( !lId ) {
              lId = this.baseId + this.nextId;
              this.nextId += 1;
              this.idMap[ prop.propertyName ] = lId;
          }
          if ( suffix ) {
              lId += suffix;
          }
          return lId;
      },

      _getElement: function( prop, suffix ) {
          return $( "#" + this._getId( prop, suffix ) );
      },

      _isCommon: function( prop ) {
          return ( prop.metaData.isCommon ||
                   prop.value !== prop.metaData.defaultValue ||
                   prop.errors.length > 0 ||
                   prop.warnings.length > 0 );
      },

      _activate: function( property$ ) {
          var self = this,
              lPropertyName = property$.find( "[" + DATA_PROPERTY_ID + "]" ).attr( DATA_PROPERTY_ID ),
              lProperty = this._getProperty( lPropertyName );

          // Only if we have moved to a new property, should we proceed with activate logic
          if ( this.currentPropertyName !== lPropertyName ) {
              this._deactivate();
              this.currentPropertyName = lPropertyName;
              setTimeout( function() {
                  self._trigger( "activate", {}, lProperty );
              }, 0 );
          }
      },

      _deactivate: function() {
          var self = this;

          // Clear current active property
          this.currentPropertyName = null;

          setTimeout( function() {
              self._trigger( "deactivate" );
          }, 0 );
      },

      _expand: function( group$ ) {
          if ( !group$.hasClass( IS_EXPANDED ) ) {
              group$.addClass( IS_EXPANDED ).children( "." + PROPERTY_GROUP_BODY ).show();
              group$.find( "." + PROPERTY_GROUP_BUTTON ).attr( "aria-expanded", "true" )
                  .children( "." + ICON )
                  .removeClass( ICON_COLLAPSED )
                  .addClass( ICON_EXPANDED );
              this._trigger( "expand", {}, { displayGroupId: group$.attr( "data-group-id" ) } );
          }
          // else already expanded
      },

      _collapse: function( group$ ) {
          if ( group$.hasClass( IS_EXPANDED ) ) {
              group$.removeClass( IS_EXPANDED ).children( "." + PROPERTY_GROUP_BODY ).hide();
              group$.find( "." + PROPERTY_GROUP_BUTTON ).attr( "aria-expanded", "false" )
                  .children( "." + ICON )
                  .removeClass( ICON_EXPANDED )
                  .addClass( ICON_COLLAPSED );
              this._trigger( "collapse", {}, { displayGroupId: group$.attr( "data-group-id" ) } );
          }
          // else already collapsed
      },

      _toggle: function( group$ ) {
          if ( group$.hasClass( IS_EXPANDED ) ) {
              this._collapse( group$ );
          } else {
              this._expand( group$ );
          }
      },

      _updateDeferredPropertyValue: function( pPropertySet ) {
          const lDeferredPropsKeys = Object.keys( this.deferredPropMap );
          let lUnavailableProps = {};

          for( let idx = 0; idx < lDeferredPropsKeys.length; idx++ ) {
              const propertyName = lDeferredPropsKeys[ idx ],
                    deferredProp = this.deferredPropMap[ propertyName ],
                    newValue = deferredProp.newValue,
                    lDisplayGroup = pPropertySet.find(
                                        function ( pDisplayGroup ) {
                                            return pDisplayGroup.displayGroupId === deferredProp.displayGroupId;
                                        }),
                    lProperty = !lDisplayGroup ? undefined : lDisplayGroup.properties.find(
                                                                 function( pProperty ) {
                                                                     return pProperty.propertyName === propertyName;
                                                                 });

              if( lDisplayGroup && lProperty ) {
                  this.updatePropertyValue( propertyName, newValue, false, true, lProperty );
              } else {
                  lUnavailableProps[ propertyName ] = deferredProp;
              }
          }

          this.deferredPropMap = lUnavailableProps;
      },

      /*
       * Public functions
       */

      refresh: function() {
          var i, j,
              lProperties,
              lProperty,
              lWarningMessage,
              out = util.htmlBuilder(),
              opt = this.options,
              elem$ = this.element,
              pinTitle = msg( "PIN_FILTER" ),
              lComponentCount = ( opt.data.lastComponents ? opt.data.lastComponents.length : 0 ),
              lPropertySet = opt.data.propertySet,
              lExternalEdit = opt.externalEdit;

          this.nextId = 1;
          this.idMap = {};
          this.propMap = {};

          debug.info( "propertyEditor refresh" );

          // Deactivate current active property
          this._deactivate();

          if ( lComponentCount > 0 && lPropertySet.length === 0 ) {
              lWarningMessage = msg( "NO_COMMON_PROPERTIES" );

          } else if ( lPropertySet.length === 0 ) {
              lWarningMessage = msg( "NO_COMPONENTS_SELECTED" );
          }

          if ( lWarningMessage ) {
              out.markup( "<div" )
                  .attr( "class", PROPERTY_EDITOR_MESSAGE )
                  .markup( ">" );
              out.markup( "<span" )
                  .attr( "class", ICON_LARGE_WARNING )
                  .markup( ">" );
              out.markup( "<span" )
                  .attr( "class", VISUALLY_HIDDEN )
                  .markup( ">" )
                  .content( msg( "WARNING" ) )
                  .markup( "</span>" )
                  .markup( "</span>" );

              out.markup( "<p" )
                  .attr( "class", PROPERTY_EDITOR_MESSAGE_TEXT )
                  .markup( ">" )
                  .content( lWarningMessage )
                  .markup( "</p>" );
              out.markup( "</div>" );
              elem$
                  .html( out.toString() )
                  .addClass( IS_EMPTY );

              if ( opt.searchable ) {
                  // Disable search filed when there's no property
                  elem$
                      .prev()
                      .addClass( IS_DISABLED )
                      .find( '.' + PROPERTY_FIELD_FILTER )
                      .prop( 'disabled', true );

                  if ( !opt.pinSearch ) {
                      this.clearSearch();
                  }
              }

              return;
          }


          // if we're still here, we can remove the IS_EMPTY class
          elem$.removeClass( IS_EMPTY );

          // Add HTML to page. This will trigger the "change" event
          // on updated controls.
          elem$.children().remove();

          /*
           * Index properties
           */
          // for each group
          for ( i = 0; i < lPropertySet.length; i++ ) {
            lProperties = lPropertySet[ i ].properties;
            // for each property
            for ( j = 0; j < lProperties.length; j++ ) {
                lProperty = lProperties[ j ];
                this.propMap[ lProperty.propertyName ] = lProperty;
            }
          }

          // Build HTML
          if ( lExternalEdit ) {
              out.markup( "<div" )
                  .attr( "class", PROPERTY_EDITOR_EDIT_PARENT )
                  .markup( ">" )
                  .markup( "<button" )
                  .attr( "type", "button" )
                  .attr( "id", this.baseId + "externalEdit" )
                  .attr( "class", BUTTON + " " + BUTTON_FULL + " " + BUTTON_PRIMARY )
                  .markup( ">" )
                  .content( msg( "EDIT_COMPONENT" ) )
                  .markup( "</button>" )
                  .markup( "</div>" );
          }

          // Rendering controls with values up to date.
          this._renderDisplayGroups( out );

          // wrap it so the property editor search field can be its sibling and stick on top.
          // also allow it to scroll by setting its size

          elem$.html( '<div class="resize u-ScrollingViewport ' + PROPERTY_EDITOR_WRAPPER + '">' + out.toString() + '</div>' );
          if ( opt.searchable ) {
              elem$.find( SEL_PROPERTY_EDITOR_WRAPPER )
                   .css( "height", elem$.css( 'height' ) )
                   .css( "width", elem$.css( 'width' ) );
          }

          /*
           * Initialize properties
           */
          const lPropsKeys = Object.keys(this.propMap);

          for(let idx = 0; idx < lPropsKeys.length; idx++){
              const lProperty = this.propMap[ lPropsKeys[ idx ] ];
              this._callPropertyInit( lProperty );
          }

          // Do we have to set focus to a specific property?
          if ( opt.focusPropertyName ) {
              this.focus( opt.focusPropertyName );
          }

          if ( opt.searchable ) {
              if ( this.hasSearchField ) {
                  opt.pinSearch ? this.search( opt.searchKey ) : this.clearSearch();
                  // Enable search field when there's properties
                  elem$
                      .prev()
                      .removeClass( IS_DISABLED )
                      .find( '.' + PROPERTY_FIELD_FILTER )
                      .prop( 'disabled', false );
              } else {
                  // add input field
                  elem$
                      .prev()
                      .find( "." + TOOLBAR_LEFT )
                      .prepend(
                          '<div class="' + PROPERTY_EDITOR_FILTER + '">' +
                          '<input aria-controls="peMain" type="search" class="' + PROPERTY_FIELD + ' ' + PROPERTY_FIELD_FILTER +      /*todo hard-coded pe*/
                          '" ' + ARIA_LABEL + '="' + msg( "FILTER_PROPERTIES" ) + '" placeholder="' + msg( "FILTER" ) + '" />' +
                          '<span class="a-Icon icon-search a-PropertyEditor-filter-icon" ' + ARIA_HIDDEN + '="true"></span>' +
                          '<button class="a-Button a-Button--noLabel a-Button--simple ' + STICKY_FILTER +
                          '" type="button" title="' + pinTitle + '" ' + ARIA_LABEL + '="' + pinTitle + '">' +
                          '<span class="a-Icon icon-pin" ' + ARIA_HIDDEN + '="true"></span></button>' +
                          '</div>' );
                  this.hasSearchField = true;
              }
          }
      },

      getProperty: function( pPropertyId ) {
          return this._getProperty( pPropertyId );
      },

      getPropertyValue: function( pPropertyId ) {
          var lProperty = this._getProperty( pPropertyId ),
              lElement$ = this._getElement( lProperty ),
              lPropertyType = lProperty.metaData.type;

          return gPropertyTypes[ lPropertyType ].getValue( lElement$.closest( "div." + PROPERTY ) ); //todo change to use lElement$
      },

      updatePropertyValue: function( pPropertyId, pValue, pSuppressChange = false, pUpdateMetaDataOnly = false, pProperty = undefined) {

          debug.info( "propertyEditor updatePropertyValue: Property " + pPropertyId + " to " + pValue );

          const lProperty = pProperty ? pProperty : this._getProperty( pPropertyId );

          // Only proceed if the property currently exists ( may not, if the user has moved on to showing a different property)
          if ( lProperty ) {
              const
                  element$ = this._getElement( lProperty ),
                  propertyType = lProperty.metaData.type,
                  property$ = element$.closest( "div.a-Property" );
              let newValue = pValue;

              // xxx should defer to dispatch plugin
              if ( $( "#" + this.idMap[ pPropertyId ] ).hasClass( IS_VARIABLE ) && newValue === "" ) {
                  newValue = VALUE_VARIES;
              }

              // Check if property value has changed, if not then we don't need to update anything
              if ( pValue !== lProperty.value ) {

                  // update the widget model
                  lProperty.oldValue = lProperty.value;
                  lProperty.value = newValue;

                  // update the dom
                  if( !pUpdateMetaDataOnly ){
                      // only toggle show all class if we're in show all mode so that they appear correctly if the user
                      // switches to common. It's too disruptive to do this in common view because properties
                      // may disappear, if they are changed back to their original value. Instead we will leave them there,
                      // until the user changes component
                      if ( this.options.showAll ) {
                          // update showall class on property and group as needed
                          property$.toggleClass( SHOW_ALL, !this._isCommon( lProperty ) );
                          const group$ = property$.closest( "div" + SEL_PROPERTY_GROUP );

                          // Count common, or visible properties in the group, if none, add SHOW_ALL, if some remove SHOW_ALL
                          var lCommonPropertyCount = group$.find( "div." + PROPERTY ).filter( ":not(." + SHOW_ALL + ")" ).length;
                          group$.toggleClass( SHOW_ALL, lCommonPropertyCount === 0 );
                      }

                      if ( newValue !== VALUE_VARIES ) {
                          gPropertyTypes[ propertyType ].setValue( element$, lProperty, newValue, this.options.data.lastComponents );
                      } else {
                          // update property, so we get all the necessary value varies state styles on the property
                          this.updateProperty( lProperty );
                      }
                  }

                  property$.addClass( IS_CHANGED );

                  if ( !pSuppressChange ) {
                      this._trigger( "change", {}, {
                          propertyName: pPropertyId,
                          property: lProperty,
                          property$: property$
                      } );
                  }
              }
          }
      },

      // function that updates an entire property (for showing error display, required state, value_varies, etc.)
      updateProperty: function( pProperty ) {
          var i, j,
              lPropertySet = this.options.data.propertySet,
              out = util.htmlBuilder(),
              lProperty$ = this._getElement( pProperty ).closest( "div." + PROPERTY ),
              lPropertyFocusedElementId = lProperty$.find( ":focus" ).attr( "id" );

          debug.info( "propertyEditor updateProperty: ", pProperty );

          // Update the widget model
          for ( i = 0; i < lPropertySet.length; i++ ) {
              for ( j = 0; j < lPropertySet[ i ].properties.length; j++ ) {
                  if ( lPropertySet[ i ].properties[ j ].propertyName === pProperty.propertyName ) {
                      lPropertySet[ i ].properties.splice( j, 1 );
                      lPropertySet[ i ].properties.splice( j, 0, pProperty );
                  }
              }
          }

          this._renderProperty( out, pProperty );

          // Replace entire property DIV with new property data, assumes that the main property DIV uses class PROPERTY,
          // and that only main property DIV use the class PROPERTY
          lProperty$.replaceWith( out.toString() );

          // Call property type's destroy to ensure we clean up any handlers (although replaceWith should take care of this)
          gPropertyTypes[ pProperty.metaData.type ].destroy( this._getElement( pProperty ), pProperty );

          // Call property type's init function to re-initialise
          this._callPropertyInit( pProperty );

          // If the property was previously focused, refocus it.
          // Also take the following example in PD:
          //  A serverside condition of "Item is NULL"
          //      - Property "Item", empty, has errors (as it's required)
          //  When populating with some text and hitting Tab:
          //      - the LOV button should get focused
          //      - the property will now get updated as there's no longer an error
          //      - we should refocus the LOV button
          if( lPropertyFocusedElementId ) {
              $( "#" + lPropertyFocusedElementId ).trigger( "focus" );
          }
      },

      addProperty: function( pOptions ) {
          var i, j, k, m, lProperties, lVisibleProperties, lDisplayGroup$,
              out = util.htmlBuilder(),
              lDisplayGroupHtml = util.htmlBuilder(),
              lPropertySet = this.options.data.propertySet,
              lNewPropertyPos = 0,
              lNewDisplayGroupPos = 0,
              lDisplayGroupExists = false,
              lPropertyExists = false,
              lOptions = $.extend ( {
                  property:           {},
                  prevPropertyName:   null,   // can be null, if first property in group
                  displayGroup:       {},     // only actually need displayGroup.displayGroupId when display group exists
                  prevDisplayGroupId: null    // can be null, if first display group in pe
              }, pOptions );


          debug.info( "propertyEditor addProperty: ", lOptions );

          // establish if display group already exists:
          for ( i = 0; i < lPropertySet.length; i++ ) {
              if ( lPropertySet[ i ].displayGroupId === lOptions.property.metaData.displayGroupId ) {
                  lNewDisplayGroupPos = i;
                  lDisplayGroupExists = true;
                  break;
              }
          }

          // if display group doesn't already exist, look for previous display group and add it after (or first if no previous display group)
          if ( !lDisplayGroupExists ) {
              for ( j = 0; j < lPropertySet.length; j++ ) {
                  if ( lPropertySet[ j ].displayGroupId === lOptions.prevDisplayGroupId ) {
                      lNewDisplayGroupPos = j + 1;
                      break;
                  }
              }

              // Add display group to widget model here.
              // Note: if no previous display group, this defaults to adding at position 0
              lPropertySet.splice( lNewDisplayGroupPos, 0, lOptions.displayGroup );
          }

          // establish if property already exists
          lProperties = lPropertySet[ lNewDisplayGroupPos ].properties;
          for ( k = 0; k < lProperties.length; k++ ) {
              if ( lProperties[ k ].propertyName === lOptions.property.propertyName ) {
                  lNewPropertyPos = k;    // not really needed, because we don't do anything if property exists
                  lPropertyExists = true;
                  break;
              }
          }


          // if property does not already exist, look for previous property and add it after (or first if no previous property)
          if ( !lPropertyExists ) {
              for ( m = 0; m < lProperties.length; m++ ) {
                  if ( lProperties[ m ].propertyName === lOptions.prevPropertyName ) {
                      lNewPropertyPos = m + 1;
                      break;
                  }
              }
              // Note: If no previous property found, defaults to adding at position 0

              // first add property to the widget model
              lPropertySet[ lNewDisplayGroupPos ].properties.splice( lNewPropertyPos, 0, lOptions.property );
              // add to property map also
              this.propMap[ lOptions.property.propertyName ] = lOptions.property;

              /*
               * Rendering
               */

              // render display group if it doesn't yet exist
              if ( !lDisplayGroupExists ) {

                  // render display group, which already contains the new property because we updated the model
                  this._renderDisplayGroup( lDisplayGroupHtml, lOptions.displayGroup, lNewDisplayGroupPos );

                  if ( lNewDisplayGroupPos === 0 ) {
                      // if this is the first display group, prepend to the beginning of the main PE DIV
                      this.element
                          .prepend( lDisplayGroupHtml.toString() );
                  } else {
                      // if this is not the first display group, add after previous display group
                      this.element
                          .find( makeGroupSelector( lOptions.prevDisplayGroupId ) )
                          .after( lDisplayGroupHtml.toString() );
                  }
              } else {
                  // if display group does exists, we're just dealing with the property

                  // generate new property html into out
                  this._renderProperty( out, lOptions.property );

                  // where to add the property depends on if this is the first property in a group, could be the first
                  // if either this is a new display group, or if this is the first property in an existing group
                  if ( lNewPropertyPos === 0 ) {

                      // if this is the first property in a group, add to the beginning of the property group body
                      this.element
                          .find( makeGroupSelector( lOptions.displayGroup.displayGroupId ) )
                          .find( "div." + PROPERTY_GROUP_BODY )
                          .prepend( out.toString() );
                  } else {
                      // if this is not the first property in the group, add after previous property
                      $( "#" + this.idMap[ lOptions.prevPropertyName ] )
                          .closest( "div." + PROPERTY )
                          .after( out.toString() );
                  }

                  // When only showing common properties, the current display may actually be hidden (in the case where
                  // it doesn't contain any visible / common properties. So here we need to check if there are any visible
                  // properties and if so, make sure the display group is not set to only display on show all
                  lVisibleProperties = this._countVisibleProperties( lPropertySet[ lNewDisplayGroupPos ].properties );
                  lDisplayGroup$ = this.element.find( makeGroupSelector( lOptions.displayGroup.displayGroupId ) );
                  if ( lVisibleProperties > 0 && lDisplayGroup$.hasClass( SHOW_ALL ) ) {
                      lDisplayGroup$.removeClass( SHOW_ALL );
                  }

              }

              // initialise property
              this._callPropertyInit( lOptions.property );
          }
      },

      removeProperty: function( pPropertyName ) {
          var i, j, lProperty$, lProperty, lDisplayGroup$,
              lRemoveDisplayGroup = false,
              lPropertySet = this.options.data.propertySet,
              lPropertyRemoved = false;

          debug.info( "propertyEditor removeProperty: ", pPropertyName );

          // If we're removing the current active property, call trigger deactivate logic
          if ( this.currentPropertyName === pPropertyName ) {
              this._deactivate();
          }

          // loop through display groups
          for ( i = 0; i < lPropertySet.length; i++ ) {

              // only keep iterating if the property has not yet been removed from a display group
              if ( !lPropertyRemoved ) {

                  // determine if the display group needs to be removed also, if it only has 1 property
                  if ( lPropertySet[ i ].properties.length === 1 ) {
                      lRemoveDisplayGroup = true;
                  } else {
                      lRemoveDisplayGroup = false;
                  }

                  // loop through properties for the current display group
                  for ( j = 0; j < lPropertySet[ i ].properties.length; j++ ) {

                      // if we find the property, handle the remove
                      if ( lPropertySet[ i ].properties[ j ].propertyName === pPropertyName ) {

                          lProperty = lPropertySet[ i ].properties[ j ];
                          lProperty$ = this._getElement( lProperty );
                          lDisplayGroup$ = lProperty$.closest( "div" + SEL_PROPERTY_GROUP );

                          // nature of remove depends on whether we also want to remove the display group
                          if ( lRemoveDisplayGroup ) {

                              // if property is last in display group, remove property and display group
                              lPropertySet.splice( i, 1 );
                              lDisplayGroup$.remove();

                          } else {

                              // call property types destroy method
                              gPropertyTypes[ lProperty.metaData.type ].destroy( lProperty$, lProperty );

                              // remove property from widget model
                              lPropertySet[ i ].properties.splice( j, 1 );

                              // If there are still remaining properties in the display group, but they are not
                              // visible / common, make sure the display group is set to only display on show all
                              //lVisibleProperties = this._countVisibleProperties( lPropertySet[ i ].properties );
                              //if ( lVisibleProperties === 0 && !lDisplayGroup$.hasClass( SHOW_ALL ) ) {
                              //    lDisplayGroup$.addClass( SHOW_ALL );
                              //}

                              // now remove it
                              lProperty$
                                  .closest( "div." + PROPERTY )
                                  .remove();

                          }
                          lPropertyRemoved = true;
                          break;
                      }
                  }
              }
          }
      },

      expand: function( pGroupId ) {
          var lGroup$ = this.element.find( "div" + SEL_PROPERTY_GROUP ).filter( makeGroupSelector( pGroupId ) );
          this._expand( lGroup$ );
      },

      expandAll: function() {
          var self = this;

          this.element.find( "div" + SEL_PROPERTY_GROUP ).each( function() {
              self._expand( $( this ) );
          } );
      },

      collapseAll: function() {
          var self = this;

          this.element.find( "div" + SEL_PROPERTY_GROUP ).each( function() {
              self._collapse( $( this ) );
          } );
      },

      getValueVariesConstant: function() {
          return VALUE_VARIES;
      },

      setValue: function ( pElement$, pProperty, pValue, pLastComponents ) {
          gPropertyTypes[ pProperty.metaData.type ].setValue( pElement$, pProperty, pValue, pLastComponents );
      },
      getValue: function ( pProperty$, pProperty ) {
          return gPropertyTypes[ pProperty.metaData.type ].getValue( pProperty$, pProperty );
      },
      focus: function ( pPropertyName ) {
          var lFocusGroup$, lFocusProperty, lFocusElement$, lPropertyName;

          if ( pPropertyName ) {

              // Focus property passed
              lPropertyName = pPropertyName;
          } else {
              if ( this.currentPropertyName ) {

                  // Focus current active property
                  lPropertyName = this.currentPropertyName;
              } else {

                  // If neither property passed, or no current active property, focus on the first property
                  // in the widget model
                  lPropertyName = this.options.data.propertySet[ 0 ].properties[ 0 ].propertyName;
              }
          }
          lFocusProperty = this._getProperty( lPropertyName );

          if ( lFocusProperty ) {
              lFocusElement$ = this._getElement( lFocusProperty );

              // check if property group is currently expanded, if not expand it
              lFocusGroup$ = lFocusElement$.closest( "div" + SEL_PROPERTY_GROUP );
              if ( !lFocusGroup$.hasClass( IS_EXPANDED ) ) {
                  this._expand( lFocusGroup$ );
              }
              gPropertyTypes[ lFocusProperty.metaData.type ].setFocus( lFocusElement$, lFocusProperty );
          }

      },
      hasFocus: function ( pPropertyName ) {
          const lProperty = this._getProperty( pPropertyName );
          return lProperty && this._getElement( lProperty ).is( ":focus" );
      },
      saveProperty: function( pPropertyName ) {
          var lPropertyName,
              lProperty,
              lElement$;

          if ( pPropertyName ) {

              // If property name passed, save this property
              lPropertyName = pPropertyName;
          } else if ( this.currentPropertyName ) {

              // Otherwise check if current active property is set, and use that if so
              lPropertyName = this.currentPropertyName;
          }

          if ( lPropertyName ) {

              // If we have a property to save, trigger change event
              lProperty = this._getProperty( lPropertyName );
              lElement$ = this._getElement( lProperty );
              lElement$.trigger( "change" );
          }
      },

      goToGroup: function( pGroupId ) {
          var lOptions = this.options,
              lPropertyId = this.element.find( "div" + SEL_PROPERTY_GROUP )
                  .filter( makeGroupSelector( pGroupId ) )
                  .find( "[" + DATA_PROPERTY_ID + "]" )
                  .first()
                  .attr( DATA_PROPERTY_ID );

          // First clear search, if PE has search
          if ( lOptions.searchable ) {
              this.clearSearch();
          }

          // We just want the group we are going to expanded, collapse others
          this.collapseAll();
          this.expand( pGroupId );

          this.focus( lPropertyId );
      },

      search: function ( key ) {
          var kw,
              pe$ = this.element,
              peToolBar$ = pe$.prev();

          // Reset UI on every search.
          pe$.find( '.' + cHIDE + ', .' + PROPERTY_HIGHLIGHT ).removeClass( cHIDE + ' ' + PROPERTY_HIGHLIGHT );
          pe$.find( '.' + PROPERTY_NOT_FOUND ).remove();
          peToolBar$.removeClass( HAS_ACTIVE_FILTER );

          if ( !key || key.length < 2 ) {
              // insufficient keywords doesn't search.
              this.options.searchKey = null;
              return;
          } else {
              kw = key.trim().toLowerCase();
              this.options.searchKey = kw;
              peToolBar$.addClass( HAS_ACTIVE_FILTER );
          }

          var lData                   = [],   // Group titles and their children's properties
              lResults                = [],   // Results of IDs
              lParentMapping          = {},   // Easier to locate the group ID of a property label
              lGroupsIds              = [],   // Existing Group IDs
              lLabelIds               = [],   // Existing Label IDs
              that                    = this;

          // value of label field, so we can search it too
          var getVal = function ( id ) {
              var id$ = $( '#' + id ),
                  t = id$.get( 0 ).tagName.toUpperCase(),
                  v;
              if ( t === 'INPUT'  || t === 'TEXTAREA' ) {
                  v = $v( id );
              } else if ( t === 'SELECT' ) {
                  v = $( "#" + id + " option:selected" ).text();
              } else if ( t === 'BUTTON' ) {
                  v = id$.text();
              } else if ( t === 'DIV' ) { // Yes/No Radio boxes
                  v = id$.find( 'input:checked' ).next().text();
              } else {
                  v = '';
              }

              return v.toLowerCase();
          };

          // A reliable way to get the node to be toggled
          var getToggleNode = function( pNode$ ) {
              return pNode$.closest( '.' + ( pNode$.hasClass( PROPERTY_GROUP_TITLE ) ? PROPERTY_GROUP : PROPERTY ));
          };

          var scanProp = function() {
              pe$.find('.' + PROPERTY_GROUP_TITLE).each(function(index){
                  var t1$ = $( this ),
                      groupTitle = t1$.text().toLowerCase(),
                      groupId = t1$.attr( "id" ),
                      children = [];

                  lGroupsIds.push( groupId );

                  lData[ index ] = {
                      "pe_id"        : groupId,
                      "pe_title"     : groupTitle,
                      "pe_children"  : []
                  };

                  children = lData[ index ].pe_children;

                  getToggleNode( t1$ )
                      .find( '.' + PROPERTY_GROUP_BODY )
                      .find( '.' + PROPERTY_LABEL).each(function() {
                          var t2$ = $( this),
                              labelId = t2$.attr("id");
                          children.push( {
                              "pe_label_id"    : labelId,
                              "pe_label"       : t2$.text().toLowerCase(),
                              "pe_value"       : getVal(labelId.slice(0, -6))  // e.g. remove "_label" from "pe_g_7_LABEL"
                          });
                          lLabelIds.push(labelId);
                          lParentMapping[labelId] = groupId;
                      });
              });
          };
          scanProp(); // get property structure on every search.

          var getResults = function ( k ) {
              var i, j,
                  set_group,
                  set_children,
                  len_groups = lData.length,
                  len_labels;

              for( i = 0; i < len_groups; i++ ) {
                  set_group = lData[i];
                  if( set_group.pe_title.indexOf( k ) !== -1 ) {
                      lResults.push( set_group.pe_id );
                  }

                  len_labels = set_group.pe_children.length;
                  for( j = 0; j < len_labels; j++ ) {
                      set_children = set_group.pe_children[j];
                      if( set_children.pe_label.indexOf( k ) !== -1 || set_children.pe_value.indexOf( k ) !== -1 ) {
                          lResults.push( set_children.pe_label_id );
                      }
                  }
              }

              renderResults( lResults );
          };

          var renderResults = function ( res ) {
              var i, j, k, m, res_i,
                  disp_groups         = [],   // Display groups and all labels in it
                  len_res             = res.length,
                  len_g               = lGroupsIds.length,
                  len_l               = lLabelIds.length,
                  len_d,
                  disp$,
                  dispP$;

              // no data found
              if ( len_res === 0 ) {
                  pe$.find( SEL_PROPERTY_EDITOR_WRAPPER ).append(
                      '<div class="' + PROPERTY_NOT_FOUND + '">' +
                      ' <span class="a-Icon icon-search" ' + ARIA_HIDDEN + '="true"></span><br />' + msg( "FILTER_NO_MATCH" ) +
                      '</div>' );
              }

              // Find out which group a label belongs to.
              // We need to display that group if a search result is label.
              var getGroupId = function ( id ) {
                  if ( id.indexOf( '_g_' ) !== -1 ) {
                      return id;
                  } else {
                      return lParentMapping[id];
                  }
              };

              var highlight = function ( el$, str ) {
                  var newTxt = el$.text().replace( new RegExp( "(" + str + ")","gi" ), '<span class="' + PROPERTY_HIGHLIGHT + '">$1</span>' );
                  el$.html( newTxt );
              };

              // hide everything
              for (j = 0; j < len_g; j++ ) {
                  getToggleNode( $('#' + lGroupsIds[j]) )
                      .addClass(cHIDE);
              }
              for (k = 0; k < len_l; k++ ) {
                  getToggleNode( $('#' + lLabelIds[k]) )
                      .addClass(cHIDE);
              }

              // Only show what's in results
              for ( i = 0; i < len_res; i++ ) {
                  res_i = res[i];
                  disp$ = $( '#' + res_i );
                  dispP$ = getToggleNode( disp$ );
                  dispP$.removeClass( cHIDE );

                  // if it is a group ID, display every label in it
                  if ( res_i.indexOf( '_g_' ) !== -1 ) {
                      dispP$.find( '.' + cHIDE ).removeClass( cHIDE );
                  }
                  highlight( disp$, kw );
                  // get groups to display (if only label matches)
                  disp_groups.push( getGroupId( res_i ) );
              }

              // remove duplicates
              disp_groups = $.unique( disp_groups );
              len_d = disp_groups.length;

              // display the group of a label if the group has labels that is not hidden
              for ( m = 0; m < len_d; m++ ) {
                  disp$ = $( '#' + disp_groups[m] );
                  dispP$ = getToggleNode( disp$ );
                  that._expand( dispP$.removeClass(cHIDE) );
              }
          };

          getResults( kw );
      },

      clearSearch: function () {
          this.options.searchKey = null;

          //todo improve, use global for the PE's toolbar
          this.element.prev()
              .removeClass( HAS_ACTIVE_FILTER )
              .find( '.' + PROPERTY_FIELD_FILTER )
              .val( '' )
              .trigger( 'keyup' )
              .siblings( '.' + STICKY_FILTER )
              .removeClass( IS_ACTIVE );
      },

      getCurrentPropertyName: function () {
          return this.currentPropertyName;
      }
  } );

  $.apex.propertyEditor.setMessagePrefix = function( pPrefix ) {
      gMessagePrefix = pPrefix;
  };
  $.apex.propertyEditor.PROP_TYPE = PROP_TYPE;
  $.apex.propertyEditor.addPropertyType = addPropertyType;

} )( apex.jQuery, apex.util, apex.debug, apex.locale, apex.lang );
