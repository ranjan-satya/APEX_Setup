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
,p_default_application_id=>4541
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4541 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4541
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131491558762030308')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'fi'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4541)
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
 p_id=>wwv_flow_imp.id(4541)
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
 p_id=>wwv_flow_imp.id(728504220438374.4541)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4541)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4541)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4541)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4541)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4541)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4541)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4541)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4541)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4541)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4541)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4541)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4541)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4541)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4541)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4541)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4541)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.fi'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4541)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4541)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4541)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4541)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4541)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4541)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4541)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.fi'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4541)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4541)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4541)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4541)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4541)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4541)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4541)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.fi'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4541)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4541)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4541)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4541)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4541)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4541)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4541)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4541)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4541)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4541)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4541)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4541)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4541)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4541)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4541)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4541)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4541)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4541)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4541)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.fi'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4541)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4541)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4541)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4541)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4541)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4541)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4541)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4541)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4541)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4541)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4541)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4541)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4541)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4541)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4541)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4541)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4541)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.fi'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4541)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4541)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4541)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4541)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4541)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4541)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4541)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4541)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4541)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4541)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4541)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4541)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4541)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4541)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4541)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4541)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4541)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.fi'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4541)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4541)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4541)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4541)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4541)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4541)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4541)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4541)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4541)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4541)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4541)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4541)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4541)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4541)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4541)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.fi'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4541)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4541)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4541)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4541)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4541)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4541)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4541)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4541)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4541)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4541)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4541)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4541)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4541)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4541)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4541)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4541)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4541)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4541)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4541)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4541)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4541)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4541)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4541)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4541)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4541)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4541)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4541)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4541)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4541)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4541)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4541)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4541)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4541)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4541)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4541)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4541)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4541)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4541)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4541)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4541)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4541)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4541)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4541)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4541)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4541)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4541)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4541)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4541)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4541)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4541)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4541)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4541)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4541)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4541)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4541)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4541)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4541)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4541)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4541)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4541)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4541)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4541)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4541)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4541)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4541)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4541)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4541)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4541)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4541)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4541)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4541)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4541)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4541)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4541)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4541)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4541)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4541)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4541)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4541)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4541)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4541)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4541)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4541)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4541)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4541)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4541)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4541)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4541)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4541)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4541)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4541)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4541)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4541)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4541)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4541)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4541)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4541)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4541)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4541)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4541)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4541)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4541)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4541)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4541)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4541)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4541)
,p_page_name=>'winlov'
,p_page_title=>'Hakuvalintaikkuna'
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
,p_find_button_text=>'Haku'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Sulje'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>'Seuraava &gt;'
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>'&lt; Edellinen'
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>'<div class="a-PopupLOV-pagination">Rivit #FIRST_ROW# - #LAST_ROW#</div>'
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
 p_id=>wwv_flow_imp.id(649611609668764506.4541)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4541)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4541)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4541)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4541)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4541)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4541)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4541)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4541)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4541)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4541)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4541)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4541)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4541)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4541)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4541)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4541)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4541)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4541)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4541)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4541)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4541)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4541)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4541)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4541)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4541)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4541)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4541)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4541)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4541)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4541)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4541)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4541)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4541)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4541)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4541)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4541)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4541)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4541)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4541)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4541)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4541)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4541)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4541)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4541)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4541)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4541)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4541)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4541)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4541)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4541)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4541)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4541)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4541)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4541)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4541)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4541)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4541)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4541)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4541)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4541)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4541)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4541)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4541)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4541)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4541)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4541)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4541)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4541)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4541)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4541)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4541)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4541)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4541)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4541)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4541)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4541)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4541)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4541)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4541)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4541)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4541)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4541)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4541)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4541)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4541)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4541)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4541)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4541)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4541)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4541)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4541)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4541)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4541)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4541)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4541)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4541)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4541)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4541)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4541)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4541)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4541)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4541)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4541)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4541)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4541)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4541)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4541)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4541)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4541)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4541)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4541)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4541)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4541)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4541)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4541)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4541)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4541)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4541)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4541)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4541)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4541)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4541)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4541)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4541)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4541)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4541)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4541)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4541)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4541)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4541)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4541)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4541)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4541)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4541)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4541)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4541)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4541)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4541)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4541)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4541)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4541)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4541)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4541)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4541)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4541)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4541)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4541)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4541)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4541)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4541)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4541)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4541)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4541)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4541)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4541)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4541)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4541)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4541)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4541)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4541)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4541)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4541)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4541)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4541)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4541)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4541)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4541)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4541)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4541)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4541)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4541)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4541)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4541)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4541)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4541)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4541)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4541)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4541)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4541)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4541)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4541)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4541)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4541)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4541)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4541)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4541)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4541)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4541)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4541)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4541)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4541)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4541)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4541)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4541)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4541)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4541)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4541)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4541)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4541)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4541)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4541)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4541)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4541)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4541)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4541)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4541)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4541)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4541)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4541)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4541)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4541)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4541)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4541)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4541)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4541)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4541)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4541)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4541)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4541)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4541)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4541)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4541)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4541)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4541)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4541)
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
 p_id=>wwv_flow_imp.id(125234244071026252)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'fi'
