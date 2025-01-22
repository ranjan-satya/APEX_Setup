prompt --application/set_environment
set define off verify off feedback off
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>10
,p_default_application_id=>4473
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4473 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4473
--   Name:            Oracle APEX Runtime Messages
--   Exported By:     APEX_240200
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      1
--     Shared Components:
--       Logic:
--       Navigation:
--         Breadcrumbs:            1
--       Security:
--         Authentication:         1
--       User Interface:
--         Templates:
--           Page:                 7
--           Region:              11
--           Label:                7
--           List:                 6
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               6
--           Report:               8
--       PWA:
--       Globalization:
--         Messages:           2,261
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.0
--   Instance ID:     1000130449849042
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'APEX_240200')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Oracle APEX Runtime Messages')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131491299258029309')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'de'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4473)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_type=>'C'
,p_logo=>'<img src="#IMAGE_PREFIX#apex_ui/apexlogo.png" width="282" height="20" alt="&PRODUCT_NAME." />'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'&PRODUCT_NAME. 24.2.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'O:W'
,p_security_scheme=>wwv_flow_imp.id(860535012146524358)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_version_scn=>2652203
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(4473)
,p_theme_id=>3
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>'PRE18:18'
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(728504220438374.4473)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4473)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4473)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4473)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4473)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4473)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4473)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>7007821
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(124389732573989299.4473)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4473)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>7021930
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(285800719532138903.4473)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4473)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4473)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4473)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4473)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4473)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.FLOTLINECHART2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '3',
  'attribute_02', '1.333')).to_clob
,p_version_scn=>1088662545
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(649613204592764515.4473)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_5_0_wizard_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(850359229090693491.4473)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.de'
,p_internal_name=>'APEX_5.0_WIZARD_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.builder.initWizardModal();',
'apex.builder.initWizardProgressBar();'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js page-&APP_PAGE_ID. app-&APP_ID." lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<meta charset="utf-8">  ',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#HEAD#',
'<meta name="viewport" content="width=device-width,initial-scale=1" />',
'</head>',
'<body class="a-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Dialog a-Dialog--wizard">',
'  <div class="a-Dialog-wrap">',
'    <div class=" a-Dialog-wizardSteps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="a-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="a-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--success a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_success_msg" role="region" aria-labelledby="page_success_id">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.SUCCESS"!HTML.''></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="page_success_id" class="a-Alert-title">#SUCCESS_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body" role="alert">',
'        #SUCCESS_MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_success_msg'');" value="#CLOSE_NOTIFICATION#" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="a-Icon '
||'icon-remove" aria-hidden="true"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--warning a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_warning_msg" role="region" aria-labelledby="page_warning_id">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.WARNING"!HTML.''></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="page_warning_id" class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body" role="alert">',
'        #MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_warning_msg'');" value="#CLOSE_NOTIFICATION#" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="a-Icon '
||'icon-remove" aria-hidden="true"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--danger a-Alert--defaultIcons a-Alert--inlineDialog a-Alert--wizard margin-none padding-none">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header u-vh">',
'        <h2 class="a-Alert-title">&APP_TEXT$ERROR!HTML.</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        <p>#MESSAGE# #ADDITIONAL_INFO#</p>',
'        <p><a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a></p>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>        '))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,baseDialogClass:''a-Dialog--wizard'',dialogClass:#DIALOG_CSS_CLASSES#,jsDialogClass:true,#DIALOG_A'
||'TTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'800'
,p_dialog_max_width=>'1200'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526110820992194.4473)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4473)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4473)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4473)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4473)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4473)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_5_0_dialog
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(851037359784626333.4473)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.de'
,p_internal_name=>'APEX_5.0_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.builder.initWizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<html class="no-js page-&APP_PAGE_ID. app-&APP_ID." lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<meta charset="UTF-8" />',
'<title>#TITLE#</title>',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#HEAD#',
'</head>',
'<body class="a-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="a-Dialog-wrap">',
'    <div class=" a-Dialog-wizardSteps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="a-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="a-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--success a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_success_msg" role="region" aria-labelledby="page_success_id">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.SUCCESS"!HTML.''></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="page_success_id" class="a-Alert-title">#SUCCESS_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body" role="alert">',
'        #SUCCESS_MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_success_msg'');" value="#CLOSE_NOTIFICATION#" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="a-Icon '
||'icon-remove" aria-hidden="true"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--warning a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_warning_msg" role="region" aria-labelledby="page_warning_id">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.WARNING"!HTML.''></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="page_warning_id" class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body" role="alert">',
'        #MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_warning_msg'');" value="#CLOSE_NOTIFICATION#" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="a-Icon '
||'icon-remove" aria-hidden="true"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--danger a-Alert--defaultIcons a-Alert--inlineDialog a-Alert--wizard margin-none padding-none">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header u-vh">',
'        <h2 class="a-Alert-title">&APP_TEXT$ERROR!HTML.</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        <p>#MESSAGE# #ADDITIONAL_INFO#</p>',
'        <p><a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a></p>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>        '))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,baseDialogClass:''a-Dialog--uiDialog'',dialogClass:#DIALOG_CSS_CLASSES#,jsDialogClass:true,#DIALOG'
||'_ATTRIBUTES#},#PAGE_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'800'
,p_dialog_max_width=>'1200'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473352245977306.4473)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4473)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4473)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4473)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4473)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4473)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_5_0_edit_screen
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(851037631091626378.4473)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.de'
,p_internal_name=>'APEX_5.0_EDIT_SCREEN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.builder.initStickyHeader(''a_EditScreen_header'');'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<html class="no-js page-&APP_PAGE_ID. app-&APP_ID." lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<meta charset="UTF-8" />',
'<title>#TITLE#</title>',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#HEAD#',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>',
'<!--[if lte IE 9]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'<noscript>&MSG_JSCRIPT.</noscript>',
'<a href="#main" id="a_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#ENVIRONMENT_BANNER#',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header>',
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'</header>',
'#REGION_POSITION_09#',
'  <div class="a-Body">',
'    <main id="main" class="a-Main">',
'      #REGION_POSITION_02#',
'      <div class="a-EditScreen">',
'        <div class="a-EditScreen-header" id="a_EditScreen_header">',
'          #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'          #REGION_POSITION_04#',
'        </div>',
'        <div class="a-EditScreen-body">',
'          #BODY#',
'        </div>',
'      </div>',
'    </main>',
'    <aside class="a-Side">',
'        #REGION_POSITION_03#',
'        #REGION_POSITION_05#',
'    </aside>',
'  </div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer class="a-Footer">',
'  <div class="a-Footer-info">',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-user" title="&MSG_USER." aria-label="&MSG_USER.">',
'        <span class="u-vh">&MSG_USER.</span>',
'      </span>',
'      &USER.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-workspace" title="&MSG_WORKSPACE." aria-label="&MSG_WORKSPACE.">',
'        <span class="u-vh">&MSG_WORKSPACE.</span>',
'      </span>',
'      &COMPANY.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-language" title="&MSG_LANGUAGE." aria-label="&MSG_LANGUAGE.">',
'        <span class="u-vh">&MSG_LANGUAGE.</span>',
'      </span>',
'      &BROWSER_LANGUAGE.',
'    </span>',
'  </div>',
'  <div class="a-Footer-copyright">&MSG_COPYRIGHT.</div>',
'  <div class="a-Footer-version">#FLOW_VERSION#</div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--success a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_success_msg" role="region" aria-labelledby="page_success_id">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.SUCCESS"!HTML.''></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="page_success_id" class="a-Alert-title">#SUCCESS_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body" role="alert">',
'        #SUCCESS_MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_success_msg'');" value="#CLOSE_NOTIFICATION#" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="a-Icon '
||'icon-remove" aria-hidden="true"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--warning a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_warning_msg" role="region" aria-labelledby="page_warning_id">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.WARNING"!HTML.''></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="page_warning_id" class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body" role="alert">',
'        #MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_warning_msg'');" value="#CLOSE_NOTIFICATION#" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="a-Icon '
||'icon-remove" aria-hidden="true"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_09'
,p_theme_class_id=>1
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2495515088702127.4473)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4473)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4473)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4473)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4473)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4473)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4473)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4473)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4473)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4473)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4473)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4473)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4473)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4473)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4473)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4473)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4473)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4473)
,p_name=>'Control Bar'
,p_placeholder=>'REGION_POSITION_09'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_5_0_no_side_bar
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(851039898661626389.4473)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.de'
,p_internal_name=>'APEX_5.0_NO_SIDE_BAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<html class="no-js page-&APP_PAGE_ID. app-&APP_ID." lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<meta charset="UTF-8" />',
'<title>#TITLE#</title>',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#HEAD#',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>',
'<!--[if lte IE 9]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'<noscript>&MSG_JSCRIPT.</noscript>',
'<a href="#main" id="a_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#ENVIRONMENT_BANNER#',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header>',
'    #REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'</header>',
'#REGION_POSITION_09#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'#REGION_POSITION_02#',
'#REGION_POSITION_03#',
'  <div id="main" class="a-Body">',
'    <main class="a-Main">',
'        #BODY#',
'    </main>',
'  </div>',
'#REGION_POSITION_04#'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer class="a-Footer">',
'  <div class="a-Footer-info">',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-user" title="&MSG_USER." aria-label="&MSG_USER."><span class="u-vh">&MSG_USER.</span></span>',
'      &USER.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-workspace" title=''&"APP_TEXT$APEXDEV.TEMPLATE_WORKSPACE"!HTML.'' aria-label=''&"APP_TEXT$APEXDEV.TEMPLATE_WORKSPACE"!HTML.''><span class="u-vh">&MSG_WORKSPACE.</span></span>',
'      &COMPANY.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-language" title="&MSG_LANGUAGE." aria-label="&MSG_LANGUAGE."><span class="u-vh">&MSG_LANGUAGE.</span></span>',
'      &BROWSER_LANGUAGE.',
'    </span>',
'  </div>',
'  <div class="a-Footer-copyright">&MSG_COPYRIGHT.</div>',
'  <div class="a-Footer-version">#FLOW_VERSION#</div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--success a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_success_msg" role="region" aria-labelledby="page_success_id">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.SUCCESS"!HTML.''></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="page_success_id" class="a-Alert-title">#SUCCESS_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body" role="alert">',
'        #SUCCESS_MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_success_msg'');" value="#CLOSE_NOTIFICATION#" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="a-Icon '
||'icon-remove" aria-hidden="true"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--warning a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_warning_msg" role="region" aria-labelledby="page_warning_id">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.WARNING"!HTML.''></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="page_warning_id" class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body" role="alert">',
'        #MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_warning_msg'');" value="#CLOSE_NOTIFICATION#" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="a-Icon '
||'icon-remove" aria-hidden="true"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_09'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--danger a-Alert--wizard a-Alert--defaultIcons">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 class="a-Alert-title">#MESSAGE#</h2>',
'      </div>',
'      <div class="a-Alert-body">',
'        #ADDITIONAL_INFO#',
'        #TECHNICAL_INFO#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--large a-Button--hot" onclick="#BACK_LINK#" type="button">#RETURN_TO_APPLICATION#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2418665544706094.4473)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4473)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4473)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4473)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4473)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4473)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4473)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4473)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4473)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4473)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4473)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4473)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4473)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4473)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4473)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4473)
,p_name=>'Control Bar'
,p_placeholder=>'REGION_POSITION_09'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_5_0_right_side_bar
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(851040471818626394.4473)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.de'
,p_internal_name=>'APEX_5.0_RIGHT_SIDE_BAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<html class="no-js page-&APP_PAGE_ID. app-&APP_ID." lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<meta charset="UTF-8" />',
'<title>#TITLE#</title>',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#HEAD#',
'</head>',
'<body class="#PAGE_CSS_CLASSES#" #ONLOAD#>',
'<!--[if lte IE 9]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'<noscript>&MSG_JSCRIPT.</noscript>',
'<a href="#main" id="a_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#ENVIRONMENT_BANNER#',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header>',
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'</header>',
'#REGION_POSITION_09#',
'#REGION_POSITION_02#',
'  <div id="main" class="a-Body">',
'    <main class="a-Main">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        #BODY#',
'    </main>',
'    <aside class="a-Side">',
'        #REGION_POSITION_03#',
'    </aside>',
'  </div>',
'#REGION_POSITION_04#'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer class="a-Footer">',
'  <div class="a-Footer-info">',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-user" title="&MSG_USER." aria-label="&MSG_USER."></span>',
'      &USER.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-workspace" title="&MSG_WORKSPACE." aria-label="&MSG_WORKSPACE."></span>',
'      &COMPANY.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-language" title="&MSG_LANGUAGE." aria-label="&MSG_LANGUAGE."></span>',
'      &BROWSER_LANGUAGE.',
'    </span>',
'  </div>',
'  <div class="a-Footer-copyright">&MSG_COPYRIGHT.</div>',
'  <div class="a-Footer-version">#FLOW_VERSION#</div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--success a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_success_msg" role="region" aria-labelledby="page_success_id">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.SUCCESS"!HTML.''></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="page_success_id" class="a-Alert-title">#SUCCESS_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body" role="alert">',
'        #SUCCESS_MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_success_msg'');" value="#CLOSE_NOTIFICATION#" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="a-Icon '
||'icon-remove" aria-hidden="true"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--warning a-Alert--horizontal a-Alert--defaultIcons a-Alert--colorBG a-Alert--page" id="page_warning_msg" role="region" aria-labelledby="page_warning_id">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.WARNING"!HTML.''></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="page_warning_id" class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      </div>',
'      <div class="a-Alert-body" role="alert">',
'        #MESSAGE#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI" onclick="$x_Remove(''page_warning_msg'');" value="#CLOSE_NOTIFICATION#" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="a-Icon '
||'icon-remove" aria-hidden="true"></span></button>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_09'
,p_theme_class_id=>1
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537388880131854.4473)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4473)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4473)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4473)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4473)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4473)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4473)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4473)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4473)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4473)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4473)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4473)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4473)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4473)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4473)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4473)
,p_name=>'Control Bar'
,p_placeholder=>'REGION_POSITION_09'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_5_0_sign_up_wizard
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(851041812938626395.4473)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.de'
,p_internal_name=>'APEX_5.0_SIGN_UP_WIZARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.builder.initWizardProgressBar();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<html class="no-js page-&APP_PAGE_ID. app-&APP_ID." lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<meta charset="UTF-8" />',
'<meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'<title>#TITLE#</title>',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#HEAD#',
'</head>',
'<body class="a-Page--simpleWizard #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#ENVIRONMENT_BANNER#',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header>',
'#REGION_POSITION_07#',
'</header>',
'#REGION_POSITION_08#',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'#REGION_POSITION_02#',
'#REGION_POSITION_03#',
'<main class="u-Layout u-Layout--centerVertically">',
'  #BODY#',
'</main>',
'#REGION_POSITION_04#'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" id="sucessMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-success">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-check"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="sucessMsg-Message" role="alert">#SUCCESS_MESSAGE#</h5>',
'      <button id="sucessMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''sucessMsg'');return false;"><span class="a-I'
||'con icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" role="alert" id="errorMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-error">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-remove"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="errorMsg-Message">#MESSAGE#</h5>',
'      <button id="errorMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''errorMsg'');return false;"><span class="a-Ico'
||'n icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_08'
,p_theme_class_id=>1
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212309210289451.4473)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4473)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4473)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4473)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4473)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4473)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4473)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4473)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4473)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4473)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4473)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4473)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4473)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4473)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/apex_5_0_wizard_page
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(851042476105626395.4473)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.de'
,p_internal_name=>'APEX_5.0_WIZARD_PAGE'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.builder.initWizardProgressBar();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<html class="no-js page-&APP_PAGE_ID. app-&APP_ID." lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<meta charset="UTF-8" />',
'<title>#TITLE#</title>',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon.ico">',
'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-16x16.png">',
'<link rel="icon" sizes="32x32" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-32x32.png">',
'<link rel="apple-touch-icon" sizes="180x180" href="#IMAGE_PREFIX#apex_ui/img/favicons/favicon-180x180.png">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#HEAD#',
'</head>',
'<body class="a-Page--wizard #PAGE_CSS_CLASSES#" #ONLOAD#>',
'<noscript>&MSG_JSCRIPT.</noscript>',
'#ENVIRONMENT_BANNER#',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header>',
'#REGION_POSITION_07#',
'#REGION_POSITION_08#',
'</header>',
'#REGION_POSITION_09#',
'<main class="a-Main" id="main">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="u-Layout u-Layout--centerVertically">',
'    <div class="a-Wizard a-Wizard--default">',
'      #REGION_POSITION_02#',
'      <div class="a-Wizard-controls">#REGION_POSITION_01#</div>',
'      <div class="a-Wizard-body">#BODY#</div>',
'      <div class="a-Wizard-buttons">#REGION_POSITION_03#</div>',
'    </div>',
'  </div>',
'</main>',
'#REGION_POSITION_04#'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer class="a-Footer">',
'  <div class="a-Footer-info">',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-user" title="&MSG_USER." aria-label="&MSG_USER."><span class="u-vh">&MSG_USER.</span></span>',
'      &USER.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-workspace" title="&MSG_WORKSPACE." aria-label="&MSG_WORKSPACE."><span class="u-vh">&MSG_WORKSPACE.</span></span>',
'      &COMPANY.',
'    </span>',
'    <span class="a-Footer-attribute">',
'      <span role="img" class="a-Icon icon-language" title="&MSG_LANGUAGE." aria-label="&MSG_LANGUAGE."><span class="u-vh">&MSG_LANGUAGE.</span></span>',
'      &BROWSER_LANGUAGE.',
'    </span>',
'  </div>',
'  <div class="a-Footer-copyright">&MSG_COPYRIGHT.</div>',
'  <div class="a-Footer-version">#FLOW_VERSION#</div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body></html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" id="sucessMsg">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-success">',
'    <div class="a-MediaBlock-graphic">',
'      <span class="a-Icon a-Icon--medium icon-check"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h5 class="a-AlertMessages-messageTitle" id="sucessMsg-Message" role="alert">#SUCCESS_MESSAGE#</h5>',
'      <button id="sucessMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''sucessMsg'');return false;"><span class="a-I'
||'con icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-AlertMessages a-AlertMessages--page" id="errorMsg" role="region" aria-labelledby="page_warning_id">',
' <div class="a-AlertMessages-item">',
'  <div class="a-MediaBlock a-AlertMessages-message is-error">',
'    <div class="a-MediaBlock-graphic" role="img" aria-label=''&"APP_TEXT$APEXDEV.ICON_LABEL.WARNING"!HTML.''>',
'      <span class="a-Icon a-Icon--medium icon-remove"></span> ',
'    </div>',
'    <div class="a-MediaBlock-content">',
'      <h2 class="u-vh" id="page_warning_id" class="a-Alert-title">#ERROR_MESSAGE_HEADING#</h2>',
'      <div class="a-AlertMessages-messageTitle" id="errorMsg-Message" role="alert">#MESSAGE#</div>',
'      <button id="errorMsg-Close" class="a-Button a-Button--small a-Button--noUI a-Button--noLabel a-Button--withIcon a-Button--alertMessages" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#" onclick="$x_Remove(''errorMsg'')'
||';return false;"><span class="a-Icon icon-remove"></span></button>',
'    </div>',
'  </div>',
' </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="htmldbNavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_09'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert a-Alert--danger a-Alert--wizard a-Alert--defaultIcons">',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'      </div>',
'      <div class="a-Alert-body">',
'        <h2 class="a-Alert-subTitle">#MESSAGE#</h2>',
'        #ADDITIONAL_INFO#',
'        #TECHNICAL_INFO#',
'      </div>',
'    </div>',
'    <div class="a-Alert-buttons">',
'      <button class="a-Button a-Button--large a-Button--hot" onclick="#BACK_LINK#" type="button">#RETURN_TO_APPLICATION#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-grid-container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex-col apex-col-#COLUMN_SPAN_NUMBER# #ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485266589875353.4473)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4473)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4473)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4473)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4473)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4473)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4473)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4473)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4473)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4473)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4473)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4473)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4473)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4473)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4473)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4473)
,p_name=>'Control Bar'
,p_placeholder=>'REGION_POSITION_09'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_button
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(514381861202541059.4473)
,p_template_name=>'APEX 5.0 - Button'
,p_internal_name=>'APEX_5.0_BUTTON'
,p_template=>'<button onclick="#JAVASCRIPT#" class="a-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="a-Button a-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_icon_menu_button
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(514382190540541061.4473)
,p_template_name=>'APEX 5.0 - Icon Menu Button'
,p_internal_name=>'APEX_5.0_ICON_MENU_BUTTON'
,p_template=>'<button class="a-Button a-Button--noLabel a-Button--iconTextButton js-menuButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_'
||'CSS_CLASSES#" aria-hidden="true"></span><span class="a-Icon icon-menu-drop-down" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--noLabel a-Button--iconTextButton js-menuButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#><span class='
||'"a-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="a-Icon  icon-menu-drop-down" aria-hidden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_icon_only_button
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(514382538845541061.4473)
,p_template_name=>'APEX 5.0 - Icon Only Button'
,p_internal_name=>'APEX_5.0_ICON_ONLY_BUTTON'
,p_template=>'<button class="a-Button a-Button--noLabel a-Button--withIcon #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" aria-label="#LABEL!ATTR#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--noLabel a-Button--withIcon #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" aria-label="#LABEL!ATTR#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" #BUTTON_ATTRIBUTES#><span class="a-Icon #ICON_CSS_CL'
||'ASSES#" aria-hidden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_button_large
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(620629666890811728.4473)
,p_template_name=>'APEX 5.0 - Button (Large)'
,p_internal_name=>'APEX_5.0_BUTTON_LARGE'
,p_template=>'<button value="#LABEL!ATTR#" onclick="#JAVASCRIPT#" class="a-Button a-Button--large #BUTTON_CSS_CLASSES#" type="button" role="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_hot_template=>'<button value="#LABEL!ATTR#" onclick="#JAVASCRIPT#" class="a-Button a-Button--large a-Button--hot #BUTTON_CSS_CLASSES#" type="button" role="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_button_small
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(620629778318811745.4473)
,p_template_name=>'APEX 5.0 - Button (Small)'
,p_internal_name=>'APEX_5.0_BUTTON_SMALL'
,p_template=>'<button value="#LABEL!ATTR#" onclick="#JAVASCRIPT#" class="a-Button a-Button--small #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_hot_template=>'<button value="#LABEL!ATTR#" onclick="#JAVASCRIPT#" class="a-Button a-Button--small a-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL!HTML#</button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/apex_5_0_button_with_icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(868252865986181054.4473)
,p_template_name=>'APEX 5.0 - Button with Icon'
,p_internal_name=>'APEX_5.0_BUTTON_WITH_ICON'
,p_template=>'<button class="a-Button a-Button--iconTextButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL!HTML#<span class="a-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_hot_template=>'<button class="a-Button a-Button--hot a-Button--iconTextButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL!HTML#<span class="a-Icon #ICON_CSS_CLASSES#"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Region #REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="a-Region-header">',
'    <div class="a-Region-headerItems  a-Region-headerItems--title">',
'      <h2 class="a-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'    </div>',
'    <div class="a-Region-headerItems  a-Region-headerItems--buttons">',
'      #PREVIOUS##EXPAND##EDIT##CHANGE##DELETE##COPY##HELP##NEXT##CREATE##CREATE2##CLOSE#',
'    </div>',
'  </div>',
'  <div class="a-Region-body">',
'  <div class="a-Region-bodyHeader">#REGION_HEADER#</div>',
'  #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'[x] APEX 5.0 - Region'
,p_internal_name=>'APEX_5.0_REGION'
,p_theme_id=>3
,p_theme_class_id=>21
,p_preset_template_options=>'a-Region--noPadding'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_translate_this_template=>'N'
,p_template_comment=>'      <button class="a-Button a-Button--noLabel a-Button--withIcon a-Button--noUI a-Button--goToTop" onclick="uF();" type="button" title="&TOP."><span class="a-Icon icon-up-chevron"></span></button>'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962385277500935.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4473)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_div_with_id_class_and_region_attributes
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(514343873675436760.4473)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>#PREVIOUS##BODY##NEXT#</div>'
,p_page_plug_template_name=>'[x] APEX 5.0 - Div with ID, Class, and Region Attributes'
,p_internal_name=>'APEX_5.0_DIV_WITH_ID,_CLASS,_AND_REGION_ATTRIBUTES'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>3
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585474981747544.4473)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4473)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4473)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4473)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4473)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4473)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_wizard_body_hide_show
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="aWizardRegion aWizardRegion--disclosure" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="wizardRegionHeading">',
'    <h2 data-apex-heading>',
'        <button type="button">#TITLE#</button>',
'    </h2>',
'    <div class="buttonContainer">',
'    #EDIT##CLOSE##EXPAND##HELP##DELETE##COPY##PREVIOUS##NEXT##CREATE##CREATE2#',
'    </div>',
'  </div>',
'  <div class="hideShowRegion" id="#REGION_STATIC_ID#_content">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'[x] APEX 5.0 - Wizard Body (Hide/Show)'
,p_internal_name=>'APEX_5.0_WIZARD_BODY_HIDE/SHOW'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( "##REGION_STATIC_ID#" ).collapsible({',
'    content: $( "##REGION_STATIC_ID#_content" )',
'});'))
,p_theme_id=>3
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207496127505978.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4473)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_button_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-ButtonRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="a-ButtonRegion-wrap">',
'    <div class="a-ButtonRegion-col a-ButtonRegion-col--left"><div class="a-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="a-ButtonRegion-col a-ButtonRegion-col--content">',
'      <h2 id="#REGION_STATIC_ID#_TITLE" class="a-ButtonRegion-title" data-apex-heading>#TITLE#</h2>',
'      #BODY#',
'      <div class="a-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="a-ButtonRegion-col a-ButtonRegion-col--right"><div class="a-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'APEX 5.0 - Button Region'
,p_internal_name=>'APEX_5.0_BUTTON_REGION'
,p_theme_id=>3
,p_theme_class_id=>21
,p_default_template_options=>'a-ButtonRegion--wizard'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_TITLE'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2204663592232325.4473)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4473)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4473)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4473)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4473)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4473)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4473)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4473)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4473)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_wizard_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(850442966147812557.4473)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Wizard-region a-Form #REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <h2 id="#REGION_STATIC_ID#_TITLE" class="u-vh" data-apex-heading>#TITLE#</h2>',
'  <div class="a-Wizard-regionHeader">#REGION_HEADER#</div>',
'  <div class="a-Wizard-regionBody">#BODY#</div>',
'  <div class="a-Wizard-regionFooter">#REGION_FOOTER#</div>',
'</div>'))
,p_page_plug_template_name=>'[x] APEX 5.0 - Wizard Region'
,p_internal_name=>'APEX_5.0_WIZARD_REGION'
,p_theme_id=>3
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_TITLE'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3346988371508588.4473)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4473)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_alert
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <div class="a-Alert-wrap">',
'    <div class="a-Alert-icon">',
'      <span class="a-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span>',
'    </div>',
'    <div class="a-Alert-content">',
'      <div class="a-Alert-header">',
'        <h2 id="#REGION_STATIC_ID#_TITLE" class="a-Alert-title" data-apex-heading>#TITLE#</h2>',
'      </div>',
'      <div role="alert" class="a-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="a-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'[x] APEX 5.0 - Alert'
,p_internal_name=>'APEX_5.0_ALERT'
,p_theme_id=>3
,p_theme_class_id=>7
,p_default_template_options=>'a-Alert--defaultIcons'
,p_preset_template_options=>'a-Alert--warning:a-Alert--wizard'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_TITLE'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526185270486606.4473)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4473)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4473)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4473)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4473)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4473)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_wizard_header
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(914802799655239969.4473)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="wizardHeader" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'</div>'))
,p_page_plug_template_name=>'[x] APEX 5.0 - Wizard Header'
,p_internal_name=>'APEX_5.0_WIZARD_HEADER'
,p_theme_id=>3
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183211858816924.4473)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4473)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_wizard_title_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(914803495164240003.4473)
,p_layout=>'TABLE'
,p_template=>'<div class="#REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><h1 class="a-Wizard-title" data-apex-heading>#TITLE#</h1></div>'
,p_page_plug_template_name=>'[x] APEX 5.0 - Wizard Title Region'
,p_internal_name=>'APEX_5.0_WIZARD_TITLE_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>3
,p_theme_class_id=>0
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_form_table_attr=>'class="htmldbInstruct"'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373447170510516.4473)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4473)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_interactive_report_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(915210356236972585.4473)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="a-IRR-region #REGION_CSS_CLASSES#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
'  <h2 id="#REGION_STATIC_ID#_heading" class="u-vh a-Region-header" data-apex-heading>#TITLE#</h2>',
'  #PREVIOUS##BODY##NEXT#',
'</div>',
''))
,p_page_plug_template_name=>'[x] APEX 5.0 - Interactive Report Region'
,p_internal_name=>'APEX_5.0_INTERACTIVE_REPORT_REGION'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>3
,p_theme_class_id=>0
,p_default_template_options=>'a-IRR-region--responsiveIconView'
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_heading'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2899946654493378.4473)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4473)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4473)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4473)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4473)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4473)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_hide_show_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Region a-Region--hideShow #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# #REGION_LANDMARK_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  <div class="a-Region-header">',
'    <div class="a-Region-headerItems  a-Region-headerItems--controls">',
'        <h2 id="#REGION_STATIC_ID#_TITLE" class="a-Region-title" data-apex-heading>',
'            <button class="a-Region-toggle" type="button">#TITLE#</button>',
'        </h2>',
'    </div>',
'    <div class="a-Region-headerItems  a-Region-headerItems--buttons">',
'      #PREVIOUS##EXPAND##EDIT##CHANGE##DELETE##COPY##HELP##NEXT##CREATE##CREATE2##CLOSE#',
'    </div>',
'  </div>',
'  <div class="a-Region-body">',
'  #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'[x] APEX 5.0 - Hide + Show Region'
,p_internal_name=>'APEX_5.0_HIDE_+_SHOW_REGION'
,p_theme_id=>3
,p_theme_class_id=>21
,p_default_template_options=>'a-Region--flush'
,p_preset_template_options=>'is-expanded'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_region_title_dom_id=>'#REGION_STATIC_ID#_TITLE'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2695578355491332.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4473)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/apex_5_0_processing_spinner_region
begin
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(1274355059486017828.4473)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-ProcessingRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <span class="u-Processing"><span class="u-Processing-spinner"></span></span>',
'  <div class="a-ProcessingRegion-title">#TITLE#</div>',
'  <div class="a-ProcessingRegion-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'[x] APEX 5.0 - Processing Spinner Region'
,p_internal_name=>'APEX_5.0_PROCESSING_SPINNER_REGION'
,p_theme_id=>3
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61232728057733462.4473)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4473)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4473)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4473)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/apex_5_0_navigation_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(514332014414430986.4473)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'APEX 5.0 - Navigation List'
,p_internal_name=>'APEX_5.0_NAVIGATION_LIST'
,p_theme_id=>3
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul>'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>',
''))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>',
''))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>',
''))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>',
''))
,p_a06_label=>'Link Target'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/apex_5_0_menu_popup
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(514332292784430987.4473)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'APEX 5.0 - Menu Popup'
,p_internal_name=>'APEX_5.0_MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup(e);',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>3
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#" target="#A06#">#TEXT_ESC_SC#</a>'
,p_a06_label=>'Target'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/apex_5_0_image_navigation
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(860563697365629462.4473)
,p_list_template_current=>'<li class="a-ImageNav-item"><button type="button" data-link="#LINK#" class="a-ImageNav-link launch-aut #A01#"><span class="a-ImageNav-img gi-icon-#IMAGE#"></span><span class="a-ImageNav-label">#TEXT_ESC_SC#</span></button></li>'
,p_list_template_noncurrent=>'<li class="a-ImageNav-item"><a href="#LINK#" class="a-ImageNav-link #A01#"><span class="a-ImageNav-img gi-icon-#IMAGE#"></span><span class="a-ImageNav-label">#TEXT_ESC_SC#</span></a></li>'
,p_list_template_name=>'APEX 5.0 - Image Navigation'
,p_internal_name=>'APEX_5.0_IMAGE_NAVIGATION'
,p_theme_id=>3
,p_theme_class_id=>0
,p_list_template_before_rows=>'<ul class="a-ImageNav #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td style="width: 20%">',
'	<a href="#LINK#" class="iconContainer" title="#TEXT_ESC_SC#">',
'		<span class="largeIcon"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></span>',
'		<span class="iconLabel">#TEXT#</span>',
'	</a>',
'</td>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/apex_5_0_wizard_progress
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(865273508717512144.4473)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-WizardSteps-step is-active" aria-current="step">',
'  <div class="a-WizardSteps-wrap">',
'    <span class="a-WizardSteps-marker" aria-hidden="true"><span class="a-Icon icon-wizard-step-complete"></span></span>',
'    <span class="a-WizardSteps-label">#TEXT#</span>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-WizardSteps-step is-inactive">',
'  <div class="a-WizardSteps-wrap">',
'    <span class="a-WizardSteps-marker" aria-hidden="true"><span class="a-Icon icon-wizard-step-complete"></span></span>',
'    <span class="a-WizardSteps-label">#TEXT#</span>',
'  </div>',
'</li>',
''))
,p_list_template_name=>'APEX 5.0 - Wizard Progress'
,p_internal_name=>'APEX_5.0_WIZARD_PROGRESS'
,p_theme_id=>3
,p_theme_class_id=>17
,p_default_template_options=>'a-WizardSteps--slim'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul aria-label="#CURRENT_PROGRESS#" class="a-WizardSteps #COMPONENT_CSS_CLASSES#">',
''))
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/apex_5_0_media_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-MediaList-item is-active">',
'    <div class="a-MediaList-link">',
'        <div class="a-MediaList-iconWrap">',
'            <span class="a-MediaList-icon" aria-hidden="true"><span class="a-Icon #IMAGE#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="a-MediaList-body">',
'            <h3 class="a-MediaList-title" aria-describedby="description_#LIST_ITEM_ID#"><a href="#LINK#" aria-current="page" #A03#>#TEXT#</a></h3>',
'            <p id="description_#LIST_ITEM_ID#" class="a-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="a-MediaList-badgeWrap">',
'            <span class="a-MediaList-badge">#A02#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-MediaList-item">',
'    <div class="a-MediaList-link">',
'        <div class="a-MediaList-iconWrap">',
'            <span class="a-MediaList-icon" aria-hidden="true"><span class="a-Icon #IMAGE#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="a-MediaList-body">',
'            <h3 class="a-MediaList-title" aria-describedby="description_#LIST_ITEM_ID#"><a href="#LINK#" #A03#>#TEXT#</a></h3>',
'            <p id="description_#LIST_ITEM_ID#" class="a-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="a-MediaList-badgeWrap">',
'            <span class="a-MediaList-badge">#A02#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_list_template_name=>'[x] APEX 5.0 - Media List'
,p_internal_name=>'APEX_5.0_MEDIA_LIST'
,p_theme_id=>3
,p_theme_class_id=>9
,p_default_template_options=>'a-MediaList--noBadge'
,p_list_template_before_rows=>'<ul class="a-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/apex_5_0_links_list
begin
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(914818080687341593.4473)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="a-LinksList-link" #A02#>',
'    <span class="a-LinksList-icon" aria-hidden="true"><span class="t-Icon #IMAGE#"></span></span>',
'    <span class="a-LinksList-label">#TEXT#</span>',
'    <span class="u-vh">&nbsp;</span>',
'    <span class="a-LinksList-badge">#A01#</span>',
'    <span class="a-LinksList-arrow" aria-hidden="true"></span>',
'  </a>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-LinksList-item #A03#">',
'  <a href="#LINK#" class="a-LinksList-link" #A02#>',
'    <span class="a-LinksList-icon" aria-hidden="true"><span class="t-Icon #IMAGE#"></span></span>',
'    <span class="a-LinksList-label">#TEXT#</span>',
'    <span class="u-vh">&nbsp;</span>',
'    <span class="a-LinksList-badge">#A01#</span>',
'    <span class="a-LinksList-arrow" aria-hidden="true"></span>',
'  </a>',
'</li>',
''))
,p_list_template_name=>'[x] APEX 5.0 - Links List'
,p_internal_name=>'APEX_5.0_LINKS_LIST'
,p_theme_id=>3
,p_theme_class_id=>1
,p_default_template_options=>'a-LinksList--showArrow'
,p_list_template_before_rows=>'<ul class="a-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-LinksList-item is-current #A03#" aria-current="page">',
'  <a href="#LINK#" class="a-LinksList-link" #A02#>',
'    <span class="a-LinksList-icon" aria-hidden="true"><span class="t-Icon #IMAGE#"></span></span>',
'    <span class="a-LinksList-label">#TEXT#</span>',
'    <span class="a-LinksList-badge">#A01#</span>',
'    <span class="a-LinksList-arrow" aria-hidden="true"></span>',
'  </a>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-LinksList-item #A03#">',
'  <a href="#LINK#" class="a-LinksList-link" #A02#>',
'    <span class="a-LinksList-icon" aria-hidden="true"><span class="t-Icon #IMAGE#"></span></span>',
'    <span class="a-LinksList-label">#TEXT#</span>',
'    <span class="a-LinksList-badge">#A01#</span>',
'    <span class="a-LinksList-arrow" aria-hidden="true"></span>',
'  </a>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-LinksList-item is-current is-expanded #A03#" aria-current="page">',
'  <a href="#LINK#" class="a-LinksList-link" #A02#>',
'    <span class="a-LinksList-icon" aria-hidden="true"><span class="t-Icon #IMAGE#"></span></span>',
'    <span class="a-LinksList-label">#TEXT#</span>',
'    <span class="u-vh">&nbsp;</span>',
'    <span class="a-LinksList-badge">#A01#</span>',
'    <span class="a-LinksList-arrow" aria-hidden="true"></span>',
'  </a>',
'  #SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-LinksList-item #A03#">',
'  <a href="#LINK#" class="a-LinksList-link" #A02#>',
'    <span class="a-LinksList-icon" aria-hidden="true"><span class="t-Icon #IMAGE#"></span></span>',
'    <span class="a-LinksList-label">#TEXT#</span>',
'    <span class="u-vh">&nbsp;</span>',
'    <span class="a-LinksList-badge">#A01#</span>',
'    <span class="a-LinksList-arrow" aria-hidden="true"></span>',
'  </a>',
'  #SUB_LISTS#',
'</li>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report/apex_5_0_badge_list_named_column
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_row_template_name=>'APEX 5.0 - Badge List (Named Column)'
,p_internal_name=>'APEX_5.0_BADGE_LIST_NAMED_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-BadgeList-item #A01#">',
'  <span class="a-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="a-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>',
''))
,p_row_template_before_rows=>'<ul class="a-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'0'
,p_theme_id=>3
,p_theme_class_id=>0
,p_preset_template_options=>'a-BadgeList--fixed:a-BadgeList--large'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/apex_5_0_badge_list_row
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(851054516889639461.4473)
,p_row_template_name=>'APEX 5.0 - Badge List (Row)'
,p_internal_name=>'APEX_5.0_BADGE_LIST_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#1#</span>',
'  <span class="t-BadgeList-value">#2#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>3
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/apex_5_0_links_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(851055225644639463.4473)
,p_row_template_name=>'APEX 5.0 - Links List'
,p_internal_name=>'APEX_5.0_LINKS_LIST'
,p_row_template1=>'<li class="a-LinksList-item">#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>'<ul class="a-LinksList a-LinksList--report #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'OMIT'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>3
,p_theme_class_id=>0
,p_default_template_options=>'a-LinksList--nowrap:a-LinksList--showArrow'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/apex_5_0_standard_report
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(851056531929639482.4473)
,p_row_template_name=>'APEX 5.0 - Standard Report'
,p_internal_name=>'APEX_5.0_STANDARD_REPORT'
,p_row_template1=>'<td class="a-Report-cell" #ALIGNMENT# #ACCESSIBLE_HEADERS# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="a-Report-wrap">',
'    <table class="a-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="a-Report-tableWrap">',
'    <table class="a-Report-report" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="a-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="a-Report-pagination a-Report-pagination a-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="a-Report-colHead" #ALIGNMENT# #ARIA_SORT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>'</thead><tbody>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="a-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>3
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/apex_5_0_portlet_column_template
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(914792024808213039.4473)
,p_row_template_name=>'APEX 5.0 - Portlet  Column Template'
,p_internal_name=>'APEX_5.0_PORTLET_COLUMN_TEMPLATE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-AVPList-item">',
'  <span class="a-AVPList-label">#COLUMN_HEADER#</span>',
'  <span class="a-AVPList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="a-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'0'
,p_theme_id=>3
,p_theme_class_id=>0
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/apex_5_0_portlet_row_template
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(914792322768213043.4473)
,p_row_template_name=>'APEX 5.0 - Portlet Row Template'
,p_internal_name=>'APEX_5.0_PORTLET_ROW_TEMPLATE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-AVPList-item">',
'  <span class="a-AVPList-label">#1#</span>',
'  <span class="a-AVPList-value">#2#</span>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="a-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_ID#_report">',
''))
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>3
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/apex_5_0_one_column_unordered_list
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(915377874236666939.4473)
,p_row_template_name=>'APEX 5.0 - One Column Unordered List'
,p_internal_name=>'APEX_5.0_ONE_COLUMN_UNORDERED_LIST'
,p_row_template1=>'<td class="a-Report-cell" #ALIGNMENT# #ACCESSIBLE_HEADERS# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="a-Report-wrap">',
'    <table class="a-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="a-Report-tableWrap">',
'    <table class="a-Report-report" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="a-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="a-Report-pagination a-Report-pagination a-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_after_column_heading=>'<tbody>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="a-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="a-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>3
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/apex_5_0_app_cards_report
begin
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(1041941432531249038.4473)
,p_row_template_name=>'APEX 5.0 - App Cards Report'
,p_internal_name=>'APEX_5.0_APP_CARDS_REPORT'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-AppCards-item #ID#">',
'  <div class="a-AppCards-itemContainer">',
'    <div class="a-AppCards-iconContainer">',
'      <span class="a-AppCards-icon #ICON_CLASS#"></span>',
'    </div>',
'    <div class="a-AppCards-contentContainer" id="#ID#_name">',
'      <h2 class="a-AppCards-name">#APP_NAME#</h2>',
'      <div class="a-AppCards-info">#APP_INFO#</div>',
'    </div>',
'    <div class="a-AppCards-actionsContainer">',
'        #MODIFY_APP_BUTTON#',
'        #RUN_APP_BUTTON#',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="a-AppCards-item #ID#">',
'  <div class="a-AppCards-itemContainer">',
'    <a href="#CARD_LINK#" class="a-AppCards-link">',
'      <div class="a-AppCards-iconContainer">',
'        <span class="a-AppCards-icon #ICON_CLASS#"></span>',
'      </div>',
'      <div class="a-AppCards-contentContainer" id="#ID#_name">',
'        <h2 class="a-AppCards-name">#APP_NAME#</h2>',
'        <div class="a-AppCards-info">#APP_INFO#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition2=>':CARD_LINK is not null'
,p_row_template_before_rows=>'<ul class="a-AppCards #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>3
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/apex_5_0_dynamic_attribute
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(850683711614406253.4473)
,p_template_name=>'APEX 5.0 - Dynamic Attribute'
,p_internal_name=>'APEX_5.0_DYNAMIC_ATTRIBUTE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'  <span class="a-Form-required"><span class="a-Icon icon-asterisk"></span></span><label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-dynamicItemHelp" data-itemname="#CURRENT_ITEM_NAME#" data-appid="&FB_FLOW_ID." title="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help"></span><span cl'
||'ass="u-VisuallyHidden">#CURRENT_ITEM_HELP_LABEL#</span></button>#ERROR_TEMPLATE#</div>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>3
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_template_comment=>'<label for="#CURRENT_ITEM_NAME#"><a class="htmldbLabelOptional" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999">'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/apex_5_0_optional_label
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(851047536471633848.4473)
,p_template_name=>'APEX 5.0 - Optional Label'
,p_internal_name=>'APEX_5.0_OPTIONAL_LABEL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>3
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/apex_5_0_optional_label_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(851047676005633854.4473)
,p_template_name=>'APEX 5.0 - Optional Label (Above)'
,p_internal_name=>'APEX_5.0_OPTIONAL_LABEL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer a-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_on_error_after_label=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>3
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/apex_5_0_required_label
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(851047684809633856.4473)
,p_template_name=>'APEX 5.0 - Required Label'
,p_internal_name=>'APEX_5.0_REQUIRED_LABEL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'  <span class="a-Form-required"><span class="a-Icon icon-asterisk"></span></span><label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>3
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/apex_5_0_required_label_above
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(851047795461633856.4473)
,p_template_name=>'APEX 5.0 - Required Label (Above)'
,p_internal_name=>'APEX_5.0_REQUIRED_LABEL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer">',
'  <span class="a-Form-required"><span class="a-Icon icon-asterisk"></span></span><label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' </label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer a-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_error_template=>'<span class="a-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>3
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden_label_read_by_screen_reader
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(860542631889572088.4473)
,p_template_name=>'Hidden label, read by screen reader'
,p_internal_name=>'HIDDEN_LABEL,_READ_BY_SCREEN_READER'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999" class="hideMeButHearMe">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>3
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/apex_5_0_hidden_label
begin
wwv_flow_imp_shared.create_field_template(
 p_id=>wwv_flow_imp.id(1321751941832424103.4473)
,p_template_name=>'APEX 5.0 - Hidden Label'
,p_internal_name=>'APEX_5.0_HIDDEN_LABEL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-Form-labelContainer a-Form-labelContainer--visuallyhidden">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="a-Form-label visuallyhidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="a-Form-fieldContainer #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="a-Form-inputContainer">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="a-Button a-Button--noUI a-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#"  aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidde'
||'n="true"></span></button>'
,p_theme_id=>3
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/apex_5_0_breadcrumbs
begin
wwv_flow_imp_shared.create_menu_template(
 p_id=>wwv_flow_imp.id(514333590213433126.4473)
,p_name=>'APEX 5.0 - Breadcrumbs'
,p_internal_name=>'APEX_5.0_BREADCRUMBS'
,p_before_first=>'<ul class="a-Breadcrumb">'
,p_current_page_option=>'<li class="a-Breadcrumb-item a-Breadcrumb-item is-active" aria-current="page"><span class="a-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="a-Breadcrumb-item"><a href="#LINK#" class="a-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>8
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>3
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_imp_shared.create_popup_lov_template(
 p_id=>wwv_flow_imp.id(649611704621764507.4473)
,p_page_name=>'winlov'
,p_page_title=>'Dialogfeld "Suchen"'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#APEX_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="stylesheet" href="#IMAGE_PREFIX#apex_ui/css/Core#MIN#.css?v=#APEX_VERSION#" type="text/css"/>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#apex_ui/css/Theme-Standard#MIN#.css?v=#APEX_VERSION#" type="text/css"/>',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="a-Page a-Page--popupLOV"'
,p_before_field_text=>'<div class="a-PopupLOV-actions a-Form--large">'
,p_filter_width=>'15'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="a-Form-field a-Form-searchField"'
,p_find_button_text=>'Suche'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>unistr('Schlie\00DFen')
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>'Weiter &gt;'
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>unistr('&lt; Zur\00FCck')
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>'<div class="a-PopupLOV-pagination">Zeilen #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>200
,p_before_result_set=>'<div class="a-PopupLOV-links">'
,p_theme_id=>3
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/default_calander
begin
wwv_flow_imp_shared.create_calendar_template(
 p_id=>wwv_flow_imp.id(649611609668764506.4473)
,p_cal_template_name=>'Default Calander'
,p_internal_name=>'DEFAULT_CALANDER'
,p_day_of_week_format=>'<th scope="col" width="14%" class="htmldbDayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="htmldbCalendarHolder" cellpadding="0" cellspacing="0" border="0" width="100%" summary="" role="presentation"><tr>',
'<td class="htmldbMonthTitle">#IMONTH# #YYYY#</td>',
'</tr>',
'<tr><td>'))
,p_month_open_format=>'<table class="htmldbCalendar" cellpadding="0" cellspacing="3" border="0" width="100%" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td></tr></table>',
'',
''))
,p_day_title_format=>'<div class="htmldbDayTitle">#DD#</div>'
,p_day_open_format=>'<td class="htmldbDay">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="htmldbToday">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="htmldbWeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td class="htmldbWeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="htmldbNonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="htmldbNonDay">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr>'
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>3
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(182005134783173294.4473)
,p_theme_id=>3
,p_name=>'DARK'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#apex_ui/css/Core#MIN#.css',
'#IMAGE_PREFIX#apex_ui/css/Theme-Dark#MIN#.css'))
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(666074212329754757.4473)
,p_theme_id=>3
,p_name=>'STANDARD_AUTO'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#apex_ui/css/Core#MIN#.css',
'#IMAGE_PREFIX#apex_ui/css/Theme-Standard#MIN#.css'))
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(666074525535755551.4473)
,p_theme_id=>3
,p_name=>'DARK_AUTO'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#apex_ui/css/Core#MIN#.css',
'#IMAGE_PREFIX#apex_ui/css/Theme-Dark#MIN#.css'))
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(717250289307903026.4473)
,p_theme_id=>3
,p_name=>'STANDARD'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#apex_ui/css/Core#MIN#.css',
'#IMAGE_PREFIX#apex_ui/css/Theme-Standard#MIN#.css'))
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(2336377640986141.4473)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4473)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4473)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4473)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4473)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4473)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4473)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4473)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4473)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4473)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4473)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4473)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4473)
,p_theme_id=>3
,p_name=>'FORM_LABEL_ALIGNMENT'
,p_display_name=>'Form Label Alignment'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Set Form Alignment for Grid Based forms'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114830529058024.4473)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4473)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4473)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4473)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4473)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4473)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4473)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4473)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4473)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4473)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4473)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4473)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4473)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4473)
,p_theme_id=>3
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1487577187426769.4473)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4473)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4473)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4473)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4473)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4473)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4473)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4473)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4473)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4473)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4473)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4473)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4473)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4473)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4473)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4473)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4473)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4473)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4473)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4473)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4473)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4473)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4473)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4473)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4473)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4473)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4473)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4473)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4473)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4473)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4473)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4473)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4473)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4473)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4473)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4473)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4473)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4473)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4473)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4473)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4473)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4473)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4473)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4473)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4473)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4473)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4473)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4473)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4473)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4473)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4473)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4473)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4473)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4473)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4473)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4473)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4473)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4473)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4473)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4473)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4473)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4473)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4473)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4473)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4473)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4473)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4473)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4473)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4473)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4473)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4473)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4473)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4473)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4473)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4473)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4473)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4473)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4473)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4473)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4473)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4473)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4473)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4473)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4473)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4473)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4473)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4473)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4473)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4473)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4473)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4473)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4473)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4473)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4473)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4473)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4473)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4473)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4473)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4473)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4473)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4473)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4473)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4473)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4473)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4473)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4473)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4473)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4473)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4473)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4473)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4473)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4473)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4473)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4473)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4473)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4473)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4473)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4473)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4473)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4473)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4473)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4473)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4473)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4473)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4473)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4473)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4473)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4473)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4473)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4473)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4473)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4473)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4473)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4473)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4473)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4473)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4473)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4473)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4473)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4473)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4473)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4473)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4473)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4473)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4473)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4473)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4473)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4473)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4473)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4473)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4473)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4473)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4473)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4473)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4473)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4473)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4473)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4473)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4473)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4473)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4473)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4473)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4473)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4473)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4473)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4473)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4473)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4473)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4473)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4473)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4473)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4473)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4473)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4473)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4473)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4473)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4473)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4473)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4473)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4473)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4473)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4473)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4473)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4473)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4473)
,p_template_types=>'REGION'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124555948366026039)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'de'
,p_message_text=>'Spalte %0'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124540574771026034)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'de'
,p_message_text=>'Administrator'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124540453384026034)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'de'
,p_message_text=>'Benutzername'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124603124889026053)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'de'
,p_message_text=>'Zugriff verweigert'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124560070268026040)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'de'
,p_message_text=>'Ihr %0-Account wurde erstellt.'
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124543275529026035)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'de'
,p_message_text=>'Account ist gesperrt.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124527795095026030)
,p_name=>'AM_PM'
,p_message_language=>'de'
,p_message_text=>'AM / PM'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124510502205026025)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'de'
,p_message_text=>'Aktionslink'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124510412629026025)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'de'
,p_message_text=>'Dialoglink'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124674889568026074)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'de'
,p_message_text=>'%0 umschalten'
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124682613180026076)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'de'
,p_message_text=>'(Aktiv)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124487438660026018)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'de'
,p_message_text=>unistr('Chat gel\00F6scht')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124487351585026018)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'de'
,p_message_text=>unistr('Chat l\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124483927430026017)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'de'
,p_message_text=>'Akzeptieren'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124484013015026017)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'de'
,p_message_text=>'Verweigern'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124483742231026017)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'de'
,p_message_text=>'Unterhaltungshistorie'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124487198617026018)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'de'
,p_message_text=>'Kopiert'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124487250905026018)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'de'
,p_message_text=>'In Zwischenablage kopiert'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124486964157026018)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'de'
,p_message_text=>'Kopieren'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124487058367026018)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'de'
,p_message_text=>'In Zwischenablage kopieren'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124484439862026017)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'de'
,p_message_text=>'Assistent'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124484885133026018)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'de'
,p_message_text=>'KI ist auf Workspace- oder Instanzebene deaktiviert.'
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124524163940026029)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'de'
,p_message_text=>unistr('Service f\00FCr generative KI mit angegebener ID oder statischer ID nicht gefunden.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124522894934026029)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Authentifizierungsfehler oder Zugriff verweigert (HTTP-%1) f\00FCr URL %0. Pr\00FCfen Sie die Konfiguration des Service f\00FCr generative KI %2.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124502668579026023)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Die HTTP-Anforderung an den Service f\00FCr generative KI bei %0 war nicht erfolgreich. HTTP-%1: %2')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124527057687026030)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler in HTTP-Anforderung an Generative AI Service f\00FCr Plug-in %0 im Modus %1. Pr\00FCfen Sie die Konfiguration des Service f\00FCr generative KI.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124489890369026019)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'de'
,p_message_text=>'Beispiele'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124488265476026019)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'de'
,p_message_text=>'Assistent'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124489656600026019)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124488182267026019)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'de'
,p_message_text=>'Sie'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124518847216026028)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('OCI Generative AI unterst\00FCtzt derzeit keine Chaterfahrung mit mehreren Nachrichten.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124498760198026022)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler beim Verarbeiten des Prompts %0 f\00FCr Anwendung %1. Pr\00FCfen Sie, ob App Builder auf dieser Instanz verf\00FCgbar ist.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124503861809026023)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Antwort f\00FCr KI-Service %0 kann nicht verarbeitet werden. Antwort: %1')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124510087928026025)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Nachricht senden'
,p_is_js_message=>true
,p_version_scn=>2692510
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124498349164026022)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler im Backend-KI-Service %0'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124484139306026017)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'de'
,p_message_text=>'Nachricht'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124484288548026017)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'de'
,p_message_text=>'Nachricht hier eingeben'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124487594976026018)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'de'
,p_message_text=>'Benutzeravatar'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124487628321026018)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'de'
,p_message_text=>'Diesen Text verwenden'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124484302317026017)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Eine nicht gesendete Nachricht liegt vor. Sind Sie sicher?'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124653361130026067)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Ajax-Aufruf hat Serverfehler %0 f\00FCr %1 zur\00FCckgegeben.')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124580424824026046)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'de'
,p_message_text=>'Der Anwendungsaliasname "%0" kann nicht in eine eindeutige Anwendungs-ID konvertiert werden.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124569284506026043)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'ERR-1816 Unerwarteter Fehler beim Konvertieren von Anwendungsaliasname p_flow_alias_or_id (%0).'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124666602896026071)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>unistr('Die Anwendungspr\00FCfsumme bietet eine einfache M\00F6glichkeit, um festzustellen, ob dieselbe Anwendung in mehreren Workspaces bereitgestellt wird. Sie k\00F6nnen diese Pr\00FCfsumme vergleichen, um zu pr\00FCfen, ob eine \00DCbereinstimmung vorliegt. ')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124553217963026038)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten der Authentifizierungsfunktion'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124535217637026033)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten der Authentifizierungsfunktion'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124707104047026084)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'de'
,p_message_text=>unistr('Von Oracle Cloud Identity Management zur\00FCckgegebener Mandantenname %0 ist nicht f\00FCr die Domain %1 autorisiert.<br/><a href="&LOGOUT_URL.">Melden Sie sich erneut an</a>, und geben Sie einen autorisierten Mandantennamen an, oder \00E4ndern Sie die URL.')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124531362736026031)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'de'
,p_message_text=>unistr('Ihr Account "%0" verf\00FCgt nicht \00FCber die erforderlichen Entwicklungsberechtigungen (DB_DEVELOPER oder DB_ADMINISTRATOR)<br/>f\00FCr Workspace "%1". <a href="&LOGOUT_URL.">Melden Sie sich erneut an</a>, nachdem die Berechtigungen erteilt wurden.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124527985703026031)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'de'
,p_message_text=>unistr('Von Oracle Cloud Identity Management zur\00FCckgegebener Mandantenname ist nicht f\00FCr den aktuellen Workspace autorisiert. <br/><a href="&LOGOUT_URL.">Melden Sie sich erneut an</a>, und geben Sie einen autorisierten Mandantennamen an.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124531424211026031)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'de'
,p_message_text=>unistr('Aus Sicherheitsgr\00FCnden ist das Ausf\00FChren von Anwendungen dieses Workspace \00FCber die Domain in der URL nicht zul\00E4ssig.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124552973364026038)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'de'
,p_message_text=>unistr('Bitten Sie Ihren Datenbankadministrator, die Datei $OH/rdbms/admin/catldap.sql auszuf\00FChren.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124552849988026038)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'de'
,p_message_text=>unistr('SYS.DBMS_LDAP-Package ist nicht vorhanden oder ung\00FCltig.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124552739672026038)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten der LDAP-Benutzerfunktion.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124553059877026038)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten der LDAP-Authentifizierung.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124553897826026038)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'de'
,p_message_text=>'Fehler in der Prozedur p_flow_page argument to login_page.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124553427641026038)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltige p_session in wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124604703885026053)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'de'
,p_message_text=>unistr('Fehlerhaftes Argument f\00FCr wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124553539463026038)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'de'
,p_message_text=>unistr('Null Benutzername an Anmeldeprozedur \00FCbergeben.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124540322408026034)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'de'
,p_message_text=>'Warten Sie <span id="apex_login_throttle_sec">%0</span> Sekunden, bis Sie sich erneut anmelden.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124541683593026034)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'de'
,p_message_text=>'Der Anmeldeversuch wurde blockiert.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124602448980026052)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Authentifizierung "%0" nicht gefunden'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124542115295026035)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'de'
,p_message_text=>'Sicherheitsgruppen-ID ist Null.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124553389512026038)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler beim Ausf\00FChren des Post-Authentifizierungsprozesses.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124553196183026038)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten des Pre-Authentifizierungsprozesses.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124554804666026038)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\00D6ffnen Sie die URL in dem Browser, in dem die Kennwortr\00FCcksetzung angefordert wurde. Wenn Sie auf "Kennwort-URL zur\00FCcksetzen" klicken, werden Sie zur'),
unistr('Anmeldeseite umgeleitet. Initiieren Sie die Option "Kennwort zur\00FCcksetzen" erneut, und lassen Sie das'),
unistr('Browserfenster ge\00F6ffnet.')))
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124704604842026083)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'de'
,p_message_text=>unistr('Kennwort-URL zur\00FCcksetzen')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124531616640026032)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'de'
,p_message_text=>'Resource Manager-Nutzungsgruppe %0 wurde nicht %1 erteilt'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124531753163026032)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'de'
,p_message_text=>'Verwenden Sie DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP, um die fehlende Berechtigung zu erteilen.'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124566356016026042)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten der Session-Sentry-Funktion.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124566423976026042)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten der Sessionverifizierungsfunktion.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124566659112026042)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'de'
,p_message_text=>unistr('Bitten Sie den %0 Administrator, die Engine f\00FCr Oracle Application Server Single Sign-On zu konfigurieren.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124577011395026045)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiges %0 in %1 Token von SSO zur\00FCckgegeben.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124553722841026038)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'de'
,p_message_text=>unistr('Bearbeiten Sie das Authentifizierungsschema, und f\00FCgen Sie den Anwendungsnamen hinzu.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124576710656026045)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Caller von %0-Prozedur:')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124576949852026045)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltige Anwendungssession in URLC-Token: %0')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124576587632026045)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'de'
,p_message_text=>'Fehler in portal_sso_redirect: Fehlende Informationen zur Anwendungsregistrierung: %0'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124566506393026042)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'de'
,p_message_text=>unistr('WWSEC_SSO_ENABLER_PRIVATE-Package ist nicht vorhanden oder ist ung\00FCltig.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124553671196026038)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'de'
,p_message_text=>'Name der registrierten Partneranwendung im Authentifizierungsschema nicht gefunden.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124576641221026045)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'de'
,p_message_text=>'Registrieren Sie diese Anwendung entsprechend der Beschreibung im Installation Guide.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124566702729026042)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten der SSO-Authentifizierung.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124680059885026076)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'de'
,p_message_text=>'Nicht autorisierte URL: %0'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124566146317026042)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten der Authentifizierung.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124531543196026032)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'de'
,p_message_text=>'Workspace "%0" ist inaktiv. Wenden Sie sich an den Administrator.'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124532238577026032)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'de'
,p_message_text=>'%0'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124541317706026034)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'de'
,p_message_text=>unistr('Zugriff von Sicherheitspr\00FCfung der Anwendung abgelehnt')
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124541460268026034)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Zugriff von Sicherheitspr\00FCfung der Seite abgelehnt')
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124541576947026034)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler bei Verarbeitung der Autorisierung.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124610678949026055)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'de'
,p_message_text=>'Erstellt mit %0 und %1'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124610740217026055)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'de'
,p_message_text=>'Liebe'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124670588634026073)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>'Ereignisbeschreibung'
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124670360355026073)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'de'
,p_message_text=>'Enddatum'
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124670646681026073)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'de'
,p_message_text=>'Ereignis-ID'
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124670224646026073)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'de'
,p_message_text=>'Startdatum'
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124670488251026073)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'de'
,p_message_text=>'Ereignistitel'
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124513029049026026)
,p_name=>'APEX.CARD'
,p_message_language=>'de'
,p_message_text=>'Karte'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124513288217026026)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'de'
,p_message_text=>'Kartenaktion'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124553978832026038)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'de'
,p_message_text=>unistr('Ausgeblendetes Kontrollk\00E4stchen')
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124555844934026039)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Pr\00FCfsummeninhaltsfehler')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124555796897026039)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Pr\00FCfsummenformatfehler')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124625631759026059)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'de'
,p_message_text=>'In Zwischenablage kopiert.'
,p_is_js_message=>true
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124625146633026059)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'de'
,p_message_text=>unistr('Dieser Browser unterst\00FCtzt das Kopieren \00FCber eine Schaltfl\00E4che oder ein Men\00FC nicht. Verwenden Sie STRG+C oder Befehlstaste+C.')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124611304180026055)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'de'
,p_message_text=>unistr('Schlie\00DFen')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124489778658026019)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'de'
,p_message_text=>unistr('Der Codeeditorinhalt \00FCberschreitet die maximale L\00E4nge des Elements (tats\00E4chlich: %0, zul\00E4ssig: %1 Zeichen)')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124669867645026072)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'de'
,p_message_text=>'Kontrast'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124664310528026071)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'de'
,p_message_text=>'Aktuell'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124664226542026071)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'de'
,p_message_text=>unistr('Anf\00E4nglich')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124668459694026072)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'de'
,p_message_text=>unistr('#LABEL# muss eine g\00FCltige Farbe sein. Beispiel: %0')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124530881162026031)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'de'
,p_message_text=>'Mehr Farben'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124530968907026031)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'de'
,p_message_text=>unistr('Farbauswahl \00F6ffnen')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124488008776026019)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'de'
,p_message_text=>'Horizontaler Alpha-Schieberegler. Mit Pfeiltasten navigieren.'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124487773281026018)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'de'
,p_message_text=>'Farbspektrum, 4-Wege-Schieberegler. Mit Pfeiltasten navigieren.'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124487896029026019)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'de'
,p_message_text=>unistr('Vertikaler Schieberegler f\00FCr den Farbton. Mit Pfeiltasten navigieren.')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124664105318026071)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'de'
,p_message_text=>unistr('Eine Farbe ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124664478470026071)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'de'
,p_message_text=>unistr('Farbformat \00E4ndern')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124702315304026082)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'de'
,p_message_text=>'Werteliste'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124702457204026082)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'de'
,p_message_text=>unistr('Liste \00F6ffnen f\00FCr: %0')
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124682791827026076)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'de'
,p_message_text=>'(Abgeschlossen)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124571605619026043)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'de'
,p_message_text=>'Wenden Sie sich an den Anwendungsadministrator.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124587184788026048)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Wenden Sie sich an den Anwendungsadministrator.',
'Details zu diesem Vorfall finden Sie unter Debugging-ID "%0".'))
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124668768951026072)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'de'
,p_message_text=>'Korrigieren Sie die Fehler, bevor Sie speichern.'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124514014476026026)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'de'
,p_message_text=>unistr('%0. Dr\00FCcken Sie zum L\00F6schen die R\00FCcktaste.')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124612250982026055)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('%0 \00DCbereinstimmungen gefunden')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124494123050026020)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('1 \00DCbereinstimmung gefunden')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124612195861026055)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'de'
,p_message_text=>unistr('Keine \00DCbereinstimmungen gefunden')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124488509802026019)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'de'
,p_message_text=>'Weitere'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124488400535026019)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'de'
,p_message_text=>unistr('%0 Werte ausgew\00E4hlt')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124683240177026076)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'de'
,p_message_text=>'Aktueller Fortschritt'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124669109048026072)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Die im %0-Element angegebene Datei ist in APEX_APPLICATION_TEMP_FILES nicht vorhanden.'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124657633435026069)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'de'
,p_message_text=>unistr('Die aktuelle Version der Daten in der Datenbank wurde ge\00E4ndert, seit der Benutzer einen Update-Prozess eingeleitet hat.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124626729714026060)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'de'
,p_message_text=>'Nicht laden'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124673053499026073)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'de'
,p_message_text=>'Vorverarbeitungsfehler'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124672880113026073)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'de'
,p_message_text=>unistr('Zeile einf\00FCgen')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124686413983026077)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'de'
,p_message_text=>'Sequenz: Aktion'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124672933754026073)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'de'
,p_message_text=>'Zeile aktualisieren'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124501440098026023)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'de'
,p_message_text=>'Aktionen'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124529073560026031)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'de'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124515112488026027)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'de'
,p_message_text=>unistr('%0 muss eine Datumsauswahl oder ein g\00FCltiges Datum sein. Beispiel: %1.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124624334003026059)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'de'
,p_message_text=>unistr('L\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124532546886026032)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'de'
,p_message_text=>'Fertig'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124543505576026035)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('%0 hat nicht unterst\00FCtzte Teile in der Formatmaske: %1')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124528776698026031)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'de'
,p_message_text=>'Stunde'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124612650294026055)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'de'
,p_message_text=>'Popup-Kalender: %0'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124528566672026031)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'de'
,p_message_text=>'Woche'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124528687066026031)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'de'
,p_message_text=>'Wo'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124528969646026031)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'de'
,p_message_text=>'Minuten'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124529128379026031)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'de'
,p_message_text=>'Monat'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124529568484026031)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chster Monat')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124499111180026022)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'de'
,p_message_text=>unistr('Popup f\00FCr %0')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124529425079026031)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'de'
,p_message_text=>'Vorheriger Monat'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124621912242026058)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'de'
,p_message_text=>unistr('Schreibgesch\00FCtzte Datumsauswahl')
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124530343827026031)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'de'
,p_message_text=>unistr('Datum ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124499272194026022)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'de'
,p_message_text=>unistr('Datum und Uhrzeit ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124496409334026021)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'de'
,p_message_text=>unistr('Tag w\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124499872772026022)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'de'
,p_message_text=>unistr('Monat und Jahr ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124496662844026021)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'de'
,p_message_text=>unistr('Zeit ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124497164715026021)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'de'
,p_message_text=>'Heute'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124514702256026027)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'de'
,p_message_text=>unistr('#LABEL# muss ein g\00FCltiges Datum sein. Beispiel: %0.')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124514441893026027)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'de'
,p_message_text=>'#LABEL# muss zwischen %0 und %1 liegen.'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124514515361026027)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'de'
,p_message_text=>'#LABEL# muss am oder nach dem %0 liegen.'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124514629203026027)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'de'
,p_message_text=>'#LABEL# muss am oder vor dem %0 liegen.'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124506024953026024)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'de'
,p_message_text=>'Ausgeblendetes, bearbeitbares Element'
,p_is_js_message=>true
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124529345623026031)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'de'
,p_message_text=>'Jahr'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124616361607026056)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'de'
,p_message_text=>unistr('#LABEL# ist sp\00E4ter als das angegebene sp\00E4teste Datum %0.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124616734050026057)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'de'
,p_message_text=>unistr('#LABEL# stimmt nicht mit Format %0 \00FCberein.')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124616293597026056)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'de'
,p_message_text=>unistr('#LABEL# ist fr\00FCher als das angegebene fr\00FCheste Datum %0.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124616493966026056)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'de'
,p_message_text=>unistr('#LABEL# liegt nicht im g\00FCltigen Bereich zwischen %0 und %1.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124616620804026057)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'de'
,p_message_text=>unistr('#LABEL# liegt nicht innerhalb des g\00FCltigen Jahresbereichs von %0 und %1.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124508463592026025)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'de'
,p_message_text=>'Bei der Verarbeitung der DBMS_CLOUD-Anforderung ist ein interner Fehler aufgetreten.'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124669070256026072)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'de'
,p_message_text=>'Abbrechen'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124694948600026080)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'de'
,p_message_text=>unistr('Schlie\00DFen')
,p_is_js_message=>true
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124556168685026039)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'de'
,p_message_text=>unistr('Best\00E4tigung')
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124696949266026081)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'de'
,p_message_text=>'Hilfe'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124668833765026072)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'de'
,p_message_text=>'OK'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124668905472026072)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'de'
,p_message_text=>'Speichern'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124536622645026033)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'de'
,p_message_text=>'Dialogfeldtitel'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124576343982026045)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'de'
,p_message_text=>'Ausgeblendeter Dialogfeldtitel'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124497410597026021)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'de'
,p_message_text=>'Vordefinierte Oracle-Funktion "Dokumentgenerator"'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124508278768026025)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Drucken eines Dokuments.'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124485448608026018)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('%1 wird nicht als Ausgabe von %s unterst\00FCtzt.')
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124497314402026021)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler "%0" beim Aufrufen der vordefinierten Oracle-Funktion "Dokumentgenerator"'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124488806852026019)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Eine Vorlage ist erforderlich.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124514230454026027)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'de'
,p_message_text=>'Beim Herunterladen der Datei ist ein Fehler aufgetreten.'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124514195989026027)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'de'
,p_message_text=>'Keine herunterladbaren Daten gefunden.'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124517706100026028)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'de'
,p_message_text=>unistr('Diese Funktion ist in einer reinen Laufzeitumgebung nicht verf\00FCgbar.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124570548586026043)
,p_name=>'APEX.ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124530483202026031)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'de'
,p_message_text=>unistr('Der folgende Fehler ist bei der Ausf\00FChrung des Callbacks f\00FCr das Fehlerhandling aufgetreten: %0')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124543058686026035)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim erstellen der Fehlerseite: %0'
,p_version_scn=>2692515
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124532196131026032)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'de'
,p_message_text=>'Interner Fehler'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124681812893026076)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Wenden Sie sich an den Administrator.',
'Details zu diesem Vorfall finden Sie unter Debugging-ID "%0".'))
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124676453535026074)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'de'
,p_message_text=>unistr('Die Datenbank ist schreibgesch\00FCtzt ge\00F6ffnet.')
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124706561866026083)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'de'
,p_message_text=>unistr('ORA-28353: Wallet konnte nicht ge\00F6ffnet werden. Auf Anwendungsdaten kann derzeit nicht zugegriffen werden.')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124676529670026074)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'de'
,p_message_text=>unistr('Diese Seite ist leider nicht verf\00FCgbar.')
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124535199064026033)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'de'
,p_message_text=>unistr('Technische Informationen (nur f\00FCr Entwickler verf\00FCgbar)')
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124641084754026064)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'de'
,p_message_text=>'Fehlermeldung'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124654958266026068)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'de'
,p_message_text=>'Erwartetes Format: %0'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124619830111026057)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'de'
,p_message_text=>'Benutzer ist bereits in Access-Control-Liste enthalten'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124619786508026057)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'de'
,p_message_text=>unistr('Best\00E4tigen Sie, dass die folgenden %0 Benutzer der <strong>%1</strong> Access-Control-Liste hinzugef\00FCgt werden sollen.')
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124620222515026058)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'de'
,p_message_text=>'Doppelter Benutzer vorhanden'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124619942707026058)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'de'
,p_message_text=>'Fehlendes At-Zeichen (@) in E-Mail-Adresse'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124620041568026058)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'de'
,p_message_text=>'Fehlender Punkt (.) in E-Mail-Adresse'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124620113395026058)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'de'
,p_message_text=>'Benutzername ist zu lang'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124620436983026058)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'de'
,p_message_text=>unistr('Nur in der Access-Control-Liste definierte Benutzer k\00F6nnen auf diese Anwendung zugreifen')
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124620524195026058)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'de'
,p_message_text=>'Unerwarteter Zugriffskontroll-Einstellungswert: %0'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124620352238026058)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'de'
,p_message_text=>unistr('Alle authentifizierten Benutzer k\00F6nnen auf diese Anwendung zugreifen')
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124664873306026071)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'de'
,p_message_text=>'Deaktiviert'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124664791669026071)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'de'
,p_message_text=>'Aktiviert'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124665092790026071)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'de'
,p_message_text=>'%0: Ist deaktiviert'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124664992953026071)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'de'
,p_message_text=>'%0: Ist aktiviert'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124513518934026026)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('Nicht unterst\00FCtzt')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124574785426026044)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'de'
,p_message_text=>'Aus'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124574670377026044)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'de'
,p_message_text=>'Ein'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124664649408026071)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'de'
,p_message_text=>'nicht identifiziert'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124505177260026024)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'de'
,p_message_text=>'%0 Byte'
,p_is_js_message=>true
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124505659374026024)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'de'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124505380241026024)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'de'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124505591404026024)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'de'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124657844555026069)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'de'
,p_message_text=>'Herunterladen'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124510966788026025)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'de'
,p_message_text=>'Optionen'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124510688535026025)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'de'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124510873407026025)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'de'
,p_message_text=>'Facet ausblenden'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124535573186026033)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'de'
,p_message_text=>unistr('Filter hinzuf\00FCgen')
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124611833119026055)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'de'
,p_message_text=>'Angewendeter Filter %0'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124536279267026033)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'de'
,p_message_text=>'Anwenden'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124655409975026068)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'de'
,p_message_text=>'Anwenden'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124536387008026033)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'de'
,p_message_text=>'Abbrechen'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124520142363026028)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'de'
,p_message_text=>'Balkendiagramm'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124668143529026072)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'de'
,p_message_text=>'Weitere'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124520243405026028)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'de'
,p_message_text=>'Tortendiagramm'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124666727350026071)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'de'
,p_message_text=>'Diagramm'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124519980906026028)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'de'
,p_message_text=>'Anzahl'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124655975099026068)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'de'
,p_message_text=>unistr('L\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124656044159026068)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'de'
,p_message_text=>unistr('Alle l\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124656175998026068)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'de'
,p_message_text=>unistr('%0 l\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124672665876026073)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'de'
,p_message_text=>unistr('Spalte %1, referenziert durch Facet %0, ist nicht verf\00FCgbar oder nicht autorisiert.')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124483342945026017)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'de'
,p_message_text=>unistr('Anzuzeigende Filter ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124609868837026055)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'de'
,p_message_text=>'%0 Ergebnisse'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124609921398026055)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'de'
,p_message_text=>unistr('%0 ausgew\00E4hlt')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124612728095026055)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'de'
,p_message_text=>'Aktuelle Filter'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124488386986026019)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr die Facet-Suche ist eine Datenquelle auf Regionsebene erforderlich.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124492038060026020)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'de'
,p_message_text=>'Filterliste'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124671180985026073)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'de'
,p_message_text=>unistr('Grenzwert f\00FCr eindeutigen Wert (%0) f\00FCr Facet %1 wurde \00FCberschritten.')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124657435453026069)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'de'
,p_message_text=>unistr('Facet %0 wird f\00FCr DATE- oder TIMESTAMP-Spalten nicht unterst\00FCtzt.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124655552102026068)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'de'
,p_message_text=>'%0 filtern'
,p_is_js_message=>true
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124530173471026031)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'de'
,p_message_text=>'%0 (Filter angewendet)'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124655615248026068)
,p_name=>'APEX.FS.GO'
,p_message_language=>'de'
,p_message_text=>'Los'
,p_is_js_message=>true
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124525611331026030)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'de'
,p_message_text=>unistr('enth\00E4lt %0')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124657079253026069)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'de'
,p_message_text=>'gleich %0'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124525396376026030)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'de'
,p_message_text=>unistr('gr\00F6\00DFer als %0')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124525403173026030)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'de'
,p_message_text=>unistr('gr\00F6\00DFer/gleich %0')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124525007112026030)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'de'
,p_message_text=>'kleiner als %0'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124525291498026030)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'de'
,p_message_text=>'kleiner/gleich %0'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124524584457026030)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'de'
,p_message_text=>unistr('enth\00E4lt nicht %0')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124510360601026025)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'de'
,p_message_text=>'ungleich %0'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124524681280026030)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'de'
,p_message_text=>'beginnt nicht mit %0'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124525556750026030)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'de'
,p_message_text=>'beginnt mit %0'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124523694948026029)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'de'
,p_message_text=>'Facet-Auswahl'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124499459068026022)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'de'
,p_message_text=>unistr('Filterpr\00E4fix "%0" ist f\00FCr Facet "%1" ung\00FCltig.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124497815555026021)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'de'
,p_message_text=>unistr('Filterpr\00E4fix fehlt f\00FCr Facet "%0".')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124532060697026032)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'de'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124513928896026026)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'de'
,p_message_text=>unistr('enth\00E4lt')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124512922525026026)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'de'
,p_message_text=>'gleich'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124513639066026026)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'de'
,p_message_text=>unistr('gr\00F6\00DFer als')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124513732125026026)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'de'
,p_message_text=>unistr('gr\00F6\00DFer/gleich')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124513337578026026)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'de'
,p_message_text=>'kleiner als'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124513488468026026)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'de'
,p_message_text=>'kleiner/gleich'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124524419687026029)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'de'
,p_message_text=>unistr('enth\00E4lt nicht')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124513147622026026)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'de'
,p_message_text=>'ungleich'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124524351688026029)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'de'
,p_message_text=>'beginnt nicht mit'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124513820651026026)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'de'
,p_message_text=>'beginnt mit'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124532493995026032)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Der %0-Datentyp (%1) wird f\00FCr das Eingabefeld-Facet nicht unterst\00FCtzt.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124499311827026022)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Filter "%0" wird f\00FCr Facet "%1" (Datentyp %2) nicht unterst\00FCtzt.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124531940809026032)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'de'
,p_message_text=>'Wert'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124657257934026069)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr das Facet %0 wurden keine Suchspalten angegeben')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124483413764026017)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'de'
,p_message_text=>'Mehr Filter'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124610026531026055)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'de'
,p_message_text=>'Bereichsanfang'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124656767946026069)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'de'
,p_message_text=>'%0 bis %1'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124656845781026069)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'de'
,p_message_text=>unistr('\00DCber %0')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124656986318026069)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'de'
,p_message_text=>'Unter %0'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124610176982026055)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'de'
,p_message_text=>'Bereichsende'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124674705622026074)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'de'
,p_message_text=>unistr('Wertelistenelement #%2 ("%1") f\00FCr Bereichs-Facet %0 ist ung\00FCltig (Trennzeichen "|" fehlt).')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124657196884026069)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr das Bereichs-Facet %0 wird eine manuelle Eingabe derzeit nicht unterst\00FCtzt, weil die Spalte den Typ DATE oder TIMESTAMP hat.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124656418072026068)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'de'
,p_message_text=>'bis'
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124520002274026028)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'de'
,p_message_text=>'Diagramm entfernen'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124606487768026054)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCcksetzen')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124655881054026068)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'de'
,p_message_text=>'Suchen'
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124655768159026068)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'de'
,p_message_text=>'Suchen...'
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124656632074026068)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'de'
,p_message_text=>unistr('- Ausw\00E4hlen -')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124519854712026028)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'de'
,p_message_text=>'Diagramm anzeigen'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124656288634026068)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'de'
,p_message_text=>'Weniger anzeigen'
,p_is_js_message=>true
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124656345196026068)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'de'
,p_message_text=>'Alle anzeigen'
,p_is_js_message=>true
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124656503863026068)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'de'
,p_message_text=>'%0 Sterne und mehr'
,p_version_scn=>2692535
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124611757913026055)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'de'
,p_message_text=>unistr('Filtervorschl\00E4ge')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124657316860026069)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'de'
,p_message_text=>unistr('Das Textfeld-Facet %0 wird derzeit nur f\00FCr NUMBER-Spalten unterst\00FCtzt.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124482879349026017)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'de'
,p_message_text=>'Zeilenanzahl gesamt'
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124672710597026073)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Der Datentyp %0 (%1) wird f\00FCr die Facet-Suche nicht unterst\00FCtzt.')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124602965747026053)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'de'
,p_message_text=>unistr('Ausgeblendete \00DCberschrift')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124665285112026071)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'de'
,p_message_text=>'Gehen Sie zum Fehler'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124621280100026058)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'de'
,p_message_text=>'Aggregieren.'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124549123529026037)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'de'
,p_message_text=>unistr('Leere \00DCberschrift')
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124630546813026061)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'de'
,p_message_text=>'Gruppenwechsel ausblenden'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124621330044026058)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'de'
,p_message_text=>'Kontrollgruppenwechsel.'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124630410019026061)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'de'
,p_message_text=>'Gruppenwechsel einblenden'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124630262219026061)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'de'
,p_message_text=>unistr('%0 Zeilen gel\00F6scht')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124699388163026081)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'de'
,p_message_text=>unistr('Identit\00E4t duplizieren')
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124492252520026020)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'de'
,p_message_text=>'Bearbeitungsmodus wird gestartet'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124618197744026057)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'de'
,p_message_text=>'Erste'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124491086212026019)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'de'
,p_message_text=>'Dialogfeld ausblenden'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124490053741026019)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'de'
,p_message_text=>unistr('Unverankerter \00DCberlaufzelleninhalt')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124491346255026020)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'de'
,p_message_text=>unistr('\00DCberlaufinhalt anzeigen')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124565503628026041)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'de'
,p_message_text=>'Grid-Footer'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124621538243026058)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'de'
,p_message_text=>'Gruppenheader'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124621476427026058)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'de'
,p_message_text=>'Header.'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124618247690026057)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'de'
,p_message_text=>'Letzte'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124492480310026020)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'de'
,p_message_text=>'Bearbeitungsmodus wird beendet'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124517158453026027)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'de'
,p_message_text=>'Alle laden'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124640049428026064)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'de'
,p_message_text=>'Mehr anzeigen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124617970213026057)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'de'
,p_message_text=>'Weiter'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124621657287026058)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'de'
,p_message_text=>'Seitenzeilen'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124530758377026031)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'de'
,p_message_text=>'Seite %0'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124618310255026057)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'de'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124618423275026057)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'de'
,p_message_text=>'%0 - %1 von %2'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124675331971026074)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'de'
,p_message_text=>'Seitenauswahl'
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124565822549026042)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'de'
,p_message_text=>'Paginierung'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124618082013026057)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124516068854026027)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'de'
,p_message_text=>'Bereichsanzeige'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124549484418026037)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'de'
,p_message_text=>'Zeilenauswahl'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124699199168026081)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'de'
,p_message_text=>unistr('Hinzugef\00FCgt')
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124699293565026081)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'de'
,p_message_text=>unistr('Ge\00E4ndert')
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124707514665026084)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'de'
,p_message_text=>'Rasterzeilenfolge %0, Spalte %1.'
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124707636043026084)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'de'
,p_message_text=>'Rasterzeilenfolge %0.'
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124699062125026081)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'de'
,p_message_text=>unistr('Gel\00F6scht')
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124621850599026058)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'de'
,p_message_text=>'Zeilenheader'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124549313670026037)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'de'
,p_message_text=>'Zeilenauswahl'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124517264187026027)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'de'
,p_message_text=>unistr('%0 %1 ausgew\00E4hlt')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124617340623026057)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'de'
,p_message_text=>unistr('%0 Zellen ausgew\00E4hlt')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124618538391026057)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'de'
,p_message_text=>unistr('%0 Zeilen ausgew\00E4hlt')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124660649109026070)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'de'
,p_message_text=>unistr('Alle ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124554162820026038)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'de'
,p_message_text=>unistr('Alle Zeilen ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124630334322026061)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'de'
,p_message_text=>'Seite %0'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124621706466026058)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'de'
,p_message_text=>unistr('Zeile ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124622040091026058)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'de'
,p_message_text=>'Aufsteigend sortiert %0'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124622171021026058)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'de'
,p_message_text=>'Absteigend sortiert %0'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124617409136026057)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'de'
,p_message_text=>'Aufsteigend sortieren'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124617764804026057)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'de'
,p_message_text=>'Aufsteigend sortieren %0'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124617543335026057)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'de'
,p_message_text=>'Absteigend sortieren'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124617836934026057)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'de'
,p_message_text=>'Absteigend sortieren %0'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124617672633026057)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'de'
,p_message_text=>'Nicht sortieren'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124483242696026017)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'de'
,p_message_text=>'Sortieroptionen'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124565643220026041)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'de'
,p_message_text=>'Statussymbole'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124565764426026042)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'de'
,p_message_text=>'Grid-Status'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124495503356026021)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'de'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124495218572026021)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'de'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124630183927026061)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'de'
,p_message_text=>'Gesamt %0'
,p_is_js_message=>true
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124548969808026037)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'de'
,p_message_text=>'Die HTTP-Anforderung an "%0" war nicht erfolgreich.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124550598294026037)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'de'
,p_message_text=>'Spalte %0'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124550718760026037)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'de'
,p_message_text=>'Spalte %0 und Zeile %1'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124551043303026037)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Bereits bei erster Spalte. Spalte %0 und Zeile %1'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124550940825026037)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'de'
,p_message_text=>'Bereits bei erster Zeile. Spalte %0 und Zeile %1'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124696526104026080)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'de'
,p_message_text=>'Dargestellt in %0 Spalten und %1 Zeilen'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124551139467026037)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Bereits bei letzter Spalte. Spalte %0 und Zeile %1'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124550852233026037)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'de'
,p_message_text=>'Bereits bei letzter Zeile. Spalte %0 und Zeile %1'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124630069908026061)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'de'
,p_message_text=>'Dargestellt in %0 Zeilen'
,p_is_js_message=>true
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124550673317026037)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'de'
,p_message_text=>'Zeile %0'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124707355688026084)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'de'
,p_message_text=>'Interaktives Grid %0'
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124614412156026056)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'de'
,p_message_text=>'Aktionen'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124615485429026056)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'de'
,p_message_text=>unistr('Hinzuf\00FCgen')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124615340707026056)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'de'
,p_message_text=>unistr('Zeile hinzuf\00FCgen')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124700997660026082)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'de'
,p_message_text=>'Aggregieren'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124686531547026077)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'de'
,p_message_text=>'Aggregation'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124688224270026078)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'de'
,p_message_text=>'Alle'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124645828850026065)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Alle Textspalten'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124647074917026066)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'de'
,p_message_text=>'Alternative'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124648160570026066)
,p_name=>'APEX.IG.AND'
,p_message_language=>'de'
,p_message_text=>'und'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124667501794026072)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'de'
,p_message_text=>unistr('Eindeutige Reihen z\00E4hlen - Ungef\00E4hr')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124701976940026082)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'de'
,p_message_text=>unistr('Anzahl - eindeutig - Ungef\00E4hre Gesamtanzahl')
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124685195903026077)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'de'
,p_message_text=>'Bereich'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124687069059026078)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'de'
,p_message_text=>'Aufsteigend'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124647165842026066)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'de'
,p_message_text=>'Autorisierung'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124701082158026082)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'de'
,p_message_text=>'Automatisch'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124667900284026072)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'de'
,p_message_text=>'Durchschnitt'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124701679235026082)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'de'
,p_message_text=>'Gesamtdurchschnitt'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124684601598026077)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'de'
,p_message_text=>'Titel der Labelachse'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124684894783026077)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'de'
,p_message_text=>'Dezimalstellen'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124684768587026077)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'de'
,p_message_text=>'Wert Achsentitel'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124690829991026079)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'de'
,p_message_text=>'Hintergrundfarbe'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124685243789026077)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'de'
,p_message_text=>'Balkendiagramm'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124642408529026064)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'de'
,p_message_text=>'zwischen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124692011464026079)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'de'
,p_message_text=>'Beide'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124685399013026077)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'de'
,p_message_text=>'Blasendiagramm'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124615670127026056)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'de'
,p_message_text=>'Abbrechen'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124648066270026066)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'de'
,p_message_text=>unistr('Gro\00DF-/Kleinschreibung beachten')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124702594144026082)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'de'
,p_message_text=>unistr('(Gro\00DF-/Kleinschreibung beachten)')
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124673894830026074)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'de'
,p_message_text=>unistr('\00C4nderungen gespeichert')
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124616086432026056)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'de'
,p_message_text=>unistr('Ansicht \00E4ndern')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124649195152026066)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'de'
,p_message_text=>'Diagramm'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124645649626026065)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'de'
,p_message_text=>unistr('Ihre Abfrage \00FCberschreitet die maximal zul\00E4ssigen %0 Datenpunkte pro Diagramm. Wenden Sie einen Filter an, um die Anzahl der Datens\00E4tze in der Basisabfrage zu reduzieren.')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124614308180026056)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'de'
,p_message_text=>'Diagrammansicht'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124622737001026058)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'de'
,p_message_text=>unistr('L\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124684178387026077)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('Schlie\00DFen')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124691030361026079)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'de'
,p_message_text=>'Farben'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124668364744026072)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'de'
,p_message_text=>'Vorschau'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124647450459026066)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'de'
,p_message_text=>'Spalte'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124614529591026056)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Spalten'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124576434586026045)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'de'
,p_message_text=>'Spaltenaktionen'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124576298678026045)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'de'
,p_message_text=>unistr('Aktionen f\00FCr Spalte "%0"')
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124692805617026079)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'de'
,p_message_text=>'Spaltenzweck'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124647554357026066)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'de'
,p_message_text=>'Komplex'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124614741390026056)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'de'
,p_message_text=>'Berechnen'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124643052470026064)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'de'
,p_message_text=>unistr('enth\00E4lt')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124649324938026066)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'de'
,p_message_text=>'Kontrollgruppenwechsel'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124622539335026058)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'de'
,p_message_text=>'In Zwischenablage kopieren'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124622692069026058)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'de'
,p_message_text=>'Nach unten kopieren'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124667390239026072)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'de'
,p_message_text=>'Anzahl'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124667409979026072)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'de'
,p_message_text=>'Anzahl - eindeutig'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124701819774026082)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'de'
,p_message_text=>unistr('Eindeutige z\00E4hlen - Insgesamt')
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124701760189026082)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'de'
,p_message_text=>'Gesamtanzahl'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124699424383026081)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'de'
,p_message_text=>'%0 erstellen'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124646042545026065)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'de'
,p_message_text=>'Daten'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124692663537026079)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'de'
,p_message_text=>'Datentyp'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124692268658026079)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'de'
,p_message_text=>'Datum'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124673640376026074)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Datumswert')
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124643727990026065)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'de'
,p_message_text=>'Tage'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124646756702026065)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'de'
,p_message_text=>'Standardeinstellungen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124646544938026065)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'de'
,p_message_text=>'Standardtyp'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124615571365026056)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'de'
,p_message_text=>unistr('L\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124693768195026080)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'de'
,p_message_text=>unistr('M\00F6chten Sie diesen Bericht wirklich l\00F6schen?')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124651177932026067)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'de'
,p_message_text=>unistr('Zeile l\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124649945575026066)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'de'
,p_message_text=>unistr('Zeilen l\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124687126423026078)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'de'
,p_message_text=>'Absteigend'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124648808785026066)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'de'
,p_message_text=>'Detail'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124614049258026056)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'de'
,p_message_text=>'Detailansicht'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124676121974026074)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'de'
,p_message_text=>'Richtung'
,p_is_js_message=>true
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124648593431026066)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'de'
,p_message_text=>'Deaktiviert'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124643173442026064)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'de'
,p_message_text=>unistr('enth\00E4lt nicht')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124643310738026064)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'de'
,p_message_text=>'beginnt nicht mit'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124685479242026077)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'de'
,p_message_text=>'Ringdiagramm'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124649537018026066)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'de'
,p_message_text=>'Herunterladen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124539868207026034)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'de'
,p_message_text=>'Nur Daten'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124694716655026080)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'de'
,p_message_text=>unistr('Format ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124554933605026038)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'de'
,p_message_text=>'Downloadformat %0 ist nicht aktiviert.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124687860564026078)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'de'
,p_message_text=>'Aggregation duplizieren'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124687982445026078)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'de'
,p_message_text=>'Gruppenwechsel duplizieren'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124651053686026067)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'de'
,p_message_text=>'Zeile duplizieren'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124649826033026066)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'de'
,p_message_text=>'Doppelte Zeilen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124615182075026056)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'de'
,p_message_text=>'Bearbeiten'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124686946024026078)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'de'
,p_message_text=>'Diagramm bearbeiten'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124567426077026042)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'de'
,p_message_text=>'%0 bearbeiten'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124698331798026081)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'de'
,p_message_text=>'"Gruppieren nach" bearbeiten'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124605578160026053)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'de'
,p_message_text=>'%0 im Bearbeitungsmodus'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124581175844026046)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>'Raster im Bearbeitungsmodus, zum Wechsel in Ansichtsmodus Aktivierung aufheben'
,p_is_js_message=>true
,p_version_scn=>2692520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124694396135026080)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'de'
,p_message_text=>'Blindkopie (Bcc)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124694503684026080)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'de'
,p_message_text=>'Nachricht'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124694258604026080)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'de'
,p_message_text=>'Kopie (Cc)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124693943594026080)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'de'
,p_message_text=>'E-Mail wurde gesendet.'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124694446680026080)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'de'
,p_message_text=>'Betreff'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124694190997026080)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'de'
,p_message_text=>unistr('Empf\00E4nger (an)')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124648271494026066)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'de'
,p_message_text=>'Aktiviert'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124641409809026064)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'de'
,p_message_text=>'gleich'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124648331602026066)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'de'
,p_message_text=>'Ausdruck'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124693361758026079)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'de'
,p_message_text=>'Typ'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124660528606026070)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'de'
,p_message_text=>'Datei vorbereitet. Download wird gestartet.'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124622853634026058)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCllen')
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124625084480026059)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'de'
,p_message_text=>unistr('Auswahl f\00FCllen mit')
,p_is_js_message=>true
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124624984331026059)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'de'
,p_message_text=>unistr('Auswahl f\00FCllen')
,p_is_js_message=>true
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124614681850026056)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'de'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124647626813026066)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'de'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124701300502026082)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'de'
,p_message_text=>'Filtern...'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124687328444026078)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'de'
,p_message_text=>'Erste'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124614882468026056)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'de'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124646109164026065)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'de'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124691925763026079)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'de'
,p_message_text=>'Formatmaske'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124693639735026080)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'de'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124693545484026080)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'de'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124604643169026053)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'de'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124538511793026034)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'de'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124650752099026067)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'de'
,p_message_text=>'Fixieren'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124648438435026066)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'de'
,p_message_text=>'Funktionen und Operatoren'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124685552195026077)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'de'
,p_message_text=>'Trichter'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124667275539026072)
,p_name=>'APEX.IG.GO'
,p_message_language=>'de'
,p_message_text=>'Los'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124642066306026064)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'de'
,p_message_text=>unistr('gr\00F6\00DFer als')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124642108398026064)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'de'
,p_message_text=>unistr('gr\00F6\00DFer oder gleich')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124648719546026066)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'de'
,p_message_text=>'Grid'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124613850957026056)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'de'
,p_message_text=>'Grid-Ansicht'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124688137637026078)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'de'
,p_message_text=>'Gruppieren'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124648950130026066)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'de'
,p_message_text=>'Gruppieren nach'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124614194046026056)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'de'
,p_message_text=>'Ansicht "Gruppieren nach"'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124692543074026079)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'de'
,p_message_text=>'Bedingungstyp'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124691423480026079)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'de'
,p_message_text=>unistr('\00DCberschrift')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124691656750026079)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'de'
,p_message_text=>unistr('\00DCberschriftenausrichtung')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124701265621026082)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'de'
,p_message_text=>'Hilfe'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124696750249026081)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Sie k\00F6nnen Daten direkt innerhalb dieses interaktiven Grids einf\00FCgen, aktualisieren und l\00F6schen.</p>'),
'',
unistr('<p>F\00FCgen Sie eine neue Zeile ein, indem Sie auf die Schaltfl\00E4che "Zeile hinzuf\00FCgen" klicken.</p>'),
'',
unistr('<p>Bearbeiten Sie vorhandene Daten, indem Sie auf eine bestimmte Zelle doppelklicken. F\00FCr umfangreichere Bearbeitungen klicken Sie auf "Bearbeiten", um den Bearbeitungsmodus aufzurufen. Im Bearbeitungsmodus k\00F6nnen Sie bestimmte Zellen mit einem Einze')
||'lklick oder der Tastatur bearbeiten.</p>',
'',
unistr('<p>Verwenden Sie das Men\00FC "\00C4ndern", um Zeilen zu duplizieren und zu l\00F6schen. Um das Men\00FC "\00C4ndern" zu aktivieren, verwenden Sie die Kontrollk\00E4stchen, um eine oder mehrere Zeilen auszuw\00E4hlen.</p>'),
'',
unistr('<p>Duplizieren Sie eine ausgew\00E4hlte Zeile, indem Sie auf das Men\00FC "\00C4ndern" klicken und "Zeilen duplizieren" ausw\00E4hlen. L\00F6schen Sie eine ausgew\00E4hlte Zeile, indem Sie auf das Men\00FC "\00C4ndern" klicken und "Zeile l\00F6schen" ausw\00E4hlen.</p>')))
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124698826060026081)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'de'
,p_message_text=>'Bearbeitungsfunktionen'
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124698916708026081)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In einem interaktiven Grid wird eine Gruppe von Daten in einem Bericht dargestellt, der durchsucht und angepasst werden kann. Sie k\00F6nnen viele Vorg\00E4nge ausf\00FChren, um die zur\00FCckgegebenen Datens\00E4tze zu begrenzen und die Art der Datenanzeige zu \00E4nder')
||'n.</p>',
'',
unistr('<p>Mit dem Suchfeld k\00F6nnen Sie die zur\00FCckgegebenen Datens\00E4tze filtern. Klicken Sie auf "Aktionen", um die verschiedenen Optionen zur \00C4nderung des Berichtslayouts aufzurufen. Sie k\00F6nnen auch das Men\00FC "Spalten\00FCberschrift" f\00FCr angezeigte Spalten verwend')
||'en.</p>',
'',
unistr('<p>Verwenden Sie "Berichtseinstellungen", um die Anpassungen in einem Bericht zu speichern. Sie k\00F6nnen die Daten aus dem Bericht auch in eine externe Datei herunterladen oder die Daten per E-Mail an sich selbst oder andere senden.</p>'),
'',
'<p>Weitere Informationen finden Sie unter "Interaktive Grids verwenden" in <em>Oracle APEX-Endbenutzerhandbuch</em>.'))
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124698602271026081)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'de'
,p_message_text=>unistr('\00DCberblick')
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124696631744026080)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Sie k\00F6nnen das interaktive Grid anpassen, um Daten mit den integrierten Funktionen auf unterschiedliche Weise anzuzeigen.</p>'),
'',
unistr('<p>Mit den Men\00FCs "Spalten\00FCberschrift" oder dem Men\00FC "Aktionen" k\00F6nnen Sie bestimmen, welche Spalten angezeigt werden sollen und in welcher Reihenfolge sie angezeigt werden sollen. Au\00DFerdem k\00F6nnen Sie Spalten fixieren. Sie k\00F6nnen auch verschiedene Dat')
||unistr('enfilter definieren und die zur\00FCckgegebenen Daten sortieren.</p>'),
'',
unistr('<p>Mit der Schaltfl\00E4che "Anzeigen" (neben dem Suchfeld) k\00F6nnen Sie andere Datenansichten aufrufen, die vom Anwendungsentwickler definiert wurden. Sie k\00F6nnen auch ein Diagramm erstellen oder ein vorhandenes Diagramm anzeigen.</p>  '),
'',
unistr('<p><em>Hinweis: Klicken Sie auf <strong>Hilfe</strong> in den Dialogfeldern des interaktiven Grids, um detailliertere Informationen zu der ausgew\00E4hlten Funktion zu erhalten.</em></p>')))
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124698740587026081)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'de'
,p_message_text=>'Berichtsfunktionen'
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124649700603026066)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu interaktivem Grid'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124695502881026080)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie Spalten aggregieren. Aggregierte Werte werden am Ende der Daten angezeigt, oder wenn Gruppenwechsel definiert sind, am Ende jedes Umbruchs.</p>'),
'',
'<p><strong>Aggregationsliste</strong><br>',
'Die Aggregationsliste zeigt definierte Aggregationen an. Deaktivieren Sie eine vorhandene Aggregation, indem Sie deren Auswahl aufheben.<br>',
unistr('Klicken Sie auf "Hinzuf\00FCgen" (&plus;), um eine neue Aggregation zu erstellen, oder auf "L\00F6schen" (&minus;), um eine vorhandene Aggregation zu entfernen.</p>'),
'',
'<p><strong>Aggregationseinstellungen</strong><br>',
'Mit dem Formular auf der rechten Seite definieren Sie die Aggregation.<br>',
unistr('W\00E4hlen Sie den Spaltennamen und Aggregationstyp aus.<br>'),
unistr('Geben Sie optional eine QuickInfo f\00FCr die Aggregation ein.<br>'),
unistr('Wenn Sie einen Gruppenwechsel definiert haben, wird durch Auswahl von <strong>Gesamtwert anzeigen</strong> der Gesamtdurchschnitt, die Gesamtsumme oder ein \00E4hnlicher Wert am Ende der Daten angezeigt.</p>'),
'',
unistr('<p><em>Hinweis: Rufen Sie das Dialogfeld "Aggregation" im Men\00FC "Aktionen" oder durch Klicken auf die Spalten\00FCberschrift und Summe (&sum;) auf.</em></p>')))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124697757175026081)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Aggregation"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124696281278026080)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie ein Diagramm definieren, das als separate Datenansicht angezeigt wird.<br>'),
unistr('W\00E4hlen Sie einen Diagrammtyp und die Diagrammattribute aus.</p>'),
'<p><strong>Diagrammattribute</strong><br>',
unistr('Die verf\00FCgbaren Diagrammattribute variieren je nach Diagrammtyp.</p>'),
'<p>',
'<ul>',
unistr('  <li>W\00E4hlen Sie die Spalte mit dem Wert f\00FCr das Attribut aus:'),
'    <ul>',
unistr('      <li>Label: Der Text f\00FCr jeden Datenpunkt.</li>'),
'      <li>Wert: Die darzustellenden Daten.</li>',
'      <li>Reihe: Zur Definition einer dynamischen Abfrage mit mehreren Reihen.</li>',
unistr('      <li>Er\00F6ffnung: Der t\00E4gliche Er\00F6ffnungskurs der Aktien (nur Aktiendiagramme).</li>'),
unistr('      <li>Schluss: Der t\00E4gliche Schlusskurs der Aktien (nur Aktiendiagramme).</li>'),
unistr('      <li>Hoch: Der h\00F6chste Wert (nur Bereichs- und Aktiendiagramme).</li>'),
'      <li>Niedrig: Der niedrigste Wert (nur Bereichs- und Aktiendiagramme).</li>',
unistr('      <li>Volumen: Das t\00E4gliche Aktienvolumen (nur Aktiendiagramme).</li>'),
'      <li>Ziel: Der Zielwert (nur Trichterdiagramme).</li>',
'      <li>X: Der X-Achsenwert (nur Blasen- und Streudiagramme).</li>',
'      <li>Y: Der Y-Achsenwert (nur Blasen- und Streudiagramme).</li>',
'      <li>Z: Die Balkenbreite oder der Blasenradius (nur Balken-, Blasen- und Bereichsdiagramme).</li>',
'    </ul>',
'  </li>',
'  <li>Ausrichtung: Vertikal oder horizontal.</li>',
'  <li>Aggregation: Legen Sie fest, wie die Diagrammwerte aggregiert werden sollen.</li>',
'  <li>Stapel: Geben Sie an, ob die Datenelemente gestapelt werden.</li>',
'  <li>Sortieren nach: Sortieren Sie das Diagramm nach Label oder Werten.',
'    <ul>',
'      <li>Richtung: Sortieren Sie Werte in aufsteigender oder absteigender Reihenfolge.</li>',
unistr('      <li>Nullwerte: Geben Sie an, wie Datens\00E4tze mit Nullwerten bezogen auf Datens\00E4tze mit Nicht-Nullwerten sortiert werden sollen.</li>'),
'    </ul>',
'  </li>',
'  <li>Dezimalstellen</li>',
'  <li>Titel der Labelachse</li>',
'  <li>Titel der Wertachse</li>',
'</ul>',
'</p>'))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124698107842026081)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Diagramm"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124695215838026080)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie ausw\00E4hlen, welche Spalten angezeigt werden und in welcher Reihenfolge sie angezeigt werden.</p>'),
'',
'<p>Blenden Sie eine Spalte aus, indem Sie ihre Auswahl aufheben.<br>',
'Ordnen Sie Spalten neu an, indem Sie auf "Nach oben" (&uarr;) oder "Nach unten" (&darr;) klicken.<br>',
'Verwenden Sie den Dropdown-Selektor, um "Alle Spalten", "Angezeigte Spalten" oder "Nicht angezeigte Spalten" aufzulisten.</p>',
'',
'<p>Geben Sie optional im Formular die Mindestbreite einer Spalte in Pixel an.</p>',
'',
unistr('<p><em>Hinweis: Sie k\00F6nnen angezeigte Spalten auch neu anordnen, indem Sie auf den Ziehpunkt (am Anfang der Spalten\00FCberschrift) klicken und die Spalte nach links oder rechts ziehen. Sie k\00F6nnen die Breite von angezeigten Spalten auch \00E4ndern, indem Sie')
||unistr(' die Spaltentrennlinie zwischen \00DCberschriften ausw\00E4hlen und nach links oder rechts verschieben.</em></p>')))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124698011913026081)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu Spalten'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124695621081026080)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie zus\00E4tzliche Spalten basierend auf mathematischen und funktionalen Berechnungen definieren, die f\00FCr vorhandene Spalten ausgef\00FChrt werden.</p>'),
'',
'<p><strong>Berechnungsliste</strong><br>',
'In der Berechnungsliste werden definierte Berechnungen angezeigt. Deaktivieren Sie eine vorhandene Berechnung, indem Sie deren Auswahl aufheben.<br>',
unistr('Klicken Sie auf "Hinzuf\00FCgen" (&plus;), um eine neue Berechnung hinzuzuf\00FCgen, oder auf "L\00F6schen" (&minus;), um eine vorhandene Berechnung zu entfernen.</p>'),
'',
'<p><strong>Berechnungseinstellungen</strong><br>',
'Verwenden Sie das Formular zur Definition der Berechnung.<br>',
unistr('Geben Sie die Spaltendetails ein, wie \00DCberschrift und Label, und w\00E4hlen Sie Ausrichtungseinstellungen aus.<br> '),
unistr('Geben Sie im Ausdruckstextbereich die Spalten und verkn\00FCpften Funktionen f\00FCr die Berechnung ein.<br>'),
unistr('W\00E4hlen Sie den entsprechenden Datentyp und optional eine Formatmaske f\00FCr die neue Spalte aus.</p>')))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124697628049026081)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Berechnen"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124695931901026080)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie einen Gruppenwechsel f\00FCr eine oder mehrere Spalten definieren.</p>'),
'',
'<p><strong>Gruppenwechselliste</strong><br>',
'In der Gruppenwechselliste werden definierte Gruppenwechsel angezeigt. Deaktivieren Sie eine vorhandene Gruppenwechselspalte, indem Sie deren Auswahl aufheben.<br>',
unistr('Klicken Sie auf "Hinzuf\00FCgen" (&plus;), um eine neue Spalte in den Gruppenwechsel einzubeziehen, oder auf "L\00F6schen" (&minus;), um eine vorhandene Spalte aus dem Gruppenwechsel zu entfernen.<br>'),
unistr('Um Spalten neu anzuordnen, klicken Sie auf "Nach oben" (&uarr;) oder "Nach unten" (&darr;), um die ausgew\00E4hlte Spalte bezogen auf andere Spalten nach oben oder unten zu verschieben.</p>'),
'',
'<p><strong>Gruppenwechseleinstellungen</strong><br>',
unistr('Im Formular k\00F6nnen Sie eine Gruppenwechselspalte definieren.<br>'),
unistr('W\00E4hlen Sie eine Gruppenwechselspalte und die Sortierrichtung aus, und geben Sie an, wie Nullspalten (Spalten ohne Wert) angeordnet werden sollen.</p>'),
'',
unistr('<p><em>Hinweis: Bei Anzeige des interaktiven Grids k\00F6nnen Sie einen Gruppenwechsel definieren, indem Sie auf eine Spalten\00FCberschrift klicken und das Gruppenwechselsymbol ausw\00E4hlen.</em></p>')))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124697359281026081)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Gruppenwechsel"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124696121927026080)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie alle aktuellen Zeilen in eine externe Datei herunterladen. Die Datei enth\00E4lt nur die aktuell angezeigten Spalten, wobei f\00FCr die Daten angewendete Filter und Sortiervorg\00E4nge verwendet werden.</p>'),
'',
unistr('<p>W\00E4hlen Sie das Dateiformat aus, und klicken Sie auf "Herunterladen".<br>'),
unistr('Hinweis: Das CSV-Format enth\00E4lt keine Textformatierung, wie Aggregate und Gruppenwechsel.</p>'),
'',
unistr('<p>Um die Datei per E-Mail zu versenden, w\00E4hlen Sie "Als E-Mail senden" aus und geben die E-Mail-Details ein (Empf\00E4nger, Betreff und Nachricht).</p>')))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124697185632026081)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Download"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124695303174026080)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie Datenfilter konfigurieren, die die zur\00FCckgegebenen Zeilen begrenzen.</p>'),
'',
'<p><strong>Filterliste</strong><br>',
'In der Filterliste werden definierte Filter angezeigt. Deaktivieren Sie einen vorhandenen Filter, indem Sie die Filterauswahl aufheben.<br>',
unistr('Klicken Sie auf "Hinzuf\00FCgen" (&plus;), um einen neuen Filter zu erstellen, oder auf "L\00F6schen" (&minus;), um einen vorhandenen Filter zu entfernen.</p>'),
'',
'<p><strong>Filtereinstellungen</strong><br>',
unistr('Im Formular k\00F6nnen Sie die Filtereigenschaften definieren.<br>'),
unistr('W\00E4hlen Sie den entsprechenden Filtertyp aus:<br>'),
'&nbsp;&nbsp;&nbsp;Zeile - Filtert nach einem Begriff in einer Spalte, die gefiltert werden kann.<br>',
'&nbsp;&nbsp;&nbsp;Spalte - Filtert eine bestimmte Spalte mit einem angegebenen Operator und Wert.<br>',
'',
unistr('<p><em>Hinweis: Bei Anzeige des interaktiven Grids k\00F6nnen Sie Zeilenfilter durch direkte Eingabe in das Suchfeld definieren. Klicken Sie auf "Zu suchende Spalten ausw\00E4hlen", um die Suche auf eine bestimmte Spalte zu begrenzen. \00D6ffnen Sie alternativ e')
||unistr('in Men\00FC "Spaltentitel", und w\00E4hlen Sie einen Wert aus, um einen Spaltenfilter zu erstellen.</em></p>')))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124697961892026081)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Filtern"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124695718289026080)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie die Daten so anzeigen, wie sie zu einem fr\00FCheren Zeitpunkt vorhanden waren.</p>'),
unistr('<p>Geben Sie die Anzahl von Minuten in der Vergangenheit ein, um die Flashback-Abfrage auszuf\00FChren.</p>')))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124697544722026081)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Flashback"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124698232452026081)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Gruppieren nach"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124695828577026080)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie Zeilen oder Spalten mit Daten basierend auf der eingegebenen Bedingung markieren.</p>'),
'',
'<p><strong>Markierungsliste</strong><br>',
'In der Markierungsliste werden definierte Markierungen angezeigt. Deaktivieren Sie eine vorhandene Markierung, indem Sie deren Auswahl aufheben.<br>',
unistr('Klicken Sie auf "Hinzuf\00FCgen" (&plus;), um eine neue Markierung zu erstellen, oder auf "L\00F6schen" (&minus;), um eine vorhandene Markierung zu entfernen.</p>'),
'',
'<p><strong>Markierungseinstellungen</strong><br>',
unistr('Im Formular k\00F6nnen Sie die Markierungseigenschaften definieren.<br>'),
unistr('Geben Sie den Namen ein, w\00E4hlen Sie "Zeile" oder "Spalte", und w\00E4hlen Sie die HTML-Farbcodes f\00FCr Hintergrund und Text aus.<br>'),
unistr('W\00E4hlen Sie den entsprechenden <strong>Bedingungstyp</strong> aus, um bestimmte Daten zu markieren:<br>'),
'&nbsp;&nbsp;&nbsp;Zeile - Markiert den Begriff in jeder Spalte.<br>',
'&nbsp;&nbsp;&nbsp;Spalte - Markiert etwas innerhalb einer bestimmten Spalte basierend auf dem angegebenen Operator und Wert.</p>'))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124697451193026081)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Markieren"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124696082697026080)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie \00C4nderungen speichern, die Sie an dem aktuellen Grid-Layout und der aktuellen Konfiguration vorgenommen haben.<br>'),
unistr('Anwendungsentwickler k\00F6nnen mehrere alternative Berichtslayouts erstellen. Wenn zul\00E4ssig, k\00F6nnen Sie und andere Endbenutzer einen Bericht als \00F6ffentlichen Bericht speichern, sodass der Bericht f\00FCr alle Benutzer des Grids verf\00FCgbar ist. Sie k\00F6nnen ein')
||unistr('en Bericht auch als privaten Bericht speichern, den nur Sie anzeigen k\00F6nnen.</p>'),
unistr('<p>W\00E4hlen Sie unter den verf\00FCgbaren Typen aus, und geben Sie einen Namen f\00FCr den gespeicherten Bericht ein.</p>')))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124697297085026081)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hilfe zu "Bericht"',
''))
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124695430395026080)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>In diesem Dialogfeld k\00F6nnen Sie die Anzeigereihenfolge festlegen.</p>'),
'',
'<p><strong>Sortierliste</strong><br>',
'Im Dialogfeld "Sortieren" wird eine Liste der konfigurierten Sortierregeln angezeigt.<br>',
unistr('Klicken Sie auf "Hinzuf\00FCgen" (&plus;), um eine Sortierspalte zu erstellen, oder auf "L\00F6schen" (&minus;), um eine Sortierspalte zu entfernen.<br>'),
unistr('Klicken Sie auf "Nach oben" (&uarr;) und "Nach unten" (&darr;), um die ausgew\00E4hlte Sortierspalte bezogen auf die anderen Sortierspalten nach oben oder unten zu verschieben.</p>'),
'',
'<p><strong>Sortiereinstellungen</strong><br>',
unistr('W\00E4hlen Sie eine Sortierspalte und die Sortierrichtung aus, und geben Sie an, wie Nullspalten (Spalten ohne Wert) angeordnet werden sollen.</p>'),
'',
unistr('<p><em>Hinweis: Daten k\00F6nnen nach Spalten sortiert werden, die nicht angezeigt werden, es k\00F6nnen jedoch nicht alle Spalten sortiert werden.</em><br>'),
unistr('<em>Angezeigte Spalten k\00F6nnen sortiert werden, indem Sie auf die Pfeile nach oben (aufsteigend) oder nach unten (absteigend) am Ende der Spalten\00FCberschriften klicken. Um eine nachfolgende Spalte zu einem vorhandenen Sortiervorgang hinzuzuf\00FCgen, halte')
||unistr('n Sie die Umschalttaste gedr\00FCckt, und klicken Sie auf den Pfeil nach oben oder unten.</em></p>')))
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124697857204026081)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Sortieren"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124697097318026081)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Subscription"'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124650617163026067)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'de'
,p_message_text=>'Ausblenden'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124615055771026056)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'de'
,p_message_text=>'Markieren'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124684222586026077)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Hoch'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124685068637026077)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'de'
,p_message_text=>'Horizontal'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124643655828026065)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'de'
,p_message_text=>'Stunden'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124648627476026066)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'de'
,p_message_text=>'Symbol'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124613915433026056)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'de'
,p_message_text=>'Symbolansicht'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124641839327026064)
,p_name=>'APEX.IG.IN'
,p_message_language=>'de'
,p_message_text=>'in'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124650232150026067)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'de'
,p_message_text=>'Inaktive Einstellung'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124650377766026067)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'de'
,p_message_text=>'Inaktive Einstellungen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124657973610026069)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'de'
,p_message_text=>'Bei der Verarbeitung der Anforderung "Interaktives Grid" ist ein interner Fehler aufgetreten.'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124545823786026036)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Spaltenfiltertyp "%0" wird f\00FCr Spalte "%1" nicht unterst\00FCtzt.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124696862916026081)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiges Datumsformat')
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124671620492026073)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('Interaktives Grid unterst\00FCtzt nicht das Definieren eines Filters f\00FCr Spalte %0.')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124671548202026073)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'de'
,p_message_text=>unistr('%0 ist kein g\00FCltiger Filtertyp zum Definieren eines Filters f\00FCr ein interaktives Grid.')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124552446501026038)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiges Zahlenformat')
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124699531483026081)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltige Einstellung')
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124699662588026081)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltige Einstellungen')
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124690797369026079)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'de'
,p_message_text=>unistr('"Sortieren nach" wurde auf %0 festgelegt, es wurde jedoch keine Spalte f\00FCr %0 ausgew\00E4hlt.')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124688037345026078)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Wert')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124683177394026076)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'de'
,p_message_text=>'Nicht angezeigt'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124642688149026064)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'de'
,p_message_text=>'in den letzten'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124642897808026064)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'de'
,p_message_text=>unistr('in den n\00E4chsten')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124641777938026064)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'ist nicht leer'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124641623717026064)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'de'
,p_message_text=>'ist leer'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124691551989026079)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'de'
,p_message_text=>'Label'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124683545342026077)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Label'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124687413874026078)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'de'
,p_message_text=>'Letzte'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124631901873026061)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'de'
,p_message_text=>'Letzter Tag'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124632189077026061)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'de'
,p_message_text=>'Letzte Stunde'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124632683323026061)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'de'
,p_message_text=>'Letzte Minute'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124631692845026061)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'de'
,p_message_text=>'Letzter Monat'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124631724452026061)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'de'
,p_message_text=>'Letzte Woche'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124631859292026061)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'de'
,p_message_text=>'Letzte %0 Tage'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124632039327026061)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'de'
,p_message_text=>'Letzte %0 Stunden'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124632718345026061)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'de'
,p_message_text=>'Letzte %0 Minuten'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124632534901026061)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'de'
,p_message_text=>'Letzte %0 Monate'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124632496044026061)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'de'
,p_message_text=>'Letzte %0 Wochen'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124631414837026061)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'de'
,p_message_text=>'Letzte %0 Jahre'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124631517729026061)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'de'
,p_message_text=>'Letztes Jahr'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124691789099026079)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'de'
,p_message_text=>'Zellenausrichtung'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124691876823026079)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'de'
,p_message_text=>unistr('Gruppe verwenden f\00FCr')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124642272857026064)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'de'
,p_message_text=>'kleiner als'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124642364584026064)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'de'
,p_message_text=>'kleiner oder gleich'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124685684125026077)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'de'
,p_message_text=>'Zeile'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124685795429026077)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'de'
,p_message_text=>unistr('Linien/Fl\00E4chen')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124692100253026079)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'de'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124684399704026077)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Niedrig'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124694603514026080)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'de'
,p_message_text=>'Trennen Sie mehrere Adressen durch Komma'
,p_is_js_message=>true
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124643471452026065)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'de'
,p_message_text=>unistr('entspricht regul\00E4rem Ausdruck')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124667855694026072)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'de'
,p_message_text=>'Maximum'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124702108119026082)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'de'
,p_message_text=>unistr('Gesamth\00F6chstwert')
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124668026464026072)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'de'
,p_message_text=>'Medianwert'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124702279342026082)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'de'
,p_message_text=>'Gesamtmedianwert'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124667724207026072)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'de'
,p_message_text=>'Minimum'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124643523764026065)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'de'
,p_message_text=>'Minuten'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124668575232026072)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'de'
,p_message_text=>unistr('Minuten zur\00FCck')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124702047653026082)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'de'
,p_message_text=>'Gesamtmindestwert'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124643994299026065)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'de'
,p_message_text=>'Monate'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124650594382026067)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Die Daten enthalten mehr als %0 Zeilen; dies \00FCberschreitet den zul\00E4ssigen H\00F6chstwert. Wenden Sie zus\00E4tzliche Filter an, um die Ergebnisse anzuzeigen.')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124676351025026074)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'de'
,p_message_text=>unistr('Die statische Regions-ID muss angegeben werden, da die Seite mehrere interaktive Grids enth\00E4lt.')
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124646698212026065)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'de'
,p_message_text=>'Name'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124646871531026066)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'de'
,p_message_text=>'Benannter Bericht'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124630889919026061)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chster Tag')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124630646443026061)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste Stunde')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124632824066026061)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste Minute')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124631149012026061)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chster Monat')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124631077512026061)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste Woche')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124630964426026061)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste %0 Tage')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124630708466026061)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste %0 Stunden')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124632947025026062)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste %0 Minuten')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124632279715026061)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste %0 Monate')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124632345058026061)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste %0 Wochen')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124631361870026061)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste %0 Jahre')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124631243510026061)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chstes Jahr')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124642570600026064)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'de'
,p_message_text=>'nicht zwischen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124641534618026064)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'de'
,p_message_text=>'ungleich'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124706314308026083)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Region mit ID %0 ist keine interaktive Rasterregion oder ist in Anwendung %1 nicht vorhanden.'
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124641955149026064)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'de'
,p_message_text=>'nicht in'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124642726461026064)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'de'
,p_message_text=>'nicht in den letzten'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124642919928026064)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'de'
,p_message_text=>unistr('nicht in den n\00E4chsten')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124650407594026067)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'de'
,p_message_text=>'Keine Daten gefunden'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124687215070026078)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'de'
,p_message_text=>'Nullwerte'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124692382142026079)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'de'
,p_message_text=>'Numerisch'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124687585950026078)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'de'
,p_message_text=>'Aus'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124687688688026078)
,p_name=>'APEX.IG.ON'
,p_message_language=>'de'
,p_message_text=>'Ein'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124640771709026064)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'de'
,p_message_text=>'Vor 1 Minute'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124695169037026080)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'de'
,p_message_text=>unistr('Farbauswahl \00F6ffnen: %0')
,p_is_js_message=>true
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124684018987026077)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('\00D6ffnen')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124647773760026066)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'de'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124683403648026077)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'de'
,p_message_text=>'Ausrichtung'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124685880179026077)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'de'
,p_message_text=>'Tortendiagramm'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124649053409026066)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'de'
,p_message_text=>'Pivot'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124614244096026056)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'de'
,p_message_text=>'Pivot-Ansicht'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124695071516026080)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'de'
,p_message_text=>'Werte durch %0 trennen'
,p_is_js_message=>true
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124685910916026077)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'de'
,p_message_text=>'Polardiagramm'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124691284876026079)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'de'
,p_message_text=>'Mitte'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124691380839026079)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'de'
,p_message_text=>'Ende'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124691192514026079)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'de'
,p_message_text=>'Anfang'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124646939673026066)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'de'
,p_message_text=>unistr('Prim\00E4r')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124647258918026066)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'de'
,p_message_text=>unistr('Prim\00E4rer Standardwert')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124663793715026071)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'de'
,p_message_text=>'Hauptbericht'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124537328383026033)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'de'
,p_message_text=>'Barrierefreiheitstags einbeziehen'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124534750798026032)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'de'
,p_message_text=>'Querformat'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124534855634026032)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'de'
,p_message_text=>'Hochformat'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124534627418026032)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'de'
,p_message_text=>'Seitenausrichtung'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124534558432026032)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'de'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124534461450026032)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'de'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124537531947026033)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'de'
,p_message_text=>'Benutzerdefiniert'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124534293863026032)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'de'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124534183896026032)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'de'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124534395968026032)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'de'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124534022856026032)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'de'
,p_message_text=>unistr('Seitengr\00F6\00DFe')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124499699303026022)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'de'
,p_message_text=>'Rich Text entfernen'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124686011650026077)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'de'
,p_message_text=>'Netzdiagramm'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124686160388026077)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'de'
,p_message_text=>'Bereich'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124696348657026080)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'de'
,p_message_text=>'Aktualisieren'
,p_is_js_message=>true
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124651263027026067)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'de'
,p_message_text=>'Zeile aktualisieren'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124650016557026066)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'de'
,p_message_text=>'Zeilen aktualisieren'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124655202927026068)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Interaktive Grid-Region ist nicht in Anwendung %0, Seite %1 und Region %2 vorhanden.'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124615796773026056)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'de'
,p_message_text=>'%0 entfernen'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124646379461026065)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'de'
,p_message_text=>'Bericht'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124705541244026083)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'de'
,p_message_text=>unistr('Bericht gel\00F6scht')
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124705259329026083)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'de'
,p_message_text=>unistr('Alternativer Bericht f\00FCr alle Benutzer gespeichert')
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124705104824026083)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'de'
,p_message_text=>unistr('Standardbericht f\00FCr alle Benutzer gespeichert')
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124705405436026083)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'de'
,p_message_text=>'Privater Bericht gespeichert'
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124705343200026083)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'de'
,p_message_text=>unistr('\00D6ffentlicher Bericht f\00FCr alle Benutzer gespeichert')
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124655365480026068)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Gespeichertes interaktives Grid mit Name %0 ist nicht vorhanden.'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124640623563026064)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'de'
,p_message_text=>'Grid-Daten - Stand vor %0 Minuten'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124640571311026064)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'de'
,p_message_text=>'Grid-Daten - Stand vor 1 Minute'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124576063733026044)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Interaktiver Grid-Bericht ist nicht vorhanden.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124698518145026081)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'de'
,p_message_text=>'Bericht - Bearbeiten'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124655162876026068)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Gespeichertes interaktives Grid mit ID %0 ist nicht vorhanden.'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124698405475026081)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'de'
,p_message_text=>'Bericht - Speichern unter'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124615887451026056)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'de'
,p_message_text=>'Rastereinstellungen'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124706402978026083)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Gespeichertes interaktives Raster mit statischer ID %0 ist nicht vorhanden.'
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124701415026026082)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'de'
,p_message_text=>'Berichtsansicht'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124614949527026056)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCcksetzen')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124651331492026067)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'de'
,p_message_text=>unistr('\00C4nderungen wiederherstellen')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124650130347026066)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'de'
,p_message_text=>'Zeilen wiederherstellen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124647348162026066)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'de'
,p_message_text=>'Zeile'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124646283385026065)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'de'
,p_message_text=>'Zeilen pro Seite'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124706038715026083)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'de'
,p_message_text=>'Zeilenaktionen'
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124707253319026084)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'de'
,p_message_text=>unistr('Aktionen f\00FCr Zeile %0')
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124615298061026056)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'de'
,p_message_text=>'Speichern'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124660346273026070)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'de'
,p_message_text=>'gespeichert'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124564944344026041)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'de'
,p_message_text=>'Gespeicherter Bericht: %0'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124613499050026056)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'de'
,p_message_text=>'Gespeicherte Berichte'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124613533896026056)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'de'
,p_message_text=>'Standardwert'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124587065027026048)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'de'
,p_message_text=>'Es ist bereits ein gespeicherter Bericht namens %0 vorhanden. Geben Sie einen neuen Namen ein.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124613678351026056)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'de'
,p_message_text=>'Privat'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124613707130026056)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'de'
,p_message_text=>unistr('\00D6ffentlich')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124701165515026082)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'de'
,p_message_text=>'Speichern unter'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124649412122026066)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'de'
,p_message_text=>'Berichtseinstellungen speichern'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124686245292026077)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'de'
,p_message_text=>'Streudiagramm'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124613340965026056)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'de'
,p_message_text=>'Suchen'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124693453445026080)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Suchen: Alle Textspalten'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124613285813026056)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'de'
,p_message_text=>'Suchen: %0'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124692779183026079)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'de'
,p_message_text=>'Suche: Volltextsuche'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124640499526026064)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'de'
,p_message_text=>'Nach ''%0'' suchen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124682856386026076)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'de'
,p_message_text=>unistr('- Ausw\00E4hlen -')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124622960623026058)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'de'
,p_message_text=>'Auswahl'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124676059394026074)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'de'
,p_message_text=>unistr('1 Zeile in der \00FCbergeordneten Region ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124613151852026056)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'de'
,p_message_text=>unistr('Zu suchende Spalten ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124705778846026083)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'de'
,p_message_text=>'Auswahlaktionen'
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124623191581026058)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'de'
,p_message_text=>'Zellenauswahl'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124623030240026058)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'de'
,p_message_text=>'Zeilenauswahl'
,p_is_js_message=>true
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124694042579026080)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'de'
,p_message_text=>'Als E-Mail senden'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124686609191026077)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Reihe'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124610829911026055)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'de'
,p_message_text=>'Anzeigen'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124666097631026071)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'de'
,p_message_text=>'Gesamtwert anzeigen'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124650942765026067)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'de'
,p_message_text=>'Single-Row-Ansicht'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124649268925026066)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'de'
,p_message_text=>'Sortieren'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124686730246026077)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'de'
,p_message_text=>'Sortieren nach'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124706168865026083)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('Nur eine Sortierung pro Spalte zul\00E4ssig.')
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124705979260026083)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'de'
,p_message_text=>unistr('\00C4ndern')
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124687703568026078)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'de'
,p_message_text=>'Stack'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124643276212026064)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'de'
,p_message_text=>'beginnt mit'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124686309413026077)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'de'
,p_message_text=>'Aktien'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124605619847026053)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Spaltenbreiten dehnen'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124649630319026066)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'de'
,p_message_text=>'Subscription'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124667652368026072)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'de'
,p_message_text=>'Summe'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124707417515026084)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'de'
,p_message_text=>'Interaktives Grid. Bericht: %0, Ansicht: %1.'
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124701571924026082)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'de'
,p_message_text=>'Gesamtsumme'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124684507431026077)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Ziel'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124690938655026079)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'de'
,p_message_text=>'Textfarbe'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124615982099026056)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'de'
,p_message_text=>'Umschalten'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124498031844026022)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'de'
,p_message_text=>'Grid'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124665966369026071)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'de'
,p_message_text=>'QuickInfo'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124646496441026065)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'de'
,p_message_text=>'Typ'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124650864798026067)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'de'
,p_message_text=>'Fixierung aufheben'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124647993820026066)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'de'
,p_message_text=>unistr('Ma\00DFeinheit')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124693832550026080)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'de'
,p_message_text=>unistr('Es sind nicht gespeicherte \00C4nderungen vorhanden. M\00F6chten Sie fortfahren?')
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124647839102026066)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'de'
,p_message_text=>'Wert'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124683651249026077)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Wert'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124688529649026078)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Ein Wert ist erforderlich.'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124673713853026074)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'de'
,p_message_text=>unistr('Wert (Zeitzone darf nicht ge\00E4ndert werden)')
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124692493964026079)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'de'
,p_message_text=>'Text'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124684908936026077)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'de'
,p_message_text=>'Vertikal'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124645951114026065)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'de'
,p_message_text=>'Anzeigen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124581072255026046)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>'Raster im Ansichtsmodus, zum Bearbeiten hier aktivieren'
,p_is_js_message=>true
,p_version_scn=>2692520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124682911087026076)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'de'
,p_message_text=>'Angezeigt'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124684435948026077)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Volumen'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124643832827026065)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'de'
,p_message_text=>'Wochen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124683055520026076)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'de'
,p_message_text=>'Minimale Spaltenbreite (Pixel)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124635080157026062)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'de'
,p_message_text=>'%0 zwischen %1 und %2'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124634756827026062)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'de'
,p_message_text=>unistr('%0 enth\00E4lt %1')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124634886039026062)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'de'
,p_message_text=>unistr('%0 enth\00E4lt nicht %1')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124610290906026055)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'de'
,p_message_text=>'%0 beginnt nicht mit %1'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124633544224026062)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'de'
,p_message_text=>'%0 gleich %1'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124633714298026062)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'de'
,p_message_text=>unistr('%0 gr\00F6\00DFer als %1')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124633807143026062)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'de'
,p_message_text=>unistr('%0 gr\00F6\00DFer als oder gleich %1')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124634544898026062)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'de'
,p_message_text=>'%0 in %1'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124635764313026062)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'de'
,p_message_text=>'%0 in den letzten %1  Tagen'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124635527753026062)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'de'
,p_message_text=>'%0 in den letzten %1 Stunden'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124635348760026062)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'de'
,p_message_text=>'%0 in den letzten %1 Minuten'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124636101852026062)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'de'
,p_message_text=>'%0 in den letzten %1 Monaten'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124635951667026062)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'de'
,p_message_text=>'%0 in den letzten %1  Wochen'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124636304797026062)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'de'
,p_message_text=>'%0 in den letzten %1 Jahren'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124635685763026062)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'de'
,p_message_text=>'%0 am letzten Tag'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124635414302026062)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'de'
,p_message_text=>'%0 in der letzten Stunde'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124635235540026062)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'de'
,p_message_text=>'%0 in der letzten Minute'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124636073211026062)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'de'
,p_message_text=>'%0 im letzten Monat'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124635861665026062)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'de'
,p_message_text=>'%0 in der letzten  Woche'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124636227823026062)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'de'
,p_message_text=>'%0 im letzten Jahr'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124638181570026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 in den n\00E4chsten %1 Tagen')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124637950468026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 in den n\00E4chsten %1 Stunden')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124637789987026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'de'
,p_message_text=>unistr('%0 in den n\00E4chsten %1 Minuten')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124638537033026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 in den n\00E4chsten %1 Monaten')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124638372370026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 in den n\00E4chsten %1 Wochen')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124638765237026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 in den n\00E4chsten %1 Jahren')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124638038891026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'de'
,p_message_text=>unistr('%0 am n\00E4chsten Tag')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124637876906026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'de'
,p_message_text=>unistr('%0 in der n\00E4chsten Stunde')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124637655818026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'de'
,p_message_text=>unistr('%0 in der n\00E4chsten Minute')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124638477953026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'de'
,p_message_text=>unistr('%0 im n\00E4chsten Monat')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124638242079026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'de'
,p_message_text=>unistr('%0 in der n\00E4chsten Woche')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124638681236026063)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'de'
,p_message_text=>unistr('%0 im n\00E4chsten Jahr')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124634271715026062)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'%0 ist nicht leer'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124634122322026062)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'de'
,p_message_text=>'%0 ist leer'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124633985055026062)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'de'
,p_message_text=>'%0 kleiner als %1'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124634026044026062)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'de'
,p_message_text=>'%0 kleiner als oder gleich %1'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124634377938026062)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'de'
,p_message_text=>'%0 wie %1'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124634922702026062)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'de'
,p_message_text=>unistr('%0 entspricht regul\00E4rem Ausdruck %1')
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124640893019026064)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'de'
,p_message_text=>'vor %0 Minuten'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124635144242026062)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'de'
,p_message_text=>'%0 nicht zwischen %1  und %2'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124633687528026062)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'de'
,p_message_text=>'%0 ungleich %1'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124634665310026062)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'de'
,p_message_text=>'%0 nicht in %1'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124636900883026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'de'
,p_message_text=>'%0 nicht an den letzten %1 Tagen'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124636787220026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'de'
,p_message_text=>'%0 nicht in den letzten %1 Stunden'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124636535756026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'de'
,p_message_text=>'%0 nicht in den letzten %1 Minuten'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124637382430026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'de'
,p_message_text=>'%0 nicht in den letzten %1 Monaten'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124637108006026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'de'
,p_message_text=>'%0 nicht in den letzten %1 Wochen'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124637529514026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'de'
,p_message_text=>'%0 nicht in den letzten %1 Jahren'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124636878171026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'de'
,p_message_text=>'%0 nicht am letzten Tag'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124636680609026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'de'
,p_message_text=>'%0 nicht in der letzten Stunde'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124636430667026062)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'de'
,p_message_text=>'%0 nicht in der letzten Minute'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124637208834026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'de'
,p_message_text=>'%0 nicht im letzten Monat'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124637085432026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'de'
,p_message_text=>'%0 nicht in der letzten Woche'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124637463901026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'de'
,p_message_text=>'%0 nicht im letzten Jahr'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124639392604026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht in den n\00E4chsten %1 Tagen')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124639184052026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht in den n\00E4chsten %1 Stunden')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124638984984026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht in den n\00E4chsten %1 Minuten')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124639715018026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht in den n\00E4chsten %1 Monaten')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124639545701026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht in den n\00E4chsten %1 Wochen')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124639929568026064)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht in den n\00E4chsten %1 Jahren')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124639217547026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht am n\00E4chsten Tag')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124639037714026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht in der n\00E4chsten Stunde')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124638870418026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht in der n\00E4chsten Minute')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124639687608026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht im n\00E4chsten Monat')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124639402609026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht in der n\00E4chsten Woche')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124639898516026063)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'de'
,p_message_text=>unistr('%0 nicht im n\00E4chsten Jahr')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124634461909026062)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'de'
,p_message_text=>'%0 nicht wie %1'
,p_is_js_message=>true
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124641335799026064)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'de'
,p_message_text=>'%0 beginnt mit %1'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124683722121026077)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'de'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124644063127026065)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'de'
,p_message_text=>'Jahre'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124683857335026077)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124683903119026077)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124692926840026079)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'de'
,p_message_text=>'Montag, 12. Januar 2016'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124693091632026079)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'de'
,p_message_text=>'Januar'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124693187221026079)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'de'
,p_message_text=>'vor 16 Stunden'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124693202175026079)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'de'
,p_message_text=>'in 16 Std.'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124511243553026026)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'de'
,p_message_text=>'Anwenden'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124503236613026023)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Ziehen Sie das Bild, und verschieben Sie es im Frame mit dem Zoomschieberegler.</p>',
'',
unistr('<p>Wenn der Fokus auf dem Zuschneidetool f\00FCr das Bild liegt, sind folgende Tastenkombinationen verf\00FCgbar:</p>'),
'<ul>',
'    <li>Pfeil nach links: Bild nach links verschieben*</li>',
'    <li>Pfeil nach oben: Bild nach oben verschieben*</li>',
'    <li>Pfeil nach rechts: Bild nach rechts verschieben*</li>',
'    <li>Pfeil nach unten: Bild nach unten verschieben*</li>',
unistr('    <li>I: Vergr\00F6\00DFern</li>'),
'    <li>O: Verkleinern</li>',
'    <li>L: Nach links drehen</li>',
'    <li>R: Nach rechts drehen</li>',
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Halten Sie die Umschalttaste gedr\00FCckt, um das Bild schneller zu verschieben</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124503476604026023)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu "Bild zuschneiden"'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124511312725026026)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCcksetzen')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124503728842026023)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'de'
,p_message_text=>'Bild zuschneiden'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124511409499026026)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'de'
,p_message_text=>unistr('Zoomfaktor \00FCber den Schieberegler anpassen')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124541055180026034)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Dateityp. Unterst\00FCtzte Dateitypen: %0.')
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124675452192026074)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'de'
,p_message_text=>'Durchsuchen'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124675187005026074)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'de'
,p_message_text=>unistr('Datei ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124675253080026074)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'de'
,p_message_text=>unistr('Dateien ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124540812714026034)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'de'
,p_message_text=>'Drag-and-Drop'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124541206352026034)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'de'
,p_message_text=>'Dateien per Drag-and-Drop verschieben'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124542672509026035)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'de'
,p_message_text=>unistr('Datei ausw\00E4hlen oder hier ablegen.')
,p_is_js_message=>true
,p_version_scn=>2692515
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124542786067026035)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'de'
,p_message_text=>unistr('Dateien ausw\00E4hlen oder hier ablegen.')
,p_version_scn=>2692515
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124542821734026035)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'de'
,p_message_text=>unistr('Datei ausw\00E4hlen oder hier ablegen.')
,p_is_js_message=>true
,p_version_scn=>2692515
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124542944843026035)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'de'
,p_message_text=>unistr('Dateien ausw\00E4hlen oder hier ablegen.')
,p_version_scn=>2692515
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124541116177026034)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'de'
,p_message_text=>'%0 Dateien'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124540932992026034)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'de'
,p_message_text=>unistr('Datei ist zu gro\00DF. Maximale Dateigr\00F6\00DFe: %0.')
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124521419026026029)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('Uploads mit mehreren Dateien werden nicht unterst\00FCtzt.')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124504393193026023)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'de'
,p_message_text=>'Entfernen'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124509891531026025)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Adresse erforderlich.'
,p_is_js_message=>true
,p_version_scn=>2692510
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124508709671026025)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'de'
,p_message_text=>'Stadt'
,p_is_js_message=>true
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124509198858026025)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'de'
,p_message_text=>unistr('L\00E4ndercode')
,p_is_js_message=>true
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124508841091026025)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'de'
,p_message_text=>'Hausnummer'
,p_is_js_message=>true
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124509766475026025)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'de'
,p_message_text=>'Breitengrad'
,p_is_js_message=>true
,p_version_scn=>2692510
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124509616696026025)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'de'
,p_message_text=>unistr('L\00E4ngengrad')
,p_is_js_message=>true
,p_version_scn=>2692510
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124509511175026025)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'de'
,p_message_text=>'Auf Karte anz.'
,p_is_js_message=>true
,p_version_scn=>2692510
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124509242806026025)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'de'
,p_message_text=>'Bewertung'
,p_is_js_message=>true
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124508946981026025)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'de'
,p_message_text=>'Postleitzahl'
,p_is_js_message=>true
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124509050183026025)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'de'
,p_message_text=>'Bundesland'
,p_is_js_message=>true
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124508673021026025)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'de'
,p_message_text=>unistr('Stra\00DFe')
,p_is_js_message=>true
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124508568691026025)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'de'
,p_message_text=>'Geocode-Ergebnisse'
,p_is_js_message=>true
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124540015832026034)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'de'
,p_message_text=>'Geocodiert'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124540139145026034)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'de'
,p_message_text=>'Nicht geocodiert'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124509400217026025)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'de'
,p_message_text=>'Karte'
,p_is_js_message=>true
,p_version_scn=>2692510
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124509302988026025)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'de'
,p_message_text=>'Keine Adressen gefunden.'
,p_is_js_message=>true
,p_version_scn=>2692510
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124509976320026025)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'de'
,p_message_text=>'%0 ist erforderlich.'
,p_is_js_message=>true
,p_version_scn=>2692510
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124616180531026056)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'de'
,p_message_text=>'%0 oder %1 ist erforderlich.'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124705688074026083)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'de'
,p_message_text=>'Hilfetext zu "%0" anzeigen.'
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124511634848026026)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'de'
,p_message_text=>unistr('Bild ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124511702668026026)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'de'
,p_message_text=>unistr('Bilder ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124511525258026026)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'de'
,p_message_text=>'Herunterladen'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124511879490026026)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'de'
,p_message_text=>'Drag-and-Drop'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124511920789026026)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'de'
,p_message_text=>'Bilder per Drag-and-Drop verschieben'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124512021382026026)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'de'
,p_message_text=>unistr('W\00E4hlen Sie ein Bild aus, oder legen Sie eines hier ab.')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124512133986026026)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'de'
,p_message_text=>unistr('Bilder ausw\00E4hlen oder hier ablegen.')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124512231435026026)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'de'
,p_message_text=>unistr('W\00E4hlen Sie ein Bild aus, oder legen Sie eines hier ab.')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124512320203026026)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'de'
,p_message_text=>unistr('Bilder ausw\00E4hlen oder hier ablegen.')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124597099616026051)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'de'
,p_message_text=>'Aktiviert'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124597144413026051)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'de'
,p_message_text=>'Deaktiviert'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124624659667026059)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'de'
,p_message_text=>unistr('Leeres schreibgesch\00FCtztes Kombinationsfeld')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124622457038026058)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'de'
,p_message_text=>unistr('Leeres schreibgesch\00FCtztes Listenfeld')
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124622268719026058)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'de'
,p_message_text=>unistr('Schreibgesch\00FCtztes Kombinationsfeld')
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124622355223026058)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'de'
,p_message_text=>unistr('Schreibgesch\00FCtztes Listenfeld')
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124538041134026033)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'de'
,p_message_text=>unistr('#LABEL# liegt nicht im g\00FCltigen Bereich zwischen %0 und %1.')
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124538141266026033)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'de'
,p_message_text=>'#LABEL# ist kein Mehrfaches von %0.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124625408940026059)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'de'
,p_message_text=>unistr('Schreibgesch\00FCtzter Schalter')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124566039829026042)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'de'
,p_message_text=>unistr('Schreibgesch\00FCtztes Element mit einem Link bearbeiten')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124537609102026033)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'de'
,p_message_text=>'#LABEL# muss den Werten %0 und %1 entsprechen.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124537895815026033)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'de'
,p_message_text=>'Nein'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124624101890026059)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'de'
,p_message_text=>'Aus'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124624200324026059)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'de'
,p_message_text=>'Ein'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124537730401026033)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'de'
,p_message_text=>'Ja'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124545641163026036)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'de'
,p_message_text=>'Sprachselektor'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124482060739026017)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'de'
,p_message_text=>unistr('Eintrag hinzuf\00FCgen')
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124658889217026069)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'de'
,p_message_text=>unistr('Hinzuf\00FCgen')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124658955086026069)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'de'
,p_message_text=>'Entfernen'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124482127193026017)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'de'
,p_message_text=>unistr('Ausgew\00E4hlte Eintr\00E4ge')
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124662614091026070)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'de'
,p_message_text=>'Erweitert'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124662987409026070)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'de'
,p_message_text=>'Abbrechen'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124662788821026070)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'de'
,p_message_text=>'Allgemein'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124663078130026070)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'de'
,p_message_text=>'Live-Templateoptionen'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124663675397026071)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'de'
,p_message_text=>unistr('Templateoptionen sind nicht verf\00FCgbar, weil diese Komponente nicht auf der Seite gerendert wird.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124662584431026070)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'de'
,p_message_text=>'Keine Templateoptionen gefunden.'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124662877583026070)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'de'
,p_message_text=>'Speichern'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124516678514026027)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'de'
,p_message_text=>unistr('Kreis l\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124519070150026028)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'de'
,p_message_text=>unistr('"Benutzerdefinierte Stile" ist keine g\00FCltige JSON.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124516930576026027)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'de'
,p_message_text=>'Entfernungstool'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124516723588026027)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'de'
,p_message_text=>'Kreis zeichnen'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124496581838026021)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'de'
,p_message_text=>'Aktueller Speicherort'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124502984154026023)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'de'
,p_message_text=>unistr('Die Koordinaten der anf\00E4nglichen Position sind ung\00FCltig.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124491939952026020)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'de'
,p_message_text=>unistr('Die anf\00E4ngliche Position muss eine Punktgeometrie sein.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124500514252026022)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'de'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124495715982026021)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'de'
,p_message_text=>'Layer'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124666182925026071)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'de'
,p_message_text=>'Layer: %0'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124514976804026027)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'de'
,p_message_text=>'Karte'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124484699929026017)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'de'
,p_message_text=>'Nachrichten'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124500735694026022)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'de'
,p_message_text=>'Meilen'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124665189101026071)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Die Daten enthalten mehr als %0 Zeilen; dies \00FCberschreitet den zul\00E4ssigen Maximalwert.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124495098076026021)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'de'
,p_message_text=>'&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Bedingungen</a> &nbsp;&nbsp; Kartendaten &copy; 2021 HERE'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124491619362026020)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'de'
,p_message_text=>unistr('Der Datentyp SDO_GEOMETRY ist in dieser Datenbank nicht verf\00FCgbar.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124495188131026021)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'de'
,p_message_text=>'<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap-Beitragende </a>'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124519766181026028)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'de'
,p_message_text=>'<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap-Beitragende </a>'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124495947914026021)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'de'
,p_message_text=>'Punkte'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124666255533026071)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'de'
,p_message_text=>'%0 Punkte'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124516892342026027)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'de'
,p_message_text=>'Rechteckzoom'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124516500563026027)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Entfernen'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124496343530026021)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'de'
,p_message_text=>unistr('Peilung auf Nord zur\00FCcksetzen')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124611123753026055)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'de'
,p_message_text=>'Zu 2D-Modus wechseln'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124611246745026055)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'de'
,p_message_text=>'Zu 3D-Modus wechseln'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124516465227026027)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'de'
,p_message_text=>'Copyright-Hinweis ein-/ausschalten'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124517038714026027)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'de'
,p_message_text=>'Entfernung gesamt'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124496083690026021)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'de'
,p_message_text=>unistr('Vergr\00F6\00DFern')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124496288158026021)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'de'
,p_message_text=>'Verkleinern'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124660703752026070)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'de'
,p_message_text=>'Fettdruck'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124661694782026070)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'de'
,p_message_text=>'Bild'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124661202030026070)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'de'
,p_message_text=>'Inline-Code'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124673970013026074)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Bild einf\00FCgen')
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124674098464026074)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'de'
,p_message_text=>unistr('Link einf\00FCgen')
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124660810579026070)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'de'
,p_message_text=>'Kursiv'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124674634666026074)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'de'
,p_message_text=>'Link'
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124661505285026070)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'de'
,p_message_text=>'Liste'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124661448913026070)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'de'
,p_message_text=>'Sortierte Liste'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124660978745026070)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'de'
,p_message_text=>'Vorschau'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124661032920026070)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'de'
,p_message_text=>'Keine Vorschau vorhanden'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124661110722026070)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'de'
,p_message_text=>'Durchgestrichen'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124661341696026070)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'de'
,p_message_text=>'Unsortierte Liste'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124640247447026064)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'de'
,p_message_text=>'Aktuell'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124696435202026080)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'de'
,p_message_text=>'Mehr...'
,p_is_js_message=>true
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124640101644026064)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'de'
,p_message_text=>'Wird geladen'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124554352009026038)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'de'
,p_message_text=>unistr('Schaltfl\00E4che teilen')
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124554210653026038)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'de'
,p_message_text=>unistr('Men\00FC teilen')
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124671275770026073)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'de'
,p_message_text=>'Benachrichtigung'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124495313346026021)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'de'
,p_message_text=>'%0 nicht gefunden'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124645223565026065)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'de'
,p_message_text=>'#LABEL# muss eine Zahl kleiner als oder gleich %0 sein.'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124645388894026065)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'de'
,p_message_text=>unistr('#LABEL# muss eine g\00FCltige Zahl sein.')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124645425582026065)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'de'
,p_message_text=>'#LABEL# entspricht nicht dem Zahlenformat %0 (Beispiel: %1).'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124645151967026065)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'de'
,p_message_text=>unistr('#LABEL# muss eine Zahl gr\00F6\00DFer als oder gleich %0 sein.')
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124645006045026065)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'de'
,p_message_text=>'#LABEL# muss eine Zahl zwischen %0 und %1 sein.'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124640335562026064)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'de'
,p_message_text=>unistr('Wird in neuem Fenster ge\00F6ffnet')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124590110384026049)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'de'
,p_message_text=>'Diese Seite wurde bereits weitergeleitet und kann nicht erneut weitergeleitet werden.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124571594636026043)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Anwendung "%0" Seite "%1" nicht gefunden.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124607060954026054)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'#LABEL# muss einen Wert haben.'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124497784931026021)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'de'
,p_message_text=>'Kennwort ausblenden'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124497692771026021)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'de'
,p_message_text=>'Kennwort anzeigen'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124545247769026036)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'de'
,p_message_text=>'Suche'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124659264450026069)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'de'
,p_message_text=>unistr('Schlie\00DFen')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124659160844026069)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'de'
,p_message_text=>'Suchen%0'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124659433596026069)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'de'
,p_message_text=>'Weiter'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124659357849026069)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124536022521026033)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'de'
,p_message_text=>'Geben Sie einen Suchbegriff aus mindestens %0 Zeichen ein.'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124612331259026055)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'de'
,p_message_text=>'Popup-Werteliste: %0'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124536141852026033)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'de'
,p_message_text=>'Geben Sie einen Suchbegriff ein.'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124483177605026017)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'de'
,p_message_text=>'Werteliste'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124535937807026033)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'de'
,p_message_text=>'Keine Ergebnisse gefunden.'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124535870468026033)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'de'
,p_message_text=>'%0 entfernen'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124633070573026062)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'de'
,p_message_text=>'Suchbegriff'
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124659088378026069)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'de'
,p_message_text=>'Suchen'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124485289515026018)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'%0 erforderlich.'
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124497589710026021)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Drucken des Berichts.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124508383181026025)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'de'
,p_message_text=>'Das Dokument kann mit dem konfigurierten Druckserver nicht gedruckt werden.'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124531069611026031)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler bei der Auswertung von Parameter %0 beim Aufruf von %1. Details finden Sie im Fehlerlog.'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124669740936026072)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'de'
,p_message_text=>'Verarbeitung'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124528893709026031)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124529927240026031)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'de'
,p_message_text=>unistr('Diese Website verf\00FCgt \00FCber App-Funktionen. Installieren Sie sie f\00FCr optimale Performance auf Ihrem Ger\00E4t.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124531248220026031)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'de'
,p_message_text=>'Weiter'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124532872442026032)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'de'
,p_message_text=>'Diese App installieren'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124517619236026028)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'de'
,p_message_text=>unistr('Ihr Ger\00E4t bzw. Browser scheint die Installation von progressiven Webanwendungen derzeit nicht zu unterst\00FCtzen.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124512713716026026)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'de'
,p_message_text=>'1. Tippen Sie auf das Symbol zum <strong>Teilen</strong>'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124512873366026026)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'de'
,p_message_text=>unistr('2. Scrollen Sie nach unten, und tippen Sie auf <strong>Zu Home-Bildschirm hinzuf\00FCgen</strong>')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124529288581026031)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'de'
,p_message_text=>unistr('3. Tippen Sie zum Best\00E4tigen auf <strong style="color:#007AE1;">Hinzuf\00FCgen</strong>')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124528317351026031)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<main>',
'    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 280" role="presentation">',
'      <g fill="none">',
'        <path d="M316.846 213.183c39.532 0 63.154-30.455 63.154-62.764 0-30.943-22.158-56.615-51.441-62.179v-1.17c0-48.123-38.947-87.07-87.07-87.07-39.044 0-72.036 25.672-83.066 61.007-8.492-3.612-17.863-5.564-27.722-5.564-34.261 0-62.764 24.11-69.69'
||'4 56.322a51.007 51.007 0 0 0-9.468-.879C23.036 110.79 0 133.825 0 162.327c0 28.405 23.036 51.441 51.441 51.441l265.405-.585z" fill="currentColor" opacity=".2"/>',
'        <circle fill="#D63B25" cx="336" cy="216" r="64"/>',
'        <path d="M367.357 198.439c-.395-.395-.947-.632-1.657-.632-.71 0-1.184.237-1.657.632L351.97 210.51l-10.494-10.493 12.072-12.072c.395-.395.71-.947.71-1.657A2.29 2.29 0 0 0 351.97 184c-.631 0-1.183.237-1.657.631l-12.071 12.072-7.496-7.496c-.394-'
||'.394-.947-.71-1.657-.71a2.29 2.29 0 0 0-2.288 2.288c0 .632.237 1.184.71 1.657l2.604 2.604-13.176 13.176a13.781 13.781 0 0 0-4.024 9.705c0 3.787 1.499 7.18 4.024 9.705l2.13 2.13-14.36 14.36c-.394.394-.71.947-.71 1.657a2.29 2.29 0 0 0 2.288 2.288c.631 '
||'0 1.184-.237 1.657-.71l14.36-14.36 1.736 1.736a13.781 13.781 0 0 0 9.704 4.024c3.787 0 7.18-1.5 9.705-4.024l13.176-13.177 2.92 2.92c.394.394.946.71 1.656.71a2.29 2.29 0 0 0 2.289-2.288c0-.632-.237-1.184-.71-1.657l-7.575-7.496 12.072-12.071c.394-.395.'
||'71-.947.71-1.657.079-.632-.237-1.184-.631-1.578zm-27.142 33.059a9.398 9.398 0 0 1-6.47 2.603c-2.525 0-4.813-.946-6.47-2.603l-7.1-7.101a9.124 9.124 0 0 1-2.683-6.47 9.124 9.124 0 0 1 2.682-6.47l13.177-13.176 3.156 3.156c.079.079.079.158.158.158l.157.1'
||'57 13.413 13.413c.08.08.08.158.158.158l.158.158 2.761 2.762-13.097 13.255z" fill="#FFF"/>',
'      </g>',
'    </svg>',
unistr('    <h1>Verbinden nicht m\00F6glich</h1>'),
unistr('    <p>Es liegt anscheinend ein Netzwerkproblem vor. Pr\00FCfen Sie Ihre Verbindung, und versuchen Sie es erneut.</p>'),
'    <button type="button">Wiederholen</button>',
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124528236354026031)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'de'
,p_message_text=>unistr('Verbinden nicht m\00F6glich')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124574872287026044)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'de'
,p_message_text=>unistr('Das Aktivieren von Push-Benachrichtigungen auf diesem Ger\00E4t war nicht erfolgreich.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124580348476026046)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'de'
,p_message_text=>unistr('Schnellauswahl f\00FCr %0')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124580215735026046)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'de'
,p_message_text=>unistr('Link f\00FCr die Schnellauswahl')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124554064029026038)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'de'
,p_message_text=>'Ausgeblendetes Optionsfeld'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124498148078026022)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'de'
,p_message_text=>'Single-Row-Ansicht'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124680817434026076)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'de'
,p_message_text=>unistr('Hinzuf\00FCgen')
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124626105855026059)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'de'
,p_message_text=>unistr('Ganzt\00E4gig')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124703724087026083)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'de'
,p_message_text=>'Einladung senden'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124703589063026082)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'de'
,p_message_text=>'Optionen'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124627974518026060)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'de'
,p_message_text=>unistr('T\00E4gliche Anzeige f\00FCr jeden Tag')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124627777107026060)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'de'
,p_message_text=>unistr('T\00E4gliche Anzeige f\00FCr Daten mit Uhrzeit')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124671941313026073)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'de'
,p_message_text=>'Tag'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124666973419026072)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>'Beschreibung'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124550473376026037)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'de'
,p_message_text=>'CSV'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124550250626026037)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'de'
,p_message_text=>'iCal'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124550186159026037)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'de'
,p_message_text=>'PDF'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124550301630026037)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'de'
,p_message_text=>'XML'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124549830437026037)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'de'
,p_message_text=>'Enddatum'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124550052822026037)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'de'
,p_message_text=>'Ereignisname'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124703676487026083)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'de'
,p_message_text=>'Einladung'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124672006176026073)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'de'
,p_message_text=>'Liste'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124671741908026073)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'de'
,p_message_text=>'Monat'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124674359382026074)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'de'
,p_message_text=>'Weiter'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124688345954026078)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'de'
,p_message_text=>'Keine Ereignisse'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124703954078026083)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'de'
,p_message_text=>'Bearbeiten Sie ein vorhandenes Ereignis.'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124703874984026083)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'de'
,p_message_text=>'Senden Sie die Einladung per E-Mail.'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124674479573026074)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124682132070026076)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'de'
,p_message_text=>'E-Mail senden'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124681991455026076)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'de'
,p_message_text=>'E-Mail senden'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124704527986026083)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Alle Felder sind Pflichtfelder.'
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124704420581026083)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'de'
,p_message_text=>'Einladung senden'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124703457509026082)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'de'
,p_message_text=>'Betreff'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124682081700026076)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'de'
,p_message_text=>'An'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124549955795026037)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'de'
,p_message_text=>'Startdatum'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124680145814026076)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'de'
,p_message_text=>'Formular basierend auf %0'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124627534731026060)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'de'
,p_message_text=>'Zeit'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124674521112026074)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'de'
,p_message_text=>'Heute'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124672526642026073)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'de'
,p_message_text=>'Anzeigen'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124671890647026073)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'de'
,p_message_text=>'Woche'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124627895981026060)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'de'
,p_message_text=>unistr('W\00F6chentliche Anzeige f\00FCr jeden Tag')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124627690914026060)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'de'
,p_message_text=>unistr('W\00F6chentliche Anzeige f\00FCr Daten mit Uhrzeit')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124672405369026073)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'de'
,p_message_text=>'Jahr'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124672163975026073)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Spalten...'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124672231997026073)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'de'
,p_message_text=>'Weitere laden...'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124601666952026052)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124543140596026035)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'de'
,p_message_text=>'Weitere laden...'
,p_version_scn=>2692515
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124545460974026036)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'de'
,p_message_text=>'Suchen...'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124672392503026073)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'de'
,p_message_text=>'Weitere laden...'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124674226323026074)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Regions-ID %0 nicht gefunden.'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124545398391026036)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Keine Daten gefunden'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124572877962026044)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCcksetzen von Paginierung f\00FCr Region nicht m\00F6glich.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124536572827026033)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Festlegen der Regionspaginierung.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124666369382026071)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Spalten...'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124520828850026028)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'de'
,p_message_text=>unistr('Lazy Loading ist nicht kompatibel mit Slots in %0 (einzelne (Teil-)Region). Deaktivieren Sie Lazy Loading f\00FCr diese Region, oder verschieben Sie die Slotkomponenten in eine andere Region.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124516143178026027)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'de'
,p_message_text=>unistr('Gruppentemplate fehlt in Templatekomponenten f\00FCr %0.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124511160746026026)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 ist eine einzelne (Teil-)Region und hat mehrere Zeilen zur\00FCckgegeben.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124674155356026074)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('Regionstyp %0 wird nicht unterst\00FCtzt.')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124536407117026033)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Rendering von Region "#COMPONENT_NAME#".'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124607157021026054)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'#COLUMN_HEADER# muss einen Wert aufweisen.'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124488700862026019)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'de'
,p_message_text=>unistr('Sie m\00FCssen ein Berichtslayout angeben.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124703098050026082)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'de'
,p_message_text=>'%0, Rich-Text-Editor'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124609263287026054)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'de'
,p_message_text=>unistr('Das Rich-Text-HTML-Markup \00FCberschreitet die maximale L\00E4nge des Elements (tats\00E4chlich: %0, zul\00E4ssig: %1 Zeichen)')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124518696763026028)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'de'
,p_message_text=>unistr('Schreibgesch\00FCtzter Rich-Text-Editor')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124518539075026028)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'de'
,p_message_text=>'Rich-Text-Editor'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124518323278026028)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'de'
,p_message_text=>'Ausrichtung'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124518462421026028)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'de'
,p_message_text=>'Extras'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124518110533026028)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'de'
,p_message_text=>'Schriftart'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124518014273026028)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'de'
,p_message_text=>'Formatierung'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124518293134026028)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'de'
,p_message_text=>'Listen'
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124671385173026073)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'de'
,p_message_text=>unistr('L\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124663807873026071)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'de'
,p_message_text=>'Duplizieren'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124662113583026070)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'de'
,p_message_text=>'Angezeigte Spalten'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124662025566026070)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'de'
,p_message_text=>unistr('Nullwerte ausschlie\00DFen')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124671445110026073)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'de'
,p_message_text=>unistr('Hinzuf\00FCgen')
,p_is_js_message=>true
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124625791819026059)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'de'
,p_message_text=>'Nach unten'
,p_is_js_message=>true
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124625814359026059)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'de'
,p_message_text=>'Nach oben'
,p_is_js_message=>true
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124661843227026070)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'de'
,p_message_text=>'Weiter'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124662452458026070)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'de'
,p_message_text=>'Andere Spalten'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124661950079026070)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124662270710026070)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'de'
,p_message_text=>'Zeile %0'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124662382683026070)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'de'
,p_message_text=>'Zeile %0 von %1'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124663988779026071)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'de'
,p_message_text=>'Aktualisieren'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124664080929026071)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'de'
,p_message_text=>unistr('\00C4nderungen wiederherstellen')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124661731694026070)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'de'
,p_message_text=>'Einstellungen'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124620956858026058)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'de'
,p_message_text=>'Beispiel: %0'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124625252466026059)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'de'
,p_message_text=>'Beispiel: %0'
,p_is_js_message=>true
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124537935552026033)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'de'
,p_message_text=>'1 Ergebnis'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124535034754026033)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'de'
,p_message_text=>'%0 Ergebnisse'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124586829492026048)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'de'
,p_message_text=>'Paginierung'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124586965116026048)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'de'
,p_message_text=>'Ergebnisse, %0 bis %1'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124482626037026017)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'de'
,p_message_text=>'Erneut anmelden'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124482589003026017)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'de'
,p_message_text=>'Ihre Session wurde beendet'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124482730445026017)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'de'
,p_message_text=>unistr('Verl\00E4ngern')
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124482317608026017)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'de'
,p_message_text=>unistr('Ihre Session endet um %0. M\00F6chten Sie sie verl\00E4ngern?')
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124482422542026017)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'de'
,p_message_text=>unistr('Ihre Session endet um %0 und kann nicht verl\00E4ngert werden. Speichern Sie Ihre Arbeit jetzt, damit keine Daten verloren gehen')
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124681759654026076)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten des Cleanup-Codes der Datenbanksession.'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124571416269026043)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten des Setupcodes der Datenbanksession.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124541829304026035)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'de'
,p_message_text=>'Ihre Session wurde beendet.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124680979125026076)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'de'
,p_message_text=>unistr('Schlie\00DFen Sie dieses Dialogfeld, und dr\00FCcken Sie auf die Browserschaltfl\00E4che f\00FCr das erneute Laden, um eine neue Session aufzurufen.')
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124699815382026081)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'de'
,p_message_text=>'<a href="%0">Melden Sie sich erneut an</a>, um eine neue Session zu erstellen.'
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124584135787026047)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'de'
,p_message_text=>unistr('Session nicht g\00FCltig')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124627211604026060)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'de'
,p_message_text=>unistr('Es konnten keine dynamischen Rollen in der Real Application Security-Session f\00FCr Benutzer "%0" aktiviert werden.')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124569385214026043)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('ERR-99900 Erstellen von eindeutiger Session-ID nicht m\00F6glich: %0')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124498413679026022)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>unistr('Datentyp f\00FCr Sessionzustand CLOB ist f\00FCr Element %0 nicht zul\00E4ssig.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124517833347026028)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>unistr('Elemente mit Datentyp CLOB f\00FCr Sessionzustand k\00F6nnen nicht ersetzt werden.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124586664240026048)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'de'
,p_message_text=>unistr('Verletzung des Sessionzustandsschutzes: Dieser Fehler wurde m\00F6glicherweise verursacht, weil das gesch\00FCtzte Seitenelement %0 manuell ge\00E4ndert wurde. Wenn Sie nicht wissen, wodurch dieser Fehler verursacht wurde, wenden Sie sich an den Anwendungsadmini')
||'strator.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124707823952026084)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'de'
,p_message_text=>unistr('Seitenschutzverletzung: Dies kann auftreten, wenn Sie eine Seite weiterleiten, die noch nicht vollst\00E4ndig geladen wurde, oder wenn Sie gesch\00FCtzte Seitenelemente manuell \00E4ndern. Wenden Sie sich an den Anwendungsadministrator, wenn Sie weitere Hilfe be')
||unistr('n\00F6tigen.')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124706967168026084)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'de'
,p_message_text=>unistr('%0 enth\00E4lt eines der folgenden ung\00FCltigen Zeichen: &<>"/;,*|=% oder --')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124707098196026084)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'de'
,p_message_text=>unistr('%0 enth\00E4lt eines der folgenden ung\00FCltigen Zeichen: &<>"/;,*|=% oder -- oder Zeilenendmarke.')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124706719156026084)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'de'
,p_message_text=>unistr('%0 enth\00E4lt Sonderzeichen. Nur die Zeichen a-Z, 0-9 und Leerzeichen sind zul\00E4ssig.')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124706845394026084)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'de'
,p_message_text=>unistr('%0 enth\00E4lt <, > oder ". Dies sind ung\00FCltige Zeichen.')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124544270813026035)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'de'
,p_message_text=>unistr('Es wurde keine Pr\00FCfsumme f\00FCr die Verarbeitungsanzeige f\00FCr eine Seite zur Verf\00FCgung gestellt, die eine Pr\00FCfsumme ben\00F6tigt, wenn Werte f\00FCr Anforderungen, L\00F6schvorg\00E4nge beim Cacheinhalt oder Argumente als Parameter \00FCbergeben werden.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124581519433026046)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'de'
,p_message_text=>unistr('Verletzung des Sessionzustandschutzes: Dieser Fehler wurde m\00F6glicherweise verursacht, weil der URL ge\00E4ndert wurde, der eine Pr\00FCfsumme enth\00E4lt. Es wurde m\00F6glicherweise auch ein Link mit einer falschen oder fehlenden Pr\00FCfsumme verwendet. Wenn Sie nicht')
||' wissen, wodurch dieser Fehler verursacht wurde, wenden Sie sich an den Anwendungsadministrator.'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124663108664026070)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'de'
,p_message_text=>'Modus "Hoher Kontrast" deaktivieren'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124663271330026070)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'de'
,p_message_text=>'Modus "Hoher Kontrast" aktivieren'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124527694509026030)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'de'
,p_message_text=>'Die Anwendungseinstellung %0 kann nicht aktualisiert werden, da sie von einer anderen Anwendung abonniert wurde.'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124577960610026045)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'de'
,p_message_text=>'Unten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124578168526026045)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'de'
,p_message_text=>'Nach unten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124578223618026045)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'de'
,p_message_text=>'Verschieben'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124578300649026045)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'de'
,p_message_text=>'Alle verschieben'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124578467954026045)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'de'
,p_message_text=>'Entfernen'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124578500908026045)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'de'
,p_message_text=>'Alle entfernen'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124578662528026045)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCcksetzen')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124577884429026045)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'de'
,p_message_text=>'Oben'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124578039103026045)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'de'
,p_message_text=>'Nach oben'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124689635823026078)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'de'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124690359471026079)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'in %0 Tag(en)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124689546034026078)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'de'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124690445628026079)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'in %0 Stunde(n)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124689374104026078)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'de'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124690532107026079)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'in %0 Minute(n)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124689975463026078)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'de'
,p_message_text=>'%0mo'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124690112435026078)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'in %0 Monat(en)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124689421729026078)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'de'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124690265568026079)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'in %0 Sekunde(n)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124689783264026078)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'de'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124690649945026079)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'in %0 Woche(n)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124689805264026078)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'de'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124690048981026078)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'in %0 Jahr(en)'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124490904170026019)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'de'
,p_message_text=>'[Linie]'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124491533259026020)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'de'
,p_message_text=>'[Mehrere Linien]'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124491205192026020)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'de'
,p_message_text=>'[Mehrere Punkte]'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124491720783026020)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'de'
,p_message_text=>'[Mehrere Polygone]'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124491884039026020)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'de'
,p_message_text=>'[Geometrieobjekt]'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124490898014026019)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'de'
,p_message_text=>'[Punkt (%0,%1)]'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124491168652026019)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'de'
,p_message_text=>'[Polygon]'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124490383396026019)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'de'
,p_message_text=>'Ausgeblendete Region: %0'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124605472603026053)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'de'
,p_message_text=>'Ausblenden'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124489337801026019)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'de'
,p_message_text=>'Horizontal ausgerichteter Teilungsbalken kann nicht nach links oder rechts verschoben werden.'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124489592139026019)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'de'
,p_message_text=>unistr('Maximale Gr\00F6\00DFe von %0 px erreicht')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124490548004026019)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'de'
,p_message_text=>unistr('Minimale Gr\00F6\00DFe von %0 px erreicht')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124490487483026019)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'de'
,p_message_text=>'Region wurde ausgeblendet'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124490290552026019)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'de'
,p_message_text=>'Region wurde wiederhergestellt'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124489996498026019)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'de'
,p_message_text=>unistr('Gr\00F6\00DFe in %0 px ge\00E4ndert')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124490124887026019)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'de'
,p_message_text=>'Wiederhergestellte Region: %0'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124605314290026053)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'de'
,p_message_text=>'Wiederherstellen'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124489474298026019)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'de'
,p_message_text=>'Vertikal ausgerichteter Teilungsbalken kann nicht nach oben oder unten verschoben werden.'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124654885134026068)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'de'
,p_message_text=>unistr('Bewertung l\00F6schen')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124644758124026065)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'de'
,p_message_text=>unistr('%0 liegt nicht im g\00FCltigen Bewertungsbereich von 1 bis %1')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124644833017026065)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'de'
,p_message_text=>'%0 ist nicht numerisch'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124640958468026064)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'de'
,p_message_text=>'Erfolgsmeldung'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124702702759026082)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'de'
,p_message_text=>'Weiter'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124702621337026082)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124612869057026055)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Mit dieser Aufgabeninstanz verkn\00FCpfte Quellsysteme nicht gefunden')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124621127026026058)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Die Ausf\00FChrung von Aufgabenaktion %0 war nicht erfolgreich. Die Aufgabe ist auf den Status "Fehlerhaft" gesetzt. Pr\00FCfen Sie den aktuellen Aufgabenaktionscode.')
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124501316889026023)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'de'
,p_message_text=>unistr('Kommentar hinzuf\00FCgen: Nicht autorisiert')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124500687593026022)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'de'
,p_message_text=>'Aufgabe bereits zugewiesen'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124494015859026020)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'de'
,p_message_text=>'%0 zugewiesen'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124500339888026022)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'de'
,p_message_text=>'Aufgabe abbrechen: Nicht autorisiert'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124515914289026027)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'de'
,p_message_text=>unistr('Der tats\00E4chliche Eigent\00FCmer dieser Aufgabe kann nicht entfernt werden. Delegieren Sie diese Aufgabe an einen anderen Teilnehmer, bevor Sie diesen Vorgang wiederholen.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124499987803026022)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'de'
,p_message_text=>'Aufgabe beanspruchen: Nicht autorisiert'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124500081661026022)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'de'
,p_message_text=>unistr('Aufgabe abschlie\00DFen: Nicht autorisiert')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124500164271026022)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'de'
,p_message_text=>'Aufgabe delegieren: Nicht autorisiert'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124498532911026022)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'de'
,p_message_text=>unistr('F\00E4lligkeitsdatum der Aufgabe darf nicht in der Vergangenheit liegen.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124493828170026020)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'de'
,p_message_text=>unistr('F\00E4llig %0')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124494220657026020)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Aufgabenaktion %1 nicht erfolgreich. Fehlermeldung: %0'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124493933438026020)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'de'
,p_message_text=>'Nicht erfolgreich'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124493594982026020)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'de'
,p_message_text=>'Erfolgreich'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124493763634026020)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Aktion %1 erfolgreich. Meldung: %0'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124497020602026021)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'de'
,p_message_text=>'Vor Ablauf'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124522686374026029)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'de'
,p_message_text=>'Abbrechen'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124522120764026029)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Aufgabe abgebrochen'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124522713294026029)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>'Teilnehmer ist nicht berechtigt, die Aufgabe abzubrechen'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124522099558026029)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'de'
,p_message_text=>'Beanspruchen'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124522434275026029)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'de'
,p_message_text=>'Aufgabe wurde bereits von einem anderen Benutzer beansprucht, oder Teilnehmer ist nicht zur Beanspruchung dieser Aufgabe berechtigt'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124522269703026029)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Aufgabe beansprucht von %0'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124623333919026059)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'de'
,p_message_text=>unistr('Abschlie\00DFen')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124521841814026029)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Aufgabe mit Ergebnis %0 abgeschlossen'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124523142588026029)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>unistr('Die Aufgabe ist nicht zugewiesen, oder der Teilnehmer ist nicht berechtigt, die Aufgabe abzuschlie\00DFen')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124483508975026017)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'de'
,p_message_text=>'Aufgabe ohne Ergebnis abgeschlossen'
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124623444448026059)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'de'
,p_message_text=>'Erstellen'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124516322615026027)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Aufgabe mit ID %0 erstellt'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124623543929026059)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'de'
,p_message_text=>'Delegieren'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124521965768026029)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Aufgabe an potenziellen Eigent\00FCmer %0 delegiert')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124522551205026029)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>unistr('Teilnehmer ist nicht berechtigt, oder neuer Teilnehmer ist kein potenzieller Eigent\00FCmer dieser Aufgabe')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124495664361026021)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'de'
,p_message_text=>'Ablaufen'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124496724192026021)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Aufgabe abgelaufen.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124623621466026059)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'de'
,p_message_text=>'Nicht erfolgreich'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124492341059026020)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>'Die Aufgabe ist nicht zugewiesen, oder der Teilnehmer ist nicht berechtigt, Informationen zur Aufgabe anzufordern'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124492522708026020)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>'Es wurden keine Informationen zur Aufgabe angefordert, oder der Teilnehmer ist nicht berechtigt, Informationen zur Aufgabe weiterzuleiten.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124496127133026021)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Aufgabe l\00E4uft ab, da die maximale Anzahl Erneuerungen von %0 erreicht wurde.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124523411976026029)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'de'
,p_message_text=>unistr('Aufgabe weist nicht den richtigen Status auf, oder Teilnehmer ist kein Gesch\00E4ftsadministrator f\00FCr diese Aufgabe')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124523578988026029)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'de'
,p_message_text=>unistr('Vorgang %0 ist unbekannt oder f\00FCr diese Aufgabe nicht anwendbar')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124623762964026059)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'de'
,p_message_text=>'Freigeben'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124609407885026054)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Aufgabe freigegeben. Sie kann jetzt von anderen beansprucht werden'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124502388548026023)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>unistr('Aufgabenfreigabe ist nicht zul\00E4ssig. Der Benutzer ist nicht der Eigent\00FCmer der Aufgabe')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124519345794026028)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'de'
,p_message_text=>unistr('Eigent\00FCmer entfernen')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124519529063026028)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Der Teilnehmer %0 wurde von der Aufgabe entfernt'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124496936549026021)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'de'
,p_message_text=>'Erneuern'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124495802233026021)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Aufgabe wurde mit ID %0 erneuert. Verbleibende maximale Anzahl Erneuerungen bis zum Ablauf: %1.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124496848475026021)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Aufgaben-ID %0 wurde mit Aufgaben-ID %1 erneuert'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124492801632026020)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'de'
,p_message_text=>'Informationen anfordern'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124492725640026020)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Anforderung weiterer Informationen bei %0: %1'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124490664515026019)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'de'
,p_message_text=>unistr('"Initiator kann abschlie\00DFen" auf %0 setzen')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124492919655026020)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'de'
,p_message_text=>'Informationen weiterleiten'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124492631294026020)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Angeforderte Informationen weitergeleitet an %0: %1'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124623828333026059)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'de'
,p_message_text=>'Kommentar aktualisieren'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124520398748026028)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Kommentar hinzuf\00FCgen: %0')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124523260814026029)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>unistr('Aufgabenstatus l\00E4sst keine Kommentare zu')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124530504726026031)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'de'
,p_message_text=>unistr('F\00E4lligkeitsdatum der Aufgabe auf %0 setzen')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124488664730026019)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'de'
,p_message_text=>unistr('Update f\00E4llig am')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124623992778026059)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'de'
,p_message_text=>unistr('Eigent\00FCmer aktualisieren')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124521605695026029)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Potenziellen Eigent\00FCmer %0 zu Aufgabenteilnehmern hinzuf\00FCgen')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124520731857026028)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'de'
,p_message_text=>'Parameter aktualisieren'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124624005243026059)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'de'
,p_message_text=>unistr('Priorit\00E4t aktualisieren')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124522361969026029)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Aufgabenpriorit\00E4t auf %0 festgelegt')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124519604480026028)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Der Parameter "%0" wurde von "%1" auf "%2" aktualisiert.'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124503160739026023)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Aufgabe abgebrochen, da die zugeh\00F6rige Workflowinstanz beendet wurde.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124500264907026022)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'de'
,p_message_text=>'Aufgabe weiterleiten: Nicht autorisiert'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124493639750026020)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'de'
,p_message_text=>'Initiiert von %0 %1'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124502510506026023)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'de'
,p_message_text=>'Ein unerwarteter interner Fehler ist aufgetreten'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124500825194026022)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'de'
,p_message_text=>'Aufgabenvorgang nicht anwendbar'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124526430608026030)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'de'
,p_message_text=>unistr('Dieser potenzielle Eigent\00FCmer ist nicht vorhanden.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124502102573026023)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'de'
,p_message_text=>'Genehmigt'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124502205851026023)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'de'
,p_message_text=>'Abgelehnt'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124483646544026017)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'de'
,p_message_text=>unistr('Ergebnis ist f\00FCr Aufgabenabschluss erforderlich')
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124483827104026017)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>'Aufgabe darf kein Ergebnis haben'
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124519473624026028)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'de'
,p_message_text=>'Der Parameter %0 kann nicht aktualisiert werden.'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124515785809026027)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'de'
,p_message_text=>unistr('Der Teilnehmer ist f\00FCr diese Aufgabeninstanz bereits vorhanden.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124617244560026057)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'de'
,p_message_text=>'Dringend'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124494303158026020)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>'Dringend'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124617172001026057)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'de'
,p_message_text=>'Hoch'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124494491274026020)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>unistr('Hohe Priorit\00E4t')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124617031289026057)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'de'
,p_message_text=>'Mittel'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124494504255026021)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>unistr('Mittlere Priorit\00E4t')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124616932201026057)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'de'
,p_message_text=>'Niedrig'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124494652167026021)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>unistr('Niedrige Priorit\00E4t')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124616828046026057)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'de'
,p_message_text=>'Niedrigste'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124494778377026021)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>unistr('Niedrigste Priorit\00E4t')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124500467664026022)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'de'
,p_message_text=>unistr('Aufgabenpriorit\00E4t festlegen: Nicht autorisiert')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124501686285026023)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'de'
,p_message_text=>'Zugewiesen'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124502041607026023)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'de'
,p_message_text=>'Abgebrochen'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124501755436026023)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'de'
,p_message_text=>'Abgeschlossen'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124501970831026023)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'de'
,p_message_text=>'Fehlerhaft'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124495438230026021)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'de'
,p_message_text=>'Abgelaufen'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124501810697026023)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'de'
,p_message_text=>'Nicht erfolgreich'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124492133132026020)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'de'
,p_message_text=>'Informationen angefordert'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124501562751026023)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'de'
,p_message_text=>'Nicht zugewiesen'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124523969997026029)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Die Erstellung einer neuen Aufgabe f\00FCr Aufgabendefinition %0 in Anwendung %1 war nicht erfolgreich.'),
'SQLCODE: %2'))
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124523814598026029)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'de'
,p_message_text=>unistr('Ein Versuch, eine Aufgabe f\00FCr Aufgabendefinition %0 in Anwendung %1 zu erstellen, war nicht erfolgreich, da die Aufgabendefinition keine potenziellen Eigent\00FCmer enth\00E4lt. Bearbeiten Sie die Aufgabendefinition, und f\00FCgen Sie mindestens einen Teilnehmer')
||unistr(' des Typs "Potenzieller Eigent\00FCmer" hinzu')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124501115294026022)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Aufgabendefinition nicht gefunden'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124501032761026022)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Teilnehmer f\00FCr die Aufgabe nicht gefunden')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124502495228026023)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'de'
,p_message_text=>unistr('Mehrere Aufgaben f\00FCr die angegebene Aufgaben-ID vorhanden. Wenden Sie sich an den Datenbankadministrator')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124501201673026022)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Aufgabe nicht gefunden'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124500950918026022)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Aufgabenparameter nicht gefunden'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124537258043026033)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'de'
,p_message_text=>'Aktion'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124537163972026033)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'de'
,p_message_text=>'Genehmigung'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124484538852026017)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Urlaubsregelprozedur %2 konnte f\00FCr Aufgabendefinition %0 in Anwendung %1 nicht ausgef\00FChrt werden.')
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124484752715026018)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Teilnehmer %1 wurde als Stellvertreter f\00FCr Teilnehmer %0 hinzugef\00FCgt. Grund: %2.')
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124688446787026078)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'de'
,p_message_text=>'Symbolleiste'
,p_is_js_message=>true
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124541985332026035)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'de'
,p_message_text=>'Anwendung'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124703160233026082)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'de'
,p_message_text=>'Navigation ein-/ausblenden'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124703226558026082)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'de'
,p_message_text=>'Rechte Spalte einblenden/ausblenden'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124611628181026055)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'de'
,p_message_text=>'Hauptnavigation'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124512450601026026)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'de'
,p_message_text=>unistr('"%0" ist ein ung\00FCltiger Platzhaltername.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124619319145026057)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'de'
,p_message_text=>'1 Tag'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124619183287026057)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'de'
,p_message_text=>'1 Stunde'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124619403924026057)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'de'
,p_message_text=>'%0 Tage'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124619261535026057)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'de'
,p_message_text=>'%0 Stunden'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124619027952026057)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'de'
,p_message_text=>'%0 Minuten'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124619677507026057)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'de'
,p_message_text=>'%0 Wochen'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124619501118026057)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'de'
,p_message_text=>'1 Woche'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124517336692026027)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'de'
,p_message_text=>unistr('%0 Elemente ausgew\00E4hlt')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124517534044026027)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'de'
,p_message_text=>unistr('Element ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124517435158026027)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'de'
,p_message_text=>unistr('%0 ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124706283961026083)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'de'
,p_message_text=>'Seitenanfang'
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124563880604026041)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'de'
,p_message_text=>'Aktiviert'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124532379533026032)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Verarbeiten von Anforderung.'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124517999864026028)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'de'
,p_message_text=>'Die Textnachricht %0 kann nicht aktualisiert werden, da sie von einer anderen Anwendung abonniert wurde.'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124621005732026058)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Wert erforderlich'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124537455106026033)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'de'
,p_message_text=>unistr('\00DCberschriftsebene %0, ausgeblendet')
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124665827109026071)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'de'
,p_message_text=>unistr('Diese Seite enth\00E4lt nicht gespeicherte \00C4nderungen.')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124527492284026030)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'de'
,p_message_text=>'Navigator'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124527106518026030)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'de'
,p_message_text=>unistr('Vergr\00F6\00DFern')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124528174585026031)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'de'
,p_message_text=>'Zoomfaktor {0}%'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124527220162026030)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'de'
,p_message_text=>'Verkleinern'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124527371442026030)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'de'
,p_message_text=>unistr('Zoom zur\00FCcksetzen')
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124502885883026023)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'de'
,p_message_text=>'Auf das Workflowdiagramm kann derzeit nicht zugegriffen werden.'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124502752328026023)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'de'
,p_message_text=>'Workflowdiagramm'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124504647229026024)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>unistr('Die Workflowinstanz %0 hat derzeit den Status %1. Daher ist der Vorgang nicht zul\00E4ssig')
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124507286102026024)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'de'
,p_message_text=>unistr('Die Instanz %1 von Aktivit\00E4t %2 in Workflow %0 wurde abgeschlossen')
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124507005955026024)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'de'
,p_message_text=>unistr('Eine neue Instanz %1 von Aktivit\00E4t %2 in Workflow %0 wurde erstellt')
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124498871848026022)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Mit dieser Workflowaktivit\00E4tsinstanz verkn\00FCpfte zus\00E4tzliche Datenzeile nicht gefunden')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124507153774026024)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'de'
,p_message_text=>unistr('Die Instanz mit Faults %1 von Aktivit\00E4t %2 in Workflow %0 wurde wiederholt')
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124489186224026019)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'de'
,p_message_text=>unistr('Aktivit\00E4tsinstanz %1 in Workflow %0 wurde beendet')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124522976711026029)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'de'
,p_message_text=>unistr('Aktivit\00E4tsinstanz %1 in Workflow %0 wurde wegen Timeout beendet.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124507384812026024)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'de'
,p_message_text=>unistr('Die Instanz %1 von Aktivit\00E4t %2 von Workflow %0 hat den Status "Wartet"')
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124488902334026019)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'de'
,p_message_text=>unistr('Die Workflowinstanz %0 wurde ge\00E4ndert und bei Aktivit\00E4t %1 fortgesetzt')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124506345754026024)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'de'
,p_message_text=>unistr('Die wartende Instanz %1 von Aktivit\00E4t %2 in Workflow %0 wurde erfolgreich abgeschlossen')
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124506139671026024)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'de'
,p_message_text=>unistr('Die wartende Aktivit\00E4t %1 wurde auf "Mit Faults" gesetzt, weil sich der Workflow %0 bereits im Status "Mit Faults" befand, bevor die Aktivit\00E4t abgeschlossen wurde')
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124506228970026024)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'de'
,p_message_text=>unistr('Die wartende Aktivit\00E4t %1 wurde beendet, weil sich der Workflow %0 bereits im Status "Beendet" befand, bevor die Aktivit\00E4t abgeschlossen wurde')
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124489253562026019)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'de'
,p_message_text=>unistr('Die Aktivit\00E4t %1 in Workflow %0 konnte aufgrund folgender Ausnahme nicht beendet werden: %2')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124504802216026024)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'de'
,p_message_text=>unistr('Der Workflow schlie\00DFt derzeit einen vorhergehenden Vorgang ab. Versuchen Sie es sp\00E4ter erneut')
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124520995284026028)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'de'
,p_message_text=>'Abgeschlossen: %0'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124503906813026023)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>unistr('Der Workflow %0 kann nicht fortgesetzt werden, da er die Aktivit\00E4t %1 erreicht hat, die sich nicht in einem Wartestatus befindet')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124515883529026027)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('%0 ist kein g\00FCltiger Workflowkorrelationskontext f\00FCr den Prozess, der von dieser Workflowaktivit\00E4t ausgef\00FChrt wird. Der Korrelationskontext muss Text mit Doppelpunkt als Trennzeichen sein, der APEX_APPL_WORKFLOW gefolgt von der Workflowinstanz-ID und')
||unistr(' der Aktivit\00E4tsinstanz-ID enth\00E4lt.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124506547368026024)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'de'
,p_message_text=>'Eine neue Instanz %0 von Workflow %1, Version %2, wurde erstellt'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124498670533026022)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Mit dieser Workflowinstanz verkn\00FCpfte zus\00E4tzliche Datenzeile nicht gefunden')
,p_version_scn=>2692506
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124521162736026029)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'de'
,p_message_text=>unistr('F\00E4llig: %0')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124506413145026024)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'de'
,p_message_text=>'Workflow %0 wurde mit Status %1 beendet'
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124503667377026023)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Der Datentyp %1 f\00FCr die Bedingungen, die in der Switch-Aktivit\00E4t von Workflow %0 ausgewertet werden, ist mit dem Bedingungsoperator nicht kompatibel')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124493437686026020)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'de'
,p_message_text=>'Initiiert von %0 %1'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124516202318026027)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'de'
,p_message_text=>unistr('Neue Instanz %0 von Workflow %1, Version %2, wurde erstellt - aufgerufen aus Aktivit\00E4tsinstanz %4 von Workflowinstanz %3')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124489080167026019)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Aktivit\00E4t mit statischer ID %1 ist keine Aktivit\00E4t in Workflow %0. Pr\00FCfen Sie die statischen Aktivit\00E4ts-IDs der entsprechenden Workflowversion.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124514300868026027)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'de'
,p_message_text=>unistr('%0 ist ein erforderlicher Parameter f\00FCr diesen Workflow und darf nicht NULL sein.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124506957891026024)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'de'
,p_message_text=>'Die Workflowinstanz %0 wurde fortgesetzt'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124506813442026024)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'de'
,p_message_text=>'Die Workflowinstanz %0 wurde wiederholt'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124521251210026029)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'de'
,p_message_text=>'%0 Wiederholung'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124521365934026029)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'de'
,p_message_text=>'%0 Wiederholungen'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124521098377026029)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'de'
,p_message_text=>'Gestartet: %0'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124515249278026027)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'de'
,p_message_text=>'Aktiv'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124515405971026027)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'de'
,p_message_text=>'Abgeschlossen'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124515569524026027)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'de'
,p_message_text=>'Mit Faults'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124515690442026027)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'de'
,p_message_text=>'Unterbrochen'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124515304527026027)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'de'
,p_message_text=>'Beendet'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124530639913026031)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'de'
,p_message_text=>'Wartet'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124506682489026024)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'de'
,p_message_text=>'Die Workflowinstanz %0 wurde unterbrochen'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124512593086026026)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Die n\00E4chste Aktivit\00E4t f\00FCr Workflowinstanz %0 kann nicht bestimmt werden. \00DCberpr\00FCfen und korrigieren Sie die f\00FCr die aktuelle Wechselaktivit\00E4t definierten Bedingungen, bevor Sie den Workflow wiederholen.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124506763458026024)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'de'
,p_message_text=>'Die Workflowinstanz %0 wurde beendet'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124505822652026024)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'de'
,p_message_text=>unistr('Nur der Gesch\00E4ftsadministrator des Workflows %0 kann den Workflow fortsetzen')
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124505973308026024)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'de'
,p_message_text=>unistr('Der Workflow %0 kann nur von einem Gesch\00E4ftsadministrator und/oder einem Eigent\00FCmer wiederholt werden')
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124505476327026024)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'de'
,p_message_text=>unistr('Die Workflowinstanz %0 kann nur von einem Gesch\00E4ftsadministrator des Workflows unterbrochen werden')
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124505753276026024)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'de'
,p_message_text=>unistr('Nur Eigent\00FCmer und Gesch\00E4ftsadministratoren der Workflowinstanz %0 k\00F6nnen den Workflow beenden')
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124504170763026023)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'de'
,p_message_text=>unistr('Variablen von Workflow %0 k\00F6nnen nur von einem Gesch\00E4ftsadministrator aktualisiert werden, der f\00FCr den Workflow definiert wurde')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124518760804026028)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'de'
,p_message_text=>unistr('Die Workflowinstanz %0 muss den Status "Mit Faults" oder "Unterbrochen" aufweisen, bevor ihre Variablen aktualisiert werden k\00F6nnen.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124510283675026025)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'de'
,p_message_text=>'Der Wert der Workflowvariablen %0 wurde auf %1 aktualisiert'
,p_version_scn=>2692510
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124520432978026028)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'de'
,p_message_text=>'Der Workflow %0 hat keine aktive Version'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124520532737026028)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'de'
,p_message_text=>'Der Workflow %0 hat keine in Entwicklung befindliche Version'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124520602977026028)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Der Workflow %0 hat keine aktive oder in Entwicklung befindliche Version'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124503525954026023)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Die Aktivit\00E4tsinstanz %1 f\00FCr die Workflowinstanz %0 wurde nicht gefunden')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124503368132026023)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Die Workflowinstanz %0 wurde nicht gefunden'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124538445889026034)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'de'
,p_message_text=>unistr('Die Arbeitsmappe enth\00E4lt kein aktives Arbeitsblatt.')
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124538307663026034)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'de'
,p_message_text=>'Die Arbeitsmappe ist nicht initialisiert.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124538262379026033)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'de'
,p_message_text=>'Beim Erstellen der XLSX-Datei ist ein interner Fehler aufgetreten.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124540794208026034)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'de'
,p_message_text=>'Arbeitsblatt'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124551322705026037)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'de'
,p_message_text=>unistr('Der Arbeitsblattname "%0" wird bereits verwendet. W\00E4hlen Sie einen anderen Namen.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124679985503026076)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'de'
,p_message_text=>'Aktionen'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124594952692026050)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'de'
,p_message_text=>unistr('Men\00FC "Aktionen"')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124590666229026049)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('Funktion hinzuf\00FCgen')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124590575246026049)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('Gruppe nach Spalte hinzuf\00FCgen')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124628108432026060)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('Pivot-Spalte hinzuf\00FCgen')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124628200956026060)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('Zeilenspalte hinzuf\00FCgen')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124562690420026041)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'de'
,p_message_text=>'Aggregieren'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124601187160026052)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'de'
,p_message_text=>'Aggregation'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124582054183026046)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'de'
,p_message_text=>'Durchschnitt'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124586309060026048)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'de'
,p_message_text=>'Anzahl'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124582147132026046)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'de'
,p_message_text=>'Maximum'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124582359975026046)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'de'
,p_message_text=>'Medianwert'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124582241494026046)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'de'
,p_message_text=>'Minimum'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124581967407026046)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'de'
,p_message_text=>'Summe %0'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124583055790026047)
,p_name=>'APEXIR_ALL'
,p_message_language=>'de'
,p_message_text=>'Alle'
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124561989895026040)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Alle Spalten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124542066188026035)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'de'
,p_message_text=>'Alle Zeilen'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124676989224026075)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'de'
,p_message_text=>'Alternative'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124678598554026075)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'de'
,p_message_text=>'Alternativer Standardwert: %0 '
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124576105358026045)
,p_name=>'APEXIR_AND'
,p_message_language=>'de'
,p_message_text=>'und'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124610912850026055)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'de'
,p_message_text=>unistr('Der gespeicherte Bericht kann nicht importiert werden. Der Inhalt ist besch\00E4digt.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124611036101026055)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'de'
,p_message_text=>unistr('Der gespeicherte Bericht kann nicht importiert werden. Er enth\00E4lt keinen Inhalt.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124564147153026041)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'de'
,p_message_text=>'Anwenden'
,p_is_js_message=>true
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124557724481026039)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'de'
,p_message_text=>'Aufsteigend'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124579290649026045)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'de'
,p_message_text=>'Ab %0'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124679104877026075)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'de'
,p_message_text=>'Durchschnitt %0'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124670707687026073)
,p_name=>'APEXIR_BAR'
,p_message_language=>'de'
,p_message_text=>'Balkendiagramm'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124563474172026041)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'de'
,p_message_text=>'zwischen'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124556505848026039)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'de'
,p_message_text=>'Hintergrundfarbe'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124558464691026039)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'de'
,p_message_text=>'blau'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124592575235026050)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'de'
,p_message_text=>'Unten'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124523398455026029)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'de'
,p_message_text=>unistr('Schaltfl\00E4chen neben Suchleiste von %0')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124559079739026040)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'de'
,p_message_text=>'Abbrechen'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124565342538026041)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'de'
,p_message_text=>'Kategorie'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124556419478026039)
,p_name=>'APEXIR_CELL'
,p_message_language=>'de'
,p_message_text=>'Zelle'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124582967020026047)
,p_name=>'APEXIR_CHART'
,p_message_language=>'de'
,p_message_text=>'Diagramm'
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124593402909026050)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'de'
,p_message_text=>'Wird initialisiert...'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124633124446026062)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'Das Diagrammlabel muss angegeben werden.'
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124645593401026065)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'de'
,p_message_text=>unistr('Ihre Abfrage \00FCberschreitet die maximal zul\00E4ssigen %0 Datenpunkte pro Diagramm. Wenden Sie einen Filter an, um die Anzahl der Datens\00E4tze in der Basisabfrage zu reduzieren.')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124644407387026065)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'de'
,p_message_text=>unistr('Die maximale Zeilenanzahl f\00FCr eine "Diagramm"-Abfrage begrenzt die Anzahl der Zeilen in der Basisabfrage, aber nicht die Anzahl der angezeigten Zeilen. Die Basisabfrage \00FCberschreitet die maximale Zeilenanzahl von %0. Wenden Sie einen Filter an, um di')
||unistr('e Anzahl der Datens\00E4tze in der Basisabfrage zu reduzieren.')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124562038655026040)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'de'
,p_message_text=>'Diagrammtyp'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124525907470026030)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'de'
,p_message_text=>'Diagrammansicht von %0'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124641177313026064)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'de'
,p_message_text=>unistr('Alle ausw\00E4hlen')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124579669867026046)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'de'
,p_message_text=>unistr('Berichtsformat ausw\00E4hlen')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124587404217026048)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'de'
,p_message_text=>unistr('l\00F6schen')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124558989674026040)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Spalte'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124598742498026051)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Spalten'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124565967132026042)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'de'
,p_message_text=>'Spalten-Alias'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124673542154026074)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'de'
,p_message_text=>'Filtern...'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124533715219026032)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'de'
,p_message_text=>'Spaltenheader'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124547884463026036)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'de'
,p_message_text=>'Spaltenaktionen'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124548128110026036)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'de'
,p_message_text=>unistr('Aktionen f\00FCr Spalte "%0"')
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124589570438026049)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'de'
,p_message_text=>unistr('Men\00FC "Spalten\00FCberschrift"')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124593283530026050)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'de'
,p_message_text=>'Spalteninformationen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124675816669026074)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'de'
,p_message_text=>'Spaltenlabel'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124590983261026049)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'de'
,p_message_text=>'Spalte %0'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124573811587026044)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'de'
,p_message_text=>unistr('enth\00E4lt')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124575152594026044)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'de'
,p_message_text=>unistr('enth\00E4lt nicht')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124557428291026039)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'de'
,p_message_text=>'in'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124575305215026044)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'de'
,p_message_text=>'ist nicht in den letzten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124584486674026047)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'de'
,p_message_text=>unistr('ist nicht in den n\00E4chsten')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124575298090026044)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'de'
,p_message_text=>'ist in den letzten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124584322624026047)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'de'
,p_message_text=>unistr('ist in den n\00E4chsten')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124557362367026039)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'ist nicht Null'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124557214867026039)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'de'
,p_message_text=>'ist Null'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124557054356026039)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'de'
,p_message_text=>'wie'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124557567652026039)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'de'
,p_message_text=>'nicht in'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124557142062026039)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'de'
,p_message_text=>'nicht wie'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124574110005026044)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'de'
,p_message_text=>unistr('entspricht regul\00E4rem Ausdruck')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124579588471026046)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'de'
,p_message_text=>'Berechnung'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124644145845026065)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'de'
,p_message_text=>'Berechnungsausdruck'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124599045438026051)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'de'
,p_message_text=>'Erstellen Sie eine Berechnung mit Spaltenaliasnamen.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124599114164026051)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'de'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124599272059026051)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'de'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124599356012026051)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'de'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124540222760026034)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'de'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124583792739026047)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'de'
,p_message_text=>'Berechnen'
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124591562085026049)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'de'
,p_message_text=>'Kontrollgruppenwechsel'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124594568611026050)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'de'
,p_message_text=>'Kontrollgruppenwechsel'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124681106673026076)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Gruppenwechselspalten'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124536948948026033)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'de'
,p_message_text=>'Anzahl - eindeutig'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124679661723026075)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'de'
,p_message_text=>'Anzahl - eindeutig'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124679599733026075)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'de'
,p_message_text=>'Anzahl %0'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124652597771026067)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'de'
,p_message_text=>unistr('T\00E4glich')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124705858558026083)
,p_name=>'APEXIR_DATA'
,p_message_language=>'de'
,p_message_text=>'Daten'
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124593368692026050)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'de'
,p_message_text=>unistr('Bericht f\00FCr Daten im Status vor %0 Minuten erstellen.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124526354282026030)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'de'
,p_message_text=>'Datenansicht von %0'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124562728625026041)
,p_name=>'APEXIR_DATE'
,p_message_language=>'de'
,p_message_text=>'Datum'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124597226788026051)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'de'
,p_message_text=>'Standardwert'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124676749703026074)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Standardm\00E4\00DFiger Berichtstyp')
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124559103696026040)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'de'
,p_message_text=>unistr('L\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124563069560026041)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'de'
,p_message_text=>unistr('M\00F6chten Sie diese Berichtseinstellungen l\00F6schen?')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124663553899026071)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'de'
,p_message_text=>unistr('Standardbericht l\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124591211038026049)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'de'
,p_message_text=>unistr('Bericht l\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124557876822026039)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'de'
,p_message_text=>'Absteigend'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124565407161026041)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>'Beschreibung'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124589420743026049)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'de'
,p_message_text=>'Single-Row-Ansicht'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124597754213026051)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'de'
,p_message_text=>'Richtung %0'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124598633137026051)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'de'
,p_message_text=>'Deaktiviert'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124558637077026039)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'de'
,p_message_text=>'Angezeigt'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124561854028026040)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Angezeigte Spalten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124597629117026051)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'de'
,p_message_text=>'In Bericht anzeigen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124592484597026050)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'de'
,p_message_text=>'Nach unten'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124583882122026047)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'de'
,p_message_text=>'Herunterladen'
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124597551558026051)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'de'
,p_message_text=>'Nicht anzeigen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124666855343026072)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'de'
,p_message_text=>'Es ist bereits eine Hervorhebung mit derselben Bedingung vorhanden.'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124681398648026076)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Doppelt vorhandene Pivotspalte. Pivotspaltenliste muss eindeutig sein.'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124681523532026076)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'de'
,p_message_text=>'Bearbeiten'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124593579757026050)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'de'
,p_message_text=>'Diagrammeinstellungen bearbeiten'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124600171023026052)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'de'
,p_message_text=>'Diagramm bearbeiten'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124564008943026041)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'de'
,p_message_text=>'Kontrollgruppenwechsel bearbeiten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124600563771026052)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'de'
,p_message_text=>'Filter bearbeiten'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124567063955026042)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'de'
,p_message_text=>'Flashback bearbeiten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124658378634026069)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'de'
,p_message_text=>'"Gruppieren nach" bearbeiten'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124600461714026052)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'de'
,p_message_text=>'Markierung bearbeiten'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124628423795026060)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'de'
,p_message_text=>'Pivot bearbeiten'
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124587854666026048)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'de'
,p_message_text=>'Bericht bearbeiten'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124677061493026075)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'de'
,p_message_text=>'E-Mail-Adresse'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124549225046026037)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'de'
,p_message_text=>'E-Mail-Adresse'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124677320160026075)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'de'
,p_message_text=>'Bcc'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124677525638026075)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'de'
,p_message_text=>'Text'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124677247592026075)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'de'
,p_message_text=>'Cc'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124678018703026075)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'de'
,p_message_text=>unistr('H\00E4ufigkeit')
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124554438297026038)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr diese Anwendung wurde keine E-Mail konfiguriert. Wenden Sie sich an den Administrator.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124651896879026067)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Die E-Mail-Adresse muss angegeben werden.'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124677604234026075)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'de'
,p_message_text=>'Siehe Anhang'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124677424245026075)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'de'
,p_message_text=>'Betreff'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124652802572026067)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Der Betreff der E-Mail muss angegeben werden.'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124677188904026075)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'de'
,p_message_text=>'An'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124556213460026039)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'de'
,p_message_text=>'Aktiviert'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124600383720026052)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'de'
,p_message_text=>'Aktivieren/Deaktivieren'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124599825115026052)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'de'
,p_message_text=>'Fehler! %0'
,p_version_scn=>2692526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124599403544026052)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'de'
,p_message_text=>'Beispiele'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124600271355026052)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'de'
,p_message_text=>'Beispiele:'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124561785014026040)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'de'
,p_message_text=>unistr('Nullwerte ausschlie\00DFen')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124600883579026052)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'de'
,p_message_text=>'Einblenden/Ausblenden'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124598479159026051)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'de'
,p_message_text=>'Ausdruck'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124583397190026047)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'de'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124594439324026050)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'de'
,p_message_text=>'Filter'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124605142045026053)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'de'
,p_message_text=>'Filterausdruck'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124703399704026082)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'de'
,p_message_text=>'Der Filterausdruck ist zu lang.'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124548059177026036)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'de'
,p_message_text=>unistr('Filtervorschl\00E4ge')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124605035358026053)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'de'
,p_message_text=>'Filtertyp'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124601023131026052)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'de'
,p_message_text=>unistr('Zu suchende Spalten ausw\00E4hlen')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124583618097026047)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'de'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124598214252026051)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>unistr('Mit Flashback Query k\00F6nnen Sie die Daten in dem Status anzeigen, den sie zu einem vorherigen Zeitpunkt hatten.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124652209962026067)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'de'
,p_message_text=>'Flashback-Dauer'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124653638048026068)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'de'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124579420533026046)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'de'
,p_message_text=>'Formatmaske %0'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124591159773026049)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'de'
,p_message_text=>'Funktion'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124598900751026051)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'de'
,p_message_text=>'Funktionen %0'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124676677857026074)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'de'
,p_message_text=>'Funktionen/Operatoren'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124590823582026049)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'de'
,p_message_text=>'Funktion %0'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124583165549026047)
,p_name=>'APEXIR_GO'
,p_message_language=>'de'
,p_message_text=>'Los'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124556732481026039)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'de'
,p_message_text=>unistr('gr\00FCn')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124601706258026052)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Nach Spalten gruppieren'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124601863148026052)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'de'
,p_message_text=>'"Gruppieren nach"-Funktionen'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124537005120026033)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'de'
,p_message_text=>'Gruppieren nach'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124677705691026075)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Nach Spalte %0 gruppieren'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124633242003026062)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'"Nach Spalte gruppieren" muss angegeben werden.'
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124644309480026065)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'de'
,p_message_text=>unistr('Die maximale Zeilenanzahl f\00FCr eine "Gruppieren nach"-Abfrage begrenzt die Anzahl der Zeilen in der Basisabfrage, aber nicht die Anzahl der angezeigten Zeilen. Die Basisabfrage \00FCberschreitet die maximale Zeilenanzahl von %0. Wenden Sie einen Filter an')
||unistr(', um die Anzahl der Datens\00E4tze in der Basisabfrage zu reduzieren.')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124624527818026059)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'de'
,p_message_text=>'Nach Sortierung gruppieren'
,p_is_js_message=>true
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124681293723026076)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'de'
,p_message_text=>'Nach Sortierfolge gruppieren'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124526129284026030)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'de'
,p_message_text=>'Ansicht "Gruppieren nach" von %0'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124562102320026040)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'de'
,p_message_text=>'Horizontale Spalte'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124596113242026051)
,p_name=>'APEXIR_HELP'
,p_message_language=>'de'
,p_message_text=>'Hilfe'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124587997395026048)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('In den interaktiven Berichten k\00F6nnen Endbenutzer Berichte anpassen. Benutzer k\00F6nnen das Layout von Berichtsdaten \00E4ndern, indem sie Spalten ausw\00E4hlen, Filter anwenden, Bereiche markieren oder sortieren. Benutzer k\00F6nnen dar\00FCber hinaus Gruppenwechsel, A')
||unistr('ggregationen, Diagramme und Gruppierungen definieren und ihre eigenen Berechnungen hinzuf\00FCgen. Sie k\00F6nnen auch eine Subscription einrichten, sodass sie HTML-Versionen des Berichts per E-Mail in einem festgelegten Intervall erhalten. Benutzer k\00F6nnen m')
||unistr('ehrere Varianten eines Berichts erstellen und diese als benannte Berichte speichern, die entweder \00F6ffentlich oder privat angezeigt werden k\00F6nnen. '),
'<p/>',
unistr('In den folgenden Abschnitten wird zusammengefasst, wie Sie einen interaktiven Bericht anpassen k\00F6nnen. Weitere Informationen finden Sie unter "Interaktive Berichte anpassen" im <i>Oracle APEX-Endbenutzerhandbuch</i>.')))
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124595003559026050)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'de'
,p_message_text=>unistr('Das Men\00FC "Aktion" wird in der Suchleiste rechts der Schaltfl\00E4che "Los" angezeigt. Mit diesem Men\00FC k\00F6nnen Sie interaktive Berichte anpassen.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124588702292026048)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Aggregate sind mathematische Berechnungen f\00FCr eine Spalte. Aggregate werden nach jedem Kontrollgruppenwechsel und am Ende des Berichts in der Spalte angezeigt, in der sie definiert werden. Zu den Optionen geh\00F6ren:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Aggregation</strong>: Erm\00F6glicht die Wahl einer vorher'),
'definierten Aggregation zur Bearbeitung.</li>',
unistr('<li><strong>Funktion</strong>: Ist die auszuf\00FChrende Funktion (z.B. SUM, MIN).</li>'),
unistr('<li><strong>Spalte</strong>: Wird verwendet, um die Spalte zu w\00E4hlen, f\00FCr die die mathematische Funktion angewendet werden soll. Nur numerische Spalten werden angezeigt.</li>'),
'</ul>'))
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124588817120026048)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Sie k\00F6nnen ein Diagramm pro gespeicherten Bericht definieren. Nach der Definition k\00F6nnen Sie mit den Ansichtsymbolen in der Suchleiste zwischen der Diagramm- und Berichtsansicht wechseln. Zu den Optionen geh\00F6ren:'),
'<p>',
'</p><ul>',
'<li><strong>Diagrammtyp</strong>: Gibt den aufzunehmenden Diagrammtyp an.',
'Optionen: Horizontaler Balken, Vertikaler Balken, Kreis oder Linie.</li>',
unistr('<li><strong>Label</strong>: W\00E4hlen Sie die Spalte aus, die als Label verwendet werden soll.</li>'),
unistr('<li><strong>Achsenbeschriftung f\00FCr Label</strong>: Diese Beschriftung wird auf der Achse angezeigt, die mit der'),
unistr('als Label ausgew\00E4hlten Spalte verkn\00FCpft ist. Diese Option ist bei Tortendiagrammen nicht verf\00FCgbar.</li>'),
unistr('<li><strong>Wert</strong>: W\00E4hlen Sie die Spalte aus, die als Wert verwendet werden soll. Wenn als Funktion'),
unistr('COUNT verwendet wird, muss kein Wert ausgew\00E4hlt werden.</li>'),
unistr('<li><strong>Achsenbeschriftung f\00FCr Wert</strong>: Diese Beschriftung wird auf der Achse angezeigt, die mit der als'),
unistr('Wert ausgew\00E4hlten Spalte verkn\00FCpft ist. Diese Option ist bei Tortendiagrammen nicht verf\00FCgbar.</li>'),
unistr('<li><strong>Funktion</strong>: Ist eine optionale Funktion, die f\00FCr die als Wert ausgew\00E4hlte Spalte ausgef\00FChrt werden soll.</li>'),
'<li><strong>Sortieren</strong>: Zum Sortieren der Ergebnismenge.</li></ul>'))
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124588183291026048)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Wenn Sie auf einen Spaltentitel klicken, wird ein Men\00FC f\00FCr Spaltentitel angezeigt. Folgende Optionen sind enthalten:'),
'<p></p>',
'<ul>',
'<li>Symbol <strong>Aufsteigend sortieren</strong>: Sortiert den Bericht nach Spalte in aufsteigender Reihenfolge.</li>',
'<li>Symbol <strong>Absteigend sortieren</strong>: Sortiert den Bericht nach Spalte in absteigender Reihenfolge.</li>',
unistr('<li><strong>Spalte ausblenden</strong>: Blendet die Spalte aus. Nicht alle Spalten k\00F6nnen ausgeblendet werden. Spalten, die nicht ausgeblendet werden k\00F6nnen, haben kein Symbol "Spalte ausblenden".</li>'),
unistr('<li><strong>Gruppenwechselspalte</strong>: Erstellt einen Gruppenwechsel f\00FCr die Spalte. Dadurch wird die Spalte als Master-Datensatz aus dem Bericht herausgezogen.</li>'),
unistr('<li><strong>Spalteninformationen</strong>: Zeigt einen Hilfetext zur Spalte an, falls verf\00FCgbar.</li>'),
unistr('<li><strong>Textbereich</strong>: Wird zur Eingabe von Suchkriterien verwendet (keine Platzhalter erforderlich). Die Gro\00DF-/Kleinschreibung wird dabei ignoriert. Durch die Eingabe eines Wertes wird die Werteliste am Ende des Men\00FCs gek\00FCrzt. Sie k\00F6nnen ')
||unistr('dann einen Wert vom Ende der Liste ausw\00E4hlen, und der ausgew\00E4hlte Wert wird als Filter mit "=" erstellt (z.B. <code>column = ''ABC''</code>). Alternativ k\00F6nnen Sie auf das Taschenlampensymbol klicken und einen Wert eingeben, der dann als Filter mit dem')
||' Modifier "LIKE" erstellt wird (z.B. <code>column LIKE ''%ABC%''</code>).',
unistr('<li> <strong>Liste mit eindeutigen Werten</strong>: Enth\00E4lt die ersten 500 eindeutigen Werte, die den Filterkriterien entsprechen. Wenn die Spalte ein Datum darstellt, wird stattdessen eine Liste mit Datumsbereichen angezeigt. Wenn Sie einen Wert aus')
||unistr('w\00E4hlen, wird ein Filter mit "=" erstellt (z.B. <code>column = ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124588698968026048)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('L\00E4sst Sie berechnete Spalten zu dem Bericht hinzuf\00FCgen. Dabei kann es sich um mathematische Berechnungen (z.B. <code>NBR_HOURS/24</code>) oder Oracle-Standardfunktionen handeln, die auf vorhandene Spalten angewendet werden. Einige werden als Beispiel')
||unistr(' angezeigt, andere, wie <code>TO_DATE</code>, k\00F6nnen ebenfalls verwendet werden. Zu den Optionen geh\00F6ren:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Berechnung</strong>: Erm\00F6glicht die Wahl einer vorher definierten Berechnung zur Bearbeitung.</li>'),
unistr('<li><strong>Spalten\00FCberschrift</strong>: Die \00DCberschrift der neuen Spalte.</li>'),
'<li><strong>Formatmaske</strong>: Eine Formatmaske von Oracle, die auf die Spalte angewendet werden soll (z.B. S9999).</li>',
unistr('<li><strong>Berechnung</strong>: Die auszuf\00FChrende Berechnung. Innerhalb der Berechnung werden Spalten mit den angezeigten Aliasnamen referenziert.</li>'),
'</ul>',
unistr('<p>Unter der Berechnung werden die Spalten in der Abfrage mit den zugeh\00F6rigen Aliasnamen angezeigt. Wenn Sie auf den Spalten- oder Aliasnamen klicken, wird dieser in die Berechnung eingef\00FCgt. Neben "Spalten" befindet sich eine Zehnertastatur. Sie ent')
||unistr('h\00E4lt Shortcuts f\00FCr h\00E4ufig verwendete Tasten. Ganz au\00DFen rechts stehen Funktionen.</p>'),
unistr('<p>Eine Beispielberechnung zur Anzeige der Gesamtverg\00FCtung folgt:'),
'<p/>',
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
unistr('(wobei A f\00FCr ORGANIZATION [Unternehmen], B f\00FCr SALARY [Gehalt] und C f\00FCr COMMISSION [Provision] steht)'),
''))
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124595114405026050)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'de'
,p_message_text=>'Wird verwendet, um einen Gruppenwechsel auf einer oder mehreren Spalten zu erstellen. Dadurch werden die Spalten aus dem interaktiven Bericht herausgezogen und als Master-Datensatz angezeigt.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124589303379026049)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'de'
,p_message_text=>unistr('Um die Details von jeweils einer Zeile anzuzeigen, klicken Sie auf das Symbol f\00FCr die Single-Row-Ansicht in der Zeile, die angezeigt werden soll. Wenn verf\00FCgbar, ist die Single-Row-Ansicht immer die erste Spalte. Je nach Anpassung des interaktiven Be')
||unistr('richts kann die Single-Row-Ansicht eine Standardansicht oder eine benutzerdefinierte Seite sein, die eine Aktualisierung zul\00E4sst.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124589259897026049)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'de'
,p_message_text=>unistr('Erm\00F6glicht das Herunterladen der aktuellen Ergebnismenge. Zu den Downloadformaten geh\00F6ren PDF, Excel, HTML und CSV. Die Downloadoptionen variieren je nach dem ausgew\00E4hlten Format. Alle Formate k\00F6nnen auch als E-Mail versendet werden.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124588350111026048)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Fokussiert den Bericht durch Hinzuf\00FCgen oder \00C4ndern der <code>WHERE</code>-Klausel der Abfrage. Sie k\00F6nnen nach Spalte oder Zeile filtern.   '),
unistr('<p>IWenn Sie nach Spalte filtern, ausw\00E4hlen Sie zun\00E4chst eine Spalte (nicht unbedingt die angezeigte Spalte). W\00E4hlen Sie dann einen Operator aus der Liste mit Oracle-Standardoperatoren (=, !=, nicht in, zwischen), und geben Sie einen Ausdruck f\00FCr den')
||unistr(' Vergleich ein. Beim Ausdruck muss die Gro\00DF-/Kleinschreibung beachtet werden. Sie k\00F6nnen % als Platzhalterzeichen verwenden (Beispiel: <code>STATE_NAME wie A%)</code>.</p>'),
unistr('<p>Wenn Sie nach Zeile filtern, k\00F6nnen Sie komplexe <code>WHERE</code>-Klauseln mit'),
unistr('Spaltenaliasnamen und beliebigen Oracle-Funktionen oder -Operatoren erstellen (Beispiel: <code>G = ''VA'' oder G = ''CT''</code>, wobei <code>G</code> der Alias f\00FCr <code>CUSTOMER_STATE</code> ist).</p>'),
''))
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124588957177026049)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'de'
,p_message_text=>unistr('Flashback Query erm\00F6glicht Ihnen, die Daten in dem Status anzuzeigen, den sie zu einem fr\00FCheren Zeitpunkt hatten. Die Standardzeit f\00FCr das Flashback betr\00E4gt 3 Stunden (oder 180 Minuten), die tats\00E4chliche Zeit differiert jedoch je nach Datenbank.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124653514763026068)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Mit der Option "Formatieren" k\00F6nnen Sie das Erscheinungsbild des Berichts anpassen.'),
unistr('"Formatieren" enth\00E4lt das folgende Untermen\00FC:</p>'),
'<ul><li>Sortieren</li>',
'<li>Kontrollgruppenwechsel</li>',
'<li>Markieren</li>',
'<li>Berechnen</li>',
'<li>Aggregieren</li>',
'<li>Diagramm</li>',
'<li>Gruppieren nach</li>',
'<li>Pivot</li>',
'</ul>',
''))
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124651750990026067)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pro gespeicherten Bericht k\00F6nnen Sie eine Ansicht "Gruppieren nach" definieren. '),
unistr('Nach der Definition k\00F6nnen Sie zwischen den "Gruppieren nach"- und den Berichtsansichten umschalten. '),
unistr('Verwenden Sie hierf\00FCr die Ansichtssymbole in der Suchleiste. Um eine Ansicht "Gruppieren nach" zu erstellen,'),
unistr('w\00E4hlen Sie:'),
'<p></p><ul>',
'<li>die Spalten, nach denen gruppiert werden soll</li>',
unistr('<li>die Spalten, die zusammen mit der auszuf\00FChrenden Funktion (Durchschnitt, Summe, Anzahl usw.) aggregiert werden sollen</li>'),
'</ul>'))
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124588585739026048)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Erm\00F6glicht es Ihnen, Filter zu definieren. Die Zeilen, die den Filterkriterien entsprechen, werden wie gekennzeichnet mithilfe der Eigenschaften angezeigt, die mit dem Filter verkn\00FCpft sind. Zu den Optionen geh\00F6ren:</p>'),
'<ul>',
'<li><strong>Name</strong>: Wird nur zur Anzeige verwendet.</li>',
'<li><strong>Sequenz</strong>: Gibt die Reihenfolge an, in der die Regeln ausgewertet werden.</li>',
'<li><strong>Aktiviert</strong>: Gibt an, ob die Regel aktiviert oder deaktiviert ist.</li>',
unistr('<li><strong>Markierungstyp</strong>: Gibt an, ob die Zeile oder Zelle markiert werden soll. Wenn "Zelle" ausgew\00E4hlt wird, wird die Spalte markiert, die in der Markierungsbedingung referenziert wird.</li>'),
unistr('<li><strong>Hintergrundfarbe</strong>: Die neue Farbe f\00FCr den Hintergrund des markierten Bereichs.</li>'),
unistr('<li><strong>Textfarbe</strong>: Die neue Farbe f\00FCr den Text im markierten Bereich.</li>'),
'<li><strong>Markierungsbedingung</strong>: Definiert die Filterbedingung.</li>',
'</ul>'))
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124481932605026017)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Sie k\00F6nnen eine Pivot-Ansicht pro gespeicherten Bericht definieren. Nach der Definition k\00F6nnen Sie zwischen der Pivot- und Berichtsansicht mit Ansichtsymbolen in der Suchleiste wechseln. Um eine Pivot-Ansicht zu erstellen, w\00E4hlen Sie Folgendes: '),
'<p></p>',
'<ul>',
'<li>die Spalten, die pivotiert werden sollen</li>',
'<li>die Spalten, die als Zeilen angezeigt werden sollen</li>',
unistr('<li>die Spalten, die zusammen mit der auszuf\00FChrenden Funktion aggregiert werden sollen (Durchschnitt, Summe, Anzahl usw.)</li>'),
'</ul>'))
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124599628757026052)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Wenn Sie einen interaktiven Bericht anpassen, werden die Berichtseinstellungen unter der Suchleiste und \00FCber dem Bericht angezeigt. Dieser Bereich kann mit dem Symbol auf der linken Seite aus- und eingeblendet werden.'),
'<p/>',
unistr('Sie k\00F6nnen f\00FCr Berichtseinstellungen folgende Aktionen durchf\00FChren:'),
'</p><ul>',
'<li>Bearbeiten</b>, indem Sie auf den Namen klicken.</li>',
unistr('<li><b>Deaktivieren/Aktivieren</b>, indem Sie das Kontrollk\00E4stchen "Aktivieren/Deaktivieren" w\00E4hlen oder die Wahl aufheben. Diese Option wird verwendet, um die Einstellung vor\00FCbergehend ein- und auszuschalten.</li>'),
unistr('<li><b>Entfernen</b>, indem Sie auf das Symbol f\00FCr Entfernen klicken.</li></ul>'),
'<p/>',
unistr('Wenn Sie ein Diagramm, "Gruppieren nach" oder "Pivot" erstellt haben, k\00F6nnen Sie mit den Links "Berichtsansicht", "Diagrammansicht" und "Nach Ansicht gruppieren" und "Pivot-Ansicht" '),
unistr('auf der rechten Seite zwischen den Diagrammen und dem Basisbericht umschalten. Im Diagramm oder der Ansicht "Gruppieren nach" k\00F6nnen Sie auch den Link "Bearbeiten" verwenden, um die Einstellungen zu bearbeiten.</p>')))
,p_version_scn=>2692524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124589192427026049)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'de'
,p_message_text=>unistr('Setzt den Bericht auf die Standardeinstellungen zur\00FCck, wobei von Ihnen vorgenommene Anpassungen entfernt werden. ')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124653857644026068)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Legt die Anzahl der pro Seite anzuzeigenden Datens\00E4tze fest')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124589083982026049)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Speichert den angepassten Bericht f\00FCr die sp\00E4tere Verwendung. Sie k\00F6nnen einen Namen und eine optionale Beschreibung eingeben und den Bericht \00F6ffentlich zug\00E4nglich machen (bzw. den Zugriff allen Benutzern erm\00F6glichen, die auf den prim\00E4ren Standard')
||unistr('bericht zugreifen k\00F6nnen). Es k\00F6nnen vier Arten interaktiver Berichte gespeichert werden:</p>'),
'<ul>',
unistr('<li><strong>Prim\00E4rstandard</strong> (nur Entwickler). Prim\00E4rstandardberichte werden urspr\00FCnglich angezeigt. Solche Berichte k\00F6nnen weder umbenannt noch gel\00F6scht werden.</li>'),
unistr('<li><strong>Alternativer Bericht</strong> (Nur Entwickler). Erlaubt Entwicklern die Erstellung von Berichten mit mehreren Layouts. Nur Entwickler k\00F6nnen alternative Berichte sichern, umbenennen oder l\00F6schen.</li>'),
unistr('<li><strong>\00D6ffentliche Berichte</strong> (Endbenutzer). Diese Berichte k\00F6nnen von dem erstellenden Endbenutzer gespeichert, umbenannt und gel\00F6scht werden. Andere Benutzer k\00F6nnen das Layout als weiteren Bericht anzeigen und speichern.</li>'),
unistr('<li><strong>Private Berichte</strong> (Endbenutzer). Diese Berichte kann nur der erstellende Endbenutzer anzeigen, speichern, umbenennen oder l\00F6schen.</li>'),
'</ul>',
'<p>Wenn Sie angepasste Berichte speichern, dann wird der Berichtsselektor in der Suchleiste links des Spaltenselektors angezeigt (falls dieses Feature aktiviert ist).</p>',
''))
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124588041637026048)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'de'
,p_message_text=>unistr('Im oberen Bereich der einzelnen Berichtsseiten befindet sich eine Suchregion. Diese Region (bzw. die Suchleiste) enth\00E4lt die folgenden Features:')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124654400129026068)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'de'
,p_message_text=>unistr('<li>Das <strong>Aktionsmen\00FC</strong> erm\00F6glicht die Anpassung von Berichten. Weitere Informationen finden Sie in den folgenden Abschnitten.</li>')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124653907620026068)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'de'
,p_message_text=>unistr('Mit dem Symbol <li><strong>Spalten ausw\00E4hlen</strong> k\00F6nnen Sie angeben, welche Spalten durchsucht werden sollen, bzw. ob alle Spalten durchsucht werden sollen.</li>')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124654246698026068)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'de'
,p_message_text=>unistr('In <li><strong>Berichte</strong> werden verschiedene Standardwerte und gespeicherte private oder \00F6ffentliche Berichte angezeigt.</li>')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124654196381026068)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'de'
,p_message_text=>unistr('In <li><strong>Zeilen</strong> wird die Anzahl der pro Seite anzuzeigenden Datens\00E4tze angezeigt.</li>')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124654070149026068)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li>Im <strong>Textbereich</strong> k\00F6nnen Sie Suchkriterien eingeben, bei denen die Gro\00DF-/Kleinschreibung nicht beachtet werden muss (Platzhalterzeichen sind impliziert).</li>'),
unistr('<li><strong>Schaltfl\00E4che "Los"</strong> f\00FChrt die Suche durch. Wenn Sie die Eingabetaste dr\00FCcken, w\00E4hrend sich der Cursor im Suchtextbereich befindet, wird die Suche ebenfalls ausgef\00FChrt.</li>')))
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124654393648026068)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'de'
,p_message_text=>'<li><strong>Ansicht-Symbole</strong> wechselt zwischen Symbol-, Berichts-, Detail-, Diagramm-, Gruppieren nach- und Pivot-Ansicht des Berichts, sofern definiert.</li>'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124588273890026048)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'de'
,p_message_text=>unistr('Wird zur \00C4nderung der angezeigten Spalten verwendet. Die Spalten auf der rechten Seite werden angezeigt. Die Spalten auf der linken Seite werden ausgeblendet. Sie k\00F6nnen die angezeigten Spalten mit den Pfeilen ganz au\00DFen rechts neu anordnen. Vor bere')
||'chneten Spalten steht <strong>**</strong>.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124588430608026048)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'de'
,p_message_text=>unistr('<p>Wird verwendet, um die zu sortierenden Spalten zu wechseln und anzugeben, ob in aufsteigender oder absteigender Reihenfolge sortiert werden soll. Sie k\00F6nnen auch angeben, wie <code>Nullwerte</code> behandelt werden sollen. Die Standardeinstellung ')
||unistr('zeigt die <code>Nullwerte</code> immer am Ende an; Sie k\00F6nnen sie alternativ immer am Anfang anzeigen. Die Ergebnissortierung wird rechts neben den Spalten\00FCberschriften im Bericht angezeigt.</p>')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124651587915026067)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'de'
,p_message_text=>unistr('Wenn Sie eine Subscription hinzuf\00FCgen, geben Sie eine E-Mail-Adresse (oder mehrere, durch Komma getrennte E-Mail-Adressen), E-Mail-Betreff, H\00E4ufigkeit sowie die Angaben zum Start- und Enddatum ein. Die resultierenden E-Mails enthalten eine exportiert')
||unistr('e Version (PDF, Excel, HTML oder CSV) des interaktiven Berichts. Sie enthalten die aktuellen Daten mit den Berichtseinstellungen, die bei Hinzuf\00FCgen der Subscription vorhanden waren.')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124593194611026050)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Spalte ausblenden'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124583545999026047)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'de'
,p_message_text=>'Markieren'
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124594694006026050)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'de'
,p_message_text=>'Markierungen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124564827279026041)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'de'
,p_message_text=>'Zelle markieren, %0 auf %1'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124599796913026052)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'de'
,p_message_text=>'Markierungsbedingung'
,p_version_scn=>2692524
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124564716886026041)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'de'
,p_message_text=>'Zeile markieren, %0 auf %1'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124652157169026067)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'de'
,p_message_text=>unistr('Stil f\00FCr Hervorheben')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124556362241026039)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'de'
,p_message_text=>'Markierungstyp'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124670946228026073)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'de'
,p_message_text=>'Horizontal'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124699901311026081)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'de'
,p_message_text=>'1 inaktive Einstellung'
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124700036355026081)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'de'
,p_message_text=>'%0 inaktive Einstellungen'
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124589769962026049)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'de'
,p_message_text=>'Hilfe zu interaktivem Bericht'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124600788727026052)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltig')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124594178004026050)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Berechnungsausdruck. %0')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124549783626026037)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'de'
,p_message_text=>'Das Enddatum muss nach dem Anfangdatum liegen.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124608907084026054)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Filterausdruck. %0')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124678765728026075)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltige Filterabfrage')
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124700108407026082)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'de'
,p_message_text=>unistr('1 ung\00FCltige Einstellung')
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124700214177026082)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'de'
,p_message_text=>unistr('%0 ung\00FCltige Einstellungen')
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124652388021026067)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'de'
,p_message_text=>'(in Minuten)'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124669380504026072)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'de'
,p_message_text=>'%0 ist in den letzten %1'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124669573751026072)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'de'
,p_message_text=>unistr('%0 ist in den n\00E4chsten %1')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124669402554026072)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'de'
,p_message_text=>'%0 ist nicht in den letzten %1'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124669663509026072)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'de'
,p_message_text=>unistr('%0 ist nicht in den n\00E4chsten %1')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124598872198026051)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'de'
,p_message_text=>'Zehnertastatur'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124562542480026041)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'de'
,p_message_text=>'Label %0'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124592735205026050)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'de'
,p_message_text=>unistr('Achsenbeschriftung f\00FCr Label')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124585036896026047)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'de'
,p_message_text=>'Letzter Tag'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124585220596026047)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'de'
,p_message_text=>'Letzte Stunde'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124584767696026047)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'de'
,p_message_text=>'Letzter Monat'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124584848586026047)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'de'
,p_message_text=>'Letzte Woche'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124584979551026047)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'de'
,p_message_text=>'Letzte %0 Tage'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124585142687026047)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'de'
,p_message_text=>'Letzte %0 Stunden'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124584553952026047)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'de'
,p_message_text=>'Letzte %0 Jahre'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124584624553026047)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'de'
,p_message_text=>'Letztes Jahr'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124562440768026041)
,p_name=>'APEXIR_LINE'
,p_message_language=>'de'
,p_message_text=>'Zeile'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124559204925026040)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'de'
,p_message_text=>unistr('Linien/Fl\00E4chen')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124678633052026075)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'de'
,p_message_text=>'Zuordnen'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124593614142026050)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'de'
,p_message_text=>unistr('Die Abfrage wird wahrscheinlich die maximal zul\00E4ssigen Ressourcen \00FCberschreiten. \00C4ndern Sie die Berichteinstellungen, und wiederholen Sie den Vorgang.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124575038233026044)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'de'
,p_message_text=>unistr('Die maximale Anzahl der Zeilen f\00FCr diesen Bericht ist %0. Wenden Sie einen Filter an, um die Anzahl der Datens\00E4tze in der Abfrage zu reduzieren.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124679241946026075)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'de'
,p_message_text=>'Maximum %0'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124679461262026075)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'de'
,p_message_text=>'Medianwert %0'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124521718503026029)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'de'
,p_message_text=>'Nachricht'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124579362204026045)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'de'
,p_message_text=>'vor %0 Minuten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124679375560026075)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'de'
,p_message_text=>'Minimum %0'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124678367888026075)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'de'
,p_message_text=>'Monat'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124652702661026067)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'de'
,p_message_text=>'Monatlich'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124591916014026049)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'de'
,p_message_text=>'Verschieben'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124591854103026049)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'de'
,p_message_text=>'Alle verschieben'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124705034386026083)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'de'
,p_message_text=>unistr('Die statische Regions-ID muss angegeben werden, da die Seite mehrere interaktive Berichte enth\00E4lt.')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124557958430026039)
,p_name=>'APEXIR_NAME'
,p_message_language=>'de'
,p_message_text=>'Name'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124587622238026048)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'de'
,p_message_text=>'Neue Aggregation'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124700833009026082)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'de'
,p_message_text=>'Neue Kategorie'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124587757206026048)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'de'
,p_message_text=>'Neue Berechnung'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124582483919026046)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'de'
,p_message_text=>'Weiter'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124585506612026047)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chster Tag')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124585330989026047)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste Stunde')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124585808891026047)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chster Monat')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124585710226026047)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste Woche')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124585627691026047)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste %0 Tage')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124585409251026047)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste %0 Stunden')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124586077213026047)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chste %0 Jahre')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124585904126026047)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chstes Jahr')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124558294118026039)
,p_name=>'APEXIR_NO'
,p_message_language=>'de'
,p_message_text=>'Nein'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124600967199026052)
,p_name=>'APEXIR_NONE'
,p_message_language=>'de'
,p_message_text=>'- Kein Wert -'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124651976300026067)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'de'
,p_message_text=>unistr('Keine g\00FCltige E-Mail-Adresse.')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124524057062026029)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'de'
,p_message_text=>unistr('Keine Spalten zur Anzeige ausgew\00E4hlt. W\00E4hlen Sie im Men\00FC "Aktionen" <strong>Spalten</strong> aus, um Spalten anzuzeigen.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124597406353026051)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'de'
,p_message_text=>'Nullwerte immer am Anfang'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124597361143026051)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'de'
,p_message_text=>'Nullwerte immer am Ende'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124597881230026051)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'de'
,p_message_text=>'Keine Sortierung %0'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124594290728026050)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'de'
,p_message_text=>'Flashback-Zeit muss numerisch sein.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124593815948026050)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'de'
,p_message_text=>'Sequenz muss numerisch sein.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124598374620026051)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'de'
,p_message_text=>'Operator'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124556811763026039)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'de'
,p_message_text=>'orange'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124670844244026073)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'de'
,p_message_text=>'Ausrichtung'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124558717092026039)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'de'
,p_message_text=>'Weitere'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124524973700026030)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'de'
,p_message_text=>'Paginierung von %0'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124538911545026034)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'de'
,p_message_text=>'Seitenausrichtung'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124539621839026034)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'de'
,p_message_text=>'Querformat'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124539700154026034)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'de'
,p_message_text=>'Hochformat'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124538831632026034)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'de'
,p_message_text=>unistr('Seitengr\00F6\00DFe')
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124539480160026034)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'de'
,p_message_text=>'A3'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124539359174026034)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'de'
,p_message_text=>'A4'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124539570167026034)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'de'
,p_message_text=>'Benutzerdefiniert'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124539119746026034)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'de'
,p_message_text=>'Legal'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124539008542026034)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'de'
,p_message_text=>'Letter'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124539234938026034)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'de'
,p_message_text=>'Tabloid'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124679751630026075)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'de'
,p_message_text=>'Prozentsatz der Gesamtanzahl %0 (%)'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124678968724026075)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'de'
,p_message_text=>'Prozentsatz der Gesamtsumme %0 (%)'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124677957213026075)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'de'
,p_message_text=>'Prozentsatz der Gesamtanzahl'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124677821595026075)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'de'
,p_message_text=>'Prozentsatz der Gesamtsumme'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124562322336026041)
,p_name=>'APEXIR_PIE'
,p_message_language=>'de'
,p_message_text=>'Tortendiagramm'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124628081626026060)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'de'
,p_message_text=>'Pivotieren'
,p_is_js_message=>true
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124629563228026060)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'Aggregat muss angegeben werden.'
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124629751431026061)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'de'
,p_message_text=>unistr('Sie k\00F6nnen keine Spalte aggregieren, die als Zeilenspalte ausgew\00E4hlt ist.')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124628929736026060)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Pivot-Spalten'
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124628768637026060)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'de'
,p_message_text=>'Pivot-Spalte %0'
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124629339969026060)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'Pivot-Spalte muss angegeben werden.'
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124481858932026017)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'de'
,p_message_text=>unistr('Die maximale Zeilenanzahl f\00FCr eine "Pivot"-Abfrage begrenzt die Anzahl der Zeilen in der Basisabfrage, aber nicht die Anzahl der angezeigten Zeilen. Die Basisabfrage \00FCberschreitet die maximale Zeilenanzahl von %0. Wenden Sie einen Filter an, um die A')
||unistr('nzahl der Datens\00E4tze in der Basisabfrage zu reduzieren.')
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124629297057026060)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'de'
,p_message_text=>'Pivot-Sortierung'
,p_is_js_message=>true
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124595278994026050)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'de'
,p_message_text=>unistr('Die Pivot-Spalte enth\00E4lt zu viele eindeutige Werte. Pivot-SQL kann nicht generiert werden.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124526268093026030)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'de'
,p_message_text=>'Pivot-Ansicht von %0'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124652069412026067)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'de'
,p_message_text=>'Vorschau'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124582588556026046)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124676838830026075)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'de'
,p_message_text=>unistr('Prim\00E4r')
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124653087158026067)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'de'
,p_message_text=>'Hauptbericht'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124538790487026034)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'de'
,p_message_text=>'Barrierefreiheitstags einbeziehen'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124499562332026022)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'de'
,p_message_text=>'Rich Text entfernen'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124607920468026054)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'de'
,p_message_text=>'Privat'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124562962492026041)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'de'
,p_message_text=>unistr('\00D6ffentlich')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124558504102026039)
,p_name=>'APEXIR_RED'
,p_message_language=>'de'
,p_message_text=>'rot'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124704916551026083)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Statische Regions-ID %0 ist nicht vorhanden.'
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124592097550026049)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'de'
,p_message_text=>'Entfernen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124592198076026049)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'de'
,p_message_text=>'Alle entfernen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124700393197026082)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'de'
,p_message_text=>'Diagramm entfernen'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124591637939026049)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'de'
,p_message_text=>'Kontrollgruppenwechsel entfernen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124591328568026049)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'de'
,p_message_text=>'Filter entfernen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124591452987026049)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'de'
,p_message_text=>'Flashback entfernen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124700433208026082)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'de'
,p_message_text=>'"Gruppieren nach" entfernen'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124591722323026049)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'de'
,p_message_text=>'Markierung entfernen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124700556788026082)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'de'
,p_message_text=>'Pivot entfernen'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124681619256026076)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'de'
,p_message_text=>'Bericht entfernen'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124663478217026070)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'de'
,p_message_text=>'Standardbericht umbenennen'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124601269624026052)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'de'
,p_message_text=>'Bericht umbenennen'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124582864900026047)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'de'
,p_message_text=>'Bericht'
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124679840985026075)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'de'
,p_message_text=>'Berichte'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124555064895026038)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Gespeicherter interaktiver Bericht mit Alias %0 ist nicht vorhanden.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124608231114026054)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Bericht ist nicht vorhanden.'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124555172299026038)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'ID des gespeicherten interaktiven Berichts %0 ist nicht vorhanden.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124599533285026052)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'de'
,p_message_text=>'Berichtseinstellungen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124523755850026029)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'de'
,p_message_text=>'Berichtseinstellungen von %0'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124579807650026046)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'de'
,p_message_text=>'Berichtsansicht'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124584001379026047)
,p_name=>'APEXIR_RESET'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCcksetzen')
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124563186412026041)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'de'
,p_message_text=>unistr('Stellen Sie die Standardeinstellungen f\00FCr den Bericht wieder her.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124558387478026039)
,p_name=>'APEXIR_ROW'
,p_message_language=>'de'
,p_message_text=>'Zeile'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124675954400026074)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'de'
,p_message_text=>unistr('Sie k\00F6nnen ROWID nicht als Prim\00E4rschl\00FCsselspalte f\00FCr eine REST-Datenquelle verwenden.')
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124590779258026049)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'de'
,p_message_text=>'Zeilen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124653713523026068)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'de'
,p_message_text=>'Zeilen pro Seite'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124629028002026060)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Zeilenspalten'
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124628854955026060)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'de'
,p_message_text=>'Zeilenspalte %0'
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124629452908026060)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'Zeilenspalte muss angegeben werden.'
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124629654489026061)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'de'
,p_message_text=>'Zeilenspalte darf nicht identisch mit der Pivot-Spalte sein.'
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124605283481026053)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'de'
,p_message_text=>'Zeilenfilter'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124579939522026046)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'de'
,p_message_text=>'Zeile %0 von %1'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124584231117026047)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'de'
,p_message_text=>unistr('Zeilentext enth\00E4lt')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124557689207026039)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'de'
,p_message_text=>'Speichern'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124594890851026050)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'de'
,p_message_text=>'Gespeicherter Bericht'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124594793185026050)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'de'
,p_message_text=>'Gespeicherter Bericht = "%0"'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124596950777026051)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'de'
,p_message_text=>unistr('Die aktuellen Berichteinstellungen werden als Standard f\00FCr alle Benutzer verwendet.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124663353309026070)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'de'
,p_message_text=>'Standardbericht speichern'
,p_is_js_message=>true
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124583967588026047)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'de'
,p_message_text=>'Bericht speichern'
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124700700532026082)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'de'
,p_message_text=>'Bericht speichern *'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124654718329026068)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'de'
,p_message_text=>'Suche'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124589629117026049)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'de'
,p_message_text=>'Suchleiste'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124523039378026029)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'de'
,p_message_text=>'Suchleiste von %0'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124700605312026082)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Suchen: %0'
,p_is_js_message=>true
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124660267709026070)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'de'
,p_message_text=>'Suchbericht'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124644251914026065)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'de'
,p_message_text=>unistr('Ausgew\00E4hlte Spalten')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124559336972026040)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('- Spalte ausw\00E4hlen -')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124583294179026047)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'de'
,p_message_text=>unistr('Spalten ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124562838372026041)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('- Funktion ausw\00E4hlen -')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124590482884026049)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('- Gruppe nach Spalte ausw\00E4hlen -')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124628553613026060)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('- Pivot-Spalte ausw\00E4hlen -')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124678836522026075)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'de'
,p_message_text=>unistr('Zeile ausw\00E4hlen')
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124628612156026060)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('- Zeilenspalte ausw\00E4hlen -')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124510136461026025)
,p_name=>'APEXIR_SEND'
,p_message_language=>'de'
,p_message_text=>'Senden'
,p_is_js_message=>true
,p_version_scn=>2692510
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124532619036026032)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'de'
,p_message_text=>'Als E-Mail senden'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124558025273026039)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'de'
,p_message_text=>'Sequenz'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124583445491026047)
,p_name=>'APEXIR_SORT'
,p_message_language=>'de'
,p_message_text=>'Sortieren'
,p_is_js_message=>true
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124592970731026050)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'de'
,p_message_text=>'Aufsteigend sortieren'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124593058736026050)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'de'
,p_message_text=>'Absteigend sortieren'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124681080029026076)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'de'
,p_message_text=>'Sortierreihenfolge'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124587312374026048)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'de'
,p_message_text=>'Leerzeichen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124598536778026051)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'de'
,p_message_text=>'Status %0'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124652479971026067)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'de'
,p_message_text=>'Subscription'
,p_is_js_message=>true
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124678271219026075)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'de'
,p_message_text=>'Bis'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124497205671026021)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'de'
,p_message_text=>unistr('\00DCberspringen, wenn keine Daten gefunden werden')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124678172124026075)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'de'
,p_message_text=>'Ab'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124679098722026075)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'de'
,p_message_text=>'Summe %0'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124669949316026072)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'de'
,p_message_text=>'%0, Bericht = %1, Ansicht = %2'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124556950694026039)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'de'
,p_message_text=>'Textfarbe'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124575673060026044)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'de'
,p_message_text=>'Tage'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124575580531026044)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'de'
,p_message_text=>'Stunden'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124575459190026044)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'de'
,p_message_text=>'Minuten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124575845929026044)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'de'
,p_message_text=>'Monate'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124575734444026044)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'de'
,p_message_text=>'Wochen'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124575932811026044)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'de'
,p_message_text=>'Jahre'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124681415765026076)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'de'
,p_message_text=>'Umschalten'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124592293546026049)
,p_name=>'APEXIR_TOP'
,p_message_language=>'de'
,p_message_text=>'Oben'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124674928503026074)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Nicht gruppierte Spalte'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124593729522026050)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'de'
,p_message_text=>'Markierungsname muss eindeutig sein.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124561630597026040)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Nicht unterst\00FCtzter Datentyp')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124592303135026049)
,p_name=>'APEXIR_UP'
,p_message_language=>'de'
,p_message_text=>'Nach oben'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124593951275026050)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'de'
,p_message_text=>unistr('Geben Sie eine g\00FCltige Farbe ein.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124594010238026050)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'de'
,p_message_text=>unistr('Geben Sie eine g\00FCltige Formatmaske ein.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124558893643026039)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'de'
,p_message_text=>'Wert'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124592874103026050)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'de'
,p_message_text=>unistr('Achsenbeschriftung f\00FCr Wert')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124600619394026052)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Wert erforderlich'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124562236850026041)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'de'
,p_message_text=>'Vertikale Spalte'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124671088698026073)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'de'
,p_message_text=>'Vertikal'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124599925860026052)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'de'
,p_message_text=>'Diagramm anzeigen'
,p_version_scn=>2692526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124658521052026069)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'de'
,p_message_text=>'Details anzeigen'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124702882592026082)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr den Bericht ist keine %0-Ansicht definiert.')
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124658619568026069)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'de'
,p_message_text=>'"Gruppieren nach" anzeigen'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124658448306026069)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'de'
,p_message_text=>'Symbole anzeigen'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124628303085026060)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'de'
,p_message_text=>'Pivot anzeigen'
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124600093239026052)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'de'
,p_message_text=>'Bericht anzeigen'
,p_version_scn=>2692526
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124652615122026067)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'de'
,p_message_text=>unistr('W\00F6chentlich')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124582714501026046)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'de'
,p_message_text=>'Arbeitsbericht'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124680464400026076)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'de'
,p_message_text=>'%0 Tage'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124680301706026076)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'de'
,p_message_text=>'%0 Stunden'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124680283147026076)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'de'
,p_message_text=>'%0 Minuten'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124680641412026076)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'de'
,p_message_text=>'%0 Monate'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124680526653026076)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'de'
,p_message_text=>'%0 Wochen'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124680759461026076)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'de'
,p_message_text=>'%0 Jahre'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124678404170026075)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'de'
,p_message_text=>'Jahr'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124556649454026039)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'de'
,p_message_text=>'gelb'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124558188315026039)
,p_name=>'APEXIR_YES'
,p_message_language=>'de'
,p_message_text=>'Ja'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124592660293026050)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'de'
,p_message_text=>unistr('%0 enth\00E4lt < oder >. Dies sind ung\00FCltige Zeichen.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124616543346026057)
,p_name=>'APEX_REGION'
,p_message_language=>'de'
,p_message_text=>'Region'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124507656794026024)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'de'
,p_message_text=>'ZIP-Datei kann nicht extrahiert werden.'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124507521544026024)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'de'
,p_message_text=>unistr('Signatur f\00FCr das Ende des zentralen Verzeichnisses nicht gefunden. Diese Datei ist keine ZIP-Datei.')
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124538659826026034)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'de'
,p_message_text=>'API-Vorbedingung verletzt'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124560731961026040)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'de'
,p_message_text=>unistr('Wert f\00FCr Anwendungseinstellung %0 kann nicht abgerufen werden, da die zugeh\00F6rige Erstelloption deaktiviert ist.')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124560609357026040)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'de'
,p_message_text=>unistr('Wert f\00FCr Anwendungseinstellung %0 kann nicht festgelegt werden, da die zugeh\00F6rige Erstelloption deaktiviert ist.')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124673212863026073)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'de'
,p_message_text=>unistr('Wert der Anwendungseinstellung %0 ist ung\00FCltig')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124673156710026073)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'de'
,p_message_text=>'Angeforderte Anwendungseinstellung %0 ist nicht definiert'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124673364942026073)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'de'
,p_message_text=>'Anwendungseinstellung %0 darf nicht auf einen Nullwert gesetzt werden'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124547288897026036)
,p_name=>'BACK'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124529615182026031)
,p_name=>'BUILDER'
,p_message_language=>'de'
,p_message_text=>'Builder'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124603273808026053)
,p_name=>'BUTTON LABEL'
,p_message_language=>'de'
,p_message_text=>unistr('Schaltfl\00E4chenlabel')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124526582379026030)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'de'
,p_message_text=>unistr('Schaltfl\00E4chen-CSS-Klassen')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124565051881026041)
,p_name=>'BUTTON_ID'
,p_message_language=>'de'
,p_message_text=>unistr('Generierte Schaltfl\00E4chen-ID ist die statische ID der Schaltfl\00E4che sofern definiert. Sonst handelt es sich um eine intern generierte ID im Format ''B'' || [Interne Schaltfl\00E4chen-ID]')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124499011992026022)
,p_name=>'CANDLESTICK'
,p_message_language=>'de'
,p_message_text=>'Kerzendiagramm'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124613045360026056)
,p_name=>'CENTER'
,p_message_language=>'de'
,p_message_text=>'Mitte'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124559623580026040)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'de'
,p_message_text=>'%0-Anforderung'
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124549641376026037)
,p_name=>'CHECK$'
,p_message_language=>'de'
,p_message_text=>'Zeilenselektor'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124675017075026074)
,p_name=>'CHECKED'
,p_message_language=>'de'
,p_message_text=>'aktiviert'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124651436060026067)
,p_name=>'COLUMN'
,p_message_language=>'de'
,p_message_text=>'Spalte'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124609034004026054)
,p_name=>'COMMENTS'
,p_message_language=>'de'
,p_message_text=>'Kommentare'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124590084315026049)
,p_name=>'CONTINUE'
,p_message_language=>'de'
,p_message_text=>'Fortfahren'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124547536838026036)
,p_name=>'COPYRIGHT'
,p_message_language=>'de'
,p_message_text=>'Copyright &copy; 1999, %0, Oracle und/oder verbundene Unternehmen.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124595703895026050)
,p_name=>'COUNT'
,p_message_language=>'de'
,p_message_text=>'Anzahl'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124602728378026053)
,p_name=>'CREATE'
,p_message_language=>'de'
,p_message_text=>'Erstellen'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124658179477026069)
,p_name=>'CREATED'
,p_message_language=>'de'
,p_message_text=>'Erstellt'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124658274760026069)
,p_name=>'CREATED_BY'
,p_message_language=>'de'
,p_message_text=>'Erstellt von'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124579134722026045)
,p_name=>'CREATED_ON'
,p_message_language=>'de'
,p_message_text=>'Erstellt am'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124590285370026049)
,p_name=>'CUSTOM'
,p_message_language=>'de'
,p_message_text=>'Benutzerdefiniert'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124601420407026052)
,p_name=>'CUSTOMIZE'
,p_message_language=>'de'
,p_message_text=>'Anpassen'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124603460190026053)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'de'
,p_message_text=>unistr('Seitenvoreinstellungen f\00FCr Benutzer %0 wurden zur\00FCckgesetzt.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124603555224026053)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'de'
,p_message_text=>unistr('Voreinstellungen f\00FCr Benutzer %0 ge\00E4ndert.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124603322012026053)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'de'
,p_message_text=>unistr('Seitenvoreinstellungen f\00FCr Benutzer %0 wurden zur\00FCckgesetzt.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124564430228026041)
,p_name=>'DAILY'
,p_message_language=>'de'
,p_message_text=>unistr('T\00E4glich')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124527847990026030)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'de'
,p_message_text=>unistr('Die hochgeladene Datei ist ung\00FCltig oder hat die falsche Erweiterung.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124559850968026040)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger XML- oder JSON-Selektor.')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124504942224026024)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'de'
,p_message_text=>'Datenprofil und hochgeladene Datei enthalten keine Zieltabellenspalte.'
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124618826064026057)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'de'
,p_message_text=>'Keine Daten in hochgeladener Datei gefunden.'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124618919547026057)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'de'
,p_message_text=>'Keine Daten in Arbeitsblatt "%0" gefunden.'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124524749996026030)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'de'
,p_message_text=>'Die angegebene Datei ist keine XLSX-Datei.'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124490711699026019)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'de'
,p_message_text=>'Datenladevorgang abgeschlossen: %0 Zeilen verarbeitet.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124493054617026020)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'de'
,p_message_text=>'Datenladevorgang abgeschlossen: %0 Zeilen mit 1 Fehler verarbeitet.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124493395524026020)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'de'
,p_message_text=>'Datenladevorgang abgeschlossen: %0 Zeilen mit %1 Fehlern verarbeitet.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124493159746026020)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'de'
,p_message_text=>'Datenladevorgang abgeschlossen: 1 Zeile verarbeitet.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124507443335026024)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'de'
,p_message_text=>'Datenladevorgang abgeschlossen: 1 Zeile mit Fehler verarbeitet.'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124493291499026020)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'de'
,p_message_text=>'Datenladevorgang abgeschlossen: 1 Zeile ohne Fehler verarbeitet.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124625962349026059)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'de'
,p_message_text=>'Zielspalte'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124533137320026032)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'de'
,p_message_text=>'Nicht laden'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124533232979026032)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'de'
,p_message_text=>'Vorverarbeitungsfehler'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124626088922026059)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'de'
,p_message_text=>'Quellspalte'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124626869630026060)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'de'
,p_message_text=>'Datums-/Zahlenformat'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124532979608026032)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'de'
,p_message_text=>unistr('Zeile einf\00FCgen')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124689043416026078)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'de'
,p_message_text=>'Lookup-Wert konnte nicht abgerufen werden.'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124658768864026069)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'de'
,p_message_text=>'Daten-/Tabellenzuordnung'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124626910432026060)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'de'
,p_message_text=>'Zeile'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124533344797026032)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'de'
,p_message_text=>'Sequenz: Aktion'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124620689127026058)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'de'
,p_message_text=>'Die Transformationsregel war nicht erfolgreich'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124533044174026032)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'de'
,p_message_text=>'Zeile aktualisieren'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124595383653026050)
,p_name=>'DATE'
,p_message_language=>'de'
,p_message_text=>'Datum'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124568228056026042)
,p_name=>'DAY'
,p_message_language=>'de'
,p_message_text=>'Tag'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124568322010026042)
,p_name=>'DAYS'
,p_message_language=>'de'
,p_message_text=>'Tage'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124608762497026054)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'de'
,p_message_text=>unistr('Debugging ist f\00FCr diese Anwendung nicht aktiviert.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124660438306026070)
,p_name=>'DEFAULT'
,p_message_language=>'de'
,p_message_text=>'Standardwert'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124569076381026042)
,p_name=>'DELETE'
,p_message_language=>'de'
,p_message_text=>unistr('l\00F6schen')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124544646932026035)
,p_name=>'DELETE_MSG'
,p_message_language=>'de'
,p_message_text=>unistr('Soll dieser L\00F6schvorgang ausgef\00FChrt werden?')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124524284122026029)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'de'
,p_message_text=>'Session-Overrides'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124525178947026030)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'de'
,p_message_text=>'Session-Overrides aktivieren'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124526066449026030)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'de'
,p_message_text=>'Beim Laden von Session-Overrides ist ein Fehler aufgetreten.'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124525828559026030)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'de'
,p_message_text=>'Beim Speichern von Session-Overrides ist ein Fehler aufgetreten.'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124525787210026030)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'de'
,p_message_text=>unistr('Session-Overrides gespeichert. Schlie\00DFen Sie dieses Dialogfeld, um die \00C4nderungen anzuzeigen.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124498951521026022)
,p_name=>'DIAL_PCT'
,p_message_language=>'de'
,p_message_text=>'Dial (Prozent)'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124539967455026034)
,p_name=>'DOWNLOAD'
,p_message_language=>'de'
,p_message_text=>'Herunterladen'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124659561957026069)
,p_name=>'DUP_USER'
,p_message_language=>'de'
,p_message_text=>'Doppelter Benutzername in Liste.'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124548303479026036)
,p_name=>'EDIT'
,p_message_language=>'de'
,p_message_text=>'Bearbeiten'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124559533499026040)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'E-Mail-Adresse "%0" wurde nicht gefunden.'
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124542212919026035)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'de'
,p_message_text=>'Diese E-Mail wurde von %0 gesendet.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124659709158026069)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'de'
,p_message_text=>unistr('Die E-Mail-Adresse ist zu lang. Sie darf h\00F6chstens 240 Zeichen enthalten.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124589936340026049)
,p_name=>'ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124620747875026058)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'de'
,p_message_text=>'Der Seitenelement-Quellwert zur Aktualisierung der Seitenbestandteil-Region kann nicht festgelegt werden'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124581289365026046)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'de'
,p_message_text=>'Erstellt von'
,p_version_scn=>2692520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124542560145026035)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'de'
,p_message_text=>'Kennwort abgelaufen'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124534931650026033)
,p_name=>'FILE_EMPTY'
,p_message_language=>'de'
,p_message_text=>'Die Datei ist leer.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124624711812026059)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'de'
,p_message_text=>unistr('Die hochgeladene Datei war gr\00F6\00DFer als %0 MB. Laden Sie eine kleinere Datei hoch.')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124544846214026035)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'de'
,p_message_text=>'Benutzerauthentifizierung war nicht erfolgreich. Mindestens eine Datei wurde nicht hochgeladen.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124544912417026035)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Diese Instanz l\00E4sst das Hochladen von Dateien durch nicht authentifiziere Benutzer nicht zu.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124624893157026059)
,p_name=>'FILTERS'
,p_message_language=>'de'
,p_message_text=>'Filter'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124602880851026053)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'de'
,p_message_text=>'1 Fehler aufgetreten'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124602085770026052)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'de'
,p_message_text=>'%0 Fehler sind aufgetreten'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124547432008026036)
,p_name=>'FORM_OF'
,p_message_language=>'de'
,p_message_text=>'%0 von %1'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124586412800026048)
,p_name=>'GO'
,p_message_language=>'de'
,p_message_text=>'Los'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124688663509026078)
,p_name=>'HELP'
,p_message_language=>'de'
,p_message_text=>'Hilfe'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124529785171026031)
,p_name=>'HOME'
,p_message_language=>'de'
,p_message_text=>'Home'
,p_is_js_message=>true
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124568044128026042)
,p_name=>'HOUR'
,p_message_language=>'de'
,p_message_text=>'Stunde'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124568178927026042)
,p_name=>'HOURS'
,p_message_language=>'de'
,p_message_text=>'Stunden'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124549501000026037)
,p_name=>'ICON'
,p_message_language=>'de'
,p_message_text=>'Symbol %0'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124526887031026030)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'de'
,p_message_text=>'Symbol zuschneiden - Hilfe'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124528008002026031)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Ziehen Sie das Symbol, und verwenden Sie den Zoomschieberegler, um es neu im Frame zu positionieren.</p>',
'',
unistr('<p>Beim Hochladen eines neuen Symbols wird dieses entsprechend drei Formaten skaliert: Favicon, kleines Symbol und gro\00DFes Symbol.</p>'),
'',
unistr('<p>Wenn der Fokus auf dem Zuschneidetool f\00FCr Symbole liegt, sind die folgenden Tastenkombinationen verf\00FCgbar:</p>'),
'<ul>',
'    <li>Pfeil nach links: Bild nach links verschieben*</li>',
'    <li>Pfeil nach oben: Bild nach oben verschieben*</li>',
'    <li>Pfeil nach rechts: Bild nach rechts verschieben*</li>',
'    <li>Pfeil nach unten: Bild nach unten verschieben*</li>',
unistr('    <li>I: Vergr\00F6\00DFern</li>'),
'    <li>O: Verkleinern</li>',
'    <li>L: Nach links drehen</li>',
'    <li>R: Nach rechts drehen</li>',
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Halten Sie die Umschalttaste gedr\00FCckt, um das Bild schneller zu verschieben</em></p>')))
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124533572075026032)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'de'
,p_message_text=>'Symbol durch Ziehen neu positionieren'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124533668924026032)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'de'
,p_message_text=>unistr('Zoomfaktor \00FCber den Schieberegler anpassen')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124526694564026030)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'de'
,p_message_text=>'Anwendungssymbol bearbeiten'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124526996273026030)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Speichern des Symbols'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124609370609026054)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'de'
,p_message_text=>'<p><span class="a-Icon icon-tr-warning"></span> Diese Anwendung verwendet Legacy-Symbole. Durch Hochladen eines neuen Symbols werden alle Legacy-Symbole ersetzt.</p>'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124527536911026030)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'de'
,p_message_text=>'Neues Symbol hochladen'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124603789199026053)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltige Anmeldedaten')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124704841617026083)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Wert f\00FCr Parameter: %0')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124598091139026051)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'de'
,p_message_text=>'Als Standardberichteinstellungen'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124598148368026051)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'de'
,p_message_text=>'Als benannter Bericht'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124580032712026046)
,p_name=>'IR_ERROR'
,p_message_language=>'de'
,p_message_text=>'%0 Fehler. %1'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124579773231026046)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Formularnavigation berechnen nicht m\00F6glich. %0')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124555380574026038)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Interaktiver Bericht nicht gefunden.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124554715181026038)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Interaktive Berichtsregion ist nicht in Anwendung %0, Seite %1 und Region %2 vorhanden.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124597964474026051)
,p_name=>'IR_STAR'
,p_message_language=>'de'
,p_message_text=>unistr('Wird nur f\00FCr Entwickler angezeigt')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124586173598026047)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr die Berichtsabfrage ist ein eindeutiger Schl\00FCssel zur Identifizierung der einzelnen Zeilen erforderlich. Der bereitgestellte Schl\00FCssel kann f\00FCr diese Abfrage nicht verwendet werden. Definieren Sie eine Spalte f\00FCr den eindeutigen Schl\00FCssel. %0')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124586216315026048)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr die Berichtsabfrage ist ein eindeutiger Schl\00FCssel zur Identifizierung der einzelnen Zeilen erforderlich. Der bereitgestellte Schl\00FCssel kann f\00FCr diese Abfrage nicht verwendet werden. Bearbeiten Sie die Berichtsattribute, um eine Spalte f\00FCr den ein')
||unistr('deutigen Schl\00FCssel zu definieren. %0')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124627139985026060)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'de'
,p_message_text=>unistr('Datei ausw\00E4hlen')
,p_is_js_message=>true
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124627014413026060)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'de'
,p_message_text=>'Datei per Drag-and-Drop hier ablegen oder'
,p_is_js_message=>true
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124547747134026036)
,p_name=>'ITEMS'
,p_message_language=>'de'
,p_message_text=>'Elemente'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124581463704026046)
,p_name=>'ITEM_VALUE'
,p_message_language=>'de'
,p_message_text=>'Elementwert'
,p_version_scn=>2692520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124596014975026051)
,p_name=>'LABEL'
,p_message_language=>'de'
,p_message_text=>'Label'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124608694979026054)
,p_name=>'LANGUAGE'
,p_message_language=>'de'
,p_message_text=>'Sprache'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124568783380026042)
,p_name=>'LAST'
,p_message_language=>'de'
,p_message_text=>'letzte'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124544779242026035)
,p_name=>'LENGTH'
,p_message_language=>'de'
,p_message_text=>unistr('L\00E4nge')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124603065600026053)
,p_name=>'LOGIN'
,p_message_language=>'de'
,p_message_text=>'Anmeldung'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124644650127026065)
,p_name=>'MANAGE'
,p_message_language=>'de'
,p_message_text=>'Verwalten'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124707730147026084)
,p_name=>'MAXIMIZE'
,p_message_language=>'de'
,p_message_text=>'Maximieren'
,p_is_js_message=>true
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124567896673026042)
,p_name=>'MINUTE'
,p_message_language=>'de'
,p_message_text=>'Minute'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124567996958026042)
,p_name=>'MINUTES'
,p_message_language=>'de'
,p_message_text=>'Minuten'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124659977757026069)
,p_name=>'MISSING_AT'
,p_message_language=>'de'
,p_message_text=>'Fehlendes "@" in E-Mail-Adresse.'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124660115103026070)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'de'
,p_message_text=>unistr('Warnung: Es wurde kein Dialogseiten-Template f\00FCr Dialogseite %0 in Anwendung %1 definiert.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124659807657026069)
,p_name=>'MISSING_DOT'
,p_message_language=>'de'
,p_message_text=>'Fehlender "." in E-Mail-Adressendomain.'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124606196667026054)
,p_name=>'MODULE'
,p_message_language=>'de'
,p_message_text=>'Modul'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124560341689026040)
,p_name=>'MONTH'
,p_message_language=>'de'
,p_message_text=>'Monat'
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124564262429026041)
,p_name=>'MONTHLY'
,p_message_language=>'de'
,p_message_text=>'Monatlich'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124560408590026040)
,p_name=>'MONTHS'
,p_message_language=>'de'
,p_message_text=>'Monate'
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124595680675026050)
,p_name=>'MOVE'
,p_message_language=>'de'
,p_message_text=>'Verschieben'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124666430998026071)
,p_name=>'MOVE_FROM'
,p_message_language=>'de'
,p_message_text=>'Verschieben von'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124666595739026071)
,p_name=>'MOVE_TO'
,p_message_language=>'de'
,p_message_text=>'Verschieben nach'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124582627875026046)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler beim L\00F6schvorgang f\00FCr mehrere Zeilen: Zeile= %0, %1, %2')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124581646959026046)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'de'
,p_message_text=>unistr('Darf kein \00F6ffentlicher Benutzer sein')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124530231171026031)
,p_name=>'NAME'
,p_message_language=>'de'
,p_message_text=>'Name'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124595819995026050)
,p_name=>'NEW'
,p_message_language=>'de'
,p_message_text=>'Neu'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124560118135026040)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'de'
,p_message_text=>unistr('Sie k\00F6nnen sich bei %0 anmelden \00FCber:')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124560249855026040)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'de'
,p_message_text=>unistr('Benachrichtigung \00FCber neuen %0-Account')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124688885143026078)
,p_name=>'NEXT'
,p_message_language=>'de'
,p_message_text=>'Weiter'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124606040666026054)
,p_name=>'NO'
,p_message_language=>'de'
,p_message_text=>'Nein'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124702911249026082)
,p_name=>'NOBODY'
,p_message_language=>'de'
,p_message_text=>'niemand'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124569120956026042)
,p_name=>'NOT'
,p_message_language=>'de'
,p_message_text=>'Nicht'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124612094035026055)
,p_name=>'NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'Ungleich Null'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124581732100026046)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'de'
,p_message_text=>'Nicht %0'
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124601598074026052)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'de'
,p_message_text=>'Keine Daten gefunden'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124611567202026055)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Kein aktualisierbarer Bericht gefunden. Mehrzeilige Aktualisierungs- und L\00F6schvorg\00E4nge k\00F6nnen nur auf tabellarischen Formularen vom Typ "Aktualisierbarer Bericht" ausgef\00FChrt werden.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124612439541026055)
,p_name=>'OK'
,p_message_language=>'de'
,p_message_text=>'OK'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124607741168026054)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'de'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124706641077026083)
,p_name=>'ORA_06550'
,p_message_language=>'de'
,p_message_text=>'ORA-06550: Zeile %0, Spalte %1'
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124657556196026069)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'de'
,p_message_text=>unistr('Sie verwenden einen veralteten Webbrowser. Eine Liste der unterst\00FCtzten Browser finden Sie im Installationshandbuch zu Oracle APEX.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124552530682026038)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltige Zeilenmenge angefordert, die Quelldaten des Berichts wurden ge\00E4ndert.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124574571986026044)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Es muss eine g\00FCltige Seitennummer angegeben werden. Beispiel: p?n=1234.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124578728572026045)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'de'
,p_message_text=>'Weiter'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124578851824026045)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'de'
,p_message_text=>unistr('N\00E4chstes Set')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124578927113026045)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124579041826026045)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'de'
,p_message_text=>'Vorheriges Set'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124688729804026078)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'de'
,p_message_text=>unistr('Paginierung ausw\00E4hlen')
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124618707871026057)
,p_name=>'PASSWORD'
,p_message_language=>'de'
,p_message_text=>'Kennwort'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124559474394026040)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'de'
,p_message_text=>unistr('Ihr Kennwort f\00FCr %0 wurde ge\00E4ndert.')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124547197831026036)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('Das Kennwort entspricht nicht den Komplexit\00E4tsregeln f\00FCr Kennw\00F6rter.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124546290903026036)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'de'
,p_message_text=>'Das neue Kennwort muss sich vom alten Kennwort um mindestens %0 Zeichen unterscheiden.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124546876243026036)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'de'
,p_message_text=>'Das Kennwort darf nicht den Benutzernamen enthalten.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124547025153026036)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Das Kennwort enth\00E4lt ein nicht zul\00E4ssiges einfaches Wort.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124546943748026036)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'de'
,p_message_text=>'Das Kennwort darf nicht den Workspace-Namen enthalten.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124546126900026036)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'de'
,p_message_text=>'Das Kennwort muss mindestens %0 Zeichen enthalten.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124546359896026036)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'de'
,p_message_text=>'Das Kennwort muss mindestens einen Buchstaben (%0) enthalten.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124546700422026036)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'de'
,p_message_text=>'Das Kennwort muss mindestens ein Zeichen in Kleinbuchstaben enthalten.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124546458393026036)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'de'
,p_message_text=>'Das Kennwort muss mindestens einen numerischen Wert (0123456789) enthalten.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124546532037026036)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'de'
,p_message_text=>'Das Kennwort muss mindestens ein Interpunktionszeichen (%0) enthalten.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124546697093026036)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Das Kennwort muss mindestens ein Zeichen in Gro\00DFbuchstaben enthalten.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124559965541026040)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'de'
,p_message_text=>unistr('Benachrichtigung \00FCber Zur\00FCcksetzen des Kennworts')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124545078016026035)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'de'
,p_message_text=>'Dieses Kennwort kann nicht verwendet werden, da es in den letzten %0 Tagen verwendet wurde.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124541724065026035)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'de'
,p_message_text=>'Prozentdiagramm'
,p_is_js_message=>true
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124633321007026062)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'de'
,p_message_text=>'Elemente'
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124633496542026062)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'de'
,p_message_text=>'Element'
,p_version_scn=>2692532
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124607562541026054)
,p_name=>'PERCENT'
,p_message_language=>'de'
,p_message_text=>'Prozent'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124576852188026045)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'de'
,p_message_text=>'Wenden Sie sich an den Administrator.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124688975125026078)
,p_name=>'PREVIOUS'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck')
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124625506619026059)
,p_name=>'PRINT'
,p_message_language=>'de'
,p_message_text=>'Drucken'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124606354364026054)
,p_name=>'PRIVILEGES'
,p_message_language=>'de'
,p_message_text=>'Berechtigungen'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124574946679026044)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'de'
,p_message_text=>'Regionsreferenzen'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124595973132026051)
,p_name=>'REPORT'
,p_message_language=>'de'
,p_message_text=>'Bericht'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124606220448026054)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'de'
,p_message_text=>'Berichtszeitraum'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124689185780026078)
,p_name=>'REPORT_LABEL'
,p_message_language=>'de'
,p_message_text=>'Bericht: %0'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124606997788026054)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'de'
,p_message_text=>'Bericht Summe'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124552665051026038)
,p_name=>'RESET'
,p_message_language=>'de'
,p_message_text=>unistr('Paginierung zur\00FCcksetzen')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124581304931026046)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'de'
,p_message_text=>unistr('Paginierung zur\00FCcksetzen')
,p_version_scn=>2692520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124611485658026055)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'de'
,p_message_text=>unistr('Kennwort zur\00FCcksetzen')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124587202544026048)
,p_name=>'RESTORE'
,p_message_language=>'de'
,p_message_text=>'Wiederherstellen'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124620862327026058)
,p_name=>'RESULTS'
,p_message_language=>'de'
,p_message_text=>'Ergebnisse'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124612585951026055)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'de'
,p_message_text=>unistr('Zur\00FCck zur Anwendung.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124612958159026055)
,p_name=>'RIGHT'
,p_message_language=>'de'
,p_message_text=>'Rechts'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124644929071026065)
,p_name=>'ROW'
,p_message_language=>'de'
,p_message_text=>'Zeile %0'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124595586139026050)
,p_name=>'ROW_COUNT'
,p_message_language=>'de'
,p_message_text=>'Zeilenanzahl'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124485320161026018)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'de'
,p_message_text=>'Oracle fragen'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124485659028026018)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'de'
,p_message_text=>unistr('"Oracle fragen" schlie\00DFen')
,p_is_js_message=>true
,p_version_scn=>2692504
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124485931779026018)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'de'
,p_message_text=>'Benachrichtigungsliste'
,p_is_js_message=>true
,p_version_scn=>2692504
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124485599494026018)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'de'
,p_message_text=>unistr('"Oracle fragen" \00F6ffnen')
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124485880245026018)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'de'
,p_message_text=>'Produktzuordnung'
,p_is_js_message=>true
,p_version_scn=>2692504
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124485743701026018)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'de'
,p_message_text=>'Vorschlagsliste'
,p_is_js_message=>true
,p_version_scn=>2692504
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124486603856026018)
,p_name=>'RW_CLEAR'
,p_message_language=>'de'
,p_message_text=>unistr('L\00F6schen')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124486586574026018)
,p_name=>'RW_CLOSE'
,p_message_language=>'de'
,p_message_text=>unistr('Schlie\00DFen')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124486343920026018)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'de'
,p_message_text=>'Mehr anzeigen'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124486764088026018)
,p_name=>'RW_GO_TO'
,p_message_language=>'de'
,p_message_text=>'Gehe zu'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124486169279026018)
,p_name=>'RW_GP_STEP'
,p_message_language=>'de'
,p_message_text=>'Schritt'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124486279955026018)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'de'
,p_message_text=>'von'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124486055332026018)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'de'
,p_message_text=>'Schrittanzeige umschalten'
,p_version_scn=>2692504
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124485131416026018)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'de'
,p_message_text=>'Kennwort ausblenden'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124486402902026018)
,p_name=>'RW_OPEN'
,p_message_language=>'de'
,p_message_text=>unistr('\00D6ffnen')
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124484913603026018)
,p_name=>'RW_ORACLE'
,p_message_language=>'de'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124485085939026018)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'de'
,p_message_text=>'Kennwort anzeigen'
,p_is_js_message=>true
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124486824601026018)
,p_name=>'RW_START'
,p_message_language=>'de'
,p_message_text=>'Anfang'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124611943449026055)
,p_name=>'SAVE'
,p_message_language=>'de'
,p_message_text=>'Speichern'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124608126682026054)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'de'
,p_message_text=>'Alternativer Standardwert'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124608573416026054)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'de'
,p_message_text=>'Beschreibung'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124608058904026054)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'de'
,p_message_text=>unistr('Prim\00E4rer Standardwert')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124608867062026054)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'de'
,p_message_text=>unistr('Es sind mehr als %0 Zeilen verf\00FCgbar. Erh\00F6hen Sie den Zeilenselektor, um weitere Zeilen anzuzeigen.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124676226693026074)
,p_name=>'SEARCH'
,p_message_language=>'de'
,p_message_text=>'Suche'
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124567758142026042)
,p_name=>'SECONDS'
,p_message_language=>'de'
,p_message_text=>'Sekunden'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124607674337026054)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'de'
,p_message_text=>'Siehe Anhang'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124668281707026072)
,p_name=>'SELECT_ROW'
,p_message_language=>'de'
,p_message_text=>unistr('Zeile ausw\00E4hlen')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124607360185026054)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'de'
,p_message_text=>'Modus Bildschirmsprachausgabe deaktivieren'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124607432877026054)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'de'
,p_message_text=>'Modus Bildschirmsprachausgabe aktivieren'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124603618690026053)
,p_name=>'SHOW'
,p_message_language=>'de'
,p_message_text=>'Anzeigen'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124670023656026072)
,p_name=>'SHOW_ALL'
,p_message_language=>'de'
,p_message_text=>'Alle anzeigen'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124694813807026080)
,p_name=>'SIGN_IN'
,p_message_language=>'de'
,p_message_text=>'Anmelden'
,p_version_scn=>2692541
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124645728488026065)
,p_name=>'SIGN_OUT'
,p_message_language=>'de'
,p_message_text=>'Abmelden'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124596566899026051)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'de'
,p_message_text=>'vor %0 Tagen'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124604165722026053)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'%0 Tage ab jetzt'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124596426388026051)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'de'
,p_message_text=>'vor %0 Stunden'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124604010823026053)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'%0 Stunden ab jetzt'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124596386215026051)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'de'
,p_message_text=>'vor %0 Minuten'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124603942535026053)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'%0 Minuten ab jetzt'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124596760892026051)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'de'
,p_message_text=>'vor %0 Monaten'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124604349969026053)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'%0 Monate ab jetzt'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124604587134026053)
,p_name=>'SINCE_NOW'
,p_message_language=>'de'
,p_message_text=>'Jetzt'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124596274436026051)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'de'
,p_message_text=>'vor %0 Sekunden'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124603816465026053)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'%0 Sekunden ab jetzt'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124596625479026051)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'de'
,p_message_text=>'vor %0 Wochen'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124604226664026053)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'%0 Wochen ab jetzt'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124596853749026051)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'de'
,p_message_text=>'vor %0 Jahren'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124604489844026053)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'de'
,p_message_text=>'%0 Jahre ab jetzt'
,p_is_js_message=>true
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124590332490026049)
,p_name=>'STANDARD'
,p_message_language=>'de'
,p_message_text=>'Standard'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124607246947026054)
,p_name=>'START_DATE'
,p_message_language=>'de'
,p_message_text=>'Startdatum'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124542497489026035)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'de'
,p_message_text=>'Sie erhalten diese E-Mail von der Subscription zu interaktiven Berichten, die von %0 erstellt wurde.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124704029142026083)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'de'
,p_message_text=>'Subscriptions'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124653406008026067)
,p_name=>'TAB'
,p_message_language=>'de'
,p_message_text=>'Registerkarte'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124567620688026042)
,p_name=>'TITLE'
,p_message_language=>'de'
,p_message_text=>'Titel'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124547376456026036)
,p_name=>'TODAY'
,p_message_language=>'de'
,p_message_text=>'Heute'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124606882264026054)
,p_name=>'TOTAL'
,p_message_language=>'de'
,p_message_text=>'Gesamt'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124548615908026037)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'de'
,p_message_text=>unistr('Es k\00F6nnen maximal %0 Spalten ausgew\00E4hlt werden.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124504424636026023)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'de'
,p_message_text=>'Alle ausblenden'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124505030584026024)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'de'
,p_message_text=>'Alles unten ausblenden'
,p_is_js_message=>true
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124504084757026023)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'de'
,p_message_text=>'Alle einblenden'
,p_is_js_message=>true
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124504762070026024)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'de'
,p_message_text=>'Alles unten einblenden'
,p_is_js_message=>true
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124505266703026024)
,p_name=>'TREE.REPARENT'
,p_message_language=>'de'
,p_message_text=>'Neu zuordnen'
,p_is_js_message=>true
,p_version_scn=>2692507
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124627359207026060)
,p_name=>'TREES'
,p_message_language=>'de'
,p_message_text=>'Baumstrukturen'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124670167782026073)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Erforderlich'
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124591086474026049)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'de'
,p_message_text=>'Nicht autorisiert'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124641254413026064)
,p_name=>'UNAVAILABLE'
,p_message_language=>'de'
,p_message_text=>unistr('Nicht verf\00FCgbar')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124604939101026053)
,p_name=>'UNKNOWN'
,p_message_language=>'de'
,p_message_text=>'Unbekannt'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124543302717026035)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'de'
,p_message_text=>'Ein unbekannter Authentifizierungsfehler ist aufgetreten.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124545555853026036)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'de'
,p_message_text=>unistr('Wenn Sie keine weiteren E-Mails erhalten m\00F6chten, klicken Sie auf <a href="%0">Subscription aufheben</a>, um Ihre Subscription zu verwalten.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124542385702026035)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'de'
,p_message_text=>unistr('Wenn Sie keine weiteren E-Mails erhalten m\00F6chten, gehen Sie zur folgenden URL, um Ihre Subscription zu verwalten:')
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124581894801026046)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Nicht unterst\00FCtzter Datentyp')
,p_version_scn=>2692522
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124568900479026042)
,p_name=>'UPDATE'
,p_message_language=>'de'
,p_message_text=>'aktualisieren'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124567566478026042)
,p_name=>'UPDATED'
,p_message_language=>'de'
,p_message_text=>'Aktualisiert'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124510746591026025)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'de'
,p_message_text=>'Upgrade in Bearbeitung'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124511045432026025)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'de'
,p_message_text=>'Oracle APEX wird auf eine neuere Version upgegradet. Dieser Prozess dauert im Allgemeinen bis zu 3 Minuten.'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124574350013026044)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'de'
,p_message_text=>unistr('Der angeforderte URL ist nicht zul\00E4ssig. Wenden Sie sich an den Administrator.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124595488483026050)
,p_name=>'USER'
,p_message_language=>'de'
,p_message_text=>'Benutzer'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124618678689026057)
,p_name=>'USERNAME'
,p_message_language=>'de'
,p_message_text=>'Benutzername'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124660026534026069)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'de'
,p_message_text=>unistr('Benutzername ist zu lang. Er darf h\00F6chstens %0 Zeichen enthalten.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124602512568026052)
,p_name=>'USERS'
,p_message_language=>'de'
,p_message_text=>'Benutzer'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124659670641026069)
,p_name=>'USER_EXISTS'
,p_message_language=>'de'
,p_message_text=>'Benutzername ist bereits vorhanden.'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124673434324026073)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Profilbild f\00FCr Benutzer %0')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124535305120026033)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'de'
,p_message_text=>'Automatisierung - %0'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124533885181026032)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'de'
,p_message_text=>'Seite %0 - %1 '
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124536753173026033)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'de'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124536819701026033)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'de'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124535744063026033)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'de'
,p_message_text=>'Suchkonfiguration - %0'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124535613042026033)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'de'
,p_message_text=>'Gemeinsame dynamische Werteliste - %0'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124535480724026033)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'de'
,p_message_text=>'Aufgabendefinition - %0'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124533954156026032)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'de'
,p_message_text=>'Workflow - %0 '
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124556006642026039)
,p_name=>'VALID'
,p_message_language=>'de'
,p_message_text=>unistr('G\00FCltig')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124547616334026036)
,p_name=>'VALIDATIONS'
,p_message_language=>'de'
,p_message_text=>'Validierungen'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124608359963026054)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'de'
,p_message_text=>'Wert muss angegeben werden'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124654664294026068)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'de'
,p_message_text=>unistr('Wert muss f\00FCr %0 angegeben werden')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124577206475026045)
,p_name=>'VERTICAL'
,p_message_language=>'de'
,p_message_text=>'vertikal'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124568826436026042)
,p_name=>'VIEW'
,p_message_language=>'de'
,p_message_text=>'Ansicht'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124602638468026053)
,p_name=>'VIEWS'
,p_message_language=>'de'
,p_message_text=>'Ansichten'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124609195176026054)
,p_name=>'VIEW_ALL'
,p_message_language=>'de'
,p_message_text=>'Alle anzeigen'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124549030295026037)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'de'
,p_message_text=>'Ausgeblendeter Link'
,p_is_js_message=>true
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124589840961026049)
,p_name=>'WARNING'
,p_message_language=>'de'
,p_message_text=>'Warnung'
,p_is_js_message=>true
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124568447287026042)
,p_name=>'WEEK'
,p_message_language=>'de'
,p_message_text=>'Woche'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124564373485026041)
,p_name=>'WEEKLY'
,p_message_language=>'de'
,p_message_text=>unistr('W\00F6chentlich')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124568583343026042)
,p_name=>'WEEKS'
,p_message_language=>'de'
,p_message_text=>'Wochen'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124608453284026054)
,p_name=>'WELCOME_USER'
,p_message_language=>'de'
,p_message_text=>'Willkommen: %0'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124606668081026054)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Wert gefunden. \00DCberpr\00FCfen Sie die eingegebenen Daten.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124606774257026054)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Wert gefunden. \00DCberpr\00FCfen Sie die eingegebenen Daten.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124544541919026035)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Datumswert gefunden. \00DCberpr\00FCfen Sie das Datumsformat.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124606589906026054)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Zahlenwert gefunden. \00DCberpr\00FCfen Sie das Zahlenformat.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124555633464026039)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Zeitstempelwert gefunden. \00DCberpr\00FCfen Sie das Zeitstempelformat.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124580199970026046)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Binden von "%0 "nicht m\00F6glich. Verwenden Sie doppelte Anf\00FChrungszeichen f\00FCr Mehr-Byte-Elemente, oder pr\00FCfen Sie, ob die L\00E4nge des Elements maximal 30 Byte betr\00E4gt. Verwenden Sie die v()-Syntax, um Elemente zu referenzieren, die l\00E4nger sind als 30 Byt')
||'e. '
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124569931620026043)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'de'
,p_message_text=>unistr('Zugriff von %0-Sicherheitspr\00FCfung verweigert')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124572408133026043)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'de'
,p_message_text=>unistr('Anwendungen nicht verf\00FCgbar')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124570859160026043)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'de'
,p_message_text=>'Anwendung nicht gefunden.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124570961914026043)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'de'
,p_message_text=>'Anwendung=%0  Workspace=%1'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124571339594026043)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'de'
,p_message_text=>unistr('Auf diese Anwendung d\00FCrfen nur bestimmte Benutzer zugreifen. F\00FChren Sie den Vorgang sp\00E4ter aus.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124571252864026043)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'de'
,p_message_text=>unistr('Auf diese Anwendung d\00FCrfen nur Anwendungsentwickler zugreifen. F\00FChren Sie den Vorgang sp\00E4ter aus.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124570412940026043)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('ERR-7744 Verarbeiten URL von Verzweigung zu Seite f\00FCr die R\00FCckgabe der Funktion nicht m\00F6glich.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124570376912026043)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('ERR-7744 Verarbeiten von Verzweigung zu Seite f\00FCr die R\00FCckgabe der Funktion nicht m\00F6glich.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124570605896026043)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('ERR-1430 Der Aufruf f\00FCr die Anzeige vom Seitenprozess wird nicht unterst\00FCtzt: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124571701049026043)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('ERR-1018 Fehler beim L\00F6schen von Schrittcacheinhalt.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124570115863026043)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'de'
,p_message_text=>'ERR-1005 Unbekannter Berechnungstyp.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124571031734026043)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'de'
,p_message_text=>'ERR-1201 Keine Session-ID bei benutzerdefinierter Authentifizierung festgelegt.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124571127664026043)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'de'
,p_message_text=>'Seite=%0'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124570754138026043)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('ERR-7620 Bestimmen des Workspace f\00FCr die Anwendung (%0) nicht m\00F6glich.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124551200808026037)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'de'
,p_message_text=>'Bearbeiten'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124569888020026043)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'de'
,p_message_text=>'ERR-1802 Element-ID "%0" nicht gefunden'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124569500352026043)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('ERR-1002 Element-ID f\00FCr Element "%0" in Anwendung "%1" nicht gefunden.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124569692385026043)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'de'
,p_message_text=>'Unerwarteter Fehler: Elementname auf Anwendungs- oder Seitenebene nicht gefunden.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124570090362026043)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'de'
,p_message_text=>'Sie befinden sich bereits auf der ersten Datenseite.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124586585425026048)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'de'
,p_message_text=>'Element-ID (%0) ist kein Element, das auf der aktuellen Seite definiert ist.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124544188400026035)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'de'
,p_message_text=>unistr('Das Element kann nicht festgelegt werden, indem Argumente an die Anwendung \00FCbergeben werden.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124544453017026035)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'de'
,p_message_text=>unistr('(Keine Pr\00FCfsumme angegeben)')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124543958613026035)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'de'
,p_message_text=>unistr('Das Element kann festgelegt werden, wenn es von einer "user-level bookmark"-Pr\00FCfsumme begleitet wird.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124543814832026035)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'de'
,p_message_text=>unistr('Das Element kann festgelegt werden, wenn es von einer "application-level bookmark"-Pr\00FCfsumme begleitet wird.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124544057172026035)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'de'
,p_message_text=>unistr('Das Element kann festgelegt werden, wenn es von einer "session"-Pr\00FCfsumme begleitet wird.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124543735759026035)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'de'
,p_message_text=>unistr('Element ist nicht gesch\00FCtzt.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124571892504026043)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'de'
,p_message_text=>unistr('Kein Hilfetext f\00FCr die Seite verf\00FCgbar.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124559713713026040)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'de'
,p_message_text=>'Der Workspace %0 hat keine Berechtigungen zum Parsen als Schema %1.'
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124570202965026043)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('ERR-1010 Rekursionsgrenzwert f\00FCr die Abnahme der Verarbeitung bei Verzweigung zu Seite \00FCberschritten. %0')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124526745973026030)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'de'
,p_message_text=>unistr('Seite nicht verf\00FCgbar. Sie k\00F6nnen kein Seitenmuster ausf\00FChren.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124544331187026035)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'de'
,p_message_text=>unistr('Diese Seite kann nicht mit einer URL oder \00FCber einen GET- oder POST-Vorgang bei der show-Prozedur aufgerufen werden. Sie muss mit einer Verzweigung vom Typ "Verzweigung zu Seite" aufgerufen werden.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124629179177026060)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Speichern von nicht numerischem Wert im Element %0. '
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124561431134026040)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'de'
,p_message_text=>'Das Parsingschema "%0" der Anwendung ist nicht in der Datenbank vorhanden.'
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124561546186026040)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'de'
,p_message_text=>unistr('Accounts im INTERNAL-Workspace k\00F6nnen nur verwendet werden, um auf &PRODUCT_NAME.-<a href="%0">Administrationsservices</a> zuzugreifen.')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124569472006026043)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('ERR-1029 Speichern von Sessioninformationen nicht m\00F6glich. session=%0 item=%1')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124572562385026043)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'de'
,p_message_text=>'Trace konnte nicht gestoppt werden: %0'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124569708415026043)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'de'
,p_message_text=>'Unerwarteter Fehler'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124580572591026046)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'de'
,p_message_text=>'Fehler in update_substitution_cache: %0'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124572646106026044)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Um die Hilfe anzeigen zu k\00F6nnen, m\00FCssen die Anwendung und die Seite angegeben werden.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124594331192026050)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Automatisierung nicht gefunden.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124529886238026031)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'de'
,p_message_text=>'Automatisierungsabfragefehler: %0'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124573708658026044)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'de'
,p_message_text=>unistr('%0 Sessions wurden gel\00F6scht.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124515084950026027)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('Code %0 kann nicht ausgef\00FChrt werden. Er wird von der Datenbank nicht unterst\00FCtzt oder wurde nicht durch den Instanzparameter MLE_LANGUAGES aktiviert.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124512612194026026)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('Multi Lingual Engine ist in dieser Datenbankversion nicht verf\00FCgbar.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124551818817026037)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'Das Anwendungs-Collection-Array darf nicht Null sein'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124551678859026037)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'de'
,p_message_text=>unistr('Die angegebene Mitgliedsattributnummer %0 ist ung\00FCltig.  Die Attributnummer muss zwischen 1 und %1 liegen')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124552153361026038)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'de'
,p_message_text=>'Anwendungs-Collection ist vorhanden'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124551977991026037)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'de'
,p_message_text=>'Name der Collection darf nicht Null sein'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124552005832026038)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'de'
,p_message_text=>'Der Collection-Name darf maximal 255 Zeichen enthalten'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124551460664026037)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Anwendungs-Collection %0 ist nicht vorhanden'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124552229502026038)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'de'
,p_message_text=>unistr('Cursor ist noch nicht ge\00F6ffnet')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124551536188026037)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Die Mitgliedersequenz %0 ist in Anwendungs-Collection %1 nicht vorhanden',
''))
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124551740634026037)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Die Mitgliedersequenz %0 ist in Anwendungs-Collection %1 nicht vorhanden',
''))
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124504559669026023)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'de'
,p_message_text=>unistr('Algorithmus %0 wird f\00FCr ECDSA nicht unterst\00FCtzt.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124504246837026023)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'de'
,p_message_text=>unistr('Elliptische Kurve %0 wird nicht unterst\00FCtzt.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124629905162026061)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('Die kryptografische Funktion "%0" wird in diesem System nicht unterst\00FCtzt.')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124682270434026076)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'de'
,p_message_text=>'Barrierefreiheit getestet'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124573206050026044)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'de'
,p_message_text=>unistr('Schlie\00DFen')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124573311457026044)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'de'
,p_message_text=>unistr('Optionen f\00FCr die Seitenanpassung')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124573489878026044)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'de'
,p_message_text=>'Standardwert'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124573530762026044)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'de'
,p_message_text=>'Angezeigt'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124573677531026044)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'de'
,p_message_text=>'Ausgeblendet'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124573018516026044)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'de'
,p_message_text=>unistr('Aktivieren Sie die Kontrollk\00E4stchen f\00FCr die Regionen, die in diese Seite aufgenommen werden sollen. Diese Regionen werden dann nur angezeigt, wenn Sie sich im richtigen Anwendungskontext befinden und \00FCber die geeigneten Berechtigungen verf\00FCgen.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124573103662026044)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'de'
,p_message_text=>'Diese Seite kann nicht angepasst werden.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124682593186026076)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'de'
,p_message_text=>unistr('Sie k\00F6nnen die Darstellung dieser Anwendung personalisieren, indem Sie den Theme-Stil \00E4ndern. W\00E4hlen Sie einen Theme-Stil aus der Liste unten aus, und klicken Sie auf "\00C4nderungen anwenden".')
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124683341749026077)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'de'
,p_message_text=>'Bereichsanzeige'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124682423955026076)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'de'
,p_message_text=>'Standardstil der Anwendung verwenden'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124682329666026076)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'de'
,p_message_text=>'Darstellung'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124626521483026060)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Der im Aggregat %0 referenzierte Spaltenindex ist nicht vorhanden. '
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124519243402026028)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('Anh\00E4ngen den Datenexports wird f\00FCr %0-Format nicht unterst\00FCtzt.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124482205198026017)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('CLOB-Ausgabe wird f\00FCr %0-Format nicht unterst\00FCtzt.')
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124626231821026059)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'de'
,p_message_text=>'Der Spaltenumbruch muss am Anfang des Spaltenarrays erfolgen.'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124626376958026060)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Der in %0 referenzierte Spaltengruppenindex ist nicht vorhanden.'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124533410791026032)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'de'
,p_message_text=>'Export'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124540650849026034)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'de'
,p_message_text=>'Das Exportformat muss XML sein, und ORDS muss als Druckserver verwendet werden.'
,p_version_scn=>2692514
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124626644620026060)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Der in der Markierung %0 referenzierte Spaltenindex ist nicht vorhanden. '
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124530059680026031)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiges Exportformat: %0')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124626444633026060)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>unistr('Der in %0 referenzierte \00FCbergeordnete Gruppenindex ist nicht vorhanden.')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124651678633026067)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'de'
,p_message_text=>unistr('Die Spalte "%1" der Tabelle "%0" ist eine Identit\00E4tsspalte vom Typ "GENERATED ALWAYS". Stellen Sie sicher, dass im Dialogfeld "Konfigurieren" der Spalte "%1" keine Quellspalte zugeordnet ist.')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124563229675026041)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'de'
,p_message_text=>'Angegebenes Commit-Intervall ist zu klein.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124563383523026041)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'de'
,p_message_text=>'Zum Laden von Daten wurden keine Spalten bereitgestellt.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124564639081026041)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Keine Spalten f\00FCr Zeilenselektor "%0" gefunden. Verwenden Sie die automatische Erkennung, oder pr\00FCfen Sie die JSON-Struktur.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124574039052026044)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Keine Arbeitsbl\00E4tter in XLSX-Datei gefunden.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124519100609026028)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'de'
,p_message_text=>unistr('Angeforderte Hierarchieebenen zum Erkennen (%0) \00FCberschreiten den H\00F6chstwert von %1.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124573932034026044)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'de'
,p_message_text=>'Das angegebene Arbeitsblatt ist in der XLSX-Datei nicht vorhanden.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124552388088026038)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'de'
,p_message_text=>unistr('Die aktuelle Version der Daten in der Datenbank wurde ge\00E4ndert, seit der Benutzer einen Update-Prozess eingeleitet hat.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124555281366026038)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Aktualisieren von Berichtsspalten: %0'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124665752187026071)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'de'
,p_message_text=>unistr('Konvertierung von %0 in SDO__GEOMETRY nicht m\00F6glich.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124602284734026052)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'de'
,p_message_text=>'Spalte %0 mit dem Datentyp %1 kann nicht in VARCHAR2 konvertiert werden.'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124609608217026055)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Spalte "%0", die f\00FCr Attribut "%1" angegeben ist, wurde in Datenquelle nicht gefunden.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124545717868026036)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'de'
,p_message_text=>unistr('Filtertyp %0 wird bei Spalten mit mehreren Werten nicht unterst\00FCtzt.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124669234950026072)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger "zwischen"-Filter.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124524833882026030)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'de'
,p_message_text=>'Kein %2-Wert in Spalte %0, Zeilennummer %1 gefunden.'
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124521542165026029)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'de'
,p_message_text=>'Spalte %0 oder Zeilennummer %1 ist nicht vorhanden.'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124508135509026025)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Wertelistentyp angegeben.')
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124508085626026025)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Abfragetyp. Abfragetyp muss Tabelle, SQL-Abfrage oder PL/SQL-Funktion sein, die eine SQL-Abfrage zur\00FCckgibt.')
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124602351612026052)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'de'
,p_message_text=>'SQL-Abfrage konnte nicht geparst werden.  %0'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124609775832026055)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Angegebene Spaltenposition "%0" f\00FCr Attribut "%1" wurde in SQL-Anweisung nicht gefunden.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124499774186026022)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'de'
,p_message_text=>'Zu viele Elemente in Filter mit mehreren Werten.'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124609530194026055)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'de'
,p_message_text=>unistr('Keine Spalte f\00FCr Attribut "%0" angegeben.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124507959911026024)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('PL/SQL-Funktionsbody hat keinen Wert zur\00FCckgegeben.')
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124625319427026059)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'de'
,p_message_text=>unistr('Die REST-Datenquelle enth\00E4lt keinen Vorgang zur Verarbeitung der angeforderten DML-Aktion.')
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124667041376026072)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('Bereichsfilter werden nur f\00FCr die Datentypen NUMBER, DATE und TIMESTAMP unterst\00FCtzt.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124487903641026019)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'de'
,p_message_text=>'Anforderung mit %0 nicht erfolgreich'
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124491467272026020)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'de'
,p_message_text=>unistr('Die Konvertierung von GeoJSON in SDO_GEOMETRY (Spalte %0) ist in dieser Datenbank nicht verf\00FCgbar.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124494824437026021)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'de'
,p_message_text=>unistr('Die SDO_GEOMETRY-Konvertierung (Spalte %0) wird f\00FCr XML-Datenquellen nicht unterst\00FCtzt.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124518925098026028)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'de'
,p_message_text=>unistr('Das Zeichen %0 wird nicht als Trennzeichen mehrerer Werte unterst\00FCtzt.')
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124667164796026072)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'de'
,p_message_text=>'Diese Funktion kann nicht als Abfragekontext verwendet werden.'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124494905573026021)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Spaltendatentyp stimmt nicht \00FCberein.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124528478232026031)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr diese Datenquelle wird das \00C4ndern mehrerer Zeilen nicht unterst\00FCtzt.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124507807069026024)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'de'
,p_message_text=>unistr('Interne ORDS OUT-Bind-Grenzwerte \00FCberschritten. Reduzieren Sie die Anzahl an DML-Zeilen.')
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124610573916026055)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Die JSON-Antwort vom Remoteserver konnte nicht geparst werden: ',
'%0'))
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124507772141026024)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'de'
,p_message_text=>'Unbekannter oder falscher Kontexttyp.'
,p_version_scn=>2692509
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124531864217026032)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'de'
,p_message_text=>unistr('Nicht unterst\00FCtzte Komponenten f\00FCr lesbaren Export: %0')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124629855323026061)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Dieser Dateityp wird vom Parser nicht unterst\00FCtzt.')
,p_version_scn=>2692530
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124580632832026046)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'de'
,p_message_text=>'Unberechtigter Zugriff (wwv_flow_api.set_credentials nicht festgelegt).'
,p_version_scn=>2692520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124555585042026039)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'de'
,p_message_text=>'Der Workspace konnte nicht erstellt werden, weil dieser bereits vorhanden ist.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124555473007026038)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'de'
,p_message_text=>'Die Benutzergruppe konnte nicht erstellt werden, weil sie bereits vorhanden ist.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124566813460026042)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'de'
,p_message_text=>unistr('Mehrfach vorhandener Benutzername f\00FCr %0 gefunden.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124566999732026042)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Laden von Benutzern. Vorgang bei Benutzer %0 nicht erfolgreich.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124577790230026045)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'de'
,p_message_text=>unistr('Es w\00E4ren %0 Benutzer geladen worden.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124577572295026045)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'de'
,p_message_text=>'Kennwort'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124577681118026045)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'de'
,p_message_text=>'Berechtigungen'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124577305272026045)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'de'
,p_message_text=>'Benutzername'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124657724284026069)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Rendering von Seitenelement "#COMPONENT_NAME#".'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124572764491026044)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Seitenelement kann nicht angezeigt werden, weil die HTML-Form noch nicht ge\00F6ffnet war.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124531110102026031)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler bei der Berechnung des Standardwertes f\00FCr das Seitenelement #COMPONENT_NAME#.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124572044596026043)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler bei abschlie\00DFender Berechnung f\00FCr Seitenelement #COMPONENT_NAME#.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124571997879026043)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler bei der Berechnung des Quellwertes f\00FCr das Seitenelement #COMPONENT_NAME#.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124548721902026037)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'de'
,p_message_text=>'Unberechtigter Zugriff.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124498214792026022)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'de'
,p_message_text=>unistr('Wert %0 von %1 ist kein g\00FCltiges JSON-Array.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124572218466026043)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'de'
,p_message_text=>unistr('JavaScript wird nicht unterst\00FCtzt.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124572372578026043)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'de'
,p_message_text=>'Liste'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124572905513026044)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'de'
,p_message_text=>'Die Abfrage konnte nicht initialisiert werden.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124580989289026046)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Aktualisierung von %0 wird nicht unterst\00FCtzt.')
,p_version_scn=>2692520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124574446641026044)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltige Element-ID: %0 ')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124602189211026052)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr dieses Element ist keine Hilfe verf\00FCgbar.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124563971482026041)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'de'
,p_message_text=>unistr('Diagrammabfrage konnte nicht generiert werden. Pr\00FCfen Sie die Quellen- und Spaltenzuordnungseinstellungen.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124565276100026041)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Wert f\00FCr Parameter p_mail_id: %0')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124601996967026052)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'de'
,p_message_text=>'"An" oder "Antwort an" kann nicht als Absenderadresse verwendet werden, da diese Felder mehrere E-Mail-Adressen enthalten.'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124686841776026078)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'de'
,p_message_text=>unistr('Sie haben die maximale Anzahl von E-Mail-Nachrichten pro Workspace \00FCberschritten. Wenden Sie sich an den Administrator.')
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124543471514026035)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'de'
,p_message_text=>'Diese Prozedur muss innerhalb einer Anwendungssession aufgerufen werden.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124565174398026041)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr Parameter %0 wurde ein Nullwert angegeben.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124623252762026059)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'de'
,p_message_text=>'E-Mail-Template "%0" in Anwendung %1 nicht gefunden.'
,p_version_scn=>2692528
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124699790873026081)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Der SMTP_HOST_ADDRESS-Instanzparameter muss festgelegt werden, um E-Mails zu senden.'
,p_version_scn=>2692543
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124564554802026041)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'de'
,p_message_text=>unistr('Es muss ein Nachrichtenempf\00E4nger angegeben werden, damit E-Mails gesendet werden k\00F6nnen.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124689251743026078)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'de'
,p_message_text=>'SMTP-Verbindung mit dem konfigurierten E-Mail-Server konnte nicht hergestellt werden.'
,p_version_scn=>2692540
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124664577373026071)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'de'
,p_message_text=>unistr('Ung\00FCltiger Ajax-Aufruf')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124548407412026036)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr Plug-in %0 wurde keine Ajax-Funktion definiert')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124655088730026068)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr Plug-in %0 wurde keine Ausf\00FChrungsfunktion definiert')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124548521411026036)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr Plug-in %0 wurde keine Renderfunktion definiert.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124665428082026071)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('Das REST-Datenquellen-Plug-in "%0" enth\00E4lt keine Funktion "Funktionen".')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124665371572026071)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('Das REST-Datenquellen-Plug-in "%0" enth\00E4lt keine DML-Funktion.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124665577517026071)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('Das REST-Datenquellen-Plug-in "%0" enth\00E4lt keine Ausf\00FChren-Funktion.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124665691909026071)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'de'
,p_message_text=>unistr('Das REST-Datenquellen-Plug-in "%0" enth\00E4lt keine Abrufen-Funktion.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124545955910026036)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler im PLSQL-Code, der w\00E4hrend der Plug-in-Verarbeitung ausgel\00F6st wurde.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124554544426026038)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'de'
,p_message_text=>'Wert muss angegeben werden.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124587503080026048)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'de'
,p_message_text=>'Datentyp %0 kann nicht in VARCHAR2 konvertiert werden.'
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124675739406026074)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>unistr('Spalte "%0", die f\00FCr Attribut "%1" angegeben ist, wurde in SQL-Anweisung nicht gefunden.')
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124503027635026023)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'de'
,p_message_text=>unistr('Wert %0 von %1 ist kein g\00FCltiges JSON-Array.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124652985903026067)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'de'
,p_message_text=>unistr('F\00FCr %0 muss eine Abfrage der Werteliste (LOV) oder eine benannte Werteliste angegeben werden. ')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124654544680026068)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'de'
,p_message_text=>unistr('In der SQL-Abfrage der Werteliste f\00FCr %0 ist eine falsche Anzahl von Spalten ausgew\00E4hlt. G\00FCltige Anweisungen siehe Beispiele.')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124675549751026074)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'de'
,p_message_text=>unistr('Keine Spalte f\00FCr Attribut "%0" angegeben.')
,p_version_scn=>2692537
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124704708409026083)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'de'
,p_message_text=>unistr('Eingegebener Wert %0 f\00FCr Attribut "%1" ist nicht numerisch.')
,p_version_scn=>2692546
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124658017835026069)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'de'
,p_message_text=>'%0 hat einen falschen Datentyp in der SQL-Anweisung. Spaltennummer %1 ist %2, es wird aber %3 erwartet.'
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124675674458026074)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'de'
,p_message_text=>unistr('Spalte "%0", die f\00FCr Attribut "%1" angegeben ist, hat den Datentyp %2, sollte jedoch den Datentyp %3 haben')
,p_version_scn=>2692538
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124545173265026036)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'de'
,p_message_text=>'Berichtslayout kann nicht gefunden werden.'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124532710050026032)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'de'
,p_message_text=>unistr('Grenzwert f\00FCr Hintergrundausf\00FChrungen f\00FCr %0 \00FCberschritten.')
,p_version_scn=>2692512
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124483003351026017)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'de'
,p_message_text=>unistr('Eine andere Ausf\00FChrung von %0 wurde bereits gestartet.')
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124482946886026017)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'de'
,p_message_text=>unistr('Eine andere Ausf\00FChrung von %0 wurde f\00FCr Kontext %1 bereits gestartet.')
,p_version_scn=>2692503
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124497915844026022)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'de'
,p_message_text=>unistr('Die hochgeladenen Dateien werden in der Arbeitssession f\00FCr die Ausf\00FChrung von %0 nicht angezeigt.')
,p_version_scn=>2692506
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124610464091026055)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'de'
,p_message_text=>unistr('Das Feature "Summe berechnen" kann nicht f\00FCr Berichte verwendet werden, die auf einer REST-Datenquelle basieren.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124572114492026043)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('ERR-2904 Festlegen von Shortcut-Wert nicht m\00F6glich.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124577166183026045)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'de'
,p_message_text=>'Fehler: Unbekannter Shortcut-Typ.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124514879259026027)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'de'
,p_message_text=>'Suchabfrage ist zu lang.'
,p_version_scn=>2692511
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124566243063026042)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Abrufen von authentication_scheme in Anwendung %0 nicht m\00F6glich.')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124574222446026044)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'de'
,p_message_text=>'Komponente %0 kann nicht abgerufen werden.'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124644587757026065)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'de'
,p_message_text=>unistr('Die Mandanten-ID ist f\00FCr die aktuelle Session bereits vorhanden.')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124577461693026045)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'de'
,p_message_text=>'E-Mail-Adresse'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124704280777026083)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'de'
,p_message_text=>'Authentifizierung nicht erfolgreich.'
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124604868012026053)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'de'
,p_message_text=>unistr('Mindestens ein in apex_util.g_request_cookies eingerichtetes Cookie enth\00E4lt einen ung\00FCltigen Wert.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124586725557026048)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'de'
,p_message_text=>unistr('Die Antwort von der UDDI Registry war ung\00FCltig.')
,p_version_scn=>2692523
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124546098283026036)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'de'
,p_message_text=>unistr('Der angegebene URL hat kein g\00FCltiges WSDL-Dokument zur\00FCckgegeben.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124548809497026037)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'de'
,p_message_text=>unistr('Das WSDL-Dokument enth\00E4lt mehrere SOAP-Bindings. &PRODUCT_NAME. unterst\00FCtzt nur WSDLs mit einem SOAP-Binding. Klicken Sie auf <b>Webservicereferenz manuell erstellen</b>, um mit dem Erstellvorgang f\00FCr eine Referenz f\00FCr diesen Service fortzufahren.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124624435729026059)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'de'
,p_message_text=>'Die Antwort vom Service war nicht XML.'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124704100973026083)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'de'
,p_message_text=>unistr('OAuth-Zugriffstoken nicht verf\00FCgbar oder abgelaufen.')
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124668651691026072)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'de'
,p_message_text=>unistr('Sie haben die maximale Anzahl an Webserviceanforderungen pro Workspace \00FCberschritten. Wenden Sie sich an den Administrator.')
,p_version_scn=>2692536
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124704387573026083)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'de'
,p_message_text=>unistr('Server hat mit nicht unterst\00FCtztem OAuth-Tokentyp geantwortet.')
,p_version_scn=>2692544
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124548228307026036)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'de'
,p_message_text=>unistr('Das WSDL-Dokument enth\00E4lt kein Binding f\00FCr SOAP. Dies ist erforderlich, um die Referenz hinzuf\00FCgen zu k\00F6nnen.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124543629127026035)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'de'
,p_message_text=>unistr('Dieses WSDL ben\00F6tigt Zugangsdaten f\00FCr die Authentifizierung. Geben Sie unten den Benutzernamen und das Kennwort ein.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124554608363026038)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'de'
,p_message_text=>unistr('Das WSDL-Dokument wurde von der Rendering Engine nicht verstanden. Klicken Sie auf <b>Webservicereferenz manuell erstellen</b>, um mit dem Erstellvorgang f\00FCr eine Referenz f\00FCr diesen Service fortzufahren.')
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124627468289026060)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'de'
,p_message_text=>'Update kann nicht verarbeitet werden.'
,p_version_scn=>2692529
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124653263876026067)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'de'
,p_message_text=>unistr('Die R\00FCckgabe- und Anzeigespalte der Werteliste sind gleich.')
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124653174259026067)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Die Werteliste hat keine Eingabespalte.'
,p_version_scn=>2692533
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124580883806026046)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'de'
,p_message_text=>'Fehler beim Abrufen von Spaltenwert: %0'
,p_version_scn=>2692520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124605728225026053)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'de'
,p_message_text=>unistr('Aktuelle Daten auf tabellarischem Formular sind zu alt; die Quelldaten wurden ge\00E4ndert.<br/> Klicken Sie <strong><a href="%0">hier</a></strong>, um Ihre \00C4nderungen zu verwerfen und die Daten aus der Datenbank neu zu laden.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124560990982026040)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler beim Bestimmen der Zeichenfolge f\00FCr die Paginierung')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124560857898026040)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'de'
,p_message_text=>unistr('Bestimmen der Abfrage\00FCberschriften nicht m\00F6glich: %0')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124561046794026040)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler beim Ausf\00FChren von Berichts-Footer-Ersetzungen')
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124561177433026040)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'de'
,p_message_text=>'Parsen von SQL-Abfrage nicht erfolgreich: %0 %1'
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124567287931026042)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'de'
,p_message_text=>'Minimale Zeile angefordert: %0, Zeilen gefunden, die jedoch nicht angezeigt werden: %1'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124563639579026041)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'de'
,p_message_text=>unistr('Die Abfragespalte #%0 (%1) ist ung\00FCltig. HTML-Spalten ben\00F6tigen Aliasnamen')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124580777779026046)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'de'
,p_message_text=>unistr('Fehler beim Abrufen von Abfrage\00FCberschriften: %0')
,p_version_scn=>2692520
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124561280038026040)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'de'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Berichtsfehler:',
'%0'))
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124601306119026052)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'de'
,p_message_text=>'Nach dieser Spalte sortieren'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124563746692026041)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'de'
,p_message_text=>unistr('<p>Die Abfrage kann nicht geparst werden. \00DCberpr\00FCfen Sie die Abfragesyntax. (%0) </p>')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124605830649026053)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'de'
,p_message_text=>unistr('Diese Form enth\00E4lt ungespeicherte \00C4nderungen. Klicken Sie auf "OK", um fortzufahren, ohne Ihre \00C4nderungen zu speichern. ')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124610340727026055)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'de'
,p_message_text=>unistr('Paginierungsschema des Berichts (%0) wird bei der ausgew\00E4hlten Datenquelle nicht unterst\00FCtzt.')
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124563562763026041)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'de'
,p_message_text=>unistr('Die Abfragespalte #%0 (%1) ist ung\00FCltig. Verwenden Sie den Spaltenaliasnamen')
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124567314136026042)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'de'
,p_message_text=>'Zeile(n) %0 - %1 von mehr als %2'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124607810373026054)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'de'
,p_message_text=>'%0 - %1 von mehr als %2'
,p_version_scn=>2692527
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124567175119026042)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'de'
,p_message_text=>'Zeile(n) %0 - %1 von %2'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124547904421026036)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'de'
,p_message_text=>'%0 - %1 von %2'
,p_version_scn=>2692516
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124561395442026040)
,p_name=>'Y'
,p_message_language=>'de'
,p_message_text=>'J'
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124568637258026042)
,p_name=>'YEAR'
,p_message_language=>'de'
,p_message_text=>'Jahr'
,p_version_scn=>2692519
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124560538419026040)
,p_name=>'YEARS'
,p_message_language=>'de'
,p_message_text=>'Jahre'
,p_version_scn=>2692518
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124605992835026053)
,p_name=>'YES'
,p_message_language=>'de'
,p_message_text=>'Ja'
,p_version_scn=>2692527
);
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/no_auth
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(109678305570583962.4473)
,p_name=>'No Auth'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_01=>'nobody'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>75553098
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1.4473
,p_name=>'Nachrichten'
,p_alias=>'MESSAGES'
,p_step_title=>'Nachrichten'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