,p_message_text=>'Sarake %0'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125218849473026247)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjestelm\00E4nvalvoja')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125218737543026247)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4tunnus')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125281468646026266)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei k\00E4ytt\00F6oikeutta')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125238301765026253)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'fi'
,p_message_text=>'%0 -tilisi on luotu.'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125221571357026248)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'fi'
,p_message_text=>'Tili on lukittu.'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125206072369026243)
,p_name=>'AM_PM'
,p_message_language=>'fi'
,p_message_text=>'AM / PM'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125188811740026238)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'fi'
,p_message_text=>'toiminnon linkki'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125188719724026238)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'fi'
,p_message_text=>'valintaikkunan linkki'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125353125134026289)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'fi'
,p_message_text=>'Vaihda %0'
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125360984492026291)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'fi'
,p_message_text=>'(Aktiivinen)'
,p_is_js_message=>true
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125165754584026232)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'fi'
,p_message_text=>'Keskustelu tyhjennetty'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125165675641026232)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhjenn\00E4 keskustelu')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125162270419026231)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'fi'
,p_message_text=>unistr('Hyv\00E4ksy')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125162348972026231)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'fi'
,p_message_text=>unistr('Hylk\00E4\00E4')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125162034508026231)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'fi'
,p_message_text=>'Keskusteluhistoria'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125165407880026232)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'fi'
,p_message_text=>'Kopioitu'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125165521663026232)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'fi'
,p_message_text=>unistr('Kopioitu leikep\00F6yd\00E4lle')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125165246846026232)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'fi'
,p_message_text=>'Kopioi'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125165368009026232)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'fi'
,p_message_text=>unistr('Kopioi leikep\00F6yd\00E4lle')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125162738186026231)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Apu'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125163147237026231)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('Teko\00E4ly on poistettu k\00E4yt\00F6st\00E4 ty\00F6tilassa tai instanssitasolla.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125202443755026242)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'fi'
,p_message_text=>unistr('Generatiivista teko\00E4lypalvelua annetulla tai staattisella tunnisteella ei l\00F6ydy.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125201114582026242)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Todentamisvirhe tai k\00E4ytt\00F6 kielletty (HTTP-%1) URL-osoitteessa %0. Tarkista Generative AI -palvelun konfiguraatio %2.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125180977975026236)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Generatiivisen teko\00E4lypalvelun HTTP-pyynt\00F6 %0 ep\00E4onnistui: HTTP-%1: %2')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125205375001026243)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe Generative AI -palveluun l\00E4hetetyss\00E4 HTTP-pyynn\00F6ss\00E4 liit\00E4nn\00E4iselle %0 tilassa %1. Tarkista Generative AI -palvelun konfiguraatio.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125168165053026232)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Esimerkkej\00E4')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125166551138026232)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'fi'
,p_message_text=>'Apu'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125167991744026232)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125166460571026232)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'fi'
,p_message_text=>unistr('Sin\00E4')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125197103390026241)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>unistr('OCI Generative AI ei tue t\00E4ll\00E4 hetkell\00E4 keskustelua, jossa on useita viestej\00E4.')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125177060340026235)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 sovelluksen %1 kehotetta %0. Tarkista, onko sovelluksen luontiohjelma k\00E4ytett\00E4viss\00E4 t\00E4ss\00E4 instanssissa.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125182116558026236)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('AI-palvelua %0 ei voi k\00E4sitell\00E4, vastaus %1')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125188334969026238)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4 viesti')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125176694710026235)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virhe taustapalvelimen AI-palvelussa %0'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125162454777026231)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Viesti'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125162577242026231)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'fi'
,p_message_text=>unistr('Kirjoita viesti t\00E4h\00E4n')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125165842511026232)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4n avatar')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125165981733026232)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00E4 t\00E4t\00E4')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125162632135026231)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sinulla on l\00E4hett\00E4m\00E4t\00F6n viesti. Oletko varma?')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125331612967026282)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Ajax-kutsu palautti palvelinvirheen %0 kohteelle %1.'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125258741129026259)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovelluksen aliasta %0 ei voi muuntaa yksil\00F6iv\00E4ksi sovelluksen tunnisteeksi.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125247500282026256)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>'ERR-1816 Odottamaton virhe muunnettaessa sovelluksen aliasta p_flow_alias_or_id (%0).'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125344970052026286)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovelluksen tarkistussumman avulla voi helposti tarkistaa, onko sovellus otettu k\00E4ytt\00F6\00F6n useissa ty\00F6tiloissa. Voit vertailla tarkistussummia ja katsoa, l\00F6ytyyk\00F6 toisiaan vastaavia summia.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125231535822026251)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 todennustoimintoa.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125213533983026246)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 todennustoimintoa.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125385465895026298)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'fi'
,p_message_text=>unistr('Oracle Cloud Identity Managementin palauttamalla asiakkaan nimell\00E4 %0 ei ole valtuuksia toimialueen %1 k\00E4ytt\00F6\00F6n.<br/><a href="&LOGOUT_URL.">Kirjaudu uudelleen sis\00E4\00E4n</a> ja m\00E4\00E4rit\00E4 valtuutettu asiakkaan nimi tai vaihda Web-osoitetta.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125209693358026245)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'fi'
,p_message_text=>unistr('Tilill\00E4si %0 ei ole tarvittavia oikeuksia (DB_DEVELOPER tai DB_ADMINISTRATOR) ty\00F6tilan %1 kehitykseen<br/>. <a href="&LOGOUT_URL.">Kirjaudu uudelleen sis\00E4\00E4n</a> oikeuksien my\00F6nt\00E4misen j\00E4lkeen.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125206234266026244)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'fi'
,p_message_text=>unistr('Oracle Cloud Identity Managementin palauttamalla asiakkaan nimell\00E4 ei ole valtuuksia nykyisen ty\00F6tilan k\00E4ytt\00F6\00F6n.<br/><a href="&LOGOUT_URL.">Kirjaudu uudelleen sis\00E4\00E4n</a> m\00E4\00E4rit\00E4 valtuutettu asiakkaan nimi.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125209761765026245)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4n ty\00F6tilan sovellusten k\00E4ytt\00E4minen Web-osoitteen toimialueen kautta ei ole sallittua turvallisuussyist\00E4.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125231262698026251)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Pyyd\00E4 tietokannan p\00E4\00E4k\00E4ytt\00E4j\00E4\00E4 ajamaan $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125231141833026251)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'fi'
,p_message_text=>'Pakettia SYS.DBMS_LDAP ei ole, tai se on virheellinen.'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125231039413026251)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 LDAP-k\00E4ytt\00E4j\00E4n toimintoa.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125231346581026251)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 LDAP-todennusta.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125232183133026251)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'fi'
,p_message_text=>'Virhe argumentissa p_flow_page proseduurille login_page.'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125231741528026251)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen p_session kohteessa wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125283067535026267)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'fi'
,p_message_text=>unistr('V\00E4\00E4rin muodostettu argumentti kohteelle wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125231843238026251)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4\00E4nkirjaukseen v\00E4litettiin tyhj\00E4 k\00E4ytt\00E4j\00E4nimi.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125218670825026247)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'fi'
,p_message_text=>unistr('Odota <span id="apex_login_throttle_sec">%0</span> sekuntia ja kirjaudu sis\00E4\00E4n uudelleen.')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125219939987026248)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4\00E4nkirjausyritys on estetty.')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125280705980026266)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Todennusta %0 ei l\00F6ydy')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125220439315026248)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'fi'
,p_message_text=>unistr('Suojausryhm\00E4n tunniste on tyhj\00E4.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125231670497026251)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 j\00E4lkitodennusprosessia.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125231408665026251)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 esitodennusprosessia.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125233146648026251)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Avaa Web-osoite samassa selaimessa, jossa aloitit salasanan nollauspyynn\00F6n. Jos napsautat salasanan nollauksen Web-osoitetta ja sinut ohjataan '),
'',
unistr('uudelleen sis\00E4\00E4nkirjaussivulle, aloita salasanan nollaus uudelleen '),
'',
unistr('ja j\00E4t\00E4 selain avoimeksi.')))
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125382987234026298)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'fi'
,p_message_text=>'Salasanan nollauksen Web-osoite'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125209924461026245)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Resurssienhallinnan kuluttajaryhm\00E4n %0 k\00E4ytt\00F6oikeutta ei ole my\00F6nnetty kohteelle %1')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125210015942026245)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'fi'
,p_message_text=>unistr('My\00F6nn\00E4 puuttuvat k\00E4ytt\00F6oikeudet kohteen DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP avulla.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125244685115026255)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 istunnon valvontatoimintoa.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125244717336026255)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 istunnon tarkistustoimintoa.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125244957769026255)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Pyyd\00E4 kohteen %0 j\00E4rjestelm\00E4nvalvojaa konfiguroimaan Oracle Application Server Single Sign-On -ohjelma.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125255301832026258)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen %0 %1 kertakirjauksen palauttamassa merkiss\00E4.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125232087370026251)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'fi'
,p_message_text=>unistr('Muokkaa todennuskaavaa ja lis\00E4\00E4 sovelluksen nimi.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125255002692026258)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen %0-proseduurin yhteydenottaja:'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125255240217026258)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen sovelluksen istunto URLC-merkiss\00E4: %0')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125254838440026258)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe kohteessa portal_sso_redirect: sovelluksen rekister\00F6intitiedot puuttuvat: %0')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125244842977026255)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'fi'
,p_message_text=>'Pakettia WWSEC_SSO_ENABLER_PRIVATE ei ole, tai se on virheellinen.'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125231904515026251)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Todennuskaavasta ei l\00F6ydy rekister\00F6idyn kumppanisovelluksen nime\00E4.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125254975022026258)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'fi'
,p_message_text=>unistr('Rekister\00F6i t\00E4m\00E4 sovellus asennusoppaassa kuvatulla tavalla.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125245088302026255)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 SSO-todennusta.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125358372401026290)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'fi'
,p_message_text=>'Luvaton Web-osoite: %0'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125244424364026255)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 todennusta.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125209850331026245)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6tila %0 ei ole k\00E4yt\00F6ss\00E4. Ota yhteytt\00E4 j\00E4rjestelm\00E4nvalvojaan.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125210574622026245)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'fi'
,p_message_text=>'%0'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125219600533026247)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovelluksen suojaustarkistus esti k\00E4yt\00F6n')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125219789058026247)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sivun suojaustarkistus esti k\00E4yt\00F6n')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125219816653026248)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 valtuutusta.')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125288986446026269)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'fi'
,p_message_text=>unistr('Luotu %0 k\00E4ytt\00E4m\00E4ll\00E4 ohjelmaa %1')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125289015348026269)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'fi'
,p_message_text=>'rakkaudella'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125348846690026287)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Tapahtuman kuvaus'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125348650523026287)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4\00E4ttymisp\00E4iv\00E4')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125348902826026287)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'fi'
,p_message_text=>'Tapahtuman tunnus'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125348568831026287)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'fi'
,p_message_text=>unistr('Alkamisp\00E4iv\00E4')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125348732869026287)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Tapahtuman otsikko'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125191308800026239)
,p_name=>'APEX.CARD'
,p_message_language=>'fi'
,p_message_text=>'Kortti'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125191589129026239)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'fi'
,p_message_text=>'Kortin toiminto'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125232201392026251)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'fi'
,p_message_text=>'Visuaalisesti piilotettu valintaruutu'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125234158192026252)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tarkistussumman sis\00E4lt\00F6virhe')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125234048713026252)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Tarkistussumman muotovirhe'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125303956892026273)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'fi'
,p_message_text=>unistr('Kopioitu leikep\00F6yd\00E4lle.')
,p_is_js_message=>true
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125303439899026273)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 selain ei tue kopiointia painikkeesta tai valikosta. Kokeile k\00E4ytt\00E4m\00E4ll\00E4 n\00E4pp\00E4inyhdistelm\00E4\00E4 Ctrl+C tai komento+C.')
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125289647163026269)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'fi'
,p_message_text=>'Sulje'
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125168082946026232)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'fi'
,p_message_text=>unistr('Koodieditorin sis\00E4lt\00F6 ylitt\00E4\00E4 kohteen enimm\00E4ispituuden (merkkim\00E4\00E4r\00E4: %0, sallittu merkkim\00E4\00E4r\00E4: %1)')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125348184872026287)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'fi'
,p_message_text=>'Kontrasti'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125342651484026285)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'fi'
,p_message_text=>'Nykyinen'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125342574047026285)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'fi'
,p_message_text=>unistr('Alkuper\00E4inen')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125346707688026287)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen #LABEL# on oltava sallittu v\00E4ri. Esimerkki: %0.')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125209173492026244)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 v\00E4rej\00E4')
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125209278590026244)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'fi'
,p_message_text=>unistr('Avaa v\00E4rin valitsin')
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125166343555026232)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'fi'
,p_message_text=>unistr('Alfaliukus\00E4\00E4din, vaakasuuntainen liukus\00E4\00E4din. Siirry yl\00E4- ja alanuolin\00E4pp\00E4imill\00E4.')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125166086041026232)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'fi'
,p_message_text=>unistr('V\00E4rispektri, 4-suuntainen liukus\00E4\00E4din. Siirry yl\00E4- ja alanuolin\00E4pp\00E4imill\00E4.')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125166103262026232)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4vyn liukus\00E4\00E4din, pystysuuntainen liukus\00E4\00E4din. Siirry yl\00E4- ja alanuolin\00E4pp\00E4imill\00E4.')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125342444544026285)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse v\00E4ri')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125342754981026285)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Vaihda v\00E4rimuotoa')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125380669046026297)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'fi'
,p_message_text=>'Arvoluettelo'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125380737833026297)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'fi'
,p_message_text=>'Avaa kohteen %0 luettelo'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125361087037026291)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'fi'
,p_message_text=>'(Valmis)'
,p_is_js_message=>true
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125249931598026256)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'fi'
,p_message_text=>unistr('Ota yhteytt\00E4 sovelluksen j\00E4rjestelm\00E4nvalvojaan.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125265432304026261)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ota yhteys sovelluksen j\00E4rjestelm\00E4nvalvojaan.'),
'Ongelman tiedot ovat saatavilla ohjelmavirheiden korjaustunnisteella %0.'))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125347020747026287)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'fi'
,p_message_text=>'Korjaa virheet ennen tallennusta.'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125192367397026239)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'fi'
,p_message_text=>'%0. Poista painamalla askelpalautinta.'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125290588850026269)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00F6ytyi %0 osumaa')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125172481123026234)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('1 vastine l\00F6ytyi')
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125290476407026269)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'fi'
,p_message_text=>'Ei osumia'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125166891079026232)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'fi'
,p_message_text=>'Muut'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125166755804026232)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'fi'
,p_message_text=>'%0 arvoa valittu'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125361504584026291)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'fi'
,p_message_text=>'Etenemisvaihe'
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125347460316026287)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteessa %0 m\00E4\00E4ritetty\00E4 tiedostoa ei ole kohteessa APEX_APPLICATION_TEMP_FILES.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125335946636026283)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietokannan tietojen nykyinen versio on muuttunut sen j\00E4lkeen, kun k\00E4ytt\00E4j\00E4 k\00E4ynnisti p\00E4ivitysprosessin.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125305023026026274)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'fi'
,p_message_text=>unistr('\00C4l\00E4 lataa')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125351374662026288)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Esik\00E4sittelyvirhe')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125351183727026288)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 rivi')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125364729263026292)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjestys : toiminto')
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125351217021026288)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivit\00E4 rivi')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125179712909026236)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Toiminnot'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125207340110026244)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'fi'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125193431848026240)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen %0 on oltava p\00E4iv\00E4m\00E4\00E4r\00E4n valitsin tai sallittu p\00E4iv\00E4m\00E4\00E4r\00E4, esimerkiksi %1.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125302669186026273)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhjenn\00E4')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125210895242026245)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'fi'
,p_message_text=>'Valmis'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125221880002026248)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen %0 muotoilupeitteess\00E4 %1 on osia, joita ei tueta')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125207062924026244)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'fi'
,p_message_text=>'tunti'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125290952950026269)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Ponnahduskalenteri: %0'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125206874787026244)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'fi'
,p_message_text=>'Viikko'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125206975791026244)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'fi'
,p_message_text=>'Vko'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125207263654026244)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'minuuttia'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125207407341026244)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'fi'
,p_message_text=>'Kuukausi'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125207826472026244)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'fi'
,p_message_text=>'Seuraava kuukausi'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125177474752026235)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'fi'
,p_message_text=>'Kohteen %0 ponnahdusikkuna'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125207739519026244)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'fi'
,p_message_text=>'Edellinen kuukausi'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125300289472026272)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'fi'
,p_message_text=>unistr('Vain luku -p\00E4iv\00E4m\00E4\00E4r\00E4valitsin')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125208664080026244)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse p\00E4iv\00E4m\00E4\00E4r\00E4')
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125177553387026235)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse p\00E4iv\00E4m\00E4\00E4r\00E4 ja aika')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125174741937026234)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse p\00E4iv\00E4')
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125178196691026235)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'fi'
,p_message_text=>'Valitse kuukausi ja vuosi'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125174932781026234)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'fi'
,p_message_text=>'Valitse aika'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125175420973026235)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4n\00E4\00E4n')
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125193061765026240)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen #LABEL# on oltava sallittu p\00E4iv\00E4m\00E4\00E4r\00E4, esimerkiksi %0.')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125192792006026240)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'fi'
,p_message_text=>unistr('Arvon #LABEL# on oltava %0\2013%1.')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125192861849026240)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'fi'
,p_message_text=>'Arvon #LABEL# on oltava aikaisintaan %0.'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125192921219026240)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'fi'
,p_message_text=>unistr('Arvon #LABEL# on oltava viimeist\00E4\00E4n %0.')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125184382764026237)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'fi'
,p_message_text=>'Visuaalisesti piilotettu muokkaus'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125207608766026244)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'fi'
,p_message_text=>'Vuosi'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125294655812026270)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# on suurempi kuin m\00E4\00E4ritetty suurin p\00E4iv\00E4m\00E4\00E4r\00E4 %0.')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125295024144026271)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'fi'
,p_message_text=>'#LABEL# ei vastaa muotoa %0.'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125294524128026270)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('#LABEL# on pienempi kuin m\00E4\00E4ritetty pienin p\00E4iv\00E4m\00E4\00E4r\00E4 %0.')
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125294702707026270)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'fi'
,p_message_text=>'#LABEL# ei ole sallitulla alueella %0 - %1.'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125294916736026271)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'fi'
,p_message_text=>'#LABEL# ei ole sallitulla vuosialueella %0 - %1.'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125186701685026238)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4inen virhe k\00E4sitelt\00E4ess\00E4 DBMS_CLOUD-pyynt\00F6\00E4.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125347334222026287)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'fi'
,p_message_text=>'Peruuta'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125373261704026295)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'fi'
,p_message_text=>'Sulje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125234487722026252)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'fi'
,p_message_text=>'Vahvistus'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125375239153026295)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'fi'
,p_message_text=>'Ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125347176970026287)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'fi'
,p_message_text=>'OK'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125347257673026287)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'fi'
,p_message_text=>'Tallenna'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125214920182026246)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'fi'
,p_message_text=>'Valintaikkunan otsikko'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125254631405026258)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Visuaalisesti piilotettu valintaikkunan otsikko'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125175757891026235)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'fi'
,p_message_text=>'Oraclen asiakirjan luonnin valmis toiminto'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125186553172026238)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virhe tulostettaessa asiakirjaa.'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125163777366026231)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'fi'
,p_message_text=>'%s ei tue kohdetta %1 tulostuksena.'
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125175685964026235)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe %0 k\00E4ynnistett\00E4ess\00E4 Oraclen asiakirjan luonnin valmista toimintoa:')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125167194024026232)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Mallipohja on pakollinen.'
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125192523167026240)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virhe noudettaessa tiedostoa.'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125192449976026239)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Noudettavia tietoja ei l\00F6ydy.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125196032057026241)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 toiminto ei ole k\00E4ytett\00E4viss\00E4 vain ajonaikaisessa ymp\00E4rist\00F6ss\00E4.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125248810510026256)
,p_name=>'APEX.ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virhe'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125208771788026244)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Seuraava virhe havaittiin suoritettaessa virhett\00E4 k\00E4sittelev\00E4\00E4 vastakutsua: %0')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125221386833026248)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virhe maalattaessa virhesivua: %0'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125210459642026245)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4inen virhe')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125360101440026291)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ota yhteys j\00E4rjestelm\00E4nvalvojaan.'),
'Ongelman tiedot ovat saatavilla ohjelmavirheiden korjaustunnisteella %0.'))
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125354769673026289)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'fi'
,p_message_text=>'Tietokanta on avattu vain lukua varten.'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125384819671026298)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'fi'
,p_message_text=>unistr('ORA-28353: Lompakon avaus ep\00E4onnistui. Sovelluksen tiedot eiv\00E4t ole k\00E4ytett\00E4viss\00E4.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125354815158026289)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 sivu ei ole k\00E4ytett\00E4viss\00E4')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125213471013026246)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'fi'
,p_message_text=>unistr('Teknisi\00E4 tietoja (vain kehitt\00E4jien k\00E4ytett\00E4viss\00E4)')
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125319353930026278)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Virhesanoma'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125333237108026282)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Odotettu muoto: %0'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125298122378026272)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4 on jo k\00E4ytt\00F6oikeusluettelossa')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125298098911026271)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>unistr('Vahvista seuraavien %0 k\00E4ytt\00E4j\00E4n lis\00E4\00E4minen k\00E4ytt\00F6oikeusluetteloon <strong>%1</strong>.')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125298565645026272)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4st\00E4 on kaksoiskappale')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125298265705026272)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoitteesta puuttuu at-merkki (@)')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125298395521026272)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoitteesta puuttuu piste (.)')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125298422012026272)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4tunnus on liian pitk\00E4')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125298789544026272)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'fi'
,p_message_text=>unistr('Vain sovelluksen k\00E4ytt\00F6oikeusluettelossa m\00E4\00E4ritetyt k\00E4ytt\00E4j\00E4t voivat k\00E4ytt\00E4\00E4 t\00E4t\00E4 sovellusta')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125298880650026272)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'fi'
,p_message_text=>unistr('Odottamaton k\00E4ytt\00F6oikeusasetuksen arvo: %0')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125298674104026272)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'fi'
,p_message_text=>unistr('Vain todennetut k\00E4ytt\00E4j\00E4t voivat k\00E4ytt\00E4\00E4 t\00E4t\00E4 sovellusta')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125343120820026286)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei k\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125343079279026285)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125343313171026286)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('%0: on poistettu k\00E4yt\00F6st\00E4')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125343207073026286)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('%0: on k\00E4yt\00F6ss\00E4')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125191826934026239)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>'Ei tueta'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125253020942026257)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei k\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125252903071026257)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125342991131026285)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'fi'
,p_message_text=>unistr('ei m\00E4\00E4ritetty')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125183424799026237)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'fi'
,p_message_text=>'%0 tavua'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125183983434026237)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'fi'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125183661366026237)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'fi'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125183829562026237)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'fi'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125336195497026283)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Nouda'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125189299111026239)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Valinnat'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125188917973026238)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Suodatin'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125189194421026239)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'fi'
,p_message_text=>'Piilota taho'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125213810009026246)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 suodatin')
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125290137591026269)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytetty suodatin %0')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125214567759026246)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00E4')
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125333742375026283)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00E4')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125214698699026246)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'fi'
,p_message_text=>'Peruuta'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125198493197026241)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Pylv\00E4skaavio')
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125346483328026287)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'fi'
,p_message_text=>'Muut'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125198569957026241)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ympyr\00E4kaavio')
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125345023675026286)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Kaavio'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125198285239026241)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4r\00E4')
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125334256751026283)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhjenn\00E4')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125334370674026283)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhjenn\00E4 kaikki')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125334457794026283)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhjenn\00E4 %0')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125350965681026288)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarake %1, johon kohdistus %0 viittaa, ei ole k\00E4ytett\00E4viss\00E4, tai se on valtuuttamaton.')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125161610440026231)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse n\00E4ytett\00E4v\00E4t suodattimet')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125288170218026268)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'fi'
,p_message_text=>'%0 tulosta'
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125288292113026268)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'fi'
,p_message_text=>'%0 valittu'
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125291057937026269)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'fi'
,p_message_text=>'Nykyiset suodattimet'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125166626156026232)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohdistettu haku edellytt\00E4\00E4 aluetason tietol\00E4hdett\00E4.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125170310377026233)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'fi'
,p_message_text=>'Suodatinlista'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125349485308026287)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'fi'
,p_message_text=>'Erillisen arvon raja (%0) ylitetty kohdistuksessa %1.'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125335718040026283)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Kohdistusta %0 ei tueta tyypin DATE tai TIMESTAMP sarakkeissa.'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125333827813026283)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'fi'
,p_message_text=>'Suodatin %0'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125208441196026244)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 (K\00E4ytetty suodatin)')
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125333981882026283)
,p_name=>'APEX.FS.GO'
,p_message_language=>'fi'
,p_message_text=>'Suorita'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125203998552026243)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'fi'
,p_message_text=>unistr('sis\00E4lt\00E4\00E4: %0')
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125335399336026283)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'fi'
,p_message_text=>unistr('yht\00E4 suuri kuin%0')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125203690385026243)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'fi'
,p_message_text=>'suurempi kuin %0'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125203764842026243)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'fi'
,p_message_text=>unistr('suurempi tai yht\00E4 suuri kuin %0')
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125203372270026243)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'fi'
,p_message_text=>'alle %0'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125203502206026243)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'fi'
,p_message_text=>unistr('pienempi tai yht\00E4 suuri kuin %0')
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125202876461026243)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'fi'
,p_message_text=>unistr('ei sis\00E4ll\00E4 %0')
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125188653270026238)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'fi'
,p_message_text=>'eri suuri kuin %0'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125202995321026243)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'fi'
,p_message_text=>'alussa ei ole %0'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125203843759026243)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'fi'
,p_message_text=>'alussa on %0'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125201930696026242)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'fi'
,p_message_text=>'Kohdistusvalinta'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125177789092026235)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'fi'
,p_message_text=>'Suodattimen etuliite %0 on virheellinen kohdistukselle %1.'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125176116741026235)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n etuliite puuttuu kohdistukselta %0.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125210389869026245)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'fi'
,p_message_text=>'Operaattori'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125192264179026239)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'fi'
,p_message_text=>unistr('sis\00E4lt\00E4\00E4')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125191229232026239)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'fi'
,p_message_text=>'vastaa'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125191982911026239)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'fi'
,p_message_text=>'suurempi kuin'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125192095355026239)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'fi'
,p_message_text=>unistr('suurempi tai yht\00E4 suuri kuin')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125191667931026239)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'fi'
,p_message_text=>'pienempi kuin'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125191743106026239)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'fi'
,p_message_text=>unistr('pienempi tai yht\00E4 suuri kuin')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125202764406026243)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'fi'
,p_message_text=>unistr('ei sis\00E4ll\00E4')
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125191499069026239)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'fi'
,p_message_text=>'eri suuri kuin'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125202632859026242)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'fi'
,p_message_text=>'ei ala'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125192150977026239)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'fi'
,p_message_text=>'alkaa'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125210710613026245)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietotyyppi\00E4 %0 (%1) ei tueta sy\00F6tt\00F6kent\00E4n kohdistukselle.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125177696372026235)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Suodatinta %0 ei tueta kohdistuksessa %1 (tietotyyppi %2).'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125210257808026245)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'fi'
,p_message_text=>'Arvo'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125335506628026283)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohdistukselle %0 ei ole m\00E4\00E4ritetty hakusarakkeita')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125161759080026231)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 suodattimia')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125288373453026268)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'fi'
,p_message_text=>'Alueen alku'
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125335080399026283)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125335113896026283)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'fi'
,p_message_text=>'Yli %0'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125335250539026283)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'fi'
,p_message_text=>'Alle %0'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125288413919026268)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'fi'
,p_message_text=>'Alueen loppu'
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125353056244026289)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'fi'
,p_message_text=>unistr('Valintalistan kohde #%2 (%1) v\00E4lin kohdistukselle %0 on virheellinen (erotin | puuttuu).')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125335460523026283)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Manuaalista sy\00F6tt\00F6\00E4 v\00E4lin kohdistukseen %0 ei tueta, koska sarake on tyyppi\00E4 DATE tai TIMESTAMP.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125334759430026283)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'fi'
,p_message_text=>'-'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125198381760026241)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'fi'
,p_message_text=>'Poista kaavio'
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125284772967026267)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'fi'
,p_message_text=>'Nollaa'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125334114039026283)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Haku'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125334027634026283)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'fi'
,p_message_text=>'Hae...'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125334973618026283)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'fi'
,p_message_text=>'- Valitse -'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125198163830026241)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kaavio')
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125334532978026283)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 v\00E4hemm\00E4n')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125334648469026283)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kaikki')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125334890811026283)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('V\00E4hint\00E4\00E4n %0 t\00E4hte\00E4')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125290043051026269)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'fi'
,p_message_text=>'Suodatusehdotukset'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125335603640026283)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>unistr('Tekstikent\00E4n kohdistusta %0 tuetaan vain tyypin NUMBER sarakkeissa.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125161187278026230)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivien kokonaism\00E4\00E4r\00E4')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125351091933026288)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietotyyppi\00E4 %0 (%1) ei tueta kohdistetuissa hauissa.')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125281245055026266)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Visuaalisesti piilotettu otsikko'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125343501985026286)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Siirry virheeseen'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125299566590026272)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'fi'
,p_message_text=>'Kooste.'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125227492708026250)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhj\00E4 otsikko')
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125308816829026275)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiivist\00E4 ryhm\00E4katko')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125299602559026272)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4katko.')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125308748327026275)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'fi'
,p_message_text=>unistr('Laajenna ryhm\00E4katko')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125308508172026275)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 rivi\00E4 poistettu')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125377671145026296)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'fi'
,p_message_text=>unistr('Henkil\00F6llisyyden kaksoiskappale')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125170560477026233)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirryt\00E4\00E4n muokkaustilaan')
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125296435811026271)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ensimm\00E4inen')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125169322989026233)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'fi'
,p_message_text=>'Piilota valintaikkuna'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125168344373026232)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Irrallisen ylityssolun sis\00E4lt\00F6')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125169622430026233)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 ylityksen sis\00E4lt\00F6')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125243882779026255)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'fi'
,p_message_text=>'Ruudukon alatunniste'
,p_is_js_message=>true
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125299828993026272)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4n otsikko')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125299783586026272)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'fi'
,p_message_text=>'Otsikko.'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125296506301026271)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125170755744026233)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'fi'
,p_message_text=>'Poistutaan muokkaustilasta'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125195471964026240)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'fi'
,p_message_text=>'Lataa kaikki'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125318305751026278)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 lis\00E4\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125296262573026271)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125299918917026272)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'fi'
,p_message_text=>'Sivun rivit'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125209046565026244)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'fi'
,p_message_text=>'Sivu %0'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125296699072026271)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125296768957026271)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1 / %2'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125353653071026289)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'fi'
,p_message_text=>'Sivun valinta'
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125244154671026255)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'fi'
,p_message_text=>'Sivutus'
,p_is_js_message=>true
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125296356783026271)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125194339538026240)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Alueen n\00E4ytt\00F6')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125227772299026250)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'fi'
,p_message_text=>'Rivien valinta'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125377451732026296)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4tty')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125377582748026296)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'fi'
,p_message_text=>'Muutettu'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125385884616026299)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('Ruudukkorivin j\00E4rjestys %0, sarake %1.')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125385971179026299)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('Ruudukkorivin j\00E4rjestys %0.')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125377370849026296)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'fi'
,p_message_text=>'Poistettu'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125300120894026272)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'fi'
,p_message_text=>'Rivin otsikko'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125227683275026250)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'fi'
,p_message_text=>'Rivin valinta'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125195567159026240)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'fi'
,p_message_text=>'%0 %1 valittu'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125295681653026271)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'fi'
,p_message_text=>'%0 solua valittu'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125296823995026271)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 rivi\00E4 valittu')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125338927011026284)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'fi'
,p_message_text=>'Valitse kaikki'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125232425223026251)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'fi'
,p_message_text=>'Valitse kaikki rivit'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125308620959026275)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'fi'
,p_message_text=>'Sivu %0'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125300088373026272)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'fi'
,p_message_text=>'Valitse rivi'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125300325320026272)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'fi'
,p_message_text=>'Lajiteltu nousevasti %0'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125300461262026272)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'fi'
,p_message_text=>'Lajiteltu laskevasti %0'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125295700508026271)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'fi'
,p_message_text=>unistr('Nouseva j\00E4rjestys')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125296010793026271)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'fi'
,p_message_text=>unistr('Nouseva j\00E4rjestys %0')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125295801502026271)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'fi'
,p_message_text=>unistr('Laskeva j\00E4rjestys')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125296111298026271)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'fi'
,p_message_text=>unistr('Laskeva j\00E4rjestys %0')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125295967540026271)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'fi'
,p_message_text=>unistr('\00C4l\00E4 lajittele')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125161521108026230)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'fi'
,p_message_text=>'Lajitteluvalinnat'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125243900612026255)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'fi'
,p_message_text=>'Tilan kuvakkeet'
,p_is_js_message=>true
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125244079304026255)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'fi'
,p_message_text=>'Ruudukon tila'
,p_is_js_message=>true
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125173860224026234)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'fi'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125173565568026234)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'fi'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125308453884026275)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'fi'
,p_message_text=>unistr('Yhteens\00E4 %0')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125227220520026250)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('HTTP-pyynt\00F6 kohteelle %0 ep\00E4onnistui.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125228833201026250)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Sarake %0'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125229020259026250)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'fi'
,p_message_text=>'Sarake %0 ja rivi %1'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125229329989026250)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('On jo ensimm\00E4isess\00E4 sarakkeessa. Sarake %0 ja rivi %1')
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125229284826026250)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'fi'
,p_message_text=>unistr('On jo ensimm\00E4isell\00E4 rivill\00E4. Sarake %0 ja rivi %1')
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125374884903026295)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'fi'
,p_message_text=>unistr('Esitetty %0 sarakkeessa ja %1 riviss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125229466539026250)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('On jo viimeisess\00E4 sarakkeessa. Sarake %0 ja rivi %1')
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125229135338026250)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'fi'
,p_message_text=>unistr('On jo viimeisell\00E4 rivill\00E4. Sarake %0 ja rivi %1')
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125308324036026275)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'fi'
,p_message_text=>unistr('Esitetty %0 riviss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125228934527026250)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'fi'
,p_message_text=>'Rivi %0'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125385682607026299)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Interaktiivinen ruudukko %0'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125292713068026270)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Toiminnot'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125293751125026270)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125293675054026270)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 rivi')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125379284875026297)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'fi'
,p_message_text=>'Kooste'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125364899215026292)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'fi'
,p_message_text=>'Kooste'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125366519262026293)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'fi'
,p_message_text=>'Kaikki'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125324135955026280)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Kaikki tekstisarakkeet'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125325310921026280)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'fi'
,p_message_text=>'Vaihtoehtoinen'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125326482168026280)
,p_name=>'APEX.IG.AND'
,p_message_language=>'fi'
,p_message_text=>'ja'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125345842354026286)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'fi'
,p_message_text=>'Laske erillisten keskiarvo'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125380299812026297)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Erillisten summittainen kokonaism\00E4\00E4r\00E4')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125363451345026292)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'fi'
,p_message_text=>'Alue'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125365340603026292)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'fi'
,p_message_text=>'Nouseva'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125325497164026280)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'fi'
,p_message_text=>'Valtuutus'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125379365023026297)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'fi'
,p_message_text=>'Automaattinen'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125346270336026286)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'fi'
,p_message_text=>'Keskiarvo'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125379939729026297)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'fi'
,p_message_text=>'Kokonaiskeskiarvo'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125362923224026292)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Nimen akselin otsikko'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125363119496026292)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'fi'
,p_message_text=>unistr('Desimaalien m\00E4\00E4r\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125363055021026292)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Arvon akselin otsikko'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125369149660026293)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Taustav\00E4ri')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125363581316026292)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Pylv\00E4s')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125320713723026279)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'fi'
,p_message_text=>unistr('v\00E4lill\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125370309370026294)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'fi'
,p_message_text=>'Molemmat'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125363673838026292)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'fi'
,p_message_text=>'Kupla'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125293991519026270)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'fi'
,p_message_text=>'Peruuta'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125326339442026280)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'fi'
,p_message_text=>'Kirjainkoosta riippuva'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125380895983026297)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'fi'
,p_message_text=>'(Kirjainkoosta riippuva)'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125352199424026288)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'fi'
,p_message_text=>'Muutokset tallennettu'
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125294371756026270)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Vaihda n\00E4kym\00E4')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125327418731026281)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'fi'
,p_message_text=>'Kaavio'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125323970433026280)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Kysely ylitt\00E4\00E4 kaaviokohtaisen arvopisteiden maksimim\00E4\00E4r\00E4n %0. Pienenn\00E4 peruskyselyn tietuem\00E4\00E4r\00E4\00E4 k\00E4ytt\00E4m\00E4ll\00E4 suodatinta.')
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125292661394026270)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Kaavion\00E4kym\00E4')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125301050800026272)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhjenn\00E4')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125362439898026291)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Sulje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125369398441026293)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'fi'
,p_message_text=>unistr('V\00E4rit')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125346673109026287)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'fi'
,p_message_text=>'Esikatselu'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125325736263026280)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Sarake'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125292884125026270)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeet'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125254700845026258)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Saraketoiminnot'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125254531486026258)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'fi'
,p_message_text=>'Toiminnot sarakkeelle %0'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125371134317026294)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeen tarkoitus'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125325857770026280)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'fi'
,p_message_text=>'Monimutkainen'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125293062948026270)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'fi'
,p_message_text=>'Laske'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125321381271026279)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'fi'
,p_message_text=>unistr('sis\00E4lt\00E4\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125327660111026281)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4katko')
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125300829161026272)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'fi'
,p_message_text=>unistr('Kopioi leikep\00F6yd\00E4lle')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125300902468026272)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'fi'
,p_message_text=>'Kopiointi'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125345638020026286)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'fi'
,p_message_text=>'Laske'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125345751525026286)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'fi'
,p_message_text=>'Laske erilliset'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125380146068026297)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Erillisten kokonaism\00E4\00E4r\00E4')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125380010832026297)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Kokonaism\00E4\00E4r\00E4')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125377744764026296)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'fi'
,p_message_text=>'Luo %0'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125324386638026280)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'fi'
,p_message_text=>'Tiedot'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125370996993026294)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Tietotyyppi'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125370540145026294)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4iv\00E4m\00E4\00E4r\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125351951760026288)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen p\00E4iv\00E4m\00E4\00E4r\00E4n arvo')
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125322097460026279)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('p\00E4iv\00E4\00E4')
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125325086839026280)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'Oletusasetukset'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125324835923026280)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Oletustyyppi'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125293856528026270)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125372098205026294)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>unistr('Haluatko varmasti poistaa t\00E4m\00E4n raportin?')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125329491769026281)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'fi'
,p_message_text=>'Poista rivi'
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125328227363026281)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'fi'
,p_message_text=>'Poista rivit'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125365456686026292)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'fi'
,p_message_text=>'Laskeva'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125327156623026280)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'fi'
,p_message_text=>'Tiedot'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125292355583026270)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Tieton\00E4kym\00E4')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125354445315026289)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'fi'
,p_message_text=>'Suunta'
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125326849484026280)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei k\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125321467554026279)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'fi'
,p_message_text=>unistr('ei sis\00E4ll\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125321628300026279)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'fi'
,p_message_text=>'ei ala'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125363755367026292)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'fi'
,p_message_text=>'Rengas'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125327895489026281)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'fi'
,p_message_text=>'Nouda'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125218137938026247)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'fi'
,p_message_text=>'Vain tiedot'
,p_is_js_message=>true
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125373016323026295)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Valitse muoto'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125233243734026251)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('Noutomuoto %0 ei ole k\00E4yt\00F6ss\00E4.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125366163116026293)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'fi'
,p_message_text=>'Koosteen kaksoiskappale'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125366203378026293)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4katkon kaksoiskappale')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125329385592026281)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'fi'
,p_message_text=>'Toistuva rivi'
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125328116767026281)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'fi'
,p_message_text=>'Kopioi rivit'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125293425552026270)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125365243263026292)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa kaaviota'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125245761200026255)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa kohdetta %0'
,p_is_js_message=>true
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125376617665026296)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4n muokkausperuste')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125283849561026267)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'fi'
,p_message_text=>'%0 muokkaustilassa'
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125259414888026259)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Ruudukko on muokkaustilassa, vaihda katselutilaan poistamalla valinta'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125372652184026294)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'fi'
,p_message_text=>'Piilokopio (bcc)'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125372874062026295)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'fi'
,p_message_text=>'Viesti'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125372579944026294)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'fi'
,p_message_text=>'Kopio (cc)'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125372248500026294)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiviesti on l\00E4hetetty.')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125372761082026294)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'fi'
,p_message_text=>'Aihe'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125372433792026294)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'fi'
,p_message_text=>'Vastaanottaja (to)'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125326562609026280)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125319757739026278)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'fi'
,p_message_text=>'vastaa'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125326657808026280)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'fi'
,p_message_text=>'Lauseke'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125371672097026294)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Tyyppi'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125338829350026284)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'fi'
,p_message_text=>'Tiedosto valmisteltu. Aloitetaan nouto.'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125301163956026272)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4yt\00E4')
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125303367610026273)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4yt\00E4 valintaan')
,p_is_js_message=>true
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125303288030026273)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4yt\00E4 valinta')
,p_is_js_message=>true
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125292954900026270)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'fi'
,p_message_text=>'Suodatin'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125325985568026280)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'fi'
,p_message_text=>'Suodattimet'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125379692673026297)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'fi'
,p_message_text=>'Suodata...'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125365627154026292)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'fi'
,p_message_text=>unistr('Ensimm\00E4inen')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125293189293026270)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125324456580026280)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Muotoilu'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125370277995026294)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'fi'
,p_message_text=>'Muotomaski'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125371928383026294)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'fi'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125371892490026294)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'fi'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125282948671026267)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'fi'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125216882074026247)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'fi'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125329049939026281)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'fi'
,p_message_text=>'Lukitse'
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125326729611026280)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'fi'
,p_message_text=>'Funktiot ja operaattorit'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125363847825026292)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'fi'
,p_message_text=>'Suppilo'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125345559720026286)
,p_name=>'APEX.IG.GO'
,p_message_language=>'fi'
,p_message_text=>'Suorita'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125320303584026278)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'fi'
,p_message_text=>'suurempi kuin'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125320424646026278)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'fi'
,p_message_text=>unistr('suurempi tai yht\00E4 suuri kuin')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125327045208026280)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'fi'
,p_message_text=>'Ruudukko'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125292187920026270)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Ruudukkon\00E4kym\00E4')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125366476106026293)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125327227146026281)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>'Ryhmittely'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125292494435026270)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittelyn\00E4kym\00E4')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125370854012026294)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Ehtotyyppi'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125369794001026294)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'fi'
,p_message_text=>'Otsikko'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125369954783026294)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'fi'
,p_message_text=>'Otsikon kohdistus'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125379525776026297)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'fi'
,p_message_text=>'Ohje'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125375089529026295)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Voit lis\00E4t\00E4, p\00E4ivitt\00E4\00E4 ja poistaa tietoja suoraan t\00E4ss\00E4 interaktiivisessa ruudukossa.</p>'),
'',
unistr('<p>Lis\00E4\00E4 uusi rivi napsauttamalla Lis\00E4\00E4 rivi -painiketta.</p>'),
'',
unistr('<p>Voit muokata nykyisi\00E4 tietoja kaksoisnapsauttamalla valittua solua. Jos haluat tehd\00E4 suurempia muokkauksia, vaihda muokkaustilaan valitsemalla Muokkaa. Muokkaustilassa voit muokata valitsemiasi soluja yhdell\00E4 napsautuksella tai n\00E4pp\00E4imist\00F6n avulla')
||'.</p>',
'',
unistr('<p>Muutosvalikossa voit kopioida ja poistaa rivej\00E4. Avaa muutosvalikko valitsemalla yhden tai useamman rivin valintaruutu.</p>'),
'',
'<p>Voit kopioida valitun rivin napsauttamalla muutosvalikkoa ja valitsemalla Kopioi rivit. Voit poistaa valitun rivin napsauttamalla muutosvalikkoa ja valitsemalla Poista rivi.</p>'))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125377117681026296)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Muokkauksen ominaisuudet'
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125377219900026296)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Interaktiivinen ruudukko n\00E4ytt\00E4\00E4 tietojoukon raporttina, johon voit tehd\00E4 hakuja ja jota voit mukauttaa. Voit rajoittaa palautettavien tietueiden m\00E4\00E4r\00E4\00E4 useilla eri toiminnoilla ja muuttaa tietojen n\00E4ytt\00F6tapaa.</p>'),
'',
unistr('<p>Hakukent\00E4n avulla voit suodattaa palautettavia tietueita. Valitsemalla Toiminnot voit muokata raportin asettelua eri toiminnoilla. Sarakeotsikoiden valikoissa voit m\00E4\00E4ritt\00E4\00E4 n\00E4ytettyj\00E4 sarakkeita.</p>'),
'',
unistr('<p>Raporttiasetuksissa voit tallentaa raporttiin tekem\00E4si mukautukset. Voit my\00F6s ladata raportin tiedot ulkoiseen tiedostoon tai l\00E4hett\00E4\00E4 ne s\00E4hk\00F6postilla itsellesi tai muille.</p>'),
'',
unistr('<p>Lis\00E4tietoja on <em>Oracle APEX End User''s Guide</em> -oppaan kohdassa Interaktiivisten ruudukkojen k\00E4ytt\00F6.')))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125376942732026296)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Yleiskatsaus'
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125374938416026295)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Voit mukauttaa interaktiivisen ruudukon valmiiden ominaisuuksien avulla ja esitt\00E4\00E4 tietoja useilla eri tavoilla.</p>'),
'',
unistr('<p>Sarakeotsikoiden valikoissa tai Toiminnot-valikossa voit m\00E4\00E4ritt\00E4\00E4 n\00E4ytett\00E4v\00E4t sarakkeet ja niiden j\00E4rjestyksen sek\00E4 lukita sarakkeita. Voit my\00F6s m\00E4\00E4ritt\00E4\00E4 erilaisia tietosuodattimia ja lajitella palautettavia tietoja.</p>'),
'',
unistr('<p>N\00E4kym\00E4-painikkeella (hakukent\00E4n vieress\00E4) saat n\00E4kyviin muita, sovelluksen kehitt\00E4j\00E4n mahdollisesti m\00E4\00E4ritt\00E4mi\00E4 tieton\00E4kymi\00E4. Voit my\00F6s luoda kaavion tai tarkastella olemassa olevaa kaaviota.</p>  '),
'',
unistr('<p><em>Huomautus: napsauttamalla <strong>Ohje</strong>-kohtaa interaktiivisen ruudukon valintaikkunoissa saat n\00E4kyviin lis\00E4tietoja valitusta toiminnosta .</em></p>')))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125377073205026296)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Raportoinnin ominaisuudet'
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125328085229026281)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Interaktiivisen ruudukon ohje'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125373899389026295)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit koostaa sarakkeita. Koosteet n\00E4ytet\00E4\00E4n tietojen lopussa tai kunkin ryhm\00E4katkon lopussa, jos ryhm\00E4katkoja on m\00E4\00E4ritetty.</p>'),
'',
'<p><strong>Koostelista</strong><br>',
unistr('Koostelistassa n\00E4ytet\00E4\00E4n m\00E4\00E4ritetyt koosteet. Poista kooste k\00E4yt\00F6st\00E4 poistamalla sen valinta.<br>'),
unistr('Luo uusi kooste valitsemalla Lis\00E4\00E4 ( &plus; ) tai poista kooste valitsemalla Poista ( &minus; ).</p>'),
'',
'<p><strong>Koosteasetukset</strong><br>',
unistr('M\00E4\00E4rit\00E4 kooste oikealla olevassa n\00E4yt\00F6ss\00E4.<br>'),
'Valitse sarakkeen nimi ja koosteen tyyppi.<br>',
unistr('Halutessasi voit my\00F6s lis\00E4t\00E4 koosteeseen ty\00F6kaluvihjeen.<br>'),
unistr('Jos olet m\00E4\00E4ritt\00E4nyt ryhm\00E4katkon, vaihtoehto <strong>N\00E4yt\00E4 kokonaisarvo</strong> n\00E4ytt\00E4\00E4 kokonaiskeskiarvon, kokonaism\00E4\00E4r\00E4n tai vastaavan arvon tietojen lopussa.</p>'),
'',
'<p><em>Huomautus: voit avata Kooste-valintaikkunan Toiminnot-valikosta tai napsauttamalla sarakeotsikkoa ja summaa ( &sum; ).</em></p>'))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125376065551026296)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Koosteiden ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125374560583026295)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit m\00E4\00E4ritt\00E4\00E4 kaavion, joka n\00E4ytet\00E4\00E4n erillisen\00E4 tieton\00E4kym\00E4n\00E4.<br>'),
unistr('Valitse kaavion tyyppi ja m\00E4\00E4ritteet.</p>'),
unistr('<p><strong>Kaavion m\00E4\00E4ritteet</strong><br>'),
unistr('K\00E4ytett\00E4viss\00E4 olevat kaavion m\00E4\00E4ritteet vaihtelevat kaavion tyypin mukaan.</p>'),
'<p>',
'<ul>',
unistr('  <li>Valitse sarake, jossa on m\00E4\00E4ritteen arvo:'),
'    <ul>',
'      <li>Nimi - kunkin arvopisteen teksti.</li>',
unistr('      <li>Arvo - esitett\00E4v\00E4t tiedot.</li>'),
unistr('      <li>Sarja - usean sarjan dynaamisen kyselyn m\00E4\00E4rityst\00E4 varten.</li>'),
unistr('      <li>Avaus - p\00F6rssin p\00E4ivitt\00E4inen avaushinta (vain p\00F6rssi).</li>'),
unistr('      <li>P\00E4\00E4t\00F6s - p\00F6rssin p\00E4ivitt\00E4inen p\00E4\00E4t\00F6shinta (vain p\00F6rssi).</li>'),
unistr('      <li>Suurin - suurin arvo (vain v\00E4li ja p\00F6rssi).</li>'),
unistr('      <li>Pienin - pienin arvo (vain v\00E4li ja p\00F6rssi).</li>'),
unistr('      <li>M\00E4\00E4r\00E4 - p\00E4ivitt\00E4inen osakem\00E4\00E4r\00E4 (vain p\00F6rssi).</li>'),
'      <li>Kohde - Kohdearvo (vain suppilo).</li>',
'      <li>X - x-akselin arvo (vain kupla- ja piste).</li>',
'      <li>Y - y-akseli (vain kupla- ja piste).</li>',
unistr('      <li>Z - pylv\00E4\00E4n leveys tai kuplan s\00E4de (vain pylv\00E4s-, kupla- ja v\00E4li).</li>'),
'    </ul>',
'  </li>',
'  <li>Suunta - pysty- tai vaakasuunta.</li>',
'  <li>Kooste - valitse, miten kaavion arvot koostetaan.</li>',
'  <li>Pino - valitse, pinotaanko tietokohteet.</li>',
'  <li>Lajitteluperuste - lajittele nimen vai arvojen perusteella.',
'    <ul>',
unistr('      <li>J\00E4rjestys - lajittele arvot nousevassa tai laskevassa j\00E4rjestyksess\00E4.</li>'),
unistr('      <li>Tyhj\00E4t - m\00E4\00E4rit\00E4, miten tyhji\00E4 arvoja sis\00E4lt\00E4v\00E4t tietueet lajitellaan suhteessa muihin tietueisiin.</li>'),
'    </ul>',
'  </li>',
'  <li>Desimaalit</li>',
'  <li>Nimen akselin otsikko</li>',
'  <li>Arvon akselin otsikko</li>',
'</ul>',
'</p>'))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125376463980026296)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Kaavioiden ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125373507977026295)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit valita n\00E4ytett\00E4v\00E4t sarakkeet ja niiden j\00E4rjestyksen.</p>'),
'',
'<p>Piilota sarake poistamalla sen valinta.<br>',
unistr('J\00E4rjest\00E4 sarakkeet uudelleen valitsemalla Siirr\00E4 yl\00F6s ( &uarr; ) tai Siirr\00E4 alas ( &darr; ).<br>'),
unistr('Avattavalla valitsimella voit valita kaikki sarakkeet, n\00E4ytetyt sarakkeet tai ei n\00E4ytetyt sarakkeet.</p>'),
'',
unistr('<p>N\00E4yt\00F6n avulla voit halutessasi m\00E4\00E4ritt\00E4\00E4 sarakkeiden v\00E4himm\00E4isleveyden kuvapistein\00E4.</p>'),
'',
unistr('<p><em>Huomautus: Voit my\00F6s j\00E4rjest\00E4\00E4 n\00E4ytettyj\00E4 sarakkeita uudelleen napsauttamalla vetokahvaa (sarakeotsikon edell\00E4) ja vet\00E4m\00E4ll\00E4 saraketta vasemmalle tai oikealle. Voit my\00F6s muuttaa n\00E4ytettyjen sarakkeiden leveytt\00E4 napsauttamalla otsikoiden v\00E4liss')
||unistr('\00E4 olevaa sarakkeiden erotinta ja siirt\00E4m\00E4ll\00E4 sit\00E4 vasemmalle tai oikealle.</em></p>')))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125376330822026296)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeiden ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125373986053026295)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit m\00E4\00E4ritt\00E4\00E4 lis\00E4sarakkeita olemassa oleviin sarakkeisiin tehtyjen matemaattisten laskelmien tai funktiolaskelmien perusteella.</p>'),
'',
'<p><strong>Laskentalista</strong><br>',
unistr('Laskentalista n\00E4ytt\00E4\00E4 m\00E4\00E4ritetyt laskennat. Poista laskenta k\00E4yt\00F6st\00E4 poistamalla sen valinta.<br>'),
unistr('Luo uusi laskenta valitsemalla Lis\00E4\00E4 ( &plus; ) tai poista laskenta valitsemalla Poista ( &minus; ).</p>'),
'',
'<p><strong>Laskenta-asetukset</strong><br>',
unistr('N\00E4yt\00F6n avulla voit m\00E4\00E4ritt\00E4\00E4 laskennan.<br>'),
unistr('Sy\00F6t\00E4 sarakkeen tiedot, kuten otsikko tai nimi, ja valitse kohdistusasetukset.<br> '),
unistr('Sy\00F6t\00E4 laskennan sarake tai sarakkeet sek\00E4 liittyv\00E4t funktiot Lauseke-tekstialueelle.<br>'),
unistr('Valitse uuden sarakkeen tietotyyppi ja halutessasi muotom\00E4\00E4ritys.</p>')))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125375924204026295)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Laskennan ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125374282035026295)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit m\00E4\00E4ritt\00E4\00E4 ryhm\00E4katkon yhteen tai useampaan sarakkeeseen.</p>'),
'',
unistr('<p><strong>Ryhm\00E4katkolista</strong><br>'),
unistr('Ryhm\00E4katkolista n\00E4ytt\00E4\00E4 m\00E4\00E4ritetyt ryhm\00E4katkot. Poista ryhm\00E4katko k\00E4yt\00F6st\00E4 poistamalla sen valinta.<br>'),
unistr('Lis\00E4\00E4 ryhm\00E4katkoon uusi sarake valitsemalla Lis\00E4\00E4 ( &plus; ) tai poista sarake ryhm\00E4katkosta valitsemalla Poista ( &minus; ).<br>'),
unistr('Voit muuttaa sarakkeiden j\00E4rjestyst\00E4 siirt\00E4m\00E4ll\00E4 valittua saraketta muiden sarakkeiden yl\00E4- tai alapuolelle valitsemalla Siirr\00E4 yl\00F6s ( &uarr; ) tai Siirr\00E4 alas ( &darr; ).</p>'),
'',
unistr('<p><strong>Ryhm\00E4katkoasetukset</strong><br>'),
unistr('N\00E4yt\00F6n avulla voit m\00E4\00E4ritt\00E4\00E4 ryhm\00E4katkosarakkeen.<br>'),
unistr('Valitse ryhm\00E4katkosarake, lajittelusuunta ja tyhjien sarakkeiden (sarakkeet, joissa ei ole arvoa) j\00E4rjestys.</p>'),
'',
unistr('<p><em>Huomautus: interaktiivista ruudukkoa tarkastellessasi voit m\00E4\00E4ritt\00E4\00E4 ryhm\00E4katkon napsauttamalla sarakeotsikkoa ja ryhm\00E4katkokuvaketta.</em></p>')))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125375669471026295)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4katkojen ohje')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125374444580026295)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit ladata kaikki nykyiset rivit ulkoiseen tiedostoon. Tiedosto sis\00E4lt\00E4\00E4 vain nykyiset n\00E4ytetyt sarakkeet ja k\00E4yt\00F6ss\00E4 olevien suodattimien ja lajittelujen mukaiset tiedot.</p>'),
'',
'<p>Valitse tiedostomuoto ja valitse Lataa.<br>',
unistr('Huomautus: CSV-tiedosto ei sis\00E4ll\00E4 tekstimuotoiluja, kuten koosteita ja ryhm\00E4katkoja.</p>'),
'',
unistr('<p>Voit l\00E4hett\00E4\00E4 tiedoston s\00E4hk\00F6postilla valitsemalla L\00E4het\00E4 s\00E4hk\00F6postiviestin\00E4 ja sy\00F6tt\00E4m\00E4ll\00E4 tarvittavat tiedot (vastaanottaja, aihe ja viesti).</p>')))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125375431627026295)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Noutoa koskeva ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125373699085026295)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit konfiguroida tietojen suodattimia, jotka rajoittavat palautettavien rivien m\00E4\00E4r\00E4\00E4.</p>'),
'',
'<p><strong>Suodatinlista</strong><br>',
unistr('Suodatinlistassa n\00E4kyv\00E4t m\00E4\00E4ritetyt suodattimet. Poista suodatin k\00E4yt\00F6st\00E4 poistamalla sen valinta.<br>'),
unistr('Luo uusi suodatin valitsemalla Lis\00E4\00E4 ( &plus; ) tai poista suodatin valitsemalla Poista ( &minus; ).</p>'),
'',
'<p><strong>Suodatinasetukset</strong><br>',
unistr('N\00E4yt\00F6n avulla voit m\00E4\00E4ritt\00E4\00E4 suodattimen ominaisuudet.<br>'),
'Valitse haluamasi suodatintyyppi:<br>',
unistr('&nbsp;&nbsp;&nbsp;Rivi - suodata k\00E4ytt\00E4en hakuehtoa miss\00E4 tahansa suodatettavassa sarakkeessa.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Sarake - suodata tietyss\00E4 sarakkeessa k\00E4ytt\00E4en m\00E4\00E4ritetty\00E4 operaattoria ja arvoa.</p>'),
'',
unistr('<p><em>Huomautus: Interaktiivista ruudukkoa tarkastellessasi voit m\00E4\00E4ritt\00E4\00E4 rivisuodattimia kirjoittamalla suoraan hakukentt\00E4\00E4n. Voit rajoittaa haun tiettyyn sarakkeeseen valitsemalla Valitse etsitt\00E4v\00E4t sarakkeet. Voit my\00F6s avata sarakeotsikon valiko')
||'n ja luoda sarakesuodattimen valitsemalla arvon.</em></p>'))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125376207964026296)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Suodattimien ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125374043912026295)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit tarkastella tietoja sellaisina kuin ne olivat aiempana ajankohtana.</p>'),
unistr('<p>Suorita flashback-kysely sy\00F6tt\00E4m\00E4ll\00E4 minuuttim\00E4\00E4r\00E4 ajassa taaksep\00E4in.</p>')))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125375896818026295)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Flashback-ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125376500731026296)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Ryhmittelyn ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125374188701026295)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit korostaa tietorivej\00E4 tai -sarakkeita sy\00F6tetyn ehdon perusteella.</p>'),
'',
'<p><strong>Korostuslista</strong><br>',
unistr('Korostuslista n\00E4ytt\00E4\00E4 m\00E4\00E4ritetyt korostukset. Poista korostus k\00E4yt\00F6st\00E4 poistamalla sen valinta.<br>'),
unistr('Luo uusi korostus valitsemalla Lis\00E4\00E4 ( &plus; ) tai poista korostus valitsemalla Poista ( &minus; ).</p>'),
'',
'<p><strong>Korostusasetukset</strong><br>',
unistr('N\00E4yt\00F6n avulla voit m\00E4\00E4ritt\00E4 korostuksen ominaisuudet.<br>'),
unistr('Sy\00F6t\00E4 nimi, valitse rivi tai sarake ja valitse taustan ja tekstin HTML-v\00E4rikoodit.<br>'),
unistr('Korosta m\00E4\00E4ritetyt tiedot valitsemalla haluamasi <strong>Ehtotyyppi</strong>:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Rivi - korosta ehto miss\00E4 tahansa sarakkeessa.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Sarake - korosta tietyss\00E4 sarakkeessa m\00E4\00E4ritetyn operaattorin ja arvon perusteella.</p>')))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125375759688026295)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Korostusten ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125374397100026295)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit tallentaa nykyisen ruudukon asetteluun ja m\00E4\00E4rityksiin tekem\00E4si muutokset.<br>'),
unistr('Sovelluskehitt\00E4j\00E4t voivat m\00E4\00E4ritt\00E4\00E4 useita vaihtoehtoisia raporttiasetteluja. Jos sallittua, k\00E4ytt\00E4j\00E4n\00E4 voit tallentaa raportin julkisena, jolloin se on kaikkien ruudukon k\00E4ytt\00E4jien k\00E4ytett\00E4viss\00E4. Voit my\00F6s tallentaa raportin yksityisen\00E4, jolloin vai')
||unistr('n sin\00E4 voit tarkastella sit\00E4.</p>'),
unistr('<p>Valitse raportin tyyppi k\00E4ytett\00E4viss\00E4 olevista tyypeist\00E4 ja anna tallennettavalle raportille nimi.</p>')))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125375532333026295)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Raporttien ohje',
''))
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125373789202026295)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 valintaikkunassa voit m\00E4\00E4ritt\00E4\00E4 n\00E4ytt\00F6j\00E4rjestyksen.</p>'),
'',
'<p><strong>Lajittelulista</strong><br>',
unistr('Lajittelu-valintaikkunassa n\00E4ytet\00E4\00E4n konfiguroitujen lajittelus\00E4\00E4nt\00F6jen lista.<br>'),
unistr('Luo lajittelusarake valitsemalla Lis\00E4\00E4 ( &plus; ) tai poista lajittelusarake valitsemalla Poista ( &minus; ).<br>'),
unistr('Voit siirt\00E4\00E4 valittua lajittelusaraketta muiden sarakkeiden yl\00E4- tai alapuolelle valitsemalla Siirr\00E4 yl\00F6s ( &uarr; ) tai Siirr\00E4 alas ( &darr; ).</p>'),
'',
'<p><strong>Lajitteluasetukset</strong><br>',
unistr('Valitse lajittelusarake, lajittelusuunta ja tyhjien sarakkeiden (sarakkeet, joissa ei ole arvoa) j\00E4rjestys.</p>'),
'',
unistr('<p><em>Huomautus: Tietoja voi lajitella sellaisten sarakkeiden mukaan, joita ei n\00E4ytet\00E4. Kaikki sarakkeet eiv\00E4t kuitenkaan aina ole lajiteltavissa.</em><br>'),
unistr('<em>N\00E4ytettyjen sarakkeiden j\00E4rjestyst\00E4 voi muuttaa sarakeotsikoiden j\00E4ljess\00E4 olevilla yl\00E4- ja alanuolilla (nouseva/laskeva). Voit lis\00E4t\00E4 my\00F6hemm\00E4n sarakkeen olemassa olevaan lajitteluun pit\00E4m\00E4ll\00E4 vaihton\00E4pp\00E4imen painettuna ja napsauttamalla yl\00E4- tai')
||' alanuolta.</em></p>'))
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125376177683026296)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Lajittelun ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125375381360026295)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Tilauksen ohje'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125328998415026281)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'fi'
,p_message_text=>'Piilota'
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125293395949026270)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>'Korostus'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125362596325026291)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Korkea'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125363335182026292)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'fi'
,p_message_text=>'Vaaka'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125321971286026279)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'fi'
,p_message_text=>'tuntia'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125326956249026280)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'fi'
,p_message_text=>'Kuvake'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125292298442026270)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Kuvaken\00E4kym\00E4')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125320173357026278)
,p_name=>'APEX.IG.IN'
,p_message_language=>'fi'
,p_message_text=>unistr('sis\00E4ltyy')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125328592788026281)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'fi'
,p_message_text=>'Ei-aktiivinen asetus'
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125328699623026281)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'Ei-aktiiviset asetukset'
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125336272305026283)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4inen virhe k\00E4sitelt\00E4ess\00E4 interaktiivisen ruudukon pyynt\00F6\00E4.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125224103578026249)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarakkeen suodatintyyppi\00E4 %0 ei tueta sarakkeessa %1.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125375195678026295)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen p\00E4iv\00E4m\00E4\00E4r\00E4n muoto')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125349961678026288)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Interaktiivinen ruudukko ei tue suodattimen m\00E4\00E4rityst\00E4 sarakkeelle %0.')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125349865844026288)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole sallittu suodatintyyppi interaktiivisen ruudukon suodattimen m\00E4\00E4ritykseen.')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125230777554026251)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen numeron muoto'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125377860629026296)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen asetus'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125377908987026296)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'Virheelliset asetukset'
,p_is_js_message=>true
,p_version_scn=>2692672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125369036048026293)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'fi'
,p_message_text=>unistr('Lajitteluperusteeksi on m\00E4\00E4ritetty %0, mutta kohteelle %0 ei ole valittu yht\00E4\00E4n saraketta.')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125366337056026293)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen arvo'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125361426543026291)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei n\00E4ytet\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125320951823026279)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('edellisess\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125321148683026279)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'fi'
,p_message_text=>'seuraavana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125320020705026278)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('ei ole tyhj\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125319943872026278)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('on tyhj\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125369866487026294)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'fi'
,p_message_text=>'Nimi'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125361804585026291)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Nimi'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125365737891026292)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125310220369026275)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Viime p\00E4iv\00E4')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125310406527026275)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen tunti'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125310981830026275)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'fi'
,p_message_text=>'Edellinen minuutti'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125309958140026275)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'fi'
,p_message_text=>'Edellinen kuukausi'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125310055315026275)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'fi'
,p_message_text=>'Edellinen viikko'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125310178969026275)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('Edelliset %0 p\00E4iv\00E4\00E4')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125310331407026275)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'fi'
,p_message_text=>'Edelliset %0 tuntia'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125311027337026276)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'fi'
,p_message_text=>'Edelliset %0 minuuttia'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125310832426026275)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'fi'
,p_message_text=>'Edelliset %0 kuukautta'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125310731016026275)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'fi'
,p_message_text=>'Edelliset %0 viikkoa'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125309728923026275)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'fi'
,p_message_text=>'Edelliset %0 vuotta'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125309861179026275)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'fi'
,p_message_text=>'Edellinen vuosi'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125370084983026294)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'fi'
,p_message_text=>'Solun kohdistus'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125370161826026294)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4n k\00E4ytt\00F6')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125320559301026278)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'fi'
,p_message_text=>'pienempi kuin'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125320687626026278)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'fi'
,p_message_text=>unistr('pienempi tai yht\00E4 suuri kuin')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125363913577026292)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'fi'
,p_message_text=>'Viiva'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125364086983026292)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'fi'
,p_message_text=>'Viiva ja alue'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125370449276026294)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'fi'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125362645309026291)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Matala'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125372965142026295)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'fi'
,p_message_text=>'Erota osoitteet toisistaan pilkulla'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125321752794026279)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'fi'
,p_message_text=>unistr('vastaa s\00E4\00E4nn\00F6llist\00E4 lauseketta')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125346103371026286)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'fi'
,p_message_text=>'Maksimi'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125380459408026297)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'fi'
,p_message_text=>'Kokonaismaksimi'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125346315377026287)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'fi'
,p_message_text=>'Mediaani'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125380589512026297)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'fi'
,p_message_text=>'Kokonaismediaani'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125346024892026286)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'fi'
,p_message_text=>'Minimi'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125321815409026279)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'minuuttia'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125346894783026287)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'fi'
,p_message_text=>'Minuuttia sitten'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125380351533026297)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'fi'
,p_message_text=>'Kokonaisminimi'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125322296767026279)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'fi'
,p_message_text=>'kuukautta'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125328850385026281)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4iss\00E4 tiedoissa on yli %0 rivi\00E4, mik\00E4 ylitt\00E4\00E4 sallitun maksimim\00E4\00E4r\00E4n. Ota k\00E4ytt\00F6\00F6n lis\00E4\00E4 suodattimia, jotta saat tulokset n\00E4kyviin.')
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125354691399026289)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('Alueen staattinen tunniste on m\00E4\00E4ritett\00E4v\00E4, koska sivulla on useita interaktiivisia ruudukkoja.')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125324983357026280)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'fi'
,p_message_text=>'Nimi'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125325102517026280)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Nimetty raportti'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125309148406026275)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Seuraava p\00E4iv\00E4')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125308928061026275)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'fi'
,p_message_text=>'Seuraava tunti'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125311191444026276)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'fi'
,p_message_text=>'Edellinen minuutti'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125309484845026275)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'fi'
,p_message_text=>'Seuraava kuukausi'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125309383283026275)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'fi'
,p_message_text=>'Seuraava viikko'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125309200682026275)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('Seuraavat %0 p\00E4iv\00E4\00E4')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125309025230026275)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 tuntia'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125311200682026276)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 minuuttia'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125310511217026275)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 kuukautta'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125310616591026275)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 viikkoa'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125309696018026275)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 vuotta'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125309551903026275)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'fi'
,p_message_text=>'Seuraava vuosi'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125320812124026279)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'fi'
,p_message_text=>unistr('ei v\00E4lill\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125319884993026278)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'fi'
,p_message_text=>'eri suuri kuin'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125384670603026298)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Alue, jonka tunniste on %0, ei ole interaktiivisen ruudukon alue, tai sit\00E4 ei ole sovelluksessa %1.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125320200313026278)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'fi'
,p_message_text=>unistr('ei sis\00E4lly')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125321012328026279)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('ei edellisess\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125321209867026279)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'fi'
,p_message_text=>'ei seuraavassa'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125328765450026281)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietoja ei l\00F6ytynyt')
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125365530253026292)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhj\00E4t')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125370678093026294)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'fi'
,p_message_text=>'Numero'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125365848998026292)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei k\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125365998875026292)
,p_name=>'APEX.IG.ON'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125319037196026278)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'fi'
,p_message_text=>'1 minuutti sitten'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125373435817026295)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'fi'
,p_message_text=>unistr('Avaa v\00E4rin valitsin: %0')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125362338139026291)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Avaa'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125326057385026280)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'fi'
,p_message_text=>'Operaattori'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125361707951026291)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'fi'
,p_message_text=>'Suunta'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125364103630026292)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ympyr\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125327359335026281)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'fi'
,p_message_text=>'Pivot'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125292557733026270)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Pivot-n\00E4kym\00E4')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125373380753026295)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00E4 arvojen erottimena merkki\00E4 "%0"')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125364239368026292)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'fi'
,p_message_text=>'Polaarinen'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125369599661026294)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'fi'
,p_message_text=>'Keskikohta'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125369677400026294)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'fi'
,p_message_text=>'Loppu'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125369477935026294)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'fi'
,p_message_text=>'Alku'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125325225972026280)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'fi'
,p_message_text=>'Ensisijainen'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125325596152026280)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Ensisijainen oletus'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125342033634026285)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Ensisijainen raportti'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125215639158026246)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4llyt\00E4 helppok\00E4ytt\00F6isyystunnisteet')
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125213096463026245)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'fi'
,p_message_text=>'Vaaka'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125213184905026246)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'fi'
,p_message_text=>'Pysty'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125212958337026245)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'fi'
,p_message_text=>'Sivun suunta'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125212871367026245)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'fi'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125212750057026245)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'fi'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125215888898026246)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'fi'
,p_message_text=>'Mukautettu'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125212566042026245)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'fi'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125212416834026245)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'fi'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125212683874026245)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'fi'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125212315599026245)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'fi'
,p_message_text=>'Sivun koko'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125177961405026235)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'fi'
,p_message_text=>'Poista Rich Text'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125364362023026292)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4teitt\00E4inen')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125364428403026292)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'fi'
,p_message_text=>'Alue'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125374687862026295)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivit\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125329512645026281)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivit\00E4 rivi')
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125328376554026281)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivit\00E4 rivit')
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125333571385026283)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Interaktiivisen ruudukon alue puuttuu sovelluksesta %0, sivusta %1 ja alueesta %2.'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125294031482026270)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'fi'
,p_message_text=>'Poista %0'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125324669209026280)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'fi'
,p_message_text=>'Raportti'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125383853334026298)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'fi'
,p_message_text=>'Raportti poistettu'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125383541873026298)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'fi'
,p_message_text=>unistr('Vaihtoehtoinen raportti tallennettu kaikille k\00E4ytt\00E4jille')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125383465305026298)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'fi'
,p_message_text=>unistr('Oletusraportti tallennettu kaikille k\00E4ytt\00E4jille')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125383780482026298)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'fi'
,p_message_text=>'Yksityinen raportti tallennettu'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125383659933026298)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'fi'
,p_message_text=>unistr('Julkinen raportti tallennettu kaikille k\00E4ytt\00E4jille')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125333668436026283)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Tallennettua interaktiivista ruudukkoa, jonka nimi on %0, ei ole.'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125318919733026278)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'fi'
,p_message_text=>'Ruudukon tiedot %0 minuuttia sitten'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125318879261026278)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'fi'
,p_message_text=>'Ruudukon tiedot 1 minuutti sitten'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125254312456026258)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Interaktiivista ruudukkoraporttia ei ole.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125376803087026296)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'fi'
,p_message_text=>'Raportti - Muokkaa'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125333487520026282)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Tallennettua interaktiivista ruudukkoa, jonka tunniste on %0, ei ole.'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125376796746026296)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'fi'
,p_message_text=>unistr('Raportti - Tallenna nimell\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125294189954026270)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'Ruudukon asetukset'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125384734097026298)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Tallennettua interaktiivista ruudukkoa, jonka staattinen tunniste on %0, ei ole.'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125379702338026297)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Raporttin\00E4kym\00E4')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125293209357026270)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'fi'
,p_message_text=>'Nollaa'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125329670522026281)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'fi'
,p_message_text=>'Palauta muutokset'
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125328457664026281)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'fi'
,p_message_text=>'Palauta rivit'
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125325639179026280)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'fi'
,p_message_text=>'Rivi'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125324563128026280)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivej\00E4 sivulla')
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125384303009026298)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Rivin toiminnot'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125385552571026299)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'fi'
,p_message_text=>'Rivin %0 toiminnot'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125293567100026270)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'fi'
,p_message_text=>'Tallenna'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125338695044026284)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'fi'
,p_message_text=>'tallennettu'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125243257276026254)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Tallennettu raportti : %0'
,p_is_js_message=>true
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125291750833026270)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'fi'
,p_message_text=>'Tallennetut raportit'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125291842955026270)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Oletus'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125265378310026261)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'fi'
,p_message_text=>unistr('Tallennettu raportti, jonka nimi on %0, on jo olemassa. Sy\00F6t\00E4 uusi nimi.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125291929855026270)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'fi'
,p_message_text=>'Yksityinen'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125292025722026270)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'fi'
,p_message_text=>'Julkinen'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125379437428026297)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'fi'
,p_message_text=>unistr('Tallenna nimell\00E4')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125327726645026281)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'Tallenna raporttiasetukset'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125364506708026292)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'fi'
,p_message_text=>'Piste'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125291697605026270)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'fi'
,p_message_text=>'Haku'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125371749931026294)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Haku: kaikki tekstisarakkeet'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125291566386026269)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Hae: %0'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125371047115026294)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Haku: koko teksti'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125318723077026278)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'fi'
,p_message_text=>'Hae kohdetta %0'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125361181463026291)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'fi'
,p_message_text=>'- Valitse -'
,p_is_js_message=>true
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125301258604026272)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'fi'
,p_message_text=>'Valinta'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125354353834026289)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse 1 rivi p\00E4\00E4alueelta')
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125291430698026269)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse etsitt\00E4v\00E4t sarakkeet')
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125384020086026298)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Valinnan toiminnot'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125301420124026273)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'fi'
,p_message_text=>'Solujen valinta'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125301388637026272)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'fi'
,p_message_text=>'Rivin valinta'
,p_is_js_message=>true
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125372303384026294)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4 s\00E4hk\00F6postina')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125364972612026292)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Sarja'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125289159591026269)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4')
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125344374526026286)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kokonaisarvo')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125329248978026281)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Yhden rivin n\00E4kym\00E4')
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125327517351026281)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'fi'
,p_message_text=>'Lajittelu'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125365016920026292)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'fi'
,p_message_text=>'Lajitteluperuste'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125384466079026298)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Kullekin sarakkeelle voi m\00E4\00E4ritt\00E4\00E4 vain yhden lajittelun.')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125384236998026298)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'fi'
,p_message_text=>'Muuta'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125366075096026292)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'fi'
,p_message_text=>'Pino'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125321512542026279)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'fi'
,p_message_text=>'alkaa'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125364669531026292)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'fi'
,p_message_text=>'Varasto'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125283993852026267)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>unistr('Venyt\00E4 sarakeleveyksi\00E4')
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125327978175026281)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Tilaus'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125345980012026286)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'fi'
,p_message_text=>'Summa'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125385754696026299)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'fi'
,p_message_text=>unistr('Interaktiivinen ruudukko. Raportti: %0, n\00E4kym\00E4: %1.')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125379830656026297)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'fi'
,p_message_text=>'Kokonaissumma'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125362824700026292)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Kohde'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125369295274026293)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tekstin v\00E4ri')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125294273445026270)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'fi'
,p_message_text=>'Vaihda'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125176396780026235)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'fi'
,p_message_text=>'Ruudukko'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125344241965026286)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6kaluvihje')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125324730996026280)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'fi'
,p_message_text=>'Tyyppi'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125329117119026281)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'fi'
,p_message_text=>'Avaa lukitus'
,p_is_js_message=>true
,p_version_scn=>2692661
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125326253556026280)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'fi'
,p_message_text=>unistr('Yksikk\00F6')
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125372148374026294)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>'Muutoksia ei ole tallennettu. Haluatko jatkaa?'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125326149550026280)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'fi'
,p_message_text=>'Arvo'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125361950314026291)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Arvo'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125366863746026293)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Arvo on pakollinen.'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125352075459026288)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'fi'
,p_message_text=>unistr('Arvo (aikavy\00F6hykett\00E4 ei voi vaihtaa)')
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125370770526026294)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'fi'
,p_message_text=>'Teksti'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125363247625026292)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'fi'
,p_message_text=>'Pysty'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125324219572026280)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4')
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125259395343026259)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Ruudukko on katselutilassa, muokkaa painamalla'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125361219033026291)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytetty')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125362714178026292)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4r\00E4')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125322130341026279)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'fi'
,p_message_text=>'viikkoa'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125361312641026291)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarakkeen minimileveys (pikseli\00E4)')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125313391693026276)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 v\00E4lill\00E4 %1 - %2')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125313068244026276)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 sis\00E4lt\00E4\00E4 %1')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125313150226026276)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei sis\00E4ll\00E4 kohdetta %1')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125288509700026269)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 ei ala merkkijonolla %1'
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125311899102026276)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 yht\00E4 suuri kuin %1')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125312031779026276)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 suurempi kuin %1'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125312191021026276)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 suurempi tai yht\00E4 suuri kuin %1')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125312801100026276)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 kohteessa %1'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125314003154026276)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 edellisten %1 p\00E4iv\00E4n aikana')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125313847274026276)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisten %1 tunnin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125313605644026276)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisten %1 minuutin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125314416043026277)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisten %1 kuukauden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125314265137026277)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisten %1 viikon aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125314657242026277)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisten %1 vuoden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125313955676026276)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 edellisen\00E4 p\00E4iv\00E4n\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125313777285026276)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisen tunnin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125313555265026276)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisen minuutin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125314374236026277)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisen kuukauden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125314113825026276)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisen viikon aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125314550497026277)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'fi'
,p_message_text=>'%0 edellisen vuoden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125316455651026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 seuraavien %1 p\00E4iv\00E4n aikana')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125316268284026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavien %1 tunnin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125316023155026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavien %1 minuutin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125316810908026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavien %1 kuukauden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125316652958026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavien %1 viikon aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125317076790026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavien %1 vuoden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125316337846026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 seuraavana p\00E4iv\00E4n\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125316148993026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavan tunnin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125315912326026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavan minuutin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125316786295026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavan kuukauden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125316523836026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavan viikon aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125316942970026277)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'fi'
,p_message_text=>'%0 seuraavan vuoden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125312540335026276)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole tyhj\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125312448457026276)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 on tyhj\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125312273847026276)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 pienempi kuin %1'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125312382756026276)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 pienempi tai yht\00E4 suuri kuin %1')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125312647993026276)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 kuin %1'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125313277937026276)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 vastaa s\00E4\00E4nn\00F6llist\00E4 lauseketta %1')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125319199340026278)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 minuuttia sitten'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125313403733026276)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole v\00E4lill\00E4 %1 - %2')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125311923590026276)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 eri suuri kuin %1'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125312929031026276)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 ei kohteessa %1'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125315246728026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei edellisten %1 p\00E4iv\00E4n aikana')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125315092151026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisten %1 tunnin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125314821192026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisten %1 minuutin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125315686684026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisten %1 kuukauden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125315459274026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisten %1 viikon aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125315892984026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisten %1 vuoden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125315163048026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei edellisen\00E4 p\00E4iv\00E4n\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125314980087026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisen tunnin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125314777546026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisen minuutin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125315576434026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisen kuukauden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125315394852026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisen viikon aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125315779668026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'fi'
,p_message_text=>'%0 ei edellisen vuoden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125317618666026278)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei seuraavien %1 p\00E4iv\00E4n aikana')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125317479043026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavien %1 tunnin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125317216743026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavien %1 minuutin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125318022794026278)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavien %1 kuukauden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125317884595026278)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavien %1 viikon aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125318237121026278)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavien %1 vuoden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125317534095026278)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei seuraavana p\00E4iv\00E4n\00E4')
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125317322558026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavan tunnin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125317144118026277)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavan minuutin aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125317993075026278)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavan kuukauden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125317709037026278)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavan viikon aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125318146721026278)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'fi'
,p_message_text=>'%0 ei seuraavan vuoden aikana'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125312734041026276)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 ei kuin %1'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125319606669026278)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'fi'
,p_message_text=>'%0 alkaa %1'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125362025185026291)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125322396214026279)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'fi'
,p_message_text=>'vuotta'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125362111236026291)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125362218305026291)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125371264032026294)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'fi'
,p_message_text=>'Maanantai 12. tammikuuta 2016'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125371363244026294)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'fi'
,p_message_text=>'Tammikuu'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125371432429026294)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'fi'
,p_message_text=>'16 tuntia sitten'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125371574348026294)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'fi'
,p_message_text=>'16 tunnin aikana'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125189537262026239)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00E4')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125181570008026236)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Ved\00E4 kuvaa ja sijoita se uudelleen kehykseen zoom-liukus\00E4\00E4timell\00E4.</p>'),
'',
unistr('<p>Kuvan rajaustoiminnossa on k\00E4ytett\00E4viss\00E4 seuraavat pikan\00E4pp\00E4imet:</p>'),
'<ul>',
unistr('    <li>vasen nuoli: siirr\00E4 kuvaa vasemmalle*</li>'),
unistr('    <li>yl\00E4nuoli: siirr\00E4 kuvaa yl\00F6s*</li>'),
unistr('    <li>oikea nuoli: siirr\00E4 kuvaa oikealle*</li>'),
unistr('    <li>alanuoli: siirr\00E4 kuvaa alas*</li>'),
unistr('    <li>I: l\00E4henn\00E4</li>'),
'    <li>O: loitonna</li>',
unistr('    <li>L: kierr\00E4 vasemmalle</li>'),
unistr('    <li>R: kierr\00E4 oikealle</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Siirr\00E4 nopeammin painamalla vaihton\00E4pp\00E4int\00E4</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125181781045026236)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'fi'
,p_message_text=>'Rajauskuvan ohje'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125189648629026239)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'fi'
,p_message_text=>'Nollaa'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125182023630026236)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'fi'
,p_message_text=>'Rajaa kuva'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125189736929026239)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4\00E4d\00E4 zoomaustasoa liukus\00E4\00E4timell\00E4')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125219377973026247)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen tiedostotyyppi. Tuettuja tiedostotyyppej\00E4 ovat %0.')
,p_is_js_message=>true
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125353735634026289)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'fi'
,p_message_text=>'Selaa'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125353448863026289)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'fi'
,p_message_text=>'Valitse tiedosto'
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125353571362026289)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'fi'
,p_message_text=>'Valitse tiedostot'
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125219104870026247)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ved\00E4 ja pudota')
,p_is_js_message=>true
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125219548358026247)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'fi'
,p_message_text=>unistr('Ved\00E4 ja pudota tiedostoja')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125220938164026248)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse tiedosto tai ved\00E4 se t\00E4h\00E4n.')
,p_is_js_message=>true
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125221051481026248)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse tai pudota tiedostot t\00E4h\00E4n.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125221196078026248)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse tiedosto tai ved\00E4 se t\00E4h\00E4n.')
,p_is_js_message=>true
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125221219675026248)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse tai pudota tiedostot t\00E4h\00E4n.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125219451327026247)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'fi'
,p_message_text=>'%0 tiedostoa'
,p_is_js_message=>true
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125219258781026247)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'fi'
,p_message_text=>'Tiedosto on liian suuri. Tiedoston maksimikoko on %0.'
,p_is_js_message=>true
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125199735324026242)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>'Useiden tiedostojen latausta ei tueta.'
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125182621424026237)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125188138308026238)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Osoite on pakollinen.'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125187080250026238)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'fi'
,p_message_text=>'Kaupunki'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125187451190026238)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'fi'
,p_message_text=>'Maakoodi'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125187159560026238)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'fi'
,p_message_text=>'Talon numero'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125188033350026238)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'fi'
,p_message_text=>'Leveysaste'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125187990995026238)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'fi'
,p_message_text=>'Pituusaste'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125187858395026238)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytt\00F6 kartalla')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125187542006026238)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'fi'
,p_message_text=>'Tulos'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125187214040026238)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'fi'
,p_message_text=>'Postinumero'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125187362461026238)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'fi'
,p_message_text=>'Osavaltio'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125186970075026238)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'fi'
,p_message_text=>'Katuosoite'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125186898555026238)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Geokoodaustulokset'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125218352219026247)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'fi'
,p_message_text=>'Geokoodattu'
,p_is_js_message=>true
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125218437780026247)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'fi'
,p_message_text=>'Ei geokoodattu'
,p_is_js_message=>true
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125187773042026238)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Kartta'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125187677882026238)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Osoitteita ei l\00F6ydy.')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125188286722026238)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'%0 on pakollinen.'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125294493737026270)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'fi'
,p_message_text=>'%0 tai %1 on pakollinen.'
,p_is_js_message=>true
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125383962542026298)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kohteen %0 ohjeteksti.')
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125189987745026239)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'fi'
,p_message_text=>'Valitse kuva'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125190082866026239)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'fi'
,p_message_text=>'Valitse kuvat'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125189815728026239)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Nouda'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125190186294026239)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ved\00E4 ja pudota')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125190277426026239)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'fi'
,p_message_text=>unistr('Ved\00E4 ja pudota kuvia')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125190350840026239)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse kuva tai pudota se t\00E4h\00E4n.')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125190451729026239)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse tai pudota kuvat t\00E4h\00E4n.')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125190502123026239)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse kuva tai pudota se t\00E4h\00E4n.')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125190699991026239)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse tai pudota kuvat t\00E4h\00E4n.')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125275305453026264)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'fi'
,p_message_text=>'Valittu'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125275477968026264)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'fi'
,p_message_text=>'Ei valittu'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125302936680026273)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhj\00E4 vain luku -yhdistelm\00E4ruutu')
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125300780481026272)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhj\00E4 vain luku -luetteloruutu')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125300513631026272)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'fi'
,p_message_text=>unistr('Vain luku -yhdistelm\00E4ruutu')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125300666537026272)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'fi'
,p_message_text=>'Vain luku -luetteloruutu'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125216398334026246)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'fi'
,p_message_text=>'#LABEL# ei ole sallitulla alueella %0 - %1.'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125216499911026246)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'fi'
,p_message_text=>'#LABEL# ei ole arvon %0 monikerta.'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125303774576026273)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'fi'
,p_message_text=>'Vain luku -vaihto'
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125244381675026255)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'fi'
,p_message_text=>unistr('Vain luku, muokkaa linkill\00E4')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125215912130026246)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'fi'
,p_message_text=>'Kohteen #LABEL# on vastattava arvoja %0 ja %1.'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125216115889026246)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Ei'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125302447855026273)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei k\00E4yt\00F6ss\00E4')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125302507334026273)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00F6ss\00E4')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125216044528026246)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Kyll\00E4')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125223922026026249)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'fi'
,p_message_text=>'Kielen valinta'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125160325193026230)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 merkint\00E4')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125337142646026284)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125337200008026284)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125160410958026230)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitut sy\00F6tteet')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125340925641026285)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4asetukset')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125341248795026285)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'fi'
,p_message_text=>'Peruuta'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125341059478026285)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'fi'
,p_message_text=>'Yleiset'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125341314817026285)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00F6ss\00E4 olevan mallin asetukset')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125341925739026285)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Mallivaihtoehdot eiv\00E4t ole k\00E4ytett\00E4viss\00E4, koska t\00E4t\00E4 komponenttia ei ole muodostettu sivulla.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125340847961026285)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Mallivaihtoehtoja ei l\00F6ydy.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125341168017026285)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'fi'
,p_message_text=>'Tallenna'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125194985606026240)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhjenn\00E4 ympyr\00E4')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125197360680026241)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'fi'
,p_message_text=>'Mukautetut tyylit ei ole sallittu JSON.'
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125195256643026240)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'fi'
,p_message_text=>unistr('Et\00E4isyysty\00F6kalu')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125195051419026240)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Piirr\00E4 ympyr\00E4')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125174828996026234)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'fi'
,p_message_text=>'Nykyinen sijainti'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125181249482026236)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'fi'
,p_message_text=>'Aloituskohdan koordinaatit ovat virheelliset.'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125170224528026233)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Aloituskohdan on oltava pistegeometria.'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125178887179026236)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'fi'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125174044147026234)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'fi'
,p_message_text=>'Taso'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125344479875026286)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'fi'
,p_message_text=>'Kerros: %0'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125193284668026240)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'fi'
,p_message_text=>'Kartta'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125162905429026231)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'fi'
,p_message_text=>'Viestit'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125179087780026236)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'fi'
,p_message_text=>'mailia'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125343492544026286)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4iss\00E4 tiedoissa on yli %0 rivi\00E4, mik\00E4 ylitt\00E4\00E4 sallitun enimm\00E4ism\00E4\00E4r\00E4n.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125173372130026234)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'fi'
,p_message_text=>'&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Ehdot</a> &nbsp;&nbsp; Karttatiedot &copy; 2021 HERE'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125169912694026233)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietotyyppi SDO_GEOMETRY ei ole k\00E4ytett\00E4viss\00E4 t\00E4ss\00E4 tietokannassa.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125173495351026234)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'fi'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap-sis\00E4ll\00F6ntuottajat </a>')
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125198032070026241)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'fi'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap-sis\00E4ll\00F6ntuottajat </a>')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125174256628026234)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'fi'
,p_message_text=>'Pisteet'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125344513529026286)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 pistett\00E4')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125195125494026240)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'fi'
,p_message_text=>'Zoomaa suorakulmioon'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125194880199026240)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125174638603026234)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'fi'
,p_message_text=>'Palauta suuntima pohjoiseen'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125289438761026269)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'fi'
,p_message_text=>'Vaihda 2D-tilaan'
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125289533645026269)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'fi'
,p_message_text=>'Vaihda 3D-tilaan'
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125194719920026240)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'fi'
,p_message_text=>unistr('Vaihda tekij\00E4noikeuksia koskevaa ilmoitusta')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125195324921026240)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'fi'
,p_message_text=>unistr('Kokonaiset\00E4isyys')
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125174305627026234)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4henn\00E4')
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125174554695026234)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'fi'
,p_message_text=>'Loitonna'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125339018149026284)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'fi'
,p_message_text=>'Lihavointi'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125339934826026284)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'fi'
,p_message_text=>'Kuva'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125339521318026284)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4inen koodi')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125352227894026288)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 kuva')
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125352376642026288)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'fi'
,p_message_text=>unistr('Linkin lis\00E4ys')
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125339150085026284)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'fi'
,p_message_text=>'Kursivointi'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125352991082026289)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'fi'
,p_message_text=>'Linkki'
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125339878990026284)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'fi'
,p_message_text=>'Luettelo'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125339714888026284)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjestetty lista')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125339297207026284)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'fi'
,p_message_text=>'Esikatselu'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125339301353026284)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'fi'
,p_message_text=>'Ei esikatseltavia kohteita'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125339413081026284)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'fi'
,p_message_text=>'Yliviivaus'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125339639428026284)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjest\00E4m\00E4t\00F6n lista')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125318550867026278)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'fi'
,p_message_text=>'nykyinen'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125374723972026295)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4...')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125318431387026278)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'fi'
,p_message_text=>'Ladataan'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125232644266026251)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'fi'
,p_message_text=>'Jakopainike'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125232572539026251)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'fi'
,p_message_text=>'Jakovalikko'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125349574410026287)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Ilmoitusviesti'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125173650206026234)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohdetta %0 ei l\00F6ydy')
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125323523840026279)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen #LABEL# on oltava numero, joka on pienempi tai yht\00E4 suuri kuin %0.')
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125323623593026279)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'fi'
,p_message_text=>'Kohteen #LABEL# on oltava sallittu numero.'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125323782701026279)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'fi'
,p_message_text=>'#LABEL# ei vastaa numeromuotoa %0 (esimerkki: %1).'
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125323497783026279)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen #LABEL# on oltava numero, joka on suurempi tai yht\00E4 suuri kuin %0.')
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125323302398026279)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'fi'
,p_message_text=>'Kohteen %#LABEL# on oltava numero %0 - %1.'
,p_is_js_message=>true
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125318631758026278)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'fi'
,p_message_text=>'avautuu uuteen ikkunaan'
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125268452375026262)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 sivu on jo l\00E4hetetty, eik\00E4 sit\00E4 voi l\00E4hett\00E4\00E4 uudelleen.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125249859264026256)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovelluksen %0 sivua %1 ei l\00F6ydy.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125285328294026268)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Kohteella #LABEL# on oltava jokin arvo.'
,p_is_js_message=>true
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125176007590026235)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'fi'
,p_message_text=>'Piilota salasana'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125175966232026235)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 salasana')
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125223569716026249)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'fi'
,p_message_text=>'Haku'
,p_is_js_message=>true
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125337585916026284)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'fi'
,p_message_text=>'Sulje'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125337428707026284)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'fi'
,p_message_text=>'Etsi%0'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125337753193026284)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125337655049026284)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125214370495026246)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'fi'
,p_message_text=>unistr('Sy\00F6t\00E4 v\00E4hint\00E4\00E4n %0 merkin mittainen hakuehto.')
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125290678264026269)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Avattava valintalista: %0'
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125214488595026246)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'fi'
,p_message_text=>'Anna hakuehto.'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125161408652026230)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'fi'
,p_message_text=>'Valintalista'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125214295685026246)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'fi'
,p_message_text=>'Ei tuloksia.'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125214166453026246)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'fi'
,p_message_text=>'Poista %0'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125311322039026276)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'fi'
,p_message_text=>'Hakuehto'
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125337313631026284)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'fi'
,p_message_text=>'Haku'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125163567829026231)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Vaatii %0.'
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125175894504026235)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virhe tulostettaessa raporttia.'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125186695367026238)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'fi'
,p_message_text=>unistr('Asiakirjaa ei voi tulostaa k\00E4ytt\00E4en konfiguroitua tulostuspalvelinta.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125209323768026244)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe arvioitaessa parametria %0, kun kutsuttiin kohdetta %1. Lis\00E4tietoja on virhelokissa.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125348079306026287)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4sitell\00E4\00E4n')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125207183016026244)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125208290923026244)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4t\00E4 sivustoa voi k\00E4ytt\00E4\00E4 sovelluksena. Paranna k\00E4ytt\00F6kokemusta asentamalla se laitteeseesi.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125209507187026245)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125211133981026245)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Asenna t\00E4m\00E4 sovellus')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125195930636026240)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'fi'
,p_message_text=>unistr('Ilmeisesti laitteesi tai selaimesi ei t\00E4ll\00E4 hetkell\00E4 tue Progressive-verkkosovellusten asennusta.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125191017281026239)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'fi'
,p_message_text=>'1. Napauta <strong>Jaa</strong>-kuvaketta'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125191172954026239)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'fi'
,p_message_text=>unistr('2. Vierit\00E4 alasp\00E4in ja valitse <strong>Lis\00E4\00E4 aloitusn\00E4ytt\00F6\00F6n</strong>')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125207515605026244)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'fi'
,p_message_text=>unistr('3. Vahvista valitsemalla <strong style="color:#007AE1;">Lis\00E4\00E4</strong>')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125206641708026244)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'fi'
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
unistr('    <h1>Yhteytt\00E4 ei voi muodostaa</h1>'),
unistr('    <p>Verkossa n\00E4ytt\00E4\00E4 olevan ongelma. Tarkista yhteys ja yrit\00E4 uudelleen.</p>'),
unistr('    <button type="button">Yrit\00E4 uudelleen</button>'),
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125206570286026244)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Yhteytt\00E4 ei voi muodostaa')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125253164096026257)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Push-ilmoitusten k\00E4ytt\00F6\00F6notto t\00E4ss\00E4 laitteessa ep\00E4onnistui.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125258646554026259)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Pikavalinnat kohteelle %0'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125258562846026259)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'fi'
,p_message_text=>'Pikavalintalinkki'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125232396806026251)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'fi'
,p_message_text=>'Visuaalisesti piilotettu valintanappi'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125176413779026235)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Yhden rivin n\00E4kym\00E4')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125359182929026290)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125304455760026273)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Koko p\00E4iv\00E4')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125382059963026297)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4 kutsu')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125381850715026297)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'fi'
,p_message_text=>'Valinnat'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125306268196026274)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4iv\00E4n\00E4kym\00E4 kaikille p\00E4iville')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125306071964026274)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4iv\00E4n\00E4kym\00E4 aikatietoja sis\00E4lt\00E4ville tiedoille')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125350257476026288)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4iv\00E4')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125345221914026286)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Kuvaus'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125228783336026250)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'fi'
,p_message_text=>'CSV'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125228527472026250)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'fi'
,p_message_text=>'iCal'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125228457777026250)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'fi'
,p_message_text=>'PDF'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125228605364026250)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'fi'
,p_message_text=>'XML'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125228143896026250)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4\00E4ttymisp\00E4iv\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125228302814026250)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'fi'
,p_message_text=>'Tapahtuman nimi'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125381934481026297)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'fi'
,p_message_text=>'Kutsu'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125350368626026288)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'fi'
,p_message_text=>'Luettelo'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125350012787026288)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'fi'
,p_message_text=>'Kuukausi'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125352621069026288)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125366672946026293)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'fi'
,p_message_text=>'Ei tapahtumia'
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125382248568026297)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa olemassa olevaa tapahtumaa.'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125382196321026297)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'fi'
,p_message_text=>unistr('Kutsu l\00E4hetet\00E4\00E4n s\00E4hk\00F6postiviestin\00E4.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125352778197026288)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125360471528026291)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4 s\00E4hk\00F6postiviesti')
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125360271882026291)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4 s\00E4hk\00F6postiviesti')
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125382863837026298)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('Kaikki kent\00E4t ovat pakollisia.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125382728150026298)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4 kutsu')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125381799308026297)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'fi'
,p_message_text=>'Aihe'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125360302568026291)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'fi'
,p_message_text=>'Vastaanottaja'
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125228240140026250)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'fi'
,p_message_text=>unistr('Alkamisp\00E4iv\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125358447672026290)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytt\00F6 kohteessa %0')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125305842780026274)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'fi'
,p_message_text=>'Aika'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125352833894026289)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4n\00E4\00E4n')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125350839428026288)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125350162793026288)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'fi'
,p_message_text=>'Viikko'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125306170653026274)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Viikkon\00E4kym\00E4 kaikille p\00E4iville')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125305966798026274)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'fi'
,p_message_text=>unistr('Viikkon\00E4kym\00E4 aikatietoja sis\00E4lt\00E4ville tiedoille')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125350720299026288)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'fi'
,p_message_text=>'Vuosi'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125350449417026288)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeet...'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125350552563026288)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'fi'
,p_message_text=>unistr('Lataa lis\00E4\00E4...')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125279991604026266)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125221460306026248)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'fi'
,p_message_text=>unistr('Lataa lis\00E4\00E4...')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125223746862026249)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'fi'
,p_message_text=>'Hae...'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125350696329026288)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'fi'
,p_message_text=>unistr('Lataa lis\00E4\00E4...')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125352515823026288)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Alueen tunnistetta %0 ei l\00F6ydy.')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125223670971026249)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietoja ei l\00F6ydy')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125251121270026257)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Alueen sivutuksen nollaus ei onnistu.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125214806360026246)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe m\00E4\00E4ritett\00E4ess\00E4 alueen sivutusta.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125344693627026286)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeet...'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125199194532026241)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Tarveohjaus ei ole yhteensopiva paikkojen kanssa kohteessa %0, joka on yksitt\00E4inen (osittainen) alue. Poista t\00E4m\00E4n alueen tarveohjaus k\00E4yt\00F6st\00E4 tai siirr\00E4 paikkakomponentit toiselle alueelle.')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125194431698026240)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4n malli puuttuu kohteen %0 mallikomponentista.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125189427619026239)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 on yksitt\00E4inen (osittainen) alue, ja se on palauttanut useita rivej\00E4.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125352464962026288)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Alueen tyyppi\00E4 %0 ei tueta.')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125214794090026246)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virhe alueen #COMPONENT_NAME# muodostuksen aikana.'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125285417227026268)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Kohteella #COLUMN_HEADER# on oltava jokin arvo.'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125167049823026232)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('Raportin asettelu on m\00E4\00E4ritett\00E4v\00E4.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125381329917026297)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'fi'
,p_message_text=>'%0, rich text -editori'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125287573627026268)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'fi'
,p_message_text=>unistr('Rich Text HTML -koodi ylitt\00E4\00E4 kohteen enimm\00E4ispituuden (merkkim\00E4\00E4r\00E4: %0, sallittu merkkim\00E4\00E4r\00E4: %1)')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125196971940026241)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'fi'
,p_message_text=>'Vain luku- Rich Text -editori'
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125196897518026241)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'fi'
,p_message_text=>'Rich Text -editori'
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125196692127026241)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'fi'
,p_message_text=>'Tasaus'
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125196785823026241)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'fi'
,p_message_text=>'Ekstrat'
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125196421481026241)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'fi'
,p_message_text=>'Fontti'
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125196351408026241)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'fi'
,p_message_text=>'Muotoilu'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125196507585026241)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'fi'
,p_message_text=>'Luettelot'
,p_is_js_message=>true
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125349673167026288)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125342131358026285)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'fi'
,p_message_text=>'Kopioi'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125340488757026285)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytetyt sarakkeet')
,p_is_js_message=>true
,p_version_scn=>2692664
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125340379683026285)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4t\00E4 pois tyhj\00E4t arvot')
,p_is_js_message=>true
,p_version_scn=>2692664
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125349786286026288)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4')
,p_is_js_message=>true
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125304047262026273)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4 alas')
,p_is_js_message=>true
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125304133526026273)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4 yl\00F6s')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125340181097026285)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_is_js_message=>true
,p_version_scn=>2692664
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125340770663026285)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Muut sarakkeet'
,p_is_js_message=>true
,p_version_scn=>2692664
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125340262413026285)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_is_js_message=>true
,p_version_scn=>2692664
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125340533865026285)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'fi'
,p_message_text=>'Rivi %0'
,p_is_js_message=>true
,p_version_scn=>2692664
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125340676565026285)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'fi'
,p_message_text=>'Rivi %0/%1'
,p_is_js_message=>true
,p_version_scn=>2692664
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125342263075026285)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivit\00E4')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125342304203026285)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'fi'
,p_message_text=>'Palauta muutokset'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125340057291026284)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'fi'
,p_message_text=>'Asetukset'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125299251275026272)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Esimerkki: %0'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125303529570026273)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'fi'
,p_message_text=>'Esimerkki: %0'
,p_is_js_message=>true
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125216285257026246)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'fi'
,p_message_text=>'1 tulos'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125213393723026246)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'fi'
,p_message_text=>'%0 tulosta'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125265199095026261)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'fi'
,p_message_text=>'Sivutus'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125265211286026261)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'fi'
,p_message_text=>'Tulokset, %0 - %1'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125160921943026230)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'fi'
,p_message_text=>'Kirjaudu uudelleen'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125160871040026230)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('Istuntosi on p\00E4\00E4ttynyt')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125161026345026230)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'fi'
,p_message_text=>unistr('Pidenn\00E4')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125160674133026230)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'fi'
,p_message_text=>unistr('Istuntosi p\00E4\00E4ttyy %0. Haluatko pident\00E4\00E4 sit\00E4?')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125160794621026230)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'fi'
,p_message_text=>unistr('Istuntosi p\00E4\00E4ttyy klo %0, eik\00E4 sit\00E4 voi pident\00E4\00E4. Tallenna ty\00F6si nyt, jotta et menet\00E4 tietoja.')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125360014994026291)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 tietokantaistunnon puhdistuskoodia.')
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125249759776026256)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 tietokantaistunnon m\00E4\00E4rityskoodia.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125220130045026248)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('Istuntosi on p\00E4\00E4ttynyt.')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125359270196026290)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'fi'
,p_message_text=>unistr('Sulje t\00E4m\00E4 valintaikkuna ja aloita uusi istunto napsauttamalla selaimen uudelleenlatauspainiketta.')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125378188703026296)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'fi'
,p_message_text=>unistr('<a href="%0">Kirjaudu sis\00E4\00E4n</a> uudelleen ja luo uusi istunto.')
,p_version_scn=>2692672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125262434205026260)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'fi'
,p_message_text=>'Istunto ei sallittu'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125305588352026274)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'fi'
,p_message_text=>unistr('Dynaamisia rooleja ei voitu ottaa k\00E4ytt\00F6\00F6n Real Application Security -istunnon k\00E4ytt\00E4j\00E4lle %0.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125247671637026256)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-99900 Yksil\00F6iv\00E4\00E4 istunnon tunnistetta ei voitu luoda: %0')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125176795932026235)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Istunnon tilan tietotyyppi\00E4 CLOB ei sallita kohteessa %0.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125196154967026241)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>'Istunnon tilan tietotyypin CLOB kohteiden korvausta ei tueta.'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125264912306026261)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Istunnon tilan suojausvirhe: Syyn\00E4 voi olla se, ett\00E4 suojattua sivun kohdetta %0 on muutettu manuaalisesti. Jos et ole varma, mist\00E4 virhe johtuu, ota yhteys sovelluksen j\00E4rjestelm\00E4nvalvojaan.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125386175182026299)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Sivun suojausvirhe: Syyn\00E4 voi olla se, ett\00E4 l\00E4hetetyn sivun lataus ei ollut viel\00E4 valmis, tai se, ett\00E4 suojattuja sivun kohteita on muutettu manuaalisesti. Ota yhteys sovelluksen j\00E4rjestelm\00E4nvalvojaan.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125385293141026298)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 sis\00E4lt\00E4\00E4 jonkin seuraavista virheellisist\00E4 merkeist\00E4: &<>"/;,*|=% tai --')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125385387355026298)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 sis\00E4lt\00E4\00E4 uuden rivin tai jonkin seuraavista virheellisist\00E4 merkeist\00E4: &<>"/;,*|=% tai --')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125385089492026298)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 sis\00E4lt\00E4\00E4 erikoismerkkej\00E4. Vain merkit a - Z, 0 - 9 ja v\00E4lily\00F6nnit ovat sallittuja.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125385137535026298)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 sis\00E4lt\00E4\00E4 virheellisen merkin <, > tai ".')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125222527841026248)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'fi'
,p_message_text=>unistr('Tarkistussumma-arvo puuttuu. Se vaaditaan, jotta voidaan n\00E4ytt\00E4\00E4 sellaisen sivun k\00E4sittely, joka edellytt\00E4\00E4 tarkistussummaa, kun yksi tai useampi pyynn\00F6n, v\00E4limuistin tyhjennyksen tai argumentin arvo v\00E4litet\00E4\00E4n parametrina.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125259834003026260)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Istunnon tilan suojausvirhe: Syyn\00E4 voi olla se, ett\00E4 tarkistussumman sis\00E4lt\00E4v\00E4\00E4 Web-osoitetta on muutettu manuaalisesti, tai se, ett\00E4 on k\00E4ytetty linkki\00E4, jossa on virheellinen tai puuttuva tarkistussumma. Jos et ole varma, mist\00E4 virhe johtuu, ota yh')
||unistr('teys sovelluksen j\00E4rjestelm\00E4nvalvojaan.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125341461095026285)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'fi'
,p_message_text=>unistr('Poista suuren kontrastin tila k\00E4yt\00F6st\00E4')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125341513455026285)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'fi'
,p_message_text=>unistr('Ota suuren kontrastin tila k\00E4ytt\00F6\00F6n')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125205945569026243)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovellusasetusta %0 ei voi p\00E4ivitt\00E4\00E4, koska se on tilattu toisesta sovelluksesta.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125256205361026258)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'fi'
,p_message_text=>'Alin'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125256499159026258)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'fi'
,p_message_text=>'Alas'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125256550775026259)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125256682434026259)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4 kaikki')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125256794599026259)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125256873070026259)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'fi'
,p_message_text=>'Poista kaikki'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125256956835026259)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'fi'
,p_message_text=>'Nollaa'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125256110432026258)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'fi'
,p_message_text=>'Ylin'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125256300768026258)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'fi'
,p_message_text=>unistr('Yl\00F6s')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125367913667026293)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125368675966026293)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 p\00E4iv\00E4n aikana')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125367872053026293)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125368708060026293)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 tunnin aikana'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125367689473026293)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125368826257026293)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 min aikana'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125368262676026293)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 kk'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125368413850026293)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 kk aikana'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125367794928026293)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125368594215026293)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 s aikana'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125368041779026293)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125368997723026293)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 viikon aikana'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125368115685026293)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125368304060026293)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 vuoden aikana'
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125169206873026233)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'fi'
,p_message_text=>'[Rivi]'
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125169824837026233)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'fi'
,p_message_text=>unistr('[Useita rivej\00E4]')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125169518763026233)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'fi'
,p_message_text=>unistr('[Useita pisteit\00E4]')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125170028809026233)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'fi'
,p_message_text=>'[Useita monikulmioita]'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125170160849026233)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'fi'
,p_message_text=>'[Geometriaobjekti]'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125169172895026233)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'fi'
,p_message_text=>'[Piste (%0,%1)]'
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125169401624026233)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'fi'
,p_message_text=>'[Monikulmio]'
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125168694251026233)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'fi'
,p_message_text=>'Tiivistetty alue: %0'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125283739906026267)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiivist\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125167663202026232)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'fi'
,p_message_text=>unistr('Vaakasuuntaista jakajaa ei voi siirt\00E4\00E4 vasemmalle tai oikealle')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125167825052026232)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'fi'
,p_message_text=>unistr('%0\00A0px:n enimm\00E4iskoko saavutettu')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125168877614026233)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'fi'
,p_message_text=>unistr('%0\00A0px:n v\00E4himm\00E4iskoko saavutettu')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125168704472026233)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'fi'
,p_message_text=>'Alue on tiivistetty'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125168575327026233)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'fi'
,p_message_text=>'Alue on palautettu'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125168223641026232)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'fi'
,p_message_text=>unistr('Uudeksi kooksi on muutettu %0\00A0px')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125168403394026232)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'fi'
,p_message_text=>'Palautettu alue: %0'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125283610962026267)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Palauta'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125167766420026232)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'fi'
,p_message_text=>unistr('Pystysuuntaista jakajaa ei voi siirt\00E4\00E4 yl\00F6s tai alas')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125333148168026282)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhjenn\00E4 arvio')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125323001414026279)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'fi'
,p_message_text=>'%0 ei ole sallitulla arviointialueella 1 - %1'
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125323190910026279)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'fi'
,p_message_text=>'%0 ei ole numeerinen'
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125319249077026278)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Onnistumisviesti'
,p_is_js_message=>true
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125381072558026297)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125380932987026297)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125291108116026269)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4h\00E4n teht\00E4v\00E4instanssiin liittyv\00E4\00E4 tietuej\00E4rjestelm\00E4\00E4 ei l\00F6ydy')
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125299475489026272)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4toiminnon %0 suoritus ep\00E4onnistui. Teht\00E4v\00E4 on asetettu virhetilaan. Tarkista teht\00E4v\00E4toiminnon koodi')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125179652911026236)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 kommentti: ei valtuuksia')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125178938372026236)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 on jo m\00E4\00E4ritetty')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125172303041026234)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n saaja %0')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125178686638026235)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>unistr('Peruuta teht\00E4v\00E4: ei valtuuksia')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125194253077026240)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n todellista omistajaa ei voi poistaa. Delegoi teht\00E4v\00E4 toiselle osallistujalle ennen toiminnon yritt\00E4mist\00E4 uudelleen.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125178244846026235)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ota teht\00E4v\00E4: ei valtuuksia')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125178373015026235)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>unistr('Viimeistele teht\00E4v\00E4: ei valtuuksia')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125178421991026235)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>unistr('Delegoi teht\00E4v\00E4: ei valtuuksia')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125176872154026235)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n m\00E4\00E4r\00E4p\00E4iv\00E4 ei voi olla menneisyydess\00E4.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125172189269026234)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4r\00E4p\00E4iv\00E4 %0')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125172526224026234)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4toiminto %1 ep\00E4onnistui. Virhesanoma - %0')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125172260875026234)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ep\00E4onnistui')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125171871871026233)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'fi'
,p_message_text=>'Onnistui'
,p_is_js_message=>true
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125172014971026234)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>'Toiminto %1 onnistui. Viesti: %0'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125175312781026235)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'fi'
,p_message_text=>'Ennen vanhentumista'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125200910809026242)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'fi'
,p_message_text=>'Peruuta'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125200487452026242)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 peruutettu')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125201048372026242)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Osallistujalla ei ole oikeuksia peruuttaa teht\00E4v\00E4\00E4')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125200333731026242)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'fi'
,p_message_text=>'Varaa'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125200755722026242)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'fi'
,p_message_text=>unistr('Toinen k\00E4ytt\00E4j\00E4 on jo ottanut teht\00E4v\00E4n tai osallistujalla ei ole oikeuksia ottaa sit\00E4')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125200564250026242)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 on ottanut teht\00E4v\00E4n')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125301648374026273)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'fi'
,p_message_text=>'Viimeistele'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125200185173026242)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 suoritettu, tulos: %0')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125201484749026242)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4\00E4 ei joko ole m\00E4\00E4ritetty tai osallistujalla ei ole oikeuksia suorittaa sit\00E4')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125161881856026231)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 valmis ilman tulosta')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125301738411026273)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'fi'
,p_message_text=>'Luo'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125194616728026240)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 luotu tunnisteella %0')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125301849990026273)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'fi'
,p_message_text=>'Delegoi'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125200220821026242)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 delegoitu mahdolliselle omistajalle %0')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125200844932026242)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Osallistujalla ei ole oikeuksia tai uusi osallistuja ei ole teht\00E4v\00E4n mahdollinen omistaja')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125173951681026234)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4rit\00E4 vanhentuneeksi')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125175023644026234)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 vanhentunut.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125301998723026273)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'fi'
,p_message_text=>'Virhe'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125170666744026233)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4\00E4 ei joko ole m\00E4\00E4ritetty kenellek\00E4\00E4n tai osallistujalla ei ole oikeuksia pyyt\00E4\00E4 tietoja')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125170815586026233)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n tietoja ei joko ole pyydetty tai osallistujalla ei ole oikeuksia l\00E4hett\00E4\00E4 tietoja.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125174453623026234)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4rit\00E4 teht\00E4v\00E4 vanhentuneeksi, sill\00E4 uusimiskertojen enimm\00E4ism\00E4\00E4r\00E4 %0 on saavutettu.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125201738980026242)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 ei ole oikeassa tilassa tai osallistujaa ei ole m\00E4\00E4ritetty liiketoiminnan p\00E4\00E4k\00E4ytt\00E4j\00E4ksi')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125201882695026242)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Toiminto %0 on tuntematon tai sit\00E4 ei voi k\00E4ytt\00E4\00E4 t\00E4ss\00E4 teht\00E4v\00E4ss\00E4')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125302061670026273)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'fi'
,p_message_text=>'Vapauta'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125287788519026268)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 vapautettu, muut voivat nyt ottaa sen')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125180637763026236)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4\00E4 ei saa vapauttaa - k\00E4ytt\00E4j\00E4 ei ole teht\00E4v\00E4n omistaja')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125197689283026241)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'fi'
,p_message_text=>'Poista omistaja'
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125197834222026241)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Osallistuja %0 poistettu teht\00E4v\00E4st\00E4')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125175209394026234)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'fi'
,p_message_text=>'Uusi'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125174119244026234)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 uusittu tunnuksella %0, uusimiskertojen enimm\00E4ism\00E4\00E4r\00E4 ennen vanhentumista on %1.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125175160949026234)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 %0 uusittu tunnuksella %1')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125171103724026233)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'fi'
,p_message_text=>unistr('Pyyd\00E4 tietoja')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125171082333026233)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Taholta %0 pyydetty lis\00E4\00E4 tietoja: %1')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125168990199026233)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Aseta Aloittaja voi viimeistell\00E4 -arvoksi %0')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125171227039026233)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4 tiedot')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125170910794026233)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Pyydetyt tiedot l\00E4hetetty taholle %0: %1')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125302183315026273)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivit\00E4 kommentti')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125198697481026241)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 kommentti: %0')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125201564565026242)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n tila ei salli kommentteja')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125208831272026244)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Aseta teht\00E4v\00E4n m\00E4\00E4r\00E4p\00E4iv\00E4ksi %0')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125166918037026232)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivitys')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125302271478026273)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivit\00E4 omistaja')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125199970651026242)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 mahdollinen omistaja %0 teht\00E4v\00E4n osallistujiin')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125199086610026241)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivit\00E4 parametrit')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125302346674026273)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivit\00E4 prioriteetti')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125200608502026242)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4rit\00E4 teht\00E4v\00E4n prioriteetiksi %0')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125197915401026241)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Parametri %0 p\00E4ivitetty parametrista %1 parametriksi %2.')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125181464696026236)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4 on peruutettu, koska vastaava ty\00F6nkulun instanssi lopetettiin.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125178597148026235)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>unistr('V\00E4lit\00E4 teht\00E4v\00E4: ei valtuuksia')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125171925963026233)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ynnist\00E4nyt %0 %1')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125180868546026236)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Odottamaton sis\00E4inen virhe')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125179104279026236)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n toiminto ei ole k\00E4ytett\00E4viss\00E4')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125204783517026243)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4t\00E4 mahdollista omistajaa ei ole.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125180407237026236)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'fi'
,p_message_text=>unistr('Hyv\00E4ksytty')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125180596908026236)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Hyl\00E4tty')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125161950838026231)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n valmistuminen vaatii tuloksen')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125162101223026231)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4ll\00E4 ei saa olla tulosta')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125197700620026241)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Parametria %0 ei voi p\00E4ivitt\00E4\00E4.')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125194093317026240)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'fi'
,p_message_text=>unistr('Osallistuja on jo olemassa t\00E4m\00E4n teht\00E4v\00E4n instanssissa.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125295533308026271)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'fi'
,p_message_text=>'Kiireellinen'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125172651074026234)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Kiireellinen'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125295469023026271)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'fi'
,p_message_text=>'Korkea'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125172766225026234)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Suuri kiireellisyys'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125295321416026271)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'fi'
,p_message_text=>'Normaali'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125172838567026234)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Normaali kiireellisyys'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125295269765026271)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'fi'
,p_message_text=>'Matala'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125172911333026234)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Pieni kiireellisyys'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125295123693026271)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'fi'
,p_message_text=>'Matalin'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125173099979026234)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Pienin kiireellisyys'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125178706672026235)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4rit\00E4 teht\00E4v\00E4n prioriteetti: ei valtuuksia')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125179987276026236)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritetty')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125180350972026236)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'fi'
,p_message_text=>'Peruutettu'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125180043788026236)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'fi'
,p_message_text=>'Valmis'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125180271524026236)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'fi'
,p_message_text=>'Virhe'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125173767868026234)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'fi'
,p_message_text=>'Vanhentunut'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125180196268026236)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ep\00E4onnistui')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125170465861026233)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'fi'
,p_message_text=>'Tietoja pyydetty'
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125179827849026236)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei m\00E4\00E4ritetty')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125202211813026242)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Teht\00E4v\00E4n luonti m\00E4\00E4rityksell\00E4 %0 sovelluksessa %1 ep\00E4onnistui.'),
'SQLCODE: %2'))
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125202145552026242)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n luonti m\00E4\00E4rityksell\00E4 %0 sovelluksessa %1 ep\00E4onnistui, koska m\00E4\00E4ritys ei sis\00E4ll\00E4 mahdollisia omistajia. Muokkaa teht\00E4v\00E4n m\00E4\00E4rityst\00E4 ja lis\00E4\00E4 v\00E4hint\00E4\00E4n yksi mahdollinen omistaja')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125179433918026236)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n m\00E4\00E4rityst\00E4 ei l\00F6ydy')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125179315322026236)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n osallistujia ei l\00F6ydy')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125180746643026236)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4tunnuksella l\00F6ytyy useampi teht\00E4v\00E4. Ota yhteys tietokannan p\00E4\00E4k\00E4ytt\00E4j\00E4\00E4n.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125179595098026236)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4\00E4 ei l\00F6ydy')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125179257603026236)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4n parametria ei l\00F6ydy')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125215524211026246)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'fi'
,p_message_text=>'Toiminto'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125215447554026246)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'fi'
,p_message_text=>unistr('Hyv\00E4ksynt\00E4')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125162861932026231)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Lomas\00E4\00E4nt\00F6aliohjelma %2 ei pystynyt suorittamaan teht\00E4v\00E4n m\00E4\00E4rityst\00E4 %0 sovelluksessa %1.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125163083360026231)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Osanottaja %1 lis\00E4tty korvaajaksi osanottajalle %0. Syy - %2.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125366771423026293)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6kalurivi')
,p_is_js_message=>true
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125220286074026248)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'fi'
,p_message_text=>'Sovellus'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125381413832026297)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Laajenna/tiivist\00E4 navigointi')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125381569256026297)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Laajenna/tiivist\00E4 sivusarake')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125289928853026269)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4\00E4navigointi')
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125190738102026239)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'fi'
,p_message_text=>'%0 on virheellinen paikkamerkin nimi.'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125297636463026271)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('1 p\00E4iv\00E4')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125297466183026271)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'fi'
,p_message_text=>'1 tunti'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125297741372026271)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 p\00E4iv\00E4\00E4')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125297594730026271)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 tuntia'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125297395531026271)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'fi'
,p_message_text=>'%0 minuuttia'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125297903759026271)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'fi'
,p_message_text=>'%0 viikkoa'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125297819721026271)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'fi'
,p_message_text=>'1 viikko'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125195672505026240)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'fi'
,p_message_text=>'%0 kohdetta valittu'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125195868398026240)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Valitse kohde'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125195788149026240)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'fi'
,p_message_text=>'Valitse %0'
,p_is_js_message=>true
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125384586258026298)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'fi'
,p_message_text=>'Sivun alku'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125242192324026254)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00F6ss\00E4')
,p_is_js_message=>true
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125210626078026245)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe k\00E4sitelt\00E4ess\00E4 pyynt\00F6\00E4.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125196260176026241)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tekstisanomaa %0 ei voi p\00E4ivitt\00E4\00E4, koska se on tilattu toisesta sovelluksesta.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125299346094026272)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Pakollinen arvo'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125215728144026246)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'fi'
,p_message_text=>'Otsikkotaso %0, piilotettu'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125344103274026286)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4ll\00E4 sivulla on tallentamattomia muutoksia.')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125205713546026243)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirtymisty\00F6kalu')
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125205441330026243)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4henn\00E4')
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125206475256026244)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Zoomaustaso {0}\00A0%')
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125205509943026243)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'fi'
,p_message_text=>'Loitonna'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125205678526026243)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'fi'
,p_message_text=>'Zoomauksen nollaus'
,p_is_js_message=>true
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125181145180026236)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulkukaavio ei ole t\00E4ll\00E4 hetkell\00E4 k\00E4ytett\00E4viss\00E4.')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125181039185026236)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulkukaavio')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125182911840026237)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun instanssi %0 on t\00E4ll\00E4 hetkell\00E4 tilassa %1. Toimintoa ei siksi sallita')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125185599295026237)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'fi'
,p_message_text=>unistr('Toiminnon %2 instanssi %1 ty\00F6nkulussa %0 suoritettiin loppuun')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125185323020026237)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'fi'
,p_message_text=>unistr('Uusi instanssi %1 luotu toimintoon %2 ty\00F6nkulussa %0')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125177195821026235)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4h\00E4n ty\00F6nkulun toimintainstanssiin liittyv\00E4\00E4 lis\00E4tietorivi\00E4 ei l\00F6ydy')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125185496885026237)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'fi'
,p_message_text=>unistr('Toiminnon %2 virheellist\00E4 instanssia %1 ty\00F6nkulussa %0 yritettiin uudelleen')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125167410022026232)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun %0 toimintoinstanssi %1 lopetettiin')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125201252875026242)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun %0 toimintoinstanssi %1 aikakatkaistiin ja lopetettiin')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125185607257026237)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'fi'
,p_message_text=>unistr('Toiminnon %2 instanssi %1 ty\00F6nkulussa %0 on odotustilassa')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125167228793026232)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun instanssia %0 muutettiin ja jatkettiin toiminnossa %1')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125184637063026237)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'fi'
,p_message_text=>unistr('Toiminnon %2 odotusinstanssi %1 ty\00F6nkulussa %0 on valmis')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125184470773026237)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Odotustoiminto %1 m\00E4\00E4ritettiin virheelliseksi, koska ty\00F6nkulku %0 oli jo virheellisess\00E4 tilassa ennen toiminnon suorittamista loppuun')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125184578095026237)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'fi'
,p_message_text=>unistr('Odotustoiminto %1 lopetettiin, koska ty\00F6nkulku %0 oli jo lopetetussa tilassa ennen toiminnon suorittamista loppuun')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125167551428026232)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Toiminnon %1 lopetus ty\00F6nkulussa %0 ep\00E4onnistui poikkeuksen vuoksi \2013 %2')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125183112359026237)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'fi'
,p_message_text=>unistr('Edellinen toiminto on t\00E4ll\00E4 hetkell\00E4 kesken ty\00F6nkulussa. Yrit\00E4 my\00F6hemmin uudelleen')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125199202777026241)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'fi'
,p_message_text=>'Valmis %0'
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125182214303026236)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulkua %0 ei voida jatkaa, koska se on t\00E4ll\00E4 hetkell\00E4 toiminnossa %1, joka ei ole odotustilassa')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125194146250026240)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole kelvollinen ty\00F6nkulun vastaavuuden konteksti t\00E4m\00E4n ty\00F6nkulkutoiminnon suorittamalle prosessille. Vastaavuuden kontekstin on oltava kaksoispisteell\00E4 erotettu teksti, joka sis\00E4lt\00E4\00E4 kohdan APEX_APPL_WORKFLOW, jonka j\00E4lkeen tulevat ty\00F6nkulun in')
||'stanssin tunnus ja toiminnon instanssin tunnus.'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125184839219026237)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'fi'
,p_message_text=>unistr('Luotiin uusi instanssi %0 ty\00F6nkulkuun %1, versio %2')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125176935431026235)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4h\00E4n ty\00F6nkulkuinstanssiin liittyv\00E4\00E4 lis\00E4tietorivi\00E4 ei l\00F6ydy')
,p_version_scn=>2692636
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125199414259026242)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4r\00E4p\00E4iv\00E4 %0')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125184770230026237)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulku %0 p\00E4\00E4ttyi tilaan %1')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125181906410026236)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietotyyppi %1 ehdoille, joita verrataan ty\00F6nkulun %0 vaihtotoiminnossa, ei ole yhteensopiva ehto-operaattorin kanssa')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125171793612026233)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ynnist\00E4nyt %0 %1')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125194560941026240)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'fi'
,p_message_text=>unistr('Luotiin uusi instanssi %0 ty\00F6nkulkuun %1, versio %2 - k\00E4ynnistettiin ty\00F6nkulkuinstanssin %3 toimintoinstanssista %4')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125167303313026232)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Toiminto, jonka staattinen tunniste on %1, ei ole toiminto ty\00F6nkulussa %0. Tarkista vastaavan ty\00F6nkulun version toiminnon staattiset tunnisteet.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125192681190026240)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 on pakollinen parametri t\00E4ss\00E4 ty\00F6nkulussa, eik\00E4 se saa olla NULL.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125185224164026237)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun instanssia %0 jatkettiin')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125185199676026237)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun instanssia %0 yritettiin uudelleen')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125199592275026242)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'fi'
,p_message_text=>'%0 uudelleenyritys'
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125199670115026242)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 uudelleenyrityst\00E4')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125199351604026241)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'fi'
,p_message_text=>'Aloitettu %0'
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125193593728026240)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'fi'
,p_message_text=>'Aktiivinen'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125193724637026240)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'fi'
,p_message_text=>'Valmis'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125193843349026240)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125193929064026240)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'fi'
,p_message_text=>'Keskeytetty'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125193678766026240)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'fi'
,p_message_text=>'Lopetettu'
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125208990714026244)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'fi'
,p_message_text=>'Odottaa'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125184994296026237)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun instanssi %0 keskeytettiin')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125190821323026239)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulkuinstanssin %0 seuraavaa toimintoa ei voi m\00E4\00E4ritt\00E4\00E4. Tarkista ja korjaa nykyiselle vaihtotoiminnolle m\00E4ritetyt ehdot ennen kuin yrit\00E4t ty\00F6nkulkua uudelleen.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125185087835026237)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun instanssi %0 lopetettiin')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125184155804026237)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'fi'
,p_message_text=>unistr('Vain ty\00F6nkulkuun %0 m\00E4\00E4ritetty liiketoiminnan p\00E4\00E4k\00E4ytt\00E4j\00E4 voi jatkaa ty\00F6nkulkua')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125184276860026237)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulkua %0 voi yritt\00E4\00E4 uudelleen vain liiketoiminnan p\00E4\00E4k\00E4ytt\00E4j\00E4 ja/tai omistaja')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125183716164026237)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun instanssin %0 voi keskeytt\00E4\00E4 vain ty\00F6nkulkuun m\00E4\00E4ritetty liiketoiminnan p\00E4\00E4k\00E4ytt\00E4j\00E4')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125184072259026237)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'fi'
,p_message_text=>unistr('Vain ty\00F6nkulun instanssin %0 omistajat ja liiketoiminnan p\00E4\00E4k\00E4ytt\00E4j\00E4t voivat lopettaa ty\00F6nkulun')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125182472987026237)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun %0 muuttujat voi p\00E4ivitt\00E4\00E4 vain ty\00F6nkulkuun m\00E4\00E4ritetty liiketoiminnan p\00E4\00E4k\00E4ytt\00E4j\00E4')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125197003967026241)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulkuinstanssin %0 tilan on oltava Virheellinen tai Keskeytetty ennen kuin sen muuttujat voi p\00E4ivitt\00E4\00E4.')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125188597703026238)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun muuttujan %0 arvo p\00E4ivitetty tilaan %1')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125198708357026241)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkululla %0 ei ole aktiivista versiota')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125198870633026241)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkululla %0 ei ole Kehitysvaiheessa-versiota')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125198965715026241)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkululla %0 ei ole aktiivista versiota tai Kehitysvaiheessa-versiota')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125181812359026236)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Aktiviteetti-instanssia %1 ty\00F6nkulun instanssille %0 ei l\00F6ytynyt')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125181661144026236)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulun instanssia %0 ei l\00F6ytynyt')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125216775459026247)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6kirjassa ei ole aktiivista ty\00F6arkkia.')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125216696581026247)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6kirjaa ei ole alustettu.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125216548803026247)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4inen virhe luotaessa XLSX-tiedostoa.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125219051318026247)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'fi'
,p_message_text=>'Arkki'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125229692779026250)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6alustan nimi %0 on jo k\00E4yt\00F6ss\00E4. Kokeile toista nime\00E4.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125358231767026290)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Toiminnot'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125273265999026264)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'fi'
,p_message_text=>'Toiminnot-valikko'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125268929158026262)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 funktio')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125268816759026262)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 ryhmittelyn sarake')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125306401659026274)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 Pivot-sarake')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125306581226026274)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 rivin sarake')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125240990004026254)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'fi'
,p_message_text=>'Kooste'
,p_is_js_message=>true
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125279406554026266)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'fi'
,p_message_text=>'Kooste'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125260391533026260)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'fi'
,p_message_text=>'Keskiarvo'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125264630069026261)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4r\00E4')
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125260437674026260)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'fi'
,p_message_text=>'Maksimi'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125260660730026260)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'fi'
,p_message_text=>'Mediaani'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125260548075026260)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'fi'
,p_message_text=>'Minimi'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125260258471026260)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'fi'
,p_message_text=>'Summa %0'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125261308198026260)
,p_name=>'APEXIR_ALL'
,p_message_language=>'fi'
,p_message_text=>'Kaikki'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125240228046026254)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Kaikki sarakkeet'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125220333053026248)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'fi'
,p_message_text=>'Kaikki rivit'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125355291624026289)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'fi'
,p_message_text=>'Vaihtoehtoinen'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125356828060026290)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'fi'
,p_message_text=>'Vaihtoehtoinen oletus: %0'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125254450516026258)
,p_name=>'APEXIR_AND'
,p_message_language=>'fi'
,p_message_text=>'ja'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125289222589026269)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Tallennettua raporttia ei voi tuoda. Sis\00E4lt\00F6 on vioittunut.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125289315594026269)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'fi'
,p_message_text=>unistr('Tallennettua raporttia ei voi tuoda. Sis\00E4lt\00F6 on tyhj\00E4.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125242438764026254)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00E4')
,p_is_js_message=>true
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125236029794026252)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'fi'
,p_message_text=>'Nouseva'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125257512403026259)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'fi'
,p_message_text=>'Tilanne %0'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125357486908026290)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'fi'
,p_message_text=>'Keskiarvo %0'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125349082986026287)
,p_name=>'APEXIR_BAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Pylv\00E4s')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125241781329026254)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'fi'
,p_message_text=>unistr('v\00E4lill\00E4')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125234806278026252)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Taustav\00E4ri')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125236720662026252)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'fi'
,p_message_text=>'sininen'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125270818957026263)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'fi'
,p_message_text=>'Alin'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125201602204026242)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen %0 hakupalkin vieress\00E4 olevat painikkeet')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125237366102026253)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'fi'
,p_message_text=>'Peruuta'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125243630764026255)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'fi'
,p_message_text=>'Luokka'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125234763528026252)
,p_name=>'APEXIR_CELL'
,p_message_language=>'fi'
,p_message_text=>'Solu'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125261217368026260)
,p_name=>'APEXIR_CHART'
,p_message_language=>'fi'
,p_message_text=>'Kaavio'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125271743516026263)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'fi'
,p_message_text=>'Alustetaan...'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125311491874026276)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Kaavion nimi on m\00E4\00E4ritett\00E4v\00E4.')
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125323861971026279)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Kysely ylitt\00E4\00E4 kaaviokohtaisen arvopisteiden maksimim\00E4\00E4r\00E4n %0. Pienenn\00E4 peruskyselyn tietuem\00E4\00E4r\00E4\00E4 k\00E4ytt\00E4m\00E4ll\00E4 suodatinta.')
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125322736245026279)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Kaaviokyselyn rivien maksimim\00E4\00E4r\00E4 rajoittaa peruskyselyn rivien m\00E4\00E4r\00E4\00E4 mutta ei n\00E4ytett\00E4vien rivien m\00E4\00E4r\00E4\00E4.  '),
unistr('Peruskyselyss\00E4 on maksimim\00E4\00E4r\00E4\00E4 %0 enemm\00E4n rivej\00E4. V\00E4henn\00E4 peruskyselyll\00E4 saatavien tietueiden m\00E4\00E4r\00E4\00E4 k\00E4ytt\00E4m\00E4ll\00E4 suodatinta.')))
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125240364179026254)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Kaaviotyyppi'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125204247044026243)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen %0 kaavion\00E4kym\00E4')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125319468182026278)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'fi'
,p_message_text=>'Valitse kaikki'
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125257906489026259)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Valitse raporttimuoto'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125265766619026261)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'fi'
,p_message_text=>unistr('tyhjenn\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125237286242026253)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Sarake'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125277058514026265)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeet'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125244291493026255)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeen aliakset'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125351858973026288)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Suodata...'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125212003165026245)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'fi'
,p_message_text=>'Sarakeotsikko'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125226125130026249)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'fi'
,p_message_text=>'Saraketoiminnot'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125226428354026249)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'fi'
,p_message_text=>'Toiminnot sarakkeelle %0'
,p_is_js_message=>true
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125267806542026262)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'fi'
,p_message_text=>'Sarakeotsikon valikko'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125271571993026263)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeen tiedot'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125354183901026289)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Sarakeotsikko'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125269219448026263)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'fi'
,p_message_text=>'Sarake %0'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125252157874026257)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'fi'
,p_message_text=>unistr('sis\00E4lt\00E4\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125253433553026258)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'fi'
,p_message_text=>unistr('ei sis\00E4ll\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125235754082026252)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'fi'
,p_message_text=>unistr('sis\00E4ltyy')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125253670755026258)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('ei ole edellisell\00E4 aikav\00E4lill\00E4:')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125262766096026260)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('ei ole seuraavalla aikav\00E4lill\00E4:')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125253502520026258)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('on edellisell\00E4 aikav\00E4lill\00E4:')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125262639688026260)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('on seuraavalla aikav\00E4lill\00E4:')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125235676194026252)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('ei ole tyhj\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125235556067026252)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('on tyhj\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125235306337026252)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'fi'
,p_message_text=>'kuin'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125235804421026252)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'fi'
,p_message_text=>unistr('ei sis\00E4lly')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125235495112026252)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'fi'
,p_message_text=>'ei kuin'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125252498311026257)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'fi'
,p_message_text=>unistr('vastaa s\00E4\00E4nn\00F6llist\00E4 lauseketta')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125257811586026259)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'fi'
,p_message_text=>'Laskenta'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125322432725026279)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'fi'
,p_message_text=>'Laskentalauseke'
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125277310888026265)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'fi'
,p_message_text=>'Luo laskenta sarakkeen aliasten pohjalta.'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125277409265026265)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'fi'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125277519616026265)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'fi'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125277655407026265)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'fi'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125218590864026247)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'fi'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125262056854026260)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'fi'
,p_message_text=>'Laske'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125269865172026263)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4katko')
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125272853142026264)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4katkot')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125359429943026290)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4katkon sarakkeet')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125215250322026246)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'fi'
,p_message_text=>'Laske erilliset'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125357940624026290)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'fi'
,p_message_text=>'Laske erilliset'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125357849249026290)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4r\00E4 %0')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125330831761026282)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivitt\00E4inen')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125384148940026298)
,p_name=>'APEXIR_DATA'
,p_message_language=>'fi'
,p_message_text=>'Tiedot'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125271637918026263)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'fi'
,p_message_text=>'Raportin tiedot %0 minuuttia sitten.'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125204653706026243)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen %0 tieton\00E4kym\00E4')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125241014205026254)
,p_name=>'APEXIR_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4iv\00E4m\00E4\00E4r\00E4')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125275568417026264)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Oletus'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125355063965026289)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Oletusraporttityyppi'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125237431305026253)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125241307844026254)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>unistr('Haluatko poistaa n\00E4m\00E4 raporttiasetukset?')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125341828959026285)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Poista oletusraportti'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125269539001026263)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Poista raportti'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125236121946026252)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'fi'
,p_message_text=>'Laskeva'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125243711216026255)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Kuvaus'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125267709534026262)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Yhden rivin n\00E4kym\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125276066378026265)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'fi'
,p_message_text=>'Suunta %0'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125276928881026265)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei k\00E4yt\00F6ss\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125236950076026253)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytetty')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125240144759026254)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytetyt sarakkeet')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125275973676026265)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 raportissa')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125270770933026263)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'fi'
,p_message_text=>'Alas'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125262188068026260)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'fi'
,p_message_text=>'Nouda'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125275804765026265)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'fi'
,p_message_text=>unistr('\00C4l\00E4 n\00E4yt\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125345158025026286)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'fi'
,p_message_text=>'Korostus, jolla on sama ehto, on jo olemassa.'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125359690804026291)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Pivot-sarakkeen kaksoiskappale. Pivot-sarakkeen luettelon on oltava yksil\00F6iv\00E4.')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125359858909026291)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa'
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125271841727026263)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa kaavion asetuksia'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125278403282026265)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa kaaviota'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125242309212026254)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>unistr('Muokkaa ryhm\00E4katkoa')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125278879431026265)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa suodatinta'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125245307582026255)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa flashbackia'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125336672106026283)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhm\00E4n muokkausperuste')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125278782586026265)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa korostusta'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125306763104026274)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa Pivot-taulukkoa'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125266148956026262)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa raporttia'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125355354433026289)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6posti')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125227583101026250)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoite')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125355641524026289)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'fi'
,p_message_text=>'Piilokopio'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125355893066026289)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'fi'
,p_message_text=>'Teksti'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125355586909026289)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'fi'
,p_message_text=>'Kopio'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125356383440026290)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'fi'
,p_message_text=>unistr('Toistov\00E4li')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125232771184026251)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4lle sovellukselle ei ole m\00E4\00E4ritetty s\00E4hk\00F6postia. Ota yhteys j\00E4rjestelm\00E4nvalvojaan.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125330133995026281)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoite on annettava.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125355986815026289)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'fi'
,p_message_text=>'Katso liite'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125355721724026289)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'fi'
,p_message_text=>'Aihe'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125331163231026282)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiviestille on annettava aihe.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125355400274026289)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'fi'
,p_message_text=>'Vastaanottaja'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125234570638026252)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00F6ss\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125278637430026265)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'fi'
,p_message_text=>unistr('Ota k\00E4ytt\00F6\00F6n/poista k\00E4yt\00F6st\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125278177553026265)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'fi'
,p_message_text=>'Virhe! %0'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125277798635026265)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'fi'
,p_message_text=>unistr('Esimerkkej\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125278583202026265)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'fi'
,p_message_text=>unistr('Esimerkkej\00E4:')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125240074285026253)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4t\00E4 pois tyhj\00E4t arvot')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125279127043026266)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'fi'
,p_message_text=>unistr('Laajenna/tiivist\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125276705940026265)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'fi'
,p_message_text=>'Lauseke'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125261622232026260)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Suodatin'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125272758485026264)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'fi'
,p_message_text=>'Suodattimet'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125283468830026267)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'fi'
,p_message_text=>'Suodattimen lauseke'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125381663113026297)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'fi'
,p_message_text=>unistr('Suodatinlauseke on liian pitk\00E4.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125226335459026249)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'fi'
,p_message_text=>'Suodatusehdotukset'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125283311430026267)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Suodatintyyppi'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125279368810026266)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse etsitt\00E4v\00E4t sarakkeet')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125261999381026260)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125276521332026265)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Flashback-kyselyll\00E4 voit tarkastella tietoja sellaisina kuin ne olivat aiempana ajankohtana.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125330566116026282)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Flashback-kesto'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125331983055026282)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Muotoilu'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125257782062026259)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'fi'
,p_message_text=>'Muotomaski %0'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125269481579026263)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>'Funktio'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125277299546026265)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'fi'
,p_message_text=>'Funktiot %0'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125354972533026289)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'fi'
,p_message_text=>'Funktiot/operaattorit'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125269132921026263)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'fi'
,p_message_text=>'Funktio %0'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125261458181026260)
,p_name=>'APEXIR_GO'
,p_message_language=>'fi'
,p_message_text=>'Suorita'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125235063482026252)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'fi'
,p_message_text=>unistr('vihre\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125280050216026266)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmit\00E4 sarakkeen mukaan')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125280172643026266)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'fi'
,p_message_text=>'Ryhmittely toimintojen mukaan'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125215324002026246)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>'Ryhmittely'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125356031363026289)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Ryhmittelyn sarake %0'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125311540381026276)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittelyn sarake on m\00E4\00E4ritett\00E4v\00E4.')
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125322694557026279)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittelykyselyn rivien maksimim\00E4\00E4r\00E4 rajoittaa peruskyselyn rivien m\00E4\00E4r\00E4\00E4 mutta ei n\00E4ytett\00E4vien rivien m\00E4\00E4r\00E4\00E4. Peruskyselyss\00E4 on maksimim\00E4\00E4r\00E4\00E4 %0 enemm\00E4n rivej\00E4. V\00E4henn\00E4 peruskyselyll\00E4 saatavien tietueiden m\00E4\00E4r\00E4\00E4 k\00E4ytt\00E4m\00E4ll\00E4 suodatinta.')
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125302833476026273)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'fi'
,p_message_text=>'Ryhmittelyn lajittelu'
,p_is_js_message=>true
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125359596167026291)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittelyn lajitteluj\00E4rjestys')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125204405323026243)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittely kohteen %0 n\00E4kym\00E4n mukaan')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125240417731026254)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Vaakasuora pylv\00E4s')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125274455739026264)
,p_name=>'APEXIR_HELP'
,p_message_language=>'fi'
,p_message_text=>'Ohje'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125266294120026262)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Interaktiivisten raporttien avulla loppuk\00E4ytt\00E4j\00E4t voivat mukauttaa raportteja. K\00E4ytt\00E4j\00E4t voivat muuttaa raportin tietojen asettelua valitsemalla sarakkeita, k\00E4ytt\00E4m\00E4ll\00E4 suodattimia sek\00E4 korostamalla ja lajittelemalla. Lis\00E4ksi k\00E4ytt\00E4j\00E4t voivat m\00E4\00E4ritt')
||unistr('\00E4\00E4 katkoja, koosteita, kaavioita, ryhmittelyj\00E4 ja lis\00E4\00E4 omia laskentojaan. K\00E4ytt\00E4j\00E4t voivat my\00F6s m\00E4\00E4ritt\00E4\00E4 itselleen tilauksen, jolloin raportti l\00E4hetet\00E4\00E4n heille s\00E4hk\00F6postitse HTML-muodossa tietyin v\00E4liajoin. K\00E4ytt\00E4j\00E4t voivat luoda raporteista useit')
||unistr('a versioita ja tallentaa ne nimettyin\00E4 raportteina joko julkiseen tai yksityiseen k\00E4ytt\00F6\00F6n. '),
'<p/>',
unistr('Seuraavissa osioissa on yhteenveto interaktiivisen raportin mukautusmahdollisuuksista. Lis\00E4tietoja on <i>Oracle APEX End User''s Guide</i> -oppaan kohdassa "Using Interactive Reports".')))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125273339312026264)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'fi'
,p_message_text=>unistr('Toiminnot-valikko n\00E4kyy hakupalkissa Suorita-painikkeen oikealla puolella. T\00E4m\00E4n valikon vaihtoehdoilla voit mukauttaa interaktiivisia raportteja.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125267005630026262)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Koosteet ovat sarakkeessa teht\00E4vi\00E4 matemaattisia laskelmia. Koosteet n\00E4kyv\00E4t jokaisen ryhm\00E4katkon j\00E4lkeen ja aina raportin lopussa siin\00E4 sarakkeessa, johon ne on m\00E4\00E4ritetty. K\00E4ytett\00E4viss\00E4 on seuraavat vaihtoehdot:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Kooste</strong> mahdollistaa aiemmin m\00E4\00E4ritetyn koosteen'),
'valinnan ja muokkauksen.</li>',
'<li><strong>Funktio</strong> on suoritettava funktio (esimerkiksi SUM, MIN).</li>',
'<li><strong>Sarake</strong> valitsee sarakkeen, jossa matemaattinen funktio suoritetaan. Vain',
unistr('numeromuotoiset sarakkeet n\00E4kyv\00E4t.</li>'),
'</ul>'))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125267140353026262)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Voit m\00E4\00E4ritt\00E4\00E4 jokaiseen tallennettuun raporttiin yhden kaavion. Kun'),
unistr('kaavio on m\00E4\00E4ritetty, voit siirty\00E4 kaavio- ja raporttin\00E4kymien v\00E4lill\00E4 hakupalkin n\00E4kym\00E4kuvakkeiden avulla.'),
unistr('K\00E4ytett\00E4viss\00E4 ovat seuraavat vaihtoehdot:  '),
'<p>',
'</p><ul>',
unistr('<li><strong>Kaaviotyyppi</strong> m\00E4\00E4ritt\00E4\00E4 sis\00E4llytett\00E4v\00E4n kaaviotyypin.'),
unistr('Valitse joko vaakasuora pylv\00E4s, pystysuora pylv\00E4s, ympyr\00E4 tai viiva.</li>'),
unistr('<li><strong>Nimi</strong>-asetuksella valitaan nimen\00E4 k\00E4ytett\00E4v\00E4 sarake.</li>'),
unistr('<li><strong>Nimen akselin otsikko</strong> on otsikko, joka n\00E4kyy Nimi-asetukseksi'),
unistr('valitun sarakkeen akselilla. T\00E4m\00E4 vaihtoehto ei ole k\00E4ytett\00E4viss\00E4 ympyr\00E4kaavioissa.</li>'),
unistr('<li><strong>Arvo</strong>-asetuksella valitaan arvona k\00E4ytett\00E4v\00E4 sarake. Jos k\00E4ytt\00E4m\00E4si funktio'),
unistr('on COUNT-tyyppi\00E4, Arvo-asetusta ei tarvitse valita.</li>'),
unistr('<li><strong>Arvon akselin otsikko</strong> on otsikko, joka n\00E4kyy Arvo-asetukseksi valitun'),
unistr('sarakkeen akselilla. T\00E4m\00E4 vaihtoehto ei ole k\00E4ytett\00E4viss\00E4 ympyr\00E4kaavioissa.</li>'),
'<li><strong>Funktio</strong> on valinnainen funktio, joka suoritetaan Arvo-asetukseksi valitulle sarakkeelle.</li>',
'<li><strong>Lajittelu</strong> lajittelee valmiin tulosjoukon.</li></ul>'))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125266423934026262)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Sarakeotsikon valikko avataan napsauttamalla mit\00E4 tahansa sarakeotsikkoa. Se sis\00E4lt\00E4\00E4 esimerkiksi seuraavat vaihtoehdot:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Nouseva j\00E4rjestys</strong> -kuvake lajittelee raportin ko. sarakkeen mukaan nousevassa j\00E4rjestyksess\00E4.</li>'),
unistr('<li><strong>Laskeva j\00E4rjestys</strong> -kuvake lajittelee raportin ko. sarakkeen mukaan laskevassa j\00E4rjestyksess\00E4.</li>'),
unistr('<li><strong>Piilota sarake</strong> piilottaa sarakkeen. Kaikkia sarakkeita ei voi piilottaa. Jos saraketta ei voi piilottaa, Piilota sarake -kuvake ei n\00E4y.</li>'),
unistr('<li><strong>Sarakekatko</strong> luo sarakkeeseen katkosryhm\00E4n. T\00E4ll\00F6in sarake katsotaan p\00E4\00E4tietueeksi, ja se j\00E4\00E4 pois raportista.</li>'),
unistr('<li><strong>Sarakkeen tiedot</strong> n\00E4ytt\00E4\00E4 saraketta koskevan mahdollisen ohjetekstin.</li>'),
unistr('<li><strong>Tekstialue</strong> on tarkoitettu hakuehtojen sy\00F6tt\00E4miseen (kirjainkoko ei ole merkitsev\00E4).'),
unistr('Yleismerkkej\00E4 ei tarvita. Arvon sy\00F6tt\00E4minen rajaa valikon'),
unistr('alareunassa n\00E4kyv\00E4\00E4 arvoluetteloa. T\00E4m\00E4n j\00E4lkeen voit valita arvon, josta luodaan suodatin lis\00E4\00E4m\00E4ll\00E4 siihen =-merkki'),
unistr('(esimerkiksi <code>column = ''ABC''</code>). Vaihtoehtoisesti voit napsauttaa taskulamppukuvaketta ja sy\00F6tt\00E4\00E4 suodattimena k\00E4ytett\00E4v\00E4n arvon LIKE-tekij\00E4n kanssa'),
'(esimerkiksi <code>column LIKE ''%ABC%''</code>).</li>',
unistr('<li><strong>Yksil\00F6ivien arvojen luettelo</strong> sis\00E4lt\00E4\00E4 ensimm\00E4iset 500 yksil\00F6iv\00E4\00E4'),
unistr('arvoa, jotka vastaavat antamiasi suodatusehtoja. Jos kyseess\00E4 on p\00E4iv\00E4m\00E4\00E4r\00E4sarake, t\00E4ss\00E4 n\00E4ytet\00E4\00E4n luettelo'),
unistr('p\00E4iv\00E4m\00E4\00E4r\00E4alueista. Valitsemastasi arvosta luodaan suodatin lis\00E4\00E4m\00E4ll\00E4 siihen =-merkki (esimerkiksi <code>column = ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125266921699026262)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('T\00E4ss\00E4 voit lis\00E4t\00E4 raporttiin laskettuja sarakkeita. K\00E4ytett\00E4viss\00E4 ovat sek\00E4 matemaattiset laskennat (esimerkiksi <code>NBR_HOURS/24</code>) ett\00E4 vakiomuotoiset Oracle-funktiot,'),
unistr('joita k\00E4ytet\00E4\00E4n olemassa olevissa sarakkeissa. Osa on esitetty esimerkkein\00E4, mutta my\00F6s muita (kuten <code>TO_DATE</code>) voi k\00E4ytt\00E4\00E4. K\00E4ytett\00E4viss\00E4 ovat mm. seuraavat vaihtoehdot:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Laskenta</strong> mahdollistaa aiemmin m\00E4\00E4ritettyjen laskentojen valinnan ja muokkauksen.</li>'),
'<li><strong>Sarakeotsikko</strong> on uuden sarakkeen sarakeotsikko.</li>',
'<li><strong>Muotomaski</strong> on sarakkeeseen sovellettava Oracle-muotomaski (esimerkiksi S9999).</li>',
unistr('<li><strong>Laskenta</strong> on suoritettava laskenta. Sarakkeisiin viitataan laskennassa niiden n\00E4ytett\00E4vill\00E4 aliaksilla.</li>'),
'</ul>',
unistr('<p>Laskennan alapuolella n\00E4ytet\00E4\00E4n laatimasi kyselyn sarakkeet'),
unistr('ja niihin liittyv\00E4t aliakset. Sarakkeet lis\00E4t\00E4\00E4n laskentaan napsauttamalla niiden'),
unistr('nimi\00E4 tai aliaksia. Sarakkeiden vieress\00E4 on n\00E4pp\00E4imist\00F6. N\00E4pp\00E4imist\00F6\00E4 voi k\00E4ytt\00E4\00E4 yleisten'),
unistr('n\00E4pp\00E4inten pikavalintaan. Funktiot n\00E4kyv\00E4t n\00E4yt\00F6n oikeassa reunassa.</p>'),
unistr('<p>Seuraavassa esimerkkilaskelmassa selvitet\00E4\00E4n kokonaispalkka:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
'(jossa A on ORGANISAATIO, B on PALKKA ja C on PROVISIO)',
''))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125273489560026264)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4t\00E4 k\00E4ytet\00E4\00E4n katkoryhm\00E4n luomiseen yhteen tai useampaan sarakkeeseen. N\00E4it\00E4 sarakkeita ei en\00E4\00E4 sis\00E4llytet\00E4 interaktiiviseen raporttiin, vaan ne n\00E4ytet\00E4\00E4n p\00E4\00E4tietueena.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125267692759026262)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Jos haluat tarkastella tietoja yksi rivi kerrallaan, napsauta yhden rivin n\00E4kym\00E4n kuvaketta rivill\00E4, jota haluat tarkastella. Mik\00E4li mahdollista, yhden rivin n\00E4kym\00E4 on aina ensimm\00E4isess\00E4 sarakkeessa. Interaktiivisen raportin mukautuksesta riippuen yh')
||unistr('den rivin n\00E4kym\00E4 voi olla vakion\00E4kym\00E4 tai p\00E4ivitykset mahdollistava mukautettu sivu.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125267549631026262)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'fi'
,p_message_text=>unistr('Mahdollistaa nykyisen tulosjoukon noudon. Noutomuotoja ovat PDF, Excel, HTML ja CSV. Noutovaihtoehdot riippuvat valitusta muodosta. Kaikki muodot voidaan l\00E4hett\00E4\00E4 my\00F6s s\00E4hk\00F6postitse.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125266637340026262)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Rajaa raporttia lis\00E4\00E4m\00E4ll\00E4 tai muokkaamalla kyselyn<code>WHERE</code>-lausetta. Voit k\00E4ytt\00E4\00E4 suodattimena saraketta tai rivi\00E4.  '),
unistr('<p>Jos haluat k\00E4ytt\00E4\00E4 suodattimena saraketta, valitse ensin sopiva sarake (joka voi olla'),
unistr('piilotettu sarake), valitse sitten vakiomuotoinen Oracle-operaattori (=, !=, ei sis\00E4lly, v\00E4lill\00E4) ja anna vertailuun k\00E4ytett\00E4v\00E4 lauseke. Lausekkeissa kirjainkoko on merkitsev\00E4. Yleismerkkin\00E4 toimii % (esimerkiksi <code>STATE_NAME'),
'kuin A%)</code>.</p>',
unistr('<p>Jos haluat k\00E4ytt\00E4\00E4 suodattimena rivi\00E4, voit luoda monimutkaisia <code>WHERE</code>-lauseita k\00E4ytt\00E4m\00E4ll\00E4'),
unistr('sarakkeiden aliaksia ja mit\00E4 tahansa Oracle-funktioita tai -operaattoreita (esimerkiksi <code>G = ''VA'' tai G = ''CT''</code>, jossa'),
'<code>G</code> on alias sarakkeelle <code>CUSTOMER_STATE</code>).</p>',
''))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125267292216026262)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Flashback-kyselyll\00E4 voit tarkastella tietoja siin\00E4 muodossa kuin ne olivat aiempana'),
'ajankohtana. Flashback-toiminnon oletusarvoinen aika-asetus on 3 tuntia (eli 180 minuuttia)',
unistr('taaksep\00E4in, mutta todellinen arvo vaihtelee tietokannan mukaan.')))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125331856075026282)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Muotoilu-kohdassa voit mukauttaa raportin esitystapaa.',
unistr('Muotoilu sis\00E4lt\00E4\00E4 seuraavat alivalikot:</p>'),
'<ul><li>Lajittelu</li>',
unistr('<li>Ryhm\00E4katko</li>'),
'<li>Korostus</li>',
'<li>Laskenta</li>',
'<li>Kooste</li>',
'<li>Kaavio</li>',
'<li>Ryhmittely</li>',
'<li>Pivot</li>',
'</ul>',
''))
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125330013264026281)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Voit m\00E4\00E4ritt\00E4\00E4 jokaiseen tallennettuun raporttiin yhden ryhmittelyn\00E4kym\00E4n. Kun n\00E4kym\00E4 on m\00E4\00E4ritetty, voit siirty\00E4 ryhmittely- ja raporttin\00E4kym\00E4n v\00E4lill\00E4 hakupalkin kuvakkeiden avulla. Luo ryhmittelyn\00E4kym\00E4 valitsemalla '),
'<p></p>',
'<ul>',
unistr('<li>ryhmittelyn perusteena k\00E4ytett\00E4v\00E4t sarakkeet</li>'),
unistr('<li>koosteeseen k\00E4ytett\00E4v\00E4t sarakkeet sek\00E4 suoritettava funktio (keskiarvo, summa, laskenta jne.)</li>'),
'</ul>'))
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125266828468026262)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>T\00E4ss\00E4 voit m\00E4\00E4ritt\00E4\00E4 suodattimen. Suodatinehtoja vastaavat rivit n\00E4kyv\00E4t korostettuina suodattimeen liittyv\00E4n ominaisuuden mukaan. Mahdollisia vaihtoehtoja ovat:</p>'),
'<ul>',
unistr('<li><strong>Nimi</strong>: vain n\00E4ytt\00E4mist\00E4 varten.</li>'),
unistr('<li><strong>J\00E4rjestys</strong>: m\00E4\00E4ritt\00E4\00E4 s\00E4\00E4nt\00F6jen arviointij\00E4rjestyksen.</li>'),
unistr('<li><strong>K\00E4yt\00F6ss\00E4</strong>: m\00E4\00E4ritt\00E4\00E4, onko s\00E4\00E4nt\00F6 k\00E4yt\00F6ss\00E4 vai ei.</li>'),
unistr('<li><strong>Korostustyyppi</strong>: m\00E4\00E4ritt\00E4\00E4, korostetaanko rivi vai solu.'),
'Jos valinta on Solu, Korostusehto-asetuksen',
'mukainen sarake korostetaan.</li>',
unistr('<li><strong>Taustav\00E4ri</strong>:korostetun alueen uusi taustav\00E4ri.</li>'),
unistr('<li><strong>Tekstin v\00E4ri</strong>: korostetun alueen tekstin uusi v\00E4ri.</li>'),
unistr('<li><strong>Korostusehto</strong>: m\00E4\00E4ritt\00E4\00E4 suodatinehdon.</li>'),
'</ul>',
''))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125160277566026230)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Voit m\00E4\00E4ritt\00E4\00E4 jokaiseen tallennettuun raporttiin yhden Pivot-n\00E4kym\00E4n. Kun n\00E4kym\00E4 on m\00E4\00E4ritetty, voit siirty\00E4 Pivot- ja raporttin\00E4kym\00E4n v\00E4lill\00E4 hakupalkin kuvakkeiden avulla. Luo Pivot-n\00E4kym\00E4 valitsemalla ensin '),
'<p></p>',
'<ul>',
unistr('<li>k\00E4\00E4nt\00E4misen tukipisteen\00E4 k\00E4ytett\00E4v\00E4t sarakkeet</li>'),
unistr('<li>rivein\00E4 n\00E4ytett\00E4v\00E4t sarakkeet</li>'),
unistr('<li>koosteeseen sis\00E4llytett\00E4v\00E4t sarakkeet sek\00E4 suoritettava funktio (keskiarvo, summa, laskenta jne.)</li>'),
'</ul>'))
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125277926094026265)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Kun mukautat interaktiivista raporttia, raportin asetukset',
unistr('n\00E4kyv\00E4t hakupalkin alapuolella ja raportin yl\00E4puolella. T\00E4m\00E4n alueen voi tiivist\00E4\00E4 tai laajentaa n\00E4yt\00F6n vasemmassa reunassa olevalla kuvakkeella.'),
'<p>',
unistr('Kunkin raportin asetuksen kohdalla voit tehd\00E4 seuraavaa:'),
'</p><ul>',
unistr('<li>Voit muokata asetusta napsauttamalla sen nime\00E4.</li>'),
unistr('<li>Voit ottaa asetuksen k\00E4ytt\00F6\00F6n tai pois k\00E4yt\00F6st\00E4 valitsemalla Ei k\00E4yt\00F6ss\00E4-/K\00E4yt\00F6ss\00E4-valintaruudun tai poistamalla valinnan. T\00E4ll\00E4 tavoin voit tilap\00E4isesti ottaa asetuksen k\00E4ytt\00F6\00F6n tai pois k\00E4yt\00F6st\00E4.</li>'),
'<li>Voit poistaa asetuksen napsauttamalla Poista-kuvaketta.</li>',
'</ul>',
'<p>Jos olet luonut kaavion, ryhmittelyn tai pivot-taulukon,',
unistr('voit siirty\00E4 niiden ja perusraportin v\00E4lill\00E4 n\00E4yt\00F6n oikeassa reunassa olevien Raporttin\00E4kym\00E4n, Kaavion\00E4kym\00E4n, Ryhmittelyn\00E4kym\00E4n ja'),
unistr('Pivot-n\00E4kym\00E4n linkkien avulla. Kun tarkastelet kaaviota, ryhmittely\00E4 tai pivot-taulukkoa, voit my\00F6s muokata asetuksia'),
unistr('napsauttamalla Muokkaa-linkki\00E4.</p>'),
''))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125267425801026262)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'fi'
,p_message_text=>'Palauttaa raportin asetukset oletusasetuksiin ja poistaa kaikki siihen mahdollisesti tehdyt mukautukset.'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125332155038026282)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritt\00E4\00E4 yhdell\00E4 sivulla n\00E4ytett\00E4vien tietueiden m\00E4\00E4r\00E4n.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125267374197026262)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Tallentaa mukautetun raportin my\00F6hemp\00E4\00E4 k\00E4ytt\00F6\00E4 varten. Voit antaa raportille nimen ja valinnaisen kuvauksen ja julkaista sen yleisesti saataville (jolloin kaikki k\00E4ytt\00E4j\00E4t, joilla on k\00E4ytt\00F6oikeudet ensisijaiseen oletusraporttiin, voivat tarkastel')
||unistr('la sit\00E4). Tallennettavia interaktiivisia raporttityyppej\00E4 on nelj\00E4:</p>'),
'<ul>',
unistr('<li><strong>Ensisijainen oletus</strong> (vain kehitt\00E4jille). Ensisijainen oletus on aina ensimm\00E4isen\00E4 tarjottava oletusraportti. Ensisijaisia oletusraportteja ei voi poistaa tai nimet\00E4 uudelleen.</li>'),
unistr('<li><strong>Vaihtoehtoinen raportti</strong> (vain kehitt\00E4jille). T\00E4m\00E4n raporttityypin avulla kehitt\00E4j\00E4t voivat luoda erilaisia raporttiasetteluita. Vain kehitt\00E4j\00E4t voivat tallentaa, poistaa tai nimet\00E4 uudelleen vaihtoehtoisia raportteja.</li>'),
unistr('<li><strong>Julkinen raportti</strong> (loppuk\00E4ytt\00E4j\00E4). T\00E4m\00E4n raportin luonut loppuk\00E4ytt\00E4j\00E4 voi tallentaa, poistaa tai nimet\00E4 sen uudelleen. Muut k\00E4ytt\00E4j\00E4t voivat tarkastella raporttia ja tallentaa sen asettelun uutena raporttina.</li>'),
unistr('<li><strong>Yksityinen raportti</strong> (loppuk\00E4ytt\00E4j\00E4). Vain t\00E4m\00E4n raportin luonut loppuk\00E4ytt\00E4j\00E4 voi tallentaa, poistaa tai nimet\00E4 sen uudelleen.</li>'),
'</ul>',
unistr('<p>Jos tallennat mukautettuja raportteja, hakupalkissa n\00E4kyy rivivalitsimen vasemmalla puolella raporttivalitsin (mik\00E4li t\00E4m\00E4 toiminto on k\00E4yt\00F6ss\00E4).</p>'),
''))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125266322978026262)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Raportin jokaisen sivun yl\00E4osassa on hakualue. T\00E4ll\00E4 alueella (hakupalkissa) on seuraavat toiminnot:')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125332799169026282)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'fi'
,p_message_text=>unistr('<li><strong>Toiminnot-valikossa</strong> voit mukauttaa raporttia. Lis\00E4tietoja on j\00E4ljemp\00E4n\00E4.</li>')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125332206772026282)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'fi'
,p_message_text=>'<li><strong>Sarakkeiden valintakuvakkeella</strong> voit valita sarakkeet, joihin haku kohdistuu (tai valita kaikki sarakkeet).</li>'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125332500696026282)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'fi'
,p_message_text=>unistr('<li><strong>Raportit</strong> n\00E4ytt\00E4\00E4 vaihtoehtoiset oletusraportit sek\00E4 tallennetut yksityiset tai julkiset raportit.</li>')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125332496316026282)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'fi'
,p_message_text=>unistr('<li><strong>Rivit</strong> m\00E4\00E4ritt\00E4\00E4 yhdell\00E4 sivulla n\00E4ytett\00E4vien tietueiden m\00E4\00E4r\00E4n.</li>')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125332346575026282)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>Tekstialueelle</strong> voit sy\00F6tt\00E4\00E4 hakuehtoja (kirjainkoko ei ole merkitsev\00E4). Yleismerkit ovat oletusarvoisesti k\00E4yt\00F6ss\00E4.</li>'),
unistr('<li><strong>Suorita-painike</strong> k\00E4ynnist\00E4\00E4 haun. Haun voi k\00E4ynnist\00E4\00E4 my\00F6s painamalla Enter-n\00E4pp\00E4int\00E4, kun kohdistin on haun tekstialueella.</li>')))
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125332684230026282)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('<li><strong>N\00E4kym\00E4kuvakkeilla</strong> voit siirty\00E4 raportin raportti-, tieto-, kaavio-, ryhmittely- ja pivot-n\00E4kymien v\00E4lill\00E4, mik\00E4li ne on m\00E4\00E4ritetty.</li>')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125266521681026262)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytet\00E4\00E4n n\00E4ytett\00E4vien sarakkeiden muokkaukseen. Oikealla olevat sarakkeet n\00E4ytet\00E4\00E4n. Vasemmalla olevat sarakkeet piilotetaan. Voit j\00E4rjestell\00E4 n\00E4ytett\00E4vi\00E4 sarakkeita n\00E4yt\00F6n oikeassa reunassa olevilla nuolilla. Laskettujen sarakkeiden edess\00E4 on <stro')
||'ng>**</strong>.'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125266782266026262)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>K\00E4ytet\00E4\00E4n lajitteluun k\00E4ytett\00E4vien sarakkeiden vaihtoon. M\00E4\00E4r\00E4\00E4, tehd\00E4\00E4nk\00F6 '),
'',
unistr('lajittelu nousevassa vai laskevassa j\00E4rjestyksess\00E4. Voit my\00F6s m\00E4\00E4ritt\00E4\00E4, miten'),
unistr('<code>NULL</code>-arvoja k\00E4sitell\00E4\00E4n. Oletusasetus on, ett\00E4 <code>NULL</code>-arvot n\00E4ytet\00E4\00E4n aina tulosten aluksi tai aina tulosten lopuksi. Lajittelun tulokset tulevat n\00E4kyviin raportin sarakeotsikkojen oikealle'),
'puolelle.</p>'))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125329861238026281)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Kun lis\00E4\00E4t tilauksen, sinua pyydet\00E4\00E4n antamaan s\00E4hk\00F6postiosoite (tai useita osoitteita pilkulla erotettuina), s\00E4hk\00F6postiviestin aihe, l\00E4hetystiheys ja alkamis- ja p\00E4\00E4ttymisp\00E4iv\00E4t. Valmiisiin s\00E4hk\00F6postiviesteihin sis\00E4ltyy viety versio (PDF, Excel, HTM')
||unistr('L tai CSV) interaktiivisesta raportista, joka kattaa nykyiset tiedot niiden raporttiasetusten mukaisesti, jotka olivat k\00E4yt\00F6ss\00E4 tilauksen lis\00E4\00E4misajankohtana.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125271465627026263)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Piilota sarake'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125261833257026260)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>'Korostus'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125272968588026264)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'fi'
,p_message_text=>'Korostukset'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125243150003026254)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'fi'
,p_message_text=>'Korosta solu, %0 / %1'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125278038591026265)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'fi'
,p_message_text=>'Korostusehto'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125243065004026254)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'fi'
,p_message_text=>'Korosta rivi, %0 / %1'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125330441549026282)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'fi'
,p_message_text=>'Korostuksen tyyli'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125234668713026252)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'fi'
,p_message_text=>'Korostustyyppi'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125349229144026287)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'fi'
,p_message_text=>'Vaaka'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125378224096026296)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'fi'
,p_message_text=>'1 ei-aktiivinen asetus'
,p_version_scn=>2692672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125378388530026296)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'%0 ei-aktiivista asetusta'
,p_version_scn=>2692672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125268036064026262)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'fi'
,p_message_text=>'Interaktiivisen raportin ohje'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125279080720026266)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125272419594026264)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen laskentalauseke. %0'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125228039064026250)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4\00E4ttymisp\00E4iv\00E4m\00E4\00E4r\00E4n on oltava alkamisp\00E4iv\00E4m\00E4\00E4r\00E4n j\00E4lkeen.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125287292726026268)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen suodatinlauseke. %0'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125357084578026290)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen suodatinkysely'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125378495414026296)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'fi'
,p_message_text=>'1 virheellinen asetus'
,p_version_scn=>2692672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125378555039026296)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 virheellist\00E4 asetusta')
,p_version_scn=>2692672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125330662826026282)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'fi'
,p_message_text=>'(minuutteina)'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125347612672026287)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 on edellisell\00E4 aikav\00E4lill\00E4: %1')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125347862651026287)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 on seuraavalla aikav\00E4lill\00E4: %1')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125347708549026287)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole edellisell\00E4 aikav\00E4lill\00E4: %1')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125347995381026287)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 ei ole seuraavalla aikav\00E4lill\00E4: %1')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125277143624026265)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4pp\00E4imist\00F6')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125240824136026254)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Nimi %0'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125271062453026263)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Nimen akselin otsikko'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125263311591026261)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Viime p\00E4iv\00E4')
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125263555053026261)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'fi'
,p_message_text=>'Viimeinen tunti'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125263070071026261)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'fi'
,p_message_text=>'Edellinen kuukausi'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125263178329026261)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'fi'
,p_message_text=>'Edellinen viikko'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125263258043026261)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('Edelliset %0 p\00E4iv\00E4\00E4')
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125263459797026261)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'fi'
,p_message_text=>'Edelliset %0 tuntia'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125262829741026260)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'fi'
,p_message_text=>'Edelliset %0 vuotta'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125262971293026260)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'fi'
,p_message_text=>'Edellinen vuosi'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125240745391026254)
,p_name=>'APEXIR_LINE'
,p_message_language=>'fi'
,p_message_text=>'Viiva'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125237542214026253)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'fi'
,p_message_text=>'Viiva ja alue'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125356910145026290)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kartalla')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125271934535026263)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'fi'
,p_message_text=>unistr('Kyselyn arvioidaan ylitt\00E4v\00E4n resurssien sallitun maksimim\00E4\00E4r\00E4n. Muokkaa raportin asetuksia ja yrit\00E4 uudelleen.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125253365921026258)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4n raportin maksimirivim\00E4\00E4r\00E4 on %0. Pienenn\00E4 kyselyn tietuem\00E4\00E4r\00E4\00E4 k\00E4ytt\00E4m\00E4ll\00E4 suodatinta.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125357534655026290)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'fi'
,p_message_text=>'Maksimi %0'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125357787224026290)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'fi'
,p_message_text=>'Mediaani %0'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125200078130026242)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>'Viesti'
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125257638984026259)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 minuuttia sitten'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125357653547026290)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'fi'
,p_message_text=>'Minimi %0'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125356643022026290)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'fi'
,p_message_text=>'Kuukausi'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125331022509026282)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'fi'
,p_message_text=>'Kuukausittainen'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125270253393026263)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125270134807026263)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4 kaikki')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125383329363026298)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('Alueen staattinen tunniste on m\00E4\00E4ritett\00E4v\00E4, koska sivulla on useita interaktiivisia raportteja.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125236209025026252)
,p_name=>'APEXIR_NAME'
,p_message_language=>'fi'
,p_message_text=>'Nimi'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125265913509026261)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'fi'
,p_message_text=>'Uusi kooste'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125379195972026297)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Uusi luokka'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125266015837026262)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'fi'
,p_message_text=>'Uusi laskenta'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125260714581026260)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125263821832026261)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('Seuraava p\00E4iv\00E4')
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125263644956026261)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'fi'
,p_message_text=>'Seuraava tunti'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125264184299026261)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'fi'
,p_message_text=>'Seuraava kuukausi'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125264099579026261)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'fi'
,p_message_text=>'Seuraava viikko'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125263941489026261)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('Seuraavat %0 p\00E4iv\00E4\00E4')
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125263767960026261)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 tuntia'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125264310335026261)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'fi'
,p_message_text=>'Seuraavat %0 vuotta'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125264274697026261)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'fi'
,p_message_text=>'Seuraava vuosi'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125236536803026252)
,p_name=>'APEXIR_NO'
,p_message_language=>'fi'
,p_message_text=>'Ei'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125279259013026266)
,p_name=>'APEXIR_NONE'
,p_message_language=>'fi'
,p_message_text=>unistr('- Ei mit\00E4\00E4n -')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125330223622026281)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoite ei ole kelvollinen.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125202323631026242)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytett\00E4vi\00E4 sarakkeita ei ole valittu. Tuo sarakkeet n\00E4kyviin toimintovalikon <strong>Sarakkeet</strong>-kohdasta.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125275799317026265)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhj\00E4t aina alussa')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125275607974026264)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhj\00E4t aina lopussa')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125276142638026265)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'fi'
,p_message_text=>'Tyhjien lajittelu %0'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125272598251026264)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'fi'
,p_message_text=>'Flashback-ajan on oltava numeerinen arvo.'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125272135056026263)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjestysarvon on oltava numeerinen.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125276612783026265)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'fi'
,p_message_text=>'Operaattori'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125235185154026252)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'fi'
,p_message_text=>'oranssi'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125349159139026287)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'fi'
,p_message_text=>'Suunta'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125237004028026253)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'fi'
,p_message_text=>'Muu'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125203226352026243)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'fi'
,p_message_text=>'Kohteen %0 sivutus'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125217220479026247)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'fi'
,p_message_text=>'Sivun suunta'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125217977338026247)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'fi'
,p_message_text=>'Vaaka'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125218069673026247)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'fi'
,p_message_text=>'Pysty'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125217109302026247)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'fi'
,p_message_text=>'Sivun koko'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125217799837026247)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'fi'
,p_message_text=>'A3'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125217623377026247)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'fi'
,p_message_text=>'A4'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125217880355026247)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'fi'
,p_message_text=>'Mukautettu'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125217412907026247)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'fi'
,p_message_text=>'Legal'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125217389336026247)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'fi'
,p_message_text=>'Letter'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125217549540026247)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'fi'
,p_message_text=>'Tabloid'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125358056253026290)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'fi'
,p_message_text=>unistr('Prosenttiosuus kokonaism\00E4\00E4r\00E4st\00E4 %0 (%)')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125357210125026290)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'fi'
,p_message_text=>'Prosenttiosuus kokonaissummasta %0 (%)'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125356287903026290)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Prosenttiosuus kokonaism\00E4\00E4r\00E4st\00E4')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125356104307026289)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'fi'
,p_message_text=>'Prosenttiosuus kokonaissummasta'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125240611653026254)
,p_name=>'APEXIR_PIE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ympyr\00E4')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125306378204026274)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'fi'
,p_message_text=>'Pivot'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125307845555026275)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Kooste on m\00E4\00E4ritett\00E4v\00E4.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125308088801026275)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'fi'
,p_message_text=>unistr('Koostetta ei voi tehd\00E4 rivin sarakkeeksi valitusta sarakkeesta.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125307266767026274)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Pivot-sarakkeet'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125307056830026274)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'fi'
,p_message_text=>'Pivot-sarake %0'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125307629093026274)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Pivot-sarake on m\00E4\00E4ritett\00E4v\00E4.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125160196484026230)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Pivot-kyselyn rivien maksimim\00E4\00E4r\00E4 rajoittaa peruskyselyn rivien m\00E4\00E4r\00E4\00E4 mutta ei n\00E4ytett\00E4vien rivien m\00E4\00E4r\00E4\00E4. Peruskyselyss\00E4 on maksimim\00E4\00E4r\00E4\00E4 %0 enemm\00E4n rivej\00E4. V\00E4henn\00E4 peruskyselyll\00E4 saatavien tietueiden m\00E4\00E4r\00E4\00E4 k\00E4ytt\00E4m\00E4ll\00E4 suodatinta.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125307569524026274)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'fi'
,p_message_text=>'Pivot-lajittelu'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125273514168026264)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'fi'
,p_message_text=>unistr('Pivot-sarakkeessa on liian monta erillist\00E4 arvoa - Pivot SQL -kysely\00E4 ei voi luoda.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125204502091026243)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen %0 Pivot-n\00E4kym\00E4')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125330322804026282)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'fi'
,p_message_text=>'Esikatselu'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125260889615026260)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125355104449026289)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'fi'
,p_message_text=>'Ensisijainen'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125331357047026282)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Ensisijainen raportti'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125217005391026247)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4llyt\00E4 helppok\00E4ytt\00F6isyystunnisteet')
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125177840212026235)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'fi'
,p_message_text=>'Poista Rich Text'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125286275110026268)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'fi'
,p_message_text=>'Yksityinen'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125241242169026254)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'fi'
,p_message_text=>'Julkinen'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125236824594026253)
,p_name=>'APEXIR_RED'
,p_message_language=>'fi'
,p_message_text=>'punainen'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125383230715026298)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Alueen staattista tunnistetta %0 ei ole olemassa.'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125270325462026263)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'fi'
,p_message_text=>'Poista'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125270495371026263)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'fi'
,p_message_text=>'Poista kaikki'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125378630658026296)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'fi'
,p_message_text=>'Poista kaavio'
,p_version_scn=>2692672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125269966549026263)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'fi'
,p_message_text=>unistr('Poista ryhm\00E4katko')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125269634035026263)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Poista suodatin'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125269739302026263)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'fi'
,p_message_text=>'Poista Flashback'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125378744587026296)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>'Poista ryhmittely'
,p_version_scn=>2692672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125270038126026263)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'fi'
,p_message_text=>'Poista korostus'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125378864619026296)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'fi'
,p_message_text=>'Poista Pivot'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125359951353026291)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Poista raportti'
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125341737647026285)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Nime\00E4 oletusraportti uudelleen')
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125279599488026266)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Nime\00E4 raportti uudelleen')
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125261105795026260)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Raportti'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125358110581026290)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'fi'
,p_message_text=>'Raportit'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125233369997026251)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Tallennettua interaktiivista raporttia, jonka alias on %0, ei l\00F6ydy.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125286593472026268)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Raporttia ei ole.'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125233423105026252)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Tallennettua interaktiivista raporttia, jonka tunniste on %0, ei l\00F6ydy.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125277883640026265)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'fi'
,p_message_text=>'Raporttiasetukset'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125202010875026242)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'fi'
,p_message_text=>'Kohteen %0 raporttiasetukset'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125258145622026259)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('Raporttin\00E4kym\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125262311673026260)
,p_name=>'APEXIR_RESET'
,p_message_language=>'fi'
,p_message_text=>'Nollaa'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125241466173026254)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>'Palauta raportin oletusasetukset.'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125236659206026252)
,p_name=>'APEXIR_ROW'
,p_message_language=>'fi'
,p_message_text=>'Rivi'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125354233251026289)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'fi'
,p_message_text=>unistr('ROWID ei voi olla REST-tietol\00E4hteen perusavaimen sarake.')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125269076946026262)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'fi'
,p_message_text=>'Rivit'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125332086054026282)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivej\00E4 sivulla')
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125307363381026274)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Rivin sarakkeet'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125307124572026274)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'fi'
,p_message_text=>'Rivin sarake %0'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125307771920026275)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivin sarake on m\00E4\00E4ritett\00E4v\00E4.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125307974221026275)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'fi'
,p_message_text=>'Rivin sarake ei saa olla sama kuin pivot-sarake.'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125283564553026267)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'fi'
,p_message_text=>'Rivisuodatin'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125258299611026259)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'fi'
,p_message_text=>'Rivi %0/%1'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125262506239026260)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivin teksti sis\00E4lt\00E4\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125235994580026252)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'fi'
,p_message_text=>'Tallenna'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125273150162026264)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Tallennettu raportti'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125273050655026264)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'fi'
,p_message_text=>'Tallennettu raportti = "%0"'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125275225996026264)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'fi'
,p_message_text=>unistr('Nykyisi\00E4 raportin asetuksia k\00E4ytet\00E4\00E4n oletusarvoina kaikille k\00E4ytt\00E4jille.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125341609611026285)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Tallenna oletusraportti'
,p_is_js_message=>true
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125262274189026260)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Tallenna raportti'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125379099903026296)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Tallenna raportti *'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125333039597026282)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'fi'
,p_message_text=>'Haku'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125267948470026262)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'fi'
,p_message_text=>'Hakupalkki'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125201392114026242)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'fi'
,p_message_text=>'Kohteen %0 hakupalkki'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125378911175026296)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Haku: %0'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125338593511026284)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Hae raportti'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125322585918026279)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Valitut sarakkeet'
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125237659297026253)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'- Valitse sarake -'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125261539639026260)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>'Sarakkeiden valinta'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125241175538026254)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>'- Valitse toiminto -'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125268727424026262)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'- Valitse ryhmittelyn sarake -'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125306809414026274)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'- Valitse Pivot-sarake -'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125357183232026290)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'fi'
,p_message_text=>'Valitse rivi'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125306957594026274)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'- Valitse rivin sarake -'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125188450738026238)
,p_name=>'APEXIR_SEND'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125210987843026245)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4het\00E4 s\00E4hk\00F6postiviestin\00E4')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125236360035026252)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjestys')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125261770170026260)
,p_name=>'APEXIR_SORT'
,p_message_language=>'fi'
,p_message_text=>'Lajittelu'
,p_is_js_message=>true
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125271248892026263)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'fi'
,p_message_text=>unistr('Nouseva j\00E4rjestys')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125271331974026263)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'fi'
,p_message_text=>unistr('Laskeva j\00E4rjestys')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125359396361026290)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'fi'
,p_message_text=>unistr('Lajitteluj\00E4rjestys')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125265613376026261)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'fi'
,p_message_text=>unistr('v\00E4li')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125276800540026265)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'fi'
,p_message_text=>'Tila %0'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125330770552026282)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Tilaus'
,p_is_js_message=>true
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125356560088026290)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4\00E4ttyy')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125175595847026235)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'fi'
,p_message_text=>unistr('Ohita, jos tietoja ei l\00F6ydy')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125356438014026290)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'fi'
,p_message_text=>'Alkaa'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125357393029026290)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'fi'
,p_message_text=>'Summa %0'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125348288901026287)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'fi'
,p_message_text=>unistr('%0, raportti = %1, n\00E4kym\00E4 = %2')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125235285824026252)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tekstin v\00E4ri')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125253985973026258)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('p\00E4iv\00E4\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125253849833026258)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'fi'
,p_message_text=>'tuntia'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125253771057026258)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'fi'
,p_message_text=>'minuuttia'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125254166576026258)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'fi'
,p_message_text=>'kuukautta'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125254034044026258)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'fi'
,p_message_text=>'viikkoa'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125254205289026258)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'fi'
,p_message_text=>'vuotta'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125359731232026291)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'fi'
,p_message_text=>'Vaihda'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125270588012026263)
,p_name=>'APEXIR_TOP'
,p_message_language=>'fi'
,p_message_text=>'Ylin'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125353269678026289)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Ryhmittelem\00E4t\00F6n sarake')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125272070327026263)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'fi'
,p_message_text=>unistr('Korostuksen nimen on oltava yksil\00F6iv\00E4.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125239954962026253)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('tietotyyppi\00E4 ei tueta')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125270675224026263)
,p_name=>'APEXIR_UP'
,p_message_language=>'fi'
,p_message_text=>unistr('Yl\00F6s')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125272271098026263)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Anna sallittu v\00E4ri.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125272312922026263)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'fi'
,p_message_text=>'Anna sallittu muotomaski.'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125237150976026253)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'fi'
,p_message_text=>'Arvo'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125271146894026263)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'fi'
,p_message_text=>'Arvon akselin otsikko'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125278958832026265)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Pakollinen arvo'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125240568875026254)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Pystysuora pylv\00E4s')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125349365087026287)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'fi'
,p_message_text=>'Pysty'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125278282573026265)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kaavio')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125336862189026284)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'fi'
,p_message_text=>'Katso tiedot'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125381166752026297)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Raporttiin ei ole m\00E4\00E4ritetty n\00E4kym\00E4\00E4 %0.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125336949653026284)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 ryhmittely')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125336719077026283)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kuvakkeet')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125306630808026274)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 Pivot')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125278313096026265)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'fi'
,p_message_text=>'Katso raportti'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125330943292026282)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'fi'
,p_message_text=>'Viikoittainen'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125261027450026260)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6raportti')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125358760472026290)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 p\00E4iv\00E4\00E4')
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125358665130026290)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'fi'
,p_message_text=>'%0 tuntia'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125358560911026290)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'fi'
,p_message_text=>'%0 minuuttia'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125358907160026290)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'fi'
,p_message_text=>'%0 kuukautta'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125358872400026290)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'fi'
,p_message_text=>'%0 viikkoa'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125359099536026290)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'fi'
,p_message_text=>'%0 vuotta'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125356717646026290)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'fi'
,p_message_text=>'Vuosi'
,p_version_scn=>2692668
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125234943951026252)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'fi'
,p_message_text=>'keltainen'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125236416340026252)
,p_name=>'APEXIR_YES'
,p_message_language=>'fi'
,p_message_text=>unistr('Kyll\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125270966111026263)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 sis\00E4lt\00E4\00E4 virheellisen merkin < tai >.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125294828108026270)
,p_name=>'APEX_REGION'
,p_message_language=>'fi'
,p_message_text=>'Alue'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125185991398026238)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'fi'
,p_message_text=>'ZIP-tiedostoa ei voi purkaa.'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125185800241026238)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'fi'
,p_message_text=>unistr('keskushakemiston lopun allekirjoitusta ei l\00F6ytynyt. T\00E4m\00E4 tiedosto ei ole ZIP-tiedosto.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125216943158026247)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'fi'
,p_message_text=>'API-ennakkoehtoa rikottu'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125239045248026253)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovellusasetuksen %0 arvoa ei voi noutaa, koska siihen liittyv\00E4 koontiversiovaihtoehto on poistettu k\00E4yt\00F6st\00E4.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125238974762026253)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovellusasetukselle %0 ei voi asettaa arvoa, koska siihen liittyv\00E4 koontiversiovaihtoehto on poistettu k\00E4yt\00F6st\00E4.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125351570172026288)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'fi'
,p_message_text=>'Sovellusasetuksen %0 arvo on virheellinen.'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125351449431026288)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'fi'
,p_message_text=>unistr('Pyydetty\00E4 sovellusasetusta %0 ei ole m\00E4\00E4ritetty')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125351620106026288)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovellusasetuksen %0 arvoksi ei voi m\00E4\00E4ritt\00E4\00E4 tyhj\00E4\00E4')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125225535979026249)
,p_name=>'BACK'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125207984012026244)
,p_name=>'BUILDER'
,p_message_language=>'fi'
,p_message_text=>'Luontiohjelma'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125281563865026266)
,p_name=>'BUTTON LABEL'
,p_message_language=>'fi'
,p_message_text=>'Painikkeen nimi'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125204855041026243)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'fi'
,p_message_text=>'Painikkeen CSS-luokat'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125243320874026254)
,p_name=>'BUTTON_ID'
,p_message_language=>'fi'
,p_message_text=>unistr('Luodun painikkeen tunnisteena k\00E4ytet\00E4\00E4n joko painikkeen staattista tunnistetta, jos sellainen on m\00E4\00E4ritetty, tai muussa tapauksessa sis\00E4isesti luotua tunnistetta muodossa ''B'' | [Sis\00E4inen painikkeen tunniste]')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125177332243026235)
,p_name=>'CANDLESTICK'
,p_message_language=>'fi'
,p_message_text=>unistr('Kynttil\00E4')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125291390302026269)
,p_name=>'CENTER'
,p_message_language=>'fi'
,p_message_text=>unistr('Keskell\00E4')
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125237982661026253)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyypin %0 pyynt\00F6')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125227917359026250)
,p_name=>'CHECK$'
,p_message_language=>'fi'
,p_message_text=>'rivin valitsin'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125353313184026289)
,p_name=>'CHECKED'
,p_message_language=>'fi'
,p_message_text=>'valittu'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125329737070026281)
,p_name=>'COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Sarake'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125287300823026268)
,p_name=>'COMMENTS'
,p_message_language=>'fi'
,p_message_text=>'Kommentit'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125268383526026262)
,p_name=>'CONTINUE'
,p_message_language=>'fi'
,p_message_text=>'Jatka'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125225857335026249)
,p_name=>'COPYRIGHT'
,p_message_language=>'fi'
,p_message_text=>unistr('Copyright &copy; 1999, %0, Oracle ja/tai sen tyt\00E4r-, sisar- tai osakkuusyhti\00F6t.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125274068829026264)
,p_name=>'COUNT'
,p_message_language=>'fi'
,p_message_text=>'Laske'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125281071370026266)
,p_name=>'CREATE'
,p_message_language=>'fi'
,p_message_text=>'Luo'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125336464305026283)
,p_name=>'CREATED'
,p_message_language=>'fi'
,p_message_text=>'Luotu'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125336542475026283)
,p_name=>'CREATED_BY'
,p_message_language=>'fi'
,p_message_text=>'Luonut'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125257469630026259)
,p_name=>'CREATED_ON'
,p_message_language=>'fi'
,p_message_text=>'Luotu'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125268518814026262)
,p_name=>'CUSTOM'
,p_message_language=>'fi'
,p_message_text=>'Mukautettu'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125279727307026266)
,p_name=>'CUSTOMIZE'
,p_message_language=>'fi'
,p_message_text=>'Mukauta'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125281758627026266)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4n %0 sivum\00E4\00E4ritykset on nollattu.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125281894134026266)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4n %0 m\00E4\00E4rityksi\00E4 on muokattu.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125281685618026266)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4n %0 sivum\00E4\00E4ritykset on nollattu.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125242733541026254)
,p_name=>'DAILY'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivitt\00E4in')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125206188189026243)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ladattu tiedosto on virheellinen tai sen tiedostotunniste on v\00E4\00E4r\00E4.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125238181754026253)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytetty XML- tai JSON-valitsin on virheellinen.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125183201837026237)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietoprofiili ja ladattu tiedosto eiv\00E4t sis\00E4ll\00E4 yht\00E4\00E4n kohdetaulukon saraketta.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125297156741026271)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'fi'
,p_message_text=>unistr('Ladatusta tiedostosta ei l\00F6ytynyt tietoja.')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125297266453026271)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6alustasta "%0" ei l\00F6ytynyt tietoja.')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125203029473026243)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritetty tiedosto ei ole XLSX-tiedosto.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125169035687026233)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiedot on ladattu: %0 rivi\00E4 k\00E4sitelty.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125171347402026233)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiedot on ladattu: %0 rivi\00E4 k\00E4sitelty, 1 virhe.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125171647373026233)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiedot on ladattu: %0 rivi\00E4 k\00E4sitelty, %1 virhett\00E4.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125171436479026233)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiedot on ladattu: 1 rivi k\00E4sitelty.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125185735874026238)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiedot on ladattu: 1 rivi k\00E4sitelty, 1 virhe.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125171544695026233)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiedot on ladattu: 1 rivi k\00E4sitelty, ei virheit\00E4.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125304243728026273)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'fi'
,p_message_text=>'Kohdesarake'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125211435974026245)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'fi'
,p_message_text=>unistr('\00C4l\00E4 lataa')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125211514313026245)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Esik\00E4sittelyvirhe')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125304388000026273)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'fi'
,p_message_text=>unistr('L\00E4hdesarake')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125305145380026274)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4iv\00E4m\00E4\00E4r\00E4n/numeron muoto')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125211287686026245)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'fi'
,p_message_text=>unistr('Lis\00E4\00E4 rivi')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125367314767026293)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Valinnan arvon haku ep\00E4onnistui.')
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125337073537026284)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'fi'
,p_message_text=>'Tietojen/taulukon kartoitus'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125305213140026274)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'fi'
,p_message_text=>'Rivi'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125211634318026245)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4rjestys : toiminto')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125298943392026272)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Muuntos\00E4\00E4nt\00F6 ep\00E4onnistui')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125211394715026245)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivit\00E4 rivi')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125273629665026264)
,p_name=>'DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4iv\00E4m\00E4\00E4r\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125246547012026255)
,p_name=>'DAY'
,p_message_language=>'fi'
,p_message_text=>unistr('p\00E4iv\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125246695232026255)
,p_name=>'DAYS'
,p_message_language=>'fi'
,p_message_text=>unistr('p\00E4iv\00E4\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125287090384026268)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheenetsint\00E4\00E4 ei ole otettu k\00E4ytt\00F6\00F6n t\00E4lle sovellukselle.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125338746515026284)
,p_name=>'DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Oletus'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125247319505026256)
,p_name=>'DELETE'
,p_message_language=>'fi'
,p_message_text=>'poista'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125222953579026248)
,p_name=>'DELETE_MSG'
,p_message_language=>'fi'
,p_message_text=>'Haluatko suorittaa poistotoiminnon?'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125202500673026242)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'fi'
,p_message_text=>'Istunnon ohitukset'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125203457705026243)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ota istunnon ohitukset k\00E4ytt\00F6\00F6n')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125204376068026243)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'fi'
,p_message_text=>'Virhe ladattaessa istunnon ohituksia.'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125204177671026243)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'fi'
,p_message_text=>'Virhe tallennettaessa istunnon ohituksia.'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125204066903026243)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'fi'
,p_message_text=>unistr('Istunnon ohitukset tallennettu. Katso muutokset sulkemalla t\00E4m\00E4 ikkuna.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125177249963026235)
,p_name=>'DIAL_PCT'
,p_message_language=>'fi'
,p_message_text=>'Valitsin (prosenttia)'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125218291836026247)
,p_name=>'DOWNLOAD'
,p_message_language=>'fi'
,p_message_text=>'Nouda'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125337840073026284)
,p_name=>'DUP_USER'
,p_message_language=>'fi'
,p_message_text=>unistr('Luettelossa on k\00E4ytt\00E4j\00E4tunnuksen kaksoiskappaleita.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125226677356026249)
,p_name=>'EDIT'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa'
,p_is_js_message=>true
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125237843040026253)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoitetta "%0" ei l\00F6ytynyt.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125220584668026248)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4n s\00E4hk\00F6postiviestin l\00E4hetti %0.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125338069559026284)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoite on liian pitk\00E4, maksimipituus on 240 merkki\00E4.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125268252277026262)
,p_name=>'ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virhe'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125299039299026272)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'fi'
,p_message_text=>unistr('Sivun osittaiselle p\00E4ivitysalueelle ei voi m\00E4\00E4ritt\00E4\00E4 sivukohteen l\00E4hteen arvoa')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125259514313026259)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'fi'
,p_message_text=>'Luonut'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125220872908026248)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'fi'
,p_message_text=>'Vanhentunut salasana'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125213274892026246)
,p_name=>'FILE_EMPTY'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiedosto on tyhj\00E4.')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125303007362026273)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'fi'
,p_message_text=>'Ladatun tiedoston koko oli yli %0 Mt. Lataa pienempi tiedosto.'
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125223137982026248)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4n todennus ep\00E4onnistui, ja v\00E4hint\00E4\00E4n yht\00E4 tiedostoa ei ladattu.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125223223042026249)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Todentamattomat k\00E4ytt\00E4j\00E4t eiv\00E4t saa ladata tiedostoja t\00E4ss\00E4 instanssissa.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125303127066026273)
,p_name=>'FILTERS'
,p_message_language=>'fi'
,p_message_text=>'Suodattimet'
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125281166469026266)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'fi'
,p_message_text=>'On tapahtunut 1 virhe'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125280321486026266)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('On tapahtunut %0 virhett\00E4')
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125225743836026249)
,p_name=>'FORM_OF'
,p_message_language=>'fi'
,p_message_text=>'%0 / %1'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125264752228026261)
,p_name=>'GO'
,p_message_language=>'fi'
,p_message_text=>'Suorita'
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125366964962026293)
,p_name=>'HELP'
,p_message_language=>'fi'
,p_message_text=>'Ohje'
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125208022250026244)
,p_name=>'HOME'
,p_message_language=>'fi'
,p_message_text=>'Aloitus'
,p_is_js_message=>true
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125246351420026255)
,p_name=>'HOUR'
,p_message_language=>'fi'
,p_message_text=>'tunti'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125246487208026255)
,p_name=>'HOURS'
,p_message_language=>'fi'
,p_message_text=>'tuntia'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125227889093026250)
,p_name=>'ICON'
,p_message_language=>'fi'
,p_message_text=>'Kuvake %0'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125205164282026243)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'fi'
,p_message_text=>'Rajauskuvakkeen ohje'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125206373025026244)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Ved\00E4 kuvaketta ja sijoita se uudelleen kehykseen zoom-liukus\00E4\00E4timell\00E4.</p>'),
'',
'<p>Ladattaessa uutta kuvaketta sen koko muutetaan sopivaksi kolmeen muotoon: suosikkikuvake, pieni ja suuri kuvake.</p>',
'',
unistr('<p>Kuvakkeen rajaustoiminnossa on k\00E4ytett\00E4viss\00E4 seuraavat pikan\00E4pp\00E4imet:</p>'),
'<ul>',
unistr('    <li>vasen nuoli: siirr\00E4 kuvaa vasemmalle*</li>'),
unistr('    <li>yl\00E4nuoli: siirr\00E4\00E4 kuvaa yl\00F6s*</li>'),
unistr('    <li>oikea nuoli: siirr\00E4 kuvaa oikealle*</li>'),
unistr('    <li>alanuoli: siirr\00E4 kuvaa alas*</li>'),
unistr('    <li>I: l\00E4henn\00E4</li>'),
'    <li>O: loitonna</li>',
unistr('    <li>L: kierr\00E4 vasemmalle</li>'),
unistr('    <li>R: kierr\00E4 oikealle</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Siirr\00E4 nopeammin painamalla vaihton\00E4pp\00E4int\00E4</em></p>')))
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125211890640026245)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sijoita kuvake uudelleen vet\00E4m\00E4ll\00E4')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125211911364026245)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4\00E4d\00E4 zoomaustasoa liukus\00E4\00E4timell\00E4')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125204910601026243)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa sovellusta -painike'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125205268151026243)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'fi'
,p_message_text=>'Virhe tallennettaessa kuvaketta'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125287688411026268)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'fi'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> T\00E4m\00E4 sovellus k\00E4ytt\00E4\00E4 alkuper\00E4isi\00E4 kuvakkeita. Uuden kuvakkeen lataaminen korvaa kaikki alkuper\00E4iset kuvakkeet.</p>')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125205848397026243)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'fi'
,p_message_text=>'Lataa uusi kuvake'
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125282089235026266)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'fi'
,p_message_text=>'Virheelliset kirjautumistiedot'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125383175705026298)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'fi'
,p_message_text=>'Parametrin %0 arvo on virheellinen'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125276316159026265)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'fi'
,p_message_text=>'Raportin oletusasetuksina'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125276428401026265)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Nimettyn\00E4 raporttina')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125258373137026259)
,p_name=>'IR_ERROR'
,p_message_language=>'fi'
,p_message_text=>'%0 virhe. %1'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125258096272026259)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Lomakkeen siirtymist\00E4 ei voi laskea. %0')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125233690023026252)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Interaktiivista raporttia ei l\00F6ydy.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125233051126026251)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Interaktiivisen raportin alue puuttuu sovelluksesta %0, sivusta %1 ja alueesta %2.'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125276257221026265)
,p_name=>'IR_STAR'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4kyy vain kehitt\00E4jille')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125264443554026261)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Raporttikyselyss\00E4 on oltava yksil\00F6iv\00E4 avain kunkin rivin tunnistukseen. Annettu avain ei sovi t\00E4lle kyselylle. M\00E4\00E4rit\00E4 yksil\00F6iv\00E4 avainsarake. %0')
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125264596286026261)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'fi'
,p_message_text=>unistr('Raporttikyselyss\00E4 on oltava yksil\00F6iv\00E4 avain kunkin rivin tunnistukseen. Annettu avain ei sovi t\00E4lle kyselylle. M\00E4\00E4rit\00E4 yksil\00F6iv\00E4 avainsarake muokkaamalla raportin m\00E4\00E4ritteit\00E4. %0')
,p_version_scn=>2692650
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125305414529026274)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'fi'
,p_message_text=>'Valitse tiedosto'
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125305373920026274)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ved\00E4 ja pudota tiedosto t\00E4h\00E4n tai')
,p_is_js_message=>true
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125226080630026249)
,p_name=>'ITEMS'
,p_message_language=>'fi'
,p_message_text=>'Kohteet'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125259766895026260)
,p_name=>'ITEM_VALUE'
,p_message_language=>'fi'
,p_message_text=>'Kohteen arvo'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125274368300026264)
,p_name=>'LABEL'
,p_message_language=>'fi'
,p_message_text=>'Nimi'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125286996149026268)
,p_name=>'LANGUAGE'
,p_message_language=>'fi'
,p_message_text=>'Kieli'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125247069021026256)
,p_name=>'LAST'
,p_message_language=>'fi'
,p_message_text=>'edellinen'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125223043861026248)
,p_name=>'LENGTH'
,p_message_language=>'fi'
,p_message_text=>'Pituus'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125281392177026266)
,p_name=>'LOGIN'
,p_message_language=>'fi'
,p_message_text=>unistr('Kirjaudu sis\00E4\00E4n')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125322985555026279)
,p_name=>'MANAGE'
,p_message_language=>'fi'
,p_message_text=>'Hallinta'
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125386014501026299)
,p_name=>'MAXIMIZE'
,p_message_language=>'fi'
,p_message_text=>'Suurenna'
,p_is_js_message=>true
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125246151757026255)
,p_name=>'MINUTE'
,p_message_language=>'fi'
,p_message_text=>'minuutti'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125246239993026255)
,p_name=>'MINUTES'
,p_message_language=>'fi'
,p_message_text=>'minuuttia'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125338236137026284)
,p_name=>'MISSING_AT'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoitteesta puuttuu "@".')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125338463489026284)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'fi'
,p_message_text=>unistr('Varoitus: Sovelluksen %1 valintaikkunasivulle %0 ei ole m\00E4\00E4ritetty valintaikkunasivun mallia.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125338116835026284)
,p_name=>'MISSING_DOT'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoitteen toimialueesta puuttuu ".".')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125284409172026267)
,p_name=>'MODULE'
,p_message_language=>'fi'
,p_message_text=>'Moduuli'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125238671627026253)
,p_name=>'MONTH'
,p_message_language=>'fi'
,p_message_text=>'Kuukausi'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125242587768026254)
,p_name=>'MONTHLY'
,p_message_language=>'fi'
,p_message_text=>'Kuukausittain'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125238791798026253)
,p_name=>'MONTHS'
,p_message_language=>'fi'
,p_message_text=>'kuukautta'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125273990962026264)
,p_name=>'MOVE'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125344711628026286)
,p_name=>'MOVE_FROM'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4 kohteesta')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125344845622026286)
,p_name=>'MOVE_TO'
,p_message_language=>'fi'
,p_message_text=>unistr('Siirr\00E4 kohteeseen')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125260929103026260)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'fi'
,p_message_text=>'Virhe monen rivin poistotoiminnossa: rivi= %0, %1, %2'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125259916817026260)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei saa olla julkinen k\00E4ytt\00E4j\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125208571408026244)
,p_name=>'NAME'
,p_message_language=>'fi'
,p_message_text=>'Nimi'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125274139000026264)
,p_name=>'NEW'
,p_message_language=>'fi'
,p_message_text=>'Uusi'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125238495661026253)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'fi'
,p_message_text=>'Voit kirjautua %0 -tilillesi osoitteessa'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125238550041026253)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Ilmoitus uudesta %0 -tilist\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125367123383026293)
,p_name=>'NEXT'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125284381409026267)
,p_name=>'NO'
,p_message_language=>'fi'
,p_message_text=>'Ei'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125381248550026297)
,p_name=>'NOBODY'
,p_message_language=>'fi'
,p_message_text=>'ei kukaan'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125247495142026256)
,p_name=>'NOT'
,p_message_language=>'fi'
,p_message_text=>'Ei'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125290318941026269)
,p_name=>'NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei-tyhj\00E4')
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125260044648026260)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'fi'
,p_message_text=>'Ei %0'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125279815256026266)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('tietoja ei l\00F6ydy')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125289836723026269)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivitett\00E4v\00E4\00E4 raporttia ei l\00F6ydy. Usean rivin p\00E4ivitys- ja poistotoimintoja voi tehd\00E4 vain taulukkomuotoisille lomakkeille, joiden tyyppi on P\00E4ivitett\00E4v\00E4 raportti.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125290700011026269)
,p_name=>'OK'
,p_message_language=>'fi'
,p_message_text=>'OK'
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125286000258026268)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'fi'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125384941702026298)
,p_name=>'ORA_06550'
,p_message_language=>'fi'
,p_message_text=>'ORA-06550: rivi %0, sarake %1'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125335812776026283)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4m\00E4si selain on vanhentunut. Luettelo tuetuista selaimista on Oracle APEX Installation Guide -asennusoppaassa.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125230874014026251)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Pyydetty rivijoukko on virheellinen, sill\00E4 raportin l\00E4hdetietoja on muokattu.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125252828782026257)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'fi'
,p_message_text=>'Sallittu sivun numero on annettava, esimerkiksi p?n=1234.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125257084453026259)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'fi'
,p_message_text=>'Seuraava'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125257128626026259)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'fi'
,p_message_text=>'Seuraava joukko'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125257211668026259)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125257387264026259)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'fi'
,p_message_text=>'Edellinen joukko'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125367096519026293)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'fi'
,p_message_text=>'Valitse sivutus'
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125297014492026271)
,p_name=>'PASSWORD'
,p_message_language=>'fi'
,p_message_text=>'Salasana'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125237705466026253)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'fi'
,p_message_text=>'Salasanasi kohteeseen %0 on vaihdettu.'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125225463500026249)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Salasana ei ole t\00E4m\00E4n sivuston salasanan monimutkaisuuss\00E4\00E4nt\00F6jen mukainen.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125224592810026249)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Uudessa salasanassa on oltava v\00E4hint\00E4\00E4n %0 eri merkki\00E4 kuin vanhassa')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125225158909026249)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Salasana ei saa sis\00E4lt\00E4\00E4 k\00E4ytt\00E4j\00E4tunnusta.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125225348249026249)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Salasana sis\00E4lt\00E4\00E4 kielletyn yksinkertaisen sanan.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125225220810026249)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Salasana ei saa sis\00E4lt\00E4\00E4 ty\00F6tilan nime\00E4.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125224421302026249)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Salasanassa on oltava v\00E4hint\00E4\00E4n %0 merkki\00E4.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125224657551026249)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'fi'
,p_message_text=>'Salasanassa on oltava ainakin yksi aakkosmerkki (%0).'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125225057416026249)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Salasanassa on oltava v\00E4hint\00E4\00E4n yksi pieni aakkosmerkki.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125224785567026249)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'fi'
,p_message_text=>'Salasanassa olisi oltava ainakin yksi numero (0123456789).'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125224883086026249)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Salasanassa on oltava ainakin yksi v\00E4limerkki (%0).')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125224987277026249)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Salasanassa on oltava v\00E4hint\00E4\00E4n yksi iso aakkosmerkki.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125238226949026253)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'fi'
,p_message_text=>'Salasanan nollausilmoitus'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125223308655026249)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4t\00E4 salasanaa ei voi k\00E4ytt\00E4\00E4, koska se on jo ollut k\00E4yt\00F6ss\00E4 edellisten %0 p\00E4iv\00E4n aikana.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125220016952026248)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Prosentuaalinen kaavio'
,p_is_js_message=>true
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125311673118026276)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'fi'
,p_message_text=>'Kohteet'
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125311788076026276)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'fi'
,p_message_text=>'Kohde'
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125285894623026268)
,p_name=>'PERCENT'
,p_message_language=>'fi'
,p_message_text=>'Prosentti'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125255178987026258)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Ota yhteys j\00E4rjestelm\00E4nvalvojaan.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125367285812026293)
,p_name=>'PREVIOUS'
,p_message_language=>'fi'
,p_message_text=>'Edellinen'
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125303849338026273)
,p_name=>'PRINT'
,p_message_language=>'fi'
,p_message_text=>'Tulosta'
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125284604100026267)
,p_name=>'PRIVILEGES'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00F6oikeudet')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125253288662026257)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'fi'
,p_message_text=>'Alueviitteet'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125274222247026264)
,p_name=>'REPORT'
,p_message_language=>'fi'
,p_message_text=>'Raportti'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125284598700026267)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'fi'
,p_message_text=>'Raportointikausi'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125367428923026293)
,p_name=>'REPORT_LABEL'
,p_message_language=>'fi'
,p_message_text=>'Raportti: %0'
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125285283769026267)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'fi'
,p_message_text=>unistr('Raportti yhteens\00E4')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125230920243026251)
,p_name=>'RESET'
,p_message_language=>'fi'
,p_message_text=>'Nollaa sivutus'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125259651035026259)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'fi'
,p_message_text=>'Nollaa sivutus'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125289784893026269)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'fi'
,p_message_text=>'Nollaa salasana'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125265565600026261)
,p_name=>'RESTORE'
,p_message_language=>'fi'
,p_message_text=>'Palauta'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125299141825026272)
,p_name=>'RESULTS'
,p_message_language=>'fi'
,p_message_text=>'Tulokset'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125290837836026269)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'fi'
,p_message_text=>'Palaa sovellukseen.'
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125291290466026269)
,p_name=>'RIGHT'
,p_message_language=>'fi'
,p_message_text=>'Oikea'
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125323209814026279)
,p_name=>'ROW'
,p_message_language=>'fi'
,p_message_text=>'Rivi %0'
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125273872624026264)
,p_name=>'ROW_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivien m\00E4\00E4r\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125163637368026231)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'fi'
,p_message_text=>'Kysy Oraclelta'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125163945548026231)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'fi'
,p_message_text=>'Sulje Kysy Oraclelta'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125164279103026231)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'fi'
,p_message_text=>'Ilmoitusluettelo'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125163846585026231)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'fi'
,p_message_text=>'Avaa Kysy Oraclelta'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125164142428026231)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'fi'
,p_message_text=>'Tuotekartta'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125164020997026231)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'fi'
,p_message_text=>'Ehdotusluettelo'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125164946299026231)
,p_name=>'RW_CLEAR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhjenn\00E4')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125164817222026231)
,p_name=>'RW_CLOSE'
,p_message_language=>'fi'
,p_message_text=>'Sulje'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125164691030026231)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 lis\00E4\00E4')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125165092663026232)
,p_name=>'RW_GO_TO'
,p_message_language=>'fi'
,p_message_text=>'Siirry'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125164463394026231)
,p_name=>'RW_GP_STEP'
,p_message_language=>'fi'
,p_message_text=>'Vaihe'
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125164589081026231)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'fi'
,p_message_text=>'/'
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125164306387026231)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'fi'
,p_message_text=>unistr('Vaihda vaiheiden n\00E4ytt\00F6\00E4')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125163462428026231)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'fi'
,p_message_text=>'Piilota salasana'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125164778488026231)
,p_name=>'RW_OPEN'
,p_message_language=>'fi'
,p_message_text=>'Avaa'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125163219054026231)
,p_name=>'RW_ORACLE'
,p_message_language=>'fi'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125163327105026231)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 salasana')
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125165199497026232)
,p_name=>'RW_START'
,p_message_language=>'fi'
,p_message_text=>'Alku'
,p_is_js_message=>true
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125290220428026269)
,p_name=>'SAVE'
,p_message_language=>'fi'
,p_message_text=>'Tallenna'
,p_version_scn=>2692654
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125286459825026268)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Vaihtoehtoinen oletus'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125286806993026268)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'fi'
,p_message_text=>'Kuvaus'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125286333530026268)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Ensisijainen oletus'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125287142225026268)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'fi'
,p_message_text=>unistr('Yli %0 rivi\00E4 k\00E4ytett\00E4viss\00E4. Tuo enemm\00E4n rivej\00E4 n\00E4kyviin laajentamalla rivivalitsinta.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125354521966026289)
,p_name=>'SEARCH'
,p_message_language=>'fi'
,p_message_text=>'Haku'
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125246000606026255)
,p_name=>'SECONDS'
,p_message_language=>'fi'
,p_message_text=>'sekuntia'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125285904060026268)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'fi'
,p_message_text=>'Katso liite'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125346501763026287)
,p_name=>'SELECT_ROW'
,p_message_language=>'fi'
,p_message_text=>'Valitse rivi'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125285601683026268)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'fi'
,p_message_text=>unistr('Poista n\00E4yt\00F6nlukijatila k\00E4yt\00F6st\00E4')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125285702100026268)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'fi'
,p_message_text=>unistr('Ota n\00E4yt\00F6nlukijatila k\00E4ytt\00F6\00F6n')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125281968407026266)
,p_name=>'SHOW'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125348384146026287)
,p_name=>'SHOW_ALL'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kaikki')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125373188182026295)
,p_name=>'SIGN_IN'
,p_message_language=>'fi'
,p_message_text=>unistr('Kirjaudu sis\00E4\00E4n')
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125324075267026280)
,p_name=>'SIGN_OUT'
,p_message_language=>'fi'
,p_message_text=>'Kirjaudu ulos'
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125274866984026264)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 p\00E4iv\00E4\00E4 sitten')
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125282403961026267)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 p\00E4iv\00E4n kuluttua')
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125274790551026264)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 tuntia sitten'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125282300123026267)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 tunnin kuluttua'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125274611165026264)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 minuuttia sitten'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125282242985026267)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 minuutin kuluttua'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125275064905026264)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 kuukautta sitten'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125282674902026267)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 kuukauden kuluttua'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125282841349026267)
,p_name=>'SINCE_NOW'
,p_message_language=>'fi'
,p_message_text=>'Nyt'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125274537268026264)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 sekuntia sitten'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125282131959026267)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 sekunnin kuluttua'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125274906830026264)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 viikkoa sitten'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125282503340026267)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 viikon kuluttua'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125275177300026264)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'fi'
,p_message_text=>'%0 vuotta sitten'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125282754647026267)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'fi'
,p_message_text=>'%0 vuoden kuluttua'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125268659758026262)
,p_name=>'STANDARD'
,p_message_language=>'fi'
,p_message_text=>'Vakio'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125285524725026268)
,p_name=>'START_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('Alkamisp\00E4iv\00E4')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125220782976026248)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 s\00E4hk\00F6postiviesti on l\00E4hetetty interaktiivisten raporttien tilauksesta, jonka on luonut %0.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125382329111026297)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'fi'
,p_message_text=>'Tilaukset'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125331705336026282)
,p_name=>'TAB'
,p_message_language=>'fi'
,p_message_text=>unistr('V\00E4lilehti')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125245973448026255)
,p_name=>'TITLE'
,p_message_language=>'fi'
,p_message_text=>'Otsikko'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125225621540026249)
,p_name=>'TODAY'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4n\00E4\00E4n')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125285128319026267)
,p_name=>'TOTAL'
,p_message_language=>'fi'
,p_message_text=>unistr('Yhteens\00E4')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125226967005026250)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Enint\00E4\00E4n %0 saraketta voidaan valita.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125182700226026237)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiivist\00E4 kaikki')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125183353394026237)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'fi'
,p_message_text=>unistr('Tiivist\00E4 kaikki alle')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125182388429026237)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'fi'
,p_message_text=>'Laajenna kaikki'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125183013576026237)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'fi'
,p_message_text=>'Laajenna kaikki alle'
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125183576406026237)
,p_name=>'TREE.REPARENT'
,p_message_language=>'fi'
,p_message_text=>unistr('Luo p\00E4\00E4taso uudelleen')
,p_is_js_message=>true
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125305636518026274)
,p_name=>'TREES'
,p_message_language=>'fi'
,p_message_text=>'Puut'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125348439814026287)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'fi'
,p_message_text=>'Pakollinen'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125269301915026263)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>'Luvaton'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125319566481026278)
,p_name=>'UNAVAILABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei k\00E4ytett\00E4viss\00E4')
,p_version_scn=>2692659
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125283228799026267)
,p_name=>'UNKNOWN'
,p_message_language=>'fi'
,p_message_text=>'Tuntematon'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125221634663026248)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Tuntematon todennusvirhe.'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125223897303026249)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'fi'
,p_message_text=>unistr('Jos et en\00E4\00E4 halua saada s\00E4hk\00F6postiviestej\00E4, voit muokata tilaustasi valitsemalla <a href="%0">peruuta tilaus</a>.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125220607040026248)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'fi'
,p_message_text=>unistr('Jos et en\00E4\00E4 halua saada s\00E4hk\00F6postiviestej\00E4, voit muokata tilaustasi seuraavassa osoitteessa:')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125260198212026260)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('tietotyyppi\00E4 ei tueta')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125247213096026256)
,p_name=>'UPDATE'
,p_message_language=>'fi'
,p_message_text=>unistr('p\00E4ivit\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125245810294026255)
,p_name=>'UPDATED'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivitetty')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125189070314026239)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivitys k\00E4ynniss\00E4')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125189369459026239)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('Oracle APEX p\00E4ivitet\00E4\00E4n uudempaan versioon. T\00E4m\00E4 kest\00E4\00E4 yleens\00E4 enint\00E4\00E4n 3 minuuttia.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125252673098026257)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'fi'
,p_message_text=>unistr('Pyydetty URL on estetty. Ota yhteytt\00E4 j\00E4rjestelm\00E4nvalvojaan.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125273761801026264)
,p_name=>'USER'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125296925683026271)
,p_name=>'USERNAME'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4tunnus')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125338304009026284)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4tunnus on liian pitk\00E4, maksimipituus on %0 merkki\00E4.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125280800901026266)
,p_name=>'USERS'
,p_message_language=>'fi'
,p_message_text=>unistr('k\00E4ytt\00E4j\00E4t')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125337964857026284)
,p_name=>'USER_EXISTS'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4tunnus on jo olemassa.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125351745115026288)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4n %0 profiilikuva')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125213673806026246)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'fi'
,p_message_text=>'Automaatio - %0'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125212111847026245)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'fi'
,p_message_text=>'Sivu %0 - %1 '
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125215011360026246)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125215142678026246)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125214062245026246)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'fi'
,p_message_text=>'Hae kokoonpanosta - %0'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125213958160026246)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'fi'
,p_message_text=>'Jaettu dynaaminen valintalista - %0'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125213777155026246)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'fi'
,p_message_text=>unistr('Teht\00E4v\00E4m\00E4\00E4ritelm\00E4 - %0')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125212282937026245)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6nkulku - %0 ')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125234364767026252)
,p_name=>'VALID'
,p_message_language=>'fi'
,p_message_text=>'Sallittu'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125225924402026249)
,p_name=>'VALIDATIONS'
,p_message_language=>'fi'
,p_message_text=>'Tarkistukset'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125286632805026268)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'fi'
,p_message_text=>unistr('Arvo on m\00E4\00E4ritett\00E4v\00E4')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125332982004026282)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteelle %0 on m\00E4\00E4ritett\00E4v\00E4 arvo')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125255590122026258)
,p_name=>'VERTICAL'
,p_message_language=>'fi'
,p_message_text=>'pysty'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125247160594026256)
,p_name=>'VIEW'
,p_message_language=>'fi'
,p_message_text=>unistr('n\00E4yt\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125280995797026266)
,p_name=>'VIEWS'
,p_message_language=>'fi'
,p_message_text=>unistr('n\00E4kym\00E4t')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125287478852026268)
,p_name=>'VIEW_ALL'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4yt\00E4 kaikki')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125227342265026250)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'fi'
,p_message_text=>'Visuaalisesti piilotettu linkki'
,p_is_js_message=>true
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125268152364026262)
,p_name=>'WARNING'
,p_message_language=>'fi'
,p_message_text=>'Varoitus'
,p_is_js_message=>true
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125246748868026255)
,p_name=>'WEEK'
,p_message_language=>'fi'
,p_message_text=>'viikko'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125242627209026254)
,p_name=>'WEEKLY'
,p_message_language=>'fi'
,p_message_text=>'Viikoittain'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125246867756026256)
,p_name=>'WEEKS'
,p_message_language=>'fi'
,p_message_text=>'viikkoa'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125286731381026268)
,p_name=>'WELCOME_USER'
,p_message_language=>'fi'
,p_message_text=>'Tervetuloa: %0'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125284966752026267)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen arvo l\00F6ydetty, tarkista annetut tiedot.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125285056702026267)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen arvo l\00F6ydetty, tarkista annetut tiedot.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125222829708026248)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen p\00E4iv\00E4m\00E4\00E4r\00E4n muoto l\00F6ydetty, tarkista p\00E4iv\00E4m\00E4\00E4r\00E4n muoto.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125284850365026267)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen numeroarvo l\00F6ydetty, tarkista numeron n\00E4ytt\00F6muoto.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125233980143026252)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen aikaleiman arvo l\00F6ydetty, tarkista aikaleiman muoto.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125258422858026259)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Ei voi sitoa kohdetta "%0". K\00E4yt\00E4 monitavuisissa kohteissa lainausmerkkej\00E4 tai varmista, ett\00E4 kohteen pituus on enint\00E4\00E4n 30 tavua. K\00E4yt\00E4 yli 30 tavun mittaisiin kohteisiin viitatessa syntaksia v().')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125248234260026256)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'fi'
,p_message_text=>unistr('Suojaustarkistus %0 esti k\00E4yt\00F6n')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125250704812026257)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovellus ei k\00E4ytett\00E4viss\00E4')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125249186172026256)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovellusta ei l\00F6ydy.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125249287187026256)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('sovellus=%0  ty\00F6tila=%1')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125249626991026256)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4n sovelluksen k\00E4ytt\00F6oikeuksia on rajoitettu. Yrit\00E4 my\00F6hemmin uudelleen.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125249535634026256)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'fi'
,p_message_text=>unistr('Vain sovelluskehitt\00E4j\00E4t saavat k\00E4ytt\00E4\00E4 t\00E4t\00E4 sovellusta. Yrit\00E4 my\00F6hemmin uudelleen.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125248742021026256)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-7744 Haarasta toimintoon -paluun URL-osoitetta ei voi k\00E4sitell\00E4.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125248660378026256)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-7744 Haarasta toimintoon -paluusivua ei voi k\00E4sitell\00E4.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125248958339026256)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-1430 Sivulta n\00E4ytt\00E4misen kutsuprosessia ei tueta: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125250094497026256)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-1018 Virhe tyhjennett\00E4ess\00E4 vaiheen v\00E4limuistia.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125248416964026256)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'fi'
,p_message_text=>'ERR-1005 Tuntematon laskentatyyppi.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125249300333026256)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-1201 Istunnon tunnistetta ei m\00E4\00E4ritetty mukautetun todennuksen yhteydess\00E4.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125249495601026256)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'fi'
,p_message_text=>'sivu=%0'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125249071906026256)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-7620 Sovelluksen ty\00F6tilaa ei voitu m\00E4\00E4ritt\00E4\00E4 (%0).')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125229552210026250)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'fi'
,p_message_text=>'Muokkaa'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125248146321026256)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-1802 Kohteen tunnistetta "%0" ei l\00F6ydy')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125247869108026256)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-1002 Kohteen tunnistetta ei l\00F6ydy sovelluksen "%1" kohteelle "%0".')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125247944381026256)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'fi'
,p_message_text=>unistr('Odottamaton virhe. Kohteen nime\00E4 ei l\00F6ydy sovelluksen tai sivun tasolta.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125248378900026256)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Olet jo tietojen ensimm\00E4isell\00E4 sivulla.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125264830140026261)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Tunnistetta (%0) vastaavaa kohdetta ei ole m\00E4\00E4ritetty nykyisell\00E4 sivulla.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125222472491026248)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohdetta ei voi m\00E4\00E4ritt\00E4\00E4 v\00E4litt\00E4m\00E4ll\00E4 argumentteja sovellukselle.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125222779271026248)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'fi'
,p_message_text=>'(Tarkistussumma-arvo puuttuu)'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125222238925026248)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen voi m\00E4\00E4ritt\00E4\00E4, kun siihen liittyy tarkistussumma-arvo "k\00E4ytt\00E4j\00E4tason kirjanmerkki".')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125222198188026248)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen voi m\00E4\00E4ritt\00E4\00E4, kun siihen liittyy tarkistussumma-arvo "sovellustason kirjanmerkki".')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125222361694026248)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen voi m\00E4\00E4ritt\00E4\00E4, kun siihen liittyy tarkistussumma-arvo "istunto".')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125222069197026248)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'fi'
,p_message_text=>'Kohdetta ei ole suojattu.'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125250198067026257)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'fi'
,p_message_text=>'Sivulle ei ole saatavana ohjetta.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125238035763026253)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6tilan %0 k\00E4ytt\00F6oikeudet eiv\00E4t riit\00E4 j\00E4sennykseen rakenteena %1.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125248545128026256)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-1010 Haarasta sivulle -hyv\00E4ksynt\00E4k\00E4sittelyn rekursioraja on ylittynyt. %0')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125205075616026243)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sivu ei ole k\00E4ytett\00E4viss\00E4. Sivun kaavaa ei voi ajaa.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125222687551026248)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4t\00E4 sivua ei voi avata k\00E4ytt\00E4m\00E4ll\00E4 URL-osoitetta tai GET- tai POST-toimintoa n\00E4ytt\00E4misen aliohjelmassa. Se on kutsuttava k\00E4ytt\00E4m\00E4ll\00E4 haaratyyppi\00E4 "Haarasta sivulle".')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125307493790026274)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe yritett\00E4ess\00E4 tallentaa ei-numeerista arvoa kohteelle %0.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125239754224026253)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovelluksen j\00E4sennyskaavaa "%0" ei ole tietokannassa.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125239852553026253)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'fi'
,p_message_text=>unistr('SIS\00C4ISEN ty\00F6tilan tileill\00E4 voi k\00E4ytt\00E4\00E4 vain tuotetta &PRODUCT_NAME. <a href="%0">Administration Services</a>.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125247700392026256)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'fi'
,p_message_text=>'ERR-1029 Istunnon tietoja ei voi tallentaa. Istunto=%0 kohde=%1'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125250827799026257)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4ljityst\00E4 ei voi pys\00E4ytt\00E4\00E4: %0')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125248078807026256)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'fi'
,p_message_text=>'Odottamaton virhe'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125258890512026259)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'fi'
,p_message_text=>'Virhe kohteessa update_substitution_cache: %0'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125250959322026257)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'fi'
,p_message_text=>'Ohjeen tarkastelua varten on annettava sovellus ja sivu.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125272675831026264)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Automaatiota ei l\00F6ydy.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125208108131026244)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Automaattikyselyn virhe: %0'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125252017561026257)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'fi'
,p_message_text=>'Tuhottu %0 istuntoa.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125193310103026240)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Koodia %0 ei voi suorittaa! Tietokanta ei tue sit\00E4 tai sit\00E4 ei ole otettu k\00E4ytt\00F6\00F6n instanssiparametrilla MLE_LANGUAGES.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125190921135026239)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Multi Lingual Engine ei ole k\00E4ytett\00E4viss\00E4 t\00E4ss\00E4 tietokantaversiossa!')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125230167637026251)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovelluskokoelman matriisi ei saa olla tyhj\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125229968941026250)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Annettu j\00E4senm\00E4\00E4ritteen numero %0 on virheellinen. M\00E4\00E4ritteen numeron on oltava 1 - %1')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125230435007026251)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'fi'
,p_message_text=>'Sovelluskokoelma on olemassa'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125230291632026251)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Kokoelman nimi ei voi olla tyhj\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125230394687026251)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'fi'
,p_message_text=>unistr('Kokoelman nimen maksimipituus on 225 merkki\00E4')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125229792598026250)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>'Sovelluskokoelmaa %0 ei ole'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125230577250026251)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohdistin ei ole viel\00E4 avoinna')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125229830569026250)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Sovelluskokoelmassa %1 ei ole j\00E4senj\00E4rjestyst\00E4 %0'),
''))
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125230091856026251)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'fi'
,p_message_text=>unistr('Sovelluskokoelmassa "%1" ei ole j\00E4senj\00E4rjestyst\00E4 %0')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125182800539026237)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'fi'
,p_message_text=>'Algoritmia %0 ei tueta ECDSA:ssa.'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125182582540026237)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'fi'
,p_message_text=>unistr('Elliptist\00E4 k\00E4yr\00E4\00E4 %0 ei tueta.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125308260080026275)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Salaustoimintoa "%0" ei tueta t\00E4ss\00E4 j\00E4rjestelm\00E4ss\00E4.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125360580759026291)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Helppok\00E4ytt\00F6isyys testattu')
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125251524233026257)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'fi'
,p_message_text=>'Sulje'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125251604647026257)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'fi'
,p_message_text=>'Sivun mukautusvalinnat'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125251763070026257)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'fi'
,p_message_text=>'Oletus'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125251892155026257)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'fi'
,p_message_text=>unistr('N\00E4ytet\00E4\00E4n')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125251905790026257)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'fi'
,p_message_text=>'Piilotettu'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125251353545026257)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'fi'
,p_message_text=>unistr('Valitse alueet, jotka haluat sis\00E4llytt\00E4\00E4 t\00E4lle sivulle. Valitut alueet eiv\00E4t ehk\00E4 n\00E4y, jos sovelluskonteksti ei ole oikea tai jos k\00E4ytt\00F6oikeutesi eiv\00E4t riit\00E4.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125251406501026257)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 sivu ei ole mukautettava.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125360889358026291)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'fi'
,p_message_text=>unistr('Voit personoida t\00E4m\00E4n sovelluksen ulkoasua vaihtamalla teeman tyyli\00E4. Valitse haluamasi teeman tyyli alla olevasta luettelosta ja valitse K\00E4yt\00E4 muutoksia.')
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125361667855026291)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'fi'
,p_message_text=>unistr('Aluen\00E4ytt\00F6')
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125360710045026291)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4yt\00E4 sovelluksen oletustyyli\00E4')
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125360630538026291)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'fi'
,p_message_text=>'Ulkoasu '
,p_version_scn=>2692669
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125304894580026274)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarakeindeksi\00E4, johon kooste %0 viittaa, ei ole olemassa.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125197534779026241)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietojen viennin liitt\00E4mist\00E4 ei tueta muodossa %0.')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125160547092026230)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>'Muoto %0 ei tue CLOB-tulostusta.'
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125304545107026273)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'fi'
,p_message_text=>'Sarakekatkon on oltava sarakematriisin alussa.'
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125304619662026274)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarakeryhm\00E4n indeksi\00E4, johon %0 viittaa, ei ole olemassa.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125211770242026245)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'fi'
,p_message_text=>'vienti'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125218958408026247)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'fi'
,p_message_text=>'Vientimuodon on oltava XML ja tulostuspalvelimen on oltava ORDS.'
,p_version_scn=>2692643
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125304996526026274)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarakeindeksi\00E4, johon korostus %0 viittaa, ei ole olemassa.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125208339555026244)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen vientimuoto: %0'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125304754582026274)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4\00E4ryhm\00E4n indeksi\00E4, johon %0 viittaa, ei ole olemassa.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125329955417026281)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Taulukon %0 sarake %1 on aina LUODAAN AINA -tunnistussarake. Tarkista m\00E4\00E4ritysvalintaikkunasta, ettei mit\00E4\00E4n l\00E4hdesaraketta ole m\00E4\00E4ritetty sarakkeeseen %1.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125241568070026254)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritetty sitoumusv\00E4li on liian lyhyt.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125241603760026254)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietojen lataamista varten ei ole annettu yht\00E4\00E4n saraketta.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125242969563026254)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Rivin valitsinta "%0" vastaavia sarakkeita ei l\00F6ytynyt. Kokeile automaattista tunnistusta tai tarkista JSON-rakenne.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125252369935026257)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('XLSX-tiedostossa ei ole ty\00F6alustoja.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125197443733026241)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'fi'
,p_message_text=>unistr('Pyydetyt haettavat hierarkiatasot (%0) ylitt\00E4v\00E4t enimm\00E4isarvon %1.')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125252293000026257)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritetty\00E4 ty\00F6alustaa ei ole XLSX-tiedostossa.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125230654746026251)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietokannan tietojen nykyinen versio on muuttunut sen j\00E4lkeen, kun k\00E4ytt\00E4j\00E4 k\00E4ynnisti p\00E4ivitysprosessin.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125233547764026252)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe p\00E4ivitett\00E4ess\00E4 raportin sarakkeita: %0')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125344051341026286)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'fi'
,p_message_text=>'Kohdetta %0 ei voi muuntaa kohteeksi SDO_GEOMETRY.'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125280558578026266)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarakkeen %0 tietotyyppi on %1, eik\00E4 sit\00E4 voi muuntaa tyypiksi VARCHAR2!')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125287980625026268)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritteelle "%1" m\00E4\00E4ritetty\00E4 saraketta "%0" ei l\00F6ytynyt tietol\00E4hteest\00E4!')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125224008590026249)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'fi'
,p_message_text=>unistr('Suodatintyyppi\00E4 %0 ei tueta moniarvosarakkeille.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125347537188026287)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen "v\00E4lill\00E4"-suodatin.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125203120936026243)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('Arvoa %2 ei l\00F6ytynyt sarakkeessa %0, rivill\00E4 #%1.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125199807704026242)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'fi'
,p_message_text=>unistr('Saraketta %0 tai rivi\00E4 #%1 ei ole olemassa.')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125186426165026238)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritetty LOV-tyyppi on virheellinen.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125186359725026238)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('Virheellinen kyselytyyppi. Sallittuja kyselytyyppej\00E4 ovat Taulukko, SQL-kysely tai PL/SQL-funktio, joka palauttaa SQL-kyselyn.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125280611879026266)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SQL-kysely\00E4 ei voitu j\00E4sent\00E4\00E4!'),
'%0'))
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125288017153026268)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritteelle "%1" m\00E4\00E4ritetty\00E4 sarakekohtaa %0 ei l\00F6ytynyt SQL-lauseesta!')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125178017032026235)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'fi'
,p_message_text=>'Moniarvoisessa suodattimessa on liian monta kohdetta.'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125287839209026268)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritteelle "%0" ei ole m\00E4\00E4ritetty yht\00E4\00E4n saraketta.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125186264314026238)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>'PL/SQL-funktion runko ei palauttanut arvoa.'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125303628206026273)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'fi'
,p_message_text=>unistr('REST-tietol\00E4hde ei sis\00E4ll\00E4 ty\00F6vaihetta pyydetyn DML-toiminnon k\00E4sittelyyn.')
,p_version_scn=>2692656
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125345345454026286)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>unistr('Aluesuodattimia tuetaan vain tietotyypeiss\00E4 NUMBER, DATE tai TIMESTAMP.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125166284166026232)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('Pyynt\00F6 ep\00E4onnistui, %0')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125169780225026233)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'fi'
,p_message_text=>unistr('Muunnos GeoJSON-muodosta SDO_GEOMETRY-muotoon (sarake %0) ei ole k\00E4ytett\00E4viss\00E4 t\00E4ss\00E4 tietokannassa.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125173134200026234)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'fi'
,p_message_text=>unistr('SDO_GEOMETRY-muunnosta (sarake %0) ei tueta XML-tietol\00E4hteille.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125197215543026241)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'fi'
,p_message_text=>unistr('Merkki\00E4 %0 ei tueta usean arvon erottimena.')
,p_version_scn=>2692639
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125345443418026286)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4t\00E4 funktiota ei voi k\00E4ytt\00E4\00E4 kyselykontekstissa.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125173207438026234)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('Sarakkeen tietotyypit eiv\00E4t vastaa toisiaan.')
,p_version_scn=>2692634
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125206769789026244)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 tietol\00E4hde ei tue useiden rivien muuttamista.')
,p_version_scn=>2692640
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125186174077026238)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'fi'
,p_message_text=>unistr('Sis\00E4isen ORDS OUT -sidoksen rajat ovat ylittyneet. V\00E4henn\00E4 DML-rivien m\00E4\00E4r\00E4\00E4.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125288826179026269)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Et\00E4palvelimen JSON-vastausta ei voitu j\00E4sent\00E4\00E4: '),
'%0'))
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125186034949026238)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Tuntematon tai v\00E4\00E4r\00E4 kontekstityyppi.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125210116866026245)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'fi'
,p_message_text=>unistr('Tukemattomia komponentteja luettavassa vienniss\00E4: %0')
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125308125363026275)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('J\00E4sent\00E4j\00E4 ei tue t\00E4t\00E4 tiedostotyyppi\00E4.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125258943164026259)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00F6oikeutta ei ole (wwv_flow_api.set_credentials on m\00E4\00E4ritt\00E4m\00E4tt\00E4).')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125233839995026252)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'fi'
,p_message_text=>unistr('Ty\00F6tilaa ei luotu, koska se on jo olemassa.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125233766919026252)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4ryhm\00E4\00E4 ei luotu, koska se on jo olemassa')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125245186222026255)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4tunnukselle %0 l\00F6ytyi kaksoiskappale.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125245271139026255)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe ladattaessa k\00E4ytt\00E4ji\00E4. Virhe k\00E4ytt\00E4j\00E4n %0 kohdalla.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125256075465026258)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'fi'
,p_message_text=>unistr('%0 k\00E4ytt\00E4j\00E4\00E4 olisi ladattu.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125255805008026258)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'fi'
,p_message_text=>'Salasana'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125255975376026258)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00F6oikeudet')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125255651388026258)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00E4j\00E4tunnus')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125336084164026283)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'fi'
,p_message_text=>'Virhe sivukohteen #COMPONENT_NAME# muodostuksessa.'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125251056651026257)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Sivukohdetta ei voi n\00E4ytt\00E4\00E4, koska HTML-lomaketta ei ole viel\00E4 avattu.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125209449837026244)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'fi'
,p_message_text=>'Virhe laskettaessa sivukohteen #COMPONENT_NAME# oletusarvoa.'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125250397466026257)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe sivukohteen #COMPONENT_NAME# j\00E4lkilaskennassa.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125250243952026257)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe laskettaessa sivukohteen #COMPONENT_NAME# l\00E4hteen arvoa.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125227085696026250)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'fi'
,p_message_text=>unistr('K\00E4ytt\00F6oikeutta ei ole.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125176533058026235)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'fi'
,p_message_text=>'Kohteen %1 arvo %0 ei ole sallittu JSON-matriisi.'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125250507386026257)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'fi'
,p_message_text=>'Ei JavaScript-tukea.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125250665081026257)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'fi'
,p_message_text=>'Luettelo'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125251215668026257)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'fi'
,p_message_text=>unistr('Kysely\00E4 ei voi alustaa.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125259287181026259)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen %0 p\00E4ivityst\00E4 ei tueta.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125252737215026257)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen kohteen tunniste: %0 '
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125280425662026266)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4lle kohteelle ei ole ohjetta.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125242224283026254)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Kaaviokyselyn luonti ep\00E4onnistui. Tarkista l\00E4hteen ja sarakkeiden m\00E4\00E4rityksen asetukset.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125243539555026255)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen arvo parametrille p_mail_id: %0'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125280211930026266)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'fi'
,p_message_text=>unistr('Vastaanottajan osoitetta tai vastausosoitetta ei voi k\00E4ytt\00E4\00E4 l\00E4hett\00E4j\00E4n osoitteena, koska niiss\00E4 on useita s\00E4hk\00F6postiosoitteita.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125365102898026292)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'fi'
,p_message_text=>unistr('Olet ylitt\00E4nyt s\00E4hk\00F6postiviestien ty\00F6tilakohtaisen maksimim\00E4\00E4r\00E4n. Ota yhteytt\00E4 j\00E4rjestelm\00E4nvalvojaan.')
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125221759537026248)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 aliohjelma on k\00E4ynnistett\00E4v\00E4 sovellusistunnosta k\00E4sin.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125243493689026254)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'fi'
,p_message_text=>unistr('Tyhj\00E4 arvo on m\00E4\00E4ritetty parametrille %0.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125301555775026273)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postimallia "%0" ei l\00F6ydy sovelluksesta %1.')
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125378023331026296)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiviestien l\00E4hett\00E4minen vaatii instanssiparametrin SMTP_HOST_ADDRESS m\00E4\00E4ritt\00E4mist\00E4.')
,p_version_scn=>2692672
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125242808621026254)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4rit\00E4 viestin vastaanottaja s\00E4hk\00F6postin l\00E4hetyst\00E4 varten.')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125367520866026293)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'fi'
,p_message_text=>unistr('SMTP-yhteytt\00E4 ei voi muodostaa m\00E4\00E4ritetyll\00E4 s\00E4hk\00F6postipalvelimella.')
,p_version_scn=>2692670
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125342820857026285)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'fi'
,p_message_text=>'Virheellinen Ajax-kutsu!'
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125226715746026250)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Liit\00E4nn\00E4iselle %0 ei ole m\00E4\00E4ritetty Ajax-toimintoa.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125333343776026282)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Liit\00E4nn\00E4iselle %0 ei ole m\00E4\00E4ritetty suoritustoimintoa')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125226823334026250)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>unistr('Liit\00E4nn\00E4iselle %0 ei ole m\00E4\00E4ritetty muodostustoimintoa.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125343798737026286)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>unistr('REST-tietol\00E4hteen liit\00E4nn\00E4inen "%0" ei sis\00E4ll\00E4 Ominaisuudet-toimintoa.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125343646903026286)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>unistr('REST-tietol\00E4hteen liit\00E4nn\00E4inen "%0" ei sis\00E4ll\00E4 DML-toimintoa.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125343871572026286)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>unistr('REST-tietol\00E4hteen liit\00E4nn\00E4inen "%0" ei sis\00E4ll\00E4 suoritustoimintoa.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125343910379026286)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'fi'
,p_message_text=>unistr('REST-tietol\00E4hteen liit\00E4nn\00E4inen "%0" ei sis\00E4ll\00E4 noutotoimintoa.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125224256029026249)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe liit\00E4nn\00E4isen k\00E4sittelyn yhteydess\00E4 ilmenneess\00E4 PLSQL-koodissa.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125232894573026251)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('Arvo on m\00E4\00E4ritett\00E4v\00E4.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125265811015026261)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'fi'
,p_message_text=>unistr('Tietotyyppi\00E4 %0 ei voi muuntaa tyypiksi VARCHAR2!')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125354064777026289)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritteelle "%1" m\00E4\00E4ritetty\00E4 saraketta "%0" ei l\00F6ytynyt SQL-lauseesta!')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125181339411026236)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'fi'
,p_message_text=>'Kohteen %1 arvo %0 ei ole sallittu JSON-matriisi.'
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125331222519026282)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteelle %0 on m\00E4\00E4ritett\00E4v\00E4 valintaluettelo (LOV) -kysely tai nimetty valintaluettelo.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125332807473026282)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen %0 LOV-SQL-kyselyss\00E4 valittu sarakem\00E4\00E4r\00E4 on virheellinen. Tutustu sallittuihin esimerkkilauseisiin.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125353823926026289)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritteelle "%0" ei ole m\00E4\00E4ritetty yht\00E4\00E4n saraketta.')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125383010877026298)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritteelle "%1" annettu arvo %0 ei ole numero.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125336349082026283)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('Kohteen %0 SQL-lauseessa on v\00E4\00E4r\00E4 tietotyyppi. Sarake nro %1 on %2, mutta odotettu arvo on %3.')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125353909237026289)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'fi'
,p_message_text=>unistr('M\00E4\00E4ritteelle "%1" m\00E4\00E4ritetyn sarakkeen "%0" tietotyyppi on %2, vaikka sen pit\00E4isi olla %3.')
,p_version_scn=>2692666
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125223433017026249)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'fi'
,p_message_text=>unistr('Raportin asettelua ei l\00F6ydy.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125211002230026245)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'fi'
,p_message_text=>'Kohteen %0 taustasuoritusten raja ylitetty.'
,p_version_scn=>2692641
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125161357731026230)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'fi'
,p_message_text=>unistr('Toinen kohteen %0 suoritus on jo k\00E4ynniss\00E4.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125161296407026230)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'fi'
,p_message_text=>unistr('Toinen kohteen %0 suoritus on jo k\00E4ynniss\00E4 kontekstille %1.')
,p_version_scn=>2692633
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125176235944026235)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'fi'
,p_message_text=>unistr('Ladatut tiedostot eiv\00E4t ole n\00E4kyviss\00E4 kohteen %0 suorituksen ty\00F6istunnon aikana.')
,p_version_scn=>2692636
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125288721208026269)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'fi'
,p_message_text=>unistr('Summan laskutoimintoa ei voi k\00E4ytt\00E4\00E4 REST-tietol\00E4hteeseen perustuvissa raporteissa.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125250419528026257)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'fi'
,p_message_text=>unistr('ERR-2904 Pikavalinnan arvon m\00E4\00E4ritys ei onnistu.')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125255436716026258)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'fi'
,p_message_text=>'Virhe: tuntematon pikavalintatyyppi.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125193148032026240)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'fi'
,p_message_text=>unistr('Hakukysely on liian pitk\00E4.')
,p_version_scn=>2692637
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125244515826026255)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'fi'
,p_message_text=>'Todennuskaavaa ei voi hakea sovelluksessa %0.'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125252583162026257)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'fi'
,p_message_text=>'Komponenttia %0 ei voi noutaa.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125322808226026279)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 asiakkaan tunniste on jo olemassa nykyisess\00E4 istunnossa.')
,p_version_scn=>2692660
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125255705177026258)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'fi'
,p_message_text=>unistr('S\00E4hk\00F6postiosoite')
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125382583688026298)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'fi'
,p_message_text=>unistr('Todennus ep\00E4onnistui.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125283112795026267)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'fi'
,p_message_text=>unistr('Ainakin yksi kohteessa apex_util.g_request_cookies asetetuista ev\00E4steist\00E4 sis\00E4lt\00E4\00E4 virheellisen arvon.')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125265003592026261)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'fi'
,p_message_text=>'UDDI-rekisterin vastaus oli virheellinen.'
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125224351308026249)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'fi'
,p_message_text=>'Annettu URL ei palauttanut kelvollista WSDL-asiakirjaa.'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125227160667026250)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'fi'
,p_message_text=>unistr('WSDL-asiakirjassa on useita SOAP-sidoksia. &PRODUCT_NAME. tukee vain sellaisia WSDL-asiakirjoja, joissa on yksi SOAP-sidos. Voit jatkaa viitteen luomista t\00E4lle palvelulle valitsemalla Luo verkkopalvelun viite manuaalisesti.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125302740878026273)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'fi'
,p_message_text=>'Palvelun vastaus ei ollut XML-muodossa.'
,p_version_scn=>2692655
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125382479806026298)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'fi'
,p_message_text=>unistr('OAuth-k\00E4ytt\00F6oikeustietue puuttuu tai se on vanhentunut.')
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125346979009026287)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'fi'
,p_message_text=>unistr('Olet ylitt\00E4nyt web-palvelupyynt\00F6jen ty\00F6tilakohtaisen maksimim\00E4\00E4r\00E4n. Ota yhteytt\00E4 j\00E4rjestelm\00E4nvalvojaan.')
,p_version_scn=>2692665
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125382610894026298)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'fi'
,p_message_text=>'Palvelimen vastaus oli OAuth-varaustunnus, jota ei tueta.'
,p_version_scn=>2692673
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125226508155026249)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'fi'
,p_message_text=>unistr('WSDL-asiakirjasta puuttui viitteen lis\00E4\00E4miseen vaadittava SOAP-sidos.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125221985557026248)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4m\00E4 WSDL edellytt\00E4\00E4 todennusvaltuuksia. Anna seuraavassa k\00E4ytt\00E4j\00E4tunnus ja salasana.')
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125232975063026251)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'fi'
,p_message_text=>unistr('Muodostusohjelma ei voinut k\00E4sitell\00E4 WSDL-asiakirjaa. Voit jatkaa viitteen luomista t\00E4lle palvelulle valitsemalla Luo verkkopalvelun viite manuaalisesti.')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125305702561026274)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'fi'
,p_message_text=>unistr('P\00E4ivityst\00E4 ei voi k\00E4sitell\00E4.')
,p_version_scn=>2692657
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125331552174026282)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'fi'
,p_message_text=>unistr('Valintaluettelon palautus- ja n\00E4ytt\00F6sarakkeet ovat sama sarake!')
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125331437058026282)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'fi'
,p_message_text=>'Valintaluettelossa ei ole palautussaraketta.'
,p_version_scn=>2692662
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125259176133026259)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'fi'
,p_message_text=>'Virhe haettaessa sarakkeen arvoa: %0.'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125284060349026267)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'fi'
,p_message_text=>unistr('Nykyiset taulukkomuotoiset tiedot ovat liian vanhoja; l\00E4hdetietoja on muokattu.<br/> Voit hyl\00E4t\00E4 tekem\00E4si muutokset ja ladata tiedot uudelleen tietokannasta napsauttamalla <strong><a href="%0">t\00E4t\00E4</a></strong>.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125239208504026253)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'fi'
,p_message_text=>unistr('Virhe m\00E4\00E4ritett\00E4ess\00E4 sivutuksen merkkijonoa')
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125239180464026253)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('kyselyn otsikoita ei voi m\00E4\00E4ritt\00E4\00E4:'),
'%0'))
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125239329606026253)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'fi'
,p_message_text=>'virhe suoritettaessa raportin loppuviitteen korvauksia'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125239489595026253)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SQL-kysely\00E4 ei voitu j\00E4sent\00E4\00E4:'),
'%0',
'%1'))
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125245568220026255)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'fi'
,p_message_text=>unistr('Pienin pyydetty rivi: %0, n\00E4ytt\00E4m\00E4tt\00F6m\00E4t l\00F6ydetyt rivit: %1')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125241993239026254)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'fi'
,p_message_text=>unistr('kyselyn sarake #%0 (%1) on virheellinen: HTML:\00E4\00E4 k\00E4ytt\00E4vill\00E4 sarakkeilla on oltava aliasnimet')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125259083191026259)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'fi'
,p_message_text=>'Virhe haettaessa kyselyn tuloksia: %0'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125239529046026253)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'raportoi virhe:',
'%0'))
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125279646090026266)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'fi'
,p_message_text=>unistr('Lajittele t\00E4m\00E4n sarakkeen mukaan')
,p_version_scn=>2692651
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125242067708026254)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'fi'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Kysely\00E4 ei voi j\00E4sent\00E4\00E4. Tarkista kyselyn syntaksi.'),
'(%0)',
'</p>'))
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125284110394026267)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'fi'
,p_message_text=>unistr('T\00E4ss\00E4 lomakkeessa on tallentamattomia muutoksia. Valitse Ok, jos haluat jatkaa tallentamatta muutoksia.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125288627711026269)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'fi'
,p_message_text=>unistr('Raportin sivutuskaavaa (%0) ei tueta valitun tietol\00E4hteen kanssa.')
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125241848373026254)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'fi'
,p_message_text=>unistr('kyselyn sarake #%0 (%1) on virheellinen, k\00E4yt\00E4 sarakkeen aliasta')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125245648207026255)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'fi'
,p_message_text=>unistr('rivit %0 - %1 yli %2 rivist\00E4')
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125286178323026268)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1 yli %2 kohteesta'
,p_version_scn=>2692652
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125245404851026255)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1 / %2'
,p_version_scn=>2692647
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125226227042026249)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'fi'
,p_message_text=>'%0 - %1 / %2'
,p_version_scn=>2692644
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125239604823026253)
,p_name=>'Y'
,p_message_language=>'fi'
,p_message_text=>'K'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125246939637026256)
,p_name=>'YEAR'
,p_message_language=>'fi'
,p_message_text=>'vuosi'
,p_version_scn=>2692648
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125238829479026253)
,p_name=>'YEARS'
,p_message_language=>'fi'
,p_message_text=>'vuotta'
,p_version_scn=>2692645
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125284237254026267)
,p_name=>'YES'
,p_message_language=>'fi'
,p_message_text=>unistr('Kyll\00E4')
,p_version_scn=>2692652
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
 p_id=>wwv_flow_imp.id(109678305570583962.4541)
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
 p_id=>1.4541
,p_name=>'Viestit'
,p_alias=>'MESSAGES'
,p_step_title=>'Viestit'
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
