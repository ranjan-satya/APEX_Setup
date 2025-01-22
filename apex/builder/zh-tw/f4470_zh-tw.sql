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
,p_default_application_id=>4477
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4477 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4477
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131601068181039457')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'zh-tw'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4477)
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
 p_id=>wwv_flow_imp.id(4477)
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
 p_id=>wwv_flow_imp.id(728504220438374.4477)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4477)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4477)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4477)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4477)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4477)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4477)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4477)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4477)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4477)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4477)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4477)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4477)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4477)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4477)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4477)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4477)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.zh-tw'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4477)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4477)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4477)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4477)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4477)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4477)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4477)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.zh-tw'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4477)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4477)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4477)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4477)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4477)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4477)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4477)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.zh-tw'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4477)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4477)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4477)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4477)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4477)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4477)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4477)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4477)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4477)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4477)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4477)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4477)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4477)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4477)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4477)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4477)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4477)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4477)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4477)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.zh-tw'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4477)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4477)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4477)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4477)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4477)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4477)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4477)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4477)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4477)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4477)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4477)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4477)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4477)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4477)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4477)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4477)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4477)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.zh-tw'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4477)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4477)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4477)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4477)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4477)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4477)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4477)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4477)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4477)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4477)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4477)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4477)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4477)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4477)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4477)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4477)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4477)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.zh-tw'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4477)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4477)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4477)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4477)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4477)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4477)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4477)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4477)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4477)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4477)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4477)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4477)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4477)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4477)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4477)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.zh-tw'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4477)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4477)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4477)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4477)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4477)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4477)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4477)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4477)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4477)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4477)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4477)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4477)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4477)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4477)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4477)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4477)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4477)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4477)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4477)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4477)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4477)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4477)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4477)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4477)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4477)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4477)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4477)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4477)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4477)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4477)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4477)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4477)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4477)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4477)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4477)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4477)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4477)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4477)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4477)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4477)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4477)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4477)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4477)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4477)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4477)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4477)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4477)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4477)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4477)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4477)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4477)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4477)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4477)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4477)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4477)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4477)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4477)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4477)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4477)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4477)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4477)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4477)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4477)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4477)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4477)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4477)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4477)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4477)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4477)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4477)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4477)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4477)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4477)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4477)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4477)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4477)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4477)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4477)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4477)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4477)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4477)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4477)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4477)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4477)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4477)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4477)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4477)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4477)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4477)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4477)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4477)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4477)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4477)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4477)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4477)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4477)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4477)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4477)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4477)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4477)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4477)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4477)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4477)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4477)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4477)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4477)
,p_page_name=>'winlov'
,p_page_title=>unistr('\641C\5C0B\5C0D\8A71\65B9\584A')
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
,p_find_button_text=>unistr('\641C\5C0B')
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>unistr('\95DC\9589')
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('\4E0B\4E00\6B65 &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>unistr('&lt; \4E0A\4E00\6B65')
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>unistr('<div class="a-PopupLOV-pagination">\8CC7\6599\5217 #FIRST_ROW# - #LAST_ROW#</div>')
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
 p_id=>wwv_flow_imp.id(649611609668764506.4477)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4477)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4477)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4477)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4477)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4477)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4477)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4477)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4477)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4477)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4477)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4477)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4477)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4477)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4477)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4477)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4477)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4477)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4477)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4477)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4477)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4477)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4477)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4477)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4477)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4477)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4477)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4477)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4477)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4477)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4477)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4477)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4477)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4477)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4477)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4477)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4477)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4477)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4477)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4477)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4477)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4477)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4477)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4477)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4477)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4477)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4477)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4477)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4477)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4477)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4477)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4477)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4477)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4477)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4477)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4477)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4477)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4477)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4477)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4477)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4477)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4477)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4477)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4477)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4477)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4477)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4477)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4477)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4477)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4477)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4477)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4477)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4477)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4477)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4477)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4477)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4477)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4477)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4477)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4477)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4477)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4477)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4477)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4477)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4477)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4477)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4477)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4477)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4477)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4477)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4477)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4477)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4477)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4477)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4477)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4477)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4477)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4477)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4477)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4477)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4477)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4477)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4477)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4477)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4477)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4477)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4477)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4477)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4477)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4477)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4477)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4477)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4477)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4477)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4477)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4477)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4477)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4477)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4477)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4477)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4477)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4477)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4477)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4477)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4477)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4477)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4477)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4477)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4477)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4477)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4477)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4477)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4477)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4477)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4477)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4477)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4477)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4477)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4477)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4477)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4477)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4477)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4477)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4477)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4477)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4477)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4477)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4477)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4477)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4477)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4477)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4477)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4477)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4477)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4477)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4477)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4477)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4477)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4477)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4477)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4477)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4477)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4477)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4477)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4477)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4477)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4477)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4477)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4477)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4477)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4477)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4477)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4477)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4477)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4477)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4477)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4477)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4477)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4477)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4477)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4477)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4477)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4477)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4477)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4477)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4477)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4477)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4477)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4477)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4477)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4477)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4477)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4477)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4477)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4477)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4477)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4477)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4477)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4477)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4477)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4477)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4477)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4477)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4477)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4477)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4477)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4477)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4477)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4477)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4477)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4477)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4477)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4477)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4477)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4477)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4477)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4477)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4477)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4477)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4477)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4477)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4477)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4477)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4477)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4477)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4477)
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
 p_id=>wwv_flow_imp.id(131338921001028214)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04 %0')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131323580817028210)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BA1\7406\54E1')
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131323425816028210)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8005\540D\7A31')
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131386110258028228)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B58\53D6\88AB\62D2')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131343050994028215)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\7684 %0 \5E33\6236\5DF2\7D93\5EFA\7ACB.')
,p_version_scn=>2693955
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131326214490028210)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E33\6236\5DF2\88AB\9396\5B9A.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131310731296028206)
,p_name=>'AM_PM'
,p_message_language=>'zh-tw'
,p_message_text=>'AM / PM'
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131293596841028201)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\52D5\4F5C\9023\7D50')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131293423956028201)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0D\8A71\65B9\584A\9023\7D50')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131457803880028249)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5207\63DB %0')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131465601534028252)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('(\4F5C\7528\4E2D)')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131270444607028194)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\6E05\9664\4EA4\8AC7')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131270397615028194)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\9664\4EA4\8AC7')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131266932274028193)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63A5\53D7')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131267098735028193)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\62D2\7D55')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131266780298028193)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4EA4\8AC7\6B77\53F2\8A18\9304')
,p_is_js_message=>true
,p_version_scn=>2693939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131270170821028194)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\8907\88FD')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131270216776028194)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\8907\88FD\5230\526A\8CBC\7C3F')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131269985101028194)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8907\88FD')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131270042248028194)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8907\88FD\5230\526A\8CBC\7C3F')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131267462725028193)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F14\52A9\7A0B\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131267885738028193)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\5340\6216\57F7\884C\8655\7406\5C64\7D1A\505C\7528 AI.')
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131307172058028205)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\6307\5B9A ID \6216\975C\614B ID \7684\751F\6210\5F0F AI \670D\52D9.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131305833368028204)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('URL %0 \767C\751F\8A8D\8B49\932F\8AA4\6216\7981\6B62\5B58\53D6 (HTTP-%1). \8ACB\6AA2\67E5\751F\6210\5F0F AI \670D\52D9 %2 \7684\7D44\614B.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131285610577028199)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0D %0 \4E4B\751F\6210\5F0F AI \670D\52D9\7684 HTTP \8981\6C42\5931\6557, HTTP-%1: %2')
,p_version_scn=>2693945
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131310086408028206)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0D\6A21\5F0F %1 \4E2D Plugin %0 \7684\751F\6210\5F0F AI \670D\52D9\7684 HTTP \8981\6C42\767C\751F\932F\8AA4. \8ACB\6AA2\67E5\751F\6210\5F0F AI \670D\52D9\7684\7D44\614B.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131272819224028195)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BC4\4F8B')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131271240896028194)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F14\52A9\7A0B\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131272675900028195)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131271138235028194)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131301806422028203)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('OCI \751F\6210\5F0F AI \76EE\524D\4E0D\652F\63F4\4F7F\7528\591A\8A0A\606F\7684\4EA4\8AC7\9AD4\9A57.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131281734631028197)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\61C9\7528\7A0B\5F0F %1 \7684\63D0\793A %0 \6642\767C\751F\932F\8AA4. \8ACB\6AA2\67E5\6B64\57F7\884C\8655\7406\4E0A\662F\5426\53EF\4F7F\7528\300C\61C9\7528\7A0B\5F0F\7522\751F\5668\300D.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131286819777028199)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\8655\7406 AI \670D\52D9 %0 \7684\56DE\61C9, \56DE\61C9\70BA %1')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131293032956028201)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\50B3\9001\8A0A\606F')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131281381124028197)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C\7AEF AI \670D\52D9 %0 \767C\751F\932F\8AA4')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131267169101028193)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A0A\606F')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131267281217028193)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\5728\6B64\8655\8F38\5165\8A0A\606F')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131270588384028194)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8005\5927\982D\8CBC')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131270673179028194)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\9019\500B')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131267322966028193)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\6709\672A\50B3\9001\7684\8A0A\606F, \662F\5426\78BA\5B9A?')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131436313351028243)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('Ajax \547C\53EB\91DD\5C0D %1 \50B3\56DE\4F3A\670D\5668\932F\8AA4 %0.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131363424612028221)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5C07\61C9\7528\7A0B\5F0F\5225\540D "%0" \8F49\63DB\6210\552F\4E00\7684\61C9\7528\7A0B\5F0F ID.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131352254118028218)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-1816 \8F49\63DB\61C9\7528\7A0B\5F0F\5225\540D p_flow_alias_or_id (%0) \6642\767C\751F\672A\9810\671F\7684\932F\8AA4.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131449658164028247)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F\7E3D\548C\6AA2\9A57\63D0\4F9B\4E86\4E00\7A2E\7C21\6613\65B9\5F0F, \53EF\5224\65B7\8DE8\5DE5\4F5C\5340\9593\662F\5426\90E8\7F72\4E86\76F8\540C\7684\61C9\7528\7A0B\5F0F. \60A8\53EF\4EE5\6BD4\8F03\6B64\7E3D\548C\6AA2\9A57\4F86\5224\65B7\662F\5426\6709\76F8\7B26\7684\9805\76EE. ')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131336236189028213)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\8A8D\8B49\51FD\6578\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131318267118028208)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\8A8D\8B49\51FD\6578\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131490159109028259)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6388\6B0A Oracle Cloud Identity Management \50B3\56DE\7684\79DF\7528\6236\540D\7A31 %0 \4F7F\7528\7DB2\57DF %1!<br/>\8ACB<a href="&LOGOUT_URL.">\91CD\65B0\767B\5165</a>\4E26\6307\5B9A\6388\6B0A\7684\79DF\7528\6236\540D\7A31, \6216\8005\8B8A\66F4\60A8\7684 URL.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131314314193028207)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\7684\5E33\6236 "%0" \6C92\6709\5DE5\4F5C\5340 "%1" \7684\5FC5\8981\958B\767C\6B0A\9650 (DB_DEVELOPER \6216 DB_ADMINISTRATOR)!<br/> \8ACB\5728\7372\5F97\6B0A\9650\4E4B\5F8C<a href="&LOGOUT_URL.">\91CD\65B0\767B\5165</a>.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131310911474028206)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6388\6B0A Oracle Cloud Identity Management \50B3\56DE\7684\79DF\7528\6236\540D\7A31\4F7F\7528\76EE\524D\7684\5DE5\4F5C\5340!<br/>\8ACB<a href="&LOGOUT_URL.">\91CD\65B0\767B\5165</a>\4E26\6307\5B9A\6388\6B0A\7684\79DF\7528\6236\540D\7A31.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131314498514028207)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\57FA\65BC\5B89\5168\56E0\7D20, \4E0D\5141\8A31\4EE5 URL \4E2D\7684\7DB2\57DF\57F7\884C\6B64\5DE5\4F5C\5340\7684\61C9\7528\7A0B\5F0F.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131335963617028213)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\8981\6C42\60A8\7684 DBA \57F7\884C $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131335838585028213)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('SYS.DBMS_LDAP \5957\88DD\7A0B\5F0F\4E0D\5B58\5728\6216\7121\6548.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131335753146028213)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\7DE8\8F2F LDAP \4F7F\7528\8005\51FD\6578\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131336090037028213)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406 LDAP \8A8D\8B49\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131336859718028213)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('login_page \7A0B\5E8F\7684 p_flow_page \5F15\6578\767C\751F\932F\8AA4.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131336487088028213)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1 \4E2D\7684 p_session \7121\6548.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131387752131028228)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2 \7684\5F15\6578\683C\5F0F\932F\8AA4.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131336589650028213)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\50B3\9001\81F3\767B\5165\7A0B\5E8F\7684\4F7F\7528\8005\540D\7A31\662F\7A7A\503C.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131323363385028210)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\7B49\5F85 <span id="apex_login_throttle_sec">%0</span> \79D2\5F8C\518D\91CD\65B0\767B\5165.')
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131324602722028210)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767B\5165\5617\8A66\5DF2\88AB\5C01\9396.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131385496131028228)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\8A8D\8B49 "%0"')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131325134188028210)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B89\5168\6027\7FA4\7D44 ID \662F\7A7A\503C.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131336392739028213)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\57F7\884C\8A8D\8B49\5F8C\8655\7406\4F5C\696D\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131336114735028213)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\8A8D\8B49\524D\8655\7406\4F5C\696D\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131337890384028214)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\8ACB\5728\8D77\59CB\300C\91CD\8A2D\5BC6\78BC\300D\8981\6C42\7684\76F8\540C\700F\89BD\5668\4E2D\958B\555F\6B64 URL.  \5982\679C\60A8\6309\4E00\4E0B\300C\91CD\8A2D\5BC6\78BC URL\300D, \7136\5F8C\88AB\91CD\65B0\5C0E\5411\81F3'),
unistr('\767B\5165\9801\9762, \8ACB\518D\6B21\8D77\59CB\91CD\8A2D\5BC6\78BC, \4E26\5C07\700F\89BD\5668'),
unistr('\4FDD\6301\958B\555F.')))
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131487649033028259)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D\5BC6\78BC URL')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131314618619028207)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C1A\672A\5C07\8CC7\6E90\7BA1\7406\7A0B\5F0F\7528\6236\7FA4\7D44 %0 \6388\4E88 %1')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131314767840028207)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\4F7F\7528 DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP \6388\4E88\7F3A\5C11\7684\6B0A\9650.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131349331235028217)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\968E\6BB5\4F5C\696D\611F\6E2C\51FD\6578\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131349407993028217)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\968E\6BB5\4F5C\696D\9A57\8B49\51FD\6578\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131349661162028217)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\8981\6C42\60A8\7684 %0 \7BA1\7406\54E1\8A2D\5B9A Oracle Application Server Single Sign-On \5F15\64CE.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131360051240028220)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('sso \50B3\56DE\4E4B %1 \6B0A\6756\4E2D\7684 %0 \7121\6548.')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131336705647028213)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\7DE8\8F2F\8A8D\8B49\914D\7F6E\4E26\65B0\589E\61C9\7528\7A0B\5F0F\540D\7A31.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131359739154028220)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7A0B\5E8F\7684\547C\53EB\7AEF\7121\6548:')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131359943853028220)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('urlc \6B0A\6756\4E2D\7684\61C9\7528\7A0B\5F0F\968E\6BB5\4F5C\696D\7121\6548: %0')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131359534684028220)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('portal_sso_redirect \767C\751F\932F\8AA4: \6C92\6709\61C9\7528\7A0B\5F0F\8A3B\518A\8CC7\8A0A: %0')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131349584656028217)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('WWSEC_SSO_ENABLER_PRIVATE \5957\88DD\7A0B\5F0F\4E0D\5B58\5728\6216\7121\6548.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131336605471028213)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\8A8D\8B49\914D\7F6E\4E2D\627E\4E0D\5230\8A3B\518A\7684\5925\4F34\61C9\7528\7A0B\5F0F.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131359636562028220)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\4F9D\7167\5B89\88DD\6307\5357\7684\8AAA\660E\4F86\8A3B\518A\6B64\61C9\7528\7A0B\5F0F.')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131349757950028217)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406 SSO \8A8D\8B49\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131463055782028251)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6388\6B0A\7684 URL:  %0')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131349154899028217)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\8A8D\8B49\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131314513309028207)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\5340 "%0" \975E\4F5C\7528\4E2D. \8ACB\6D3D\8A62\60A8\7684\7BA1\7406\54E1.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131315299748028207)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'zh-tw'
,p_message_text=>'%0'
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131324362115028210)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\61C9\7528\7A0B\5F0F\300D\5B89\5168\6027\6AA2\67E5\62D2\7D55\5B58\53D6')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131324478635028210)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\9801\9762\300D\5B89\5168\6027\6AA2\67E5\62D2\7D55\5B58\53D6')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131324531505028210)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\6388\6B0A\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131393613707028230)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528 %1 %0 \5EFA\7F6E')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131393750145028230)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8AA0\5FC3')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131453559780028248)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E8B\4EF6\63CF\8FF0')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131453378621028248)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7D50\675F\65E5\671F')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131453673205028248)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E8B\4EF6 ID')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131453260191028248)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\59CB\65E5\671F')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131453411533028248)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E8B\4EF6\6A19\984C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131296053281028202)
,p_name=>'APEX.CARD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5361\7247')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131296294744028202)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5361\7247\52D5\4F5C')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131336917944028214)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8996\89BA\96B1\85CF\6838\53D6\65B9\584A')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131338839794028214)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\548C\6AA2\9A57\5167\5BB9\932F\8AA4')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131338717120028214)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\548C\6AA2\9A57\683C\5F0F\932F\8AA4')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131408608216028235)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\8907\88FD\5230\526A\8CBC\7C3F.')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131408167719028235)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\700F\89BD\5668\4E0D\652F\63F4\5F9E\6309\9215\6216\529F\80FD\8868\9032\884C\8907\88FD. \8ACB\5617\8A66 Ctrl+C \6216 Command+C.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131394314109028230)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\95DC\9589')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131272701419028195)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7A0B\5F0F\78BC\7DE8\8F2F\5668\5167\5BB9\8D85\904E\9805\76EE\7684\6700\5927\9577\5EA6 (\4E0A\9650\70BA %1 \500B\5B57\5143, \4F46\5BE6\969B\6709 %0 \500B\5B57\5143)')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131452820956028248)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0D\6BD4')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131447344897028246)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D\503C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131447280968028246)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8D77\59CB\503C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131451413871028247)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5FC5\9808\662F\6709\6548\7684\8272\5F69. \7BC4\4F8B: %0')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131313831749028207)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\591A\8272\5F69')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131313988138028207)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\555F\8272\5F69\9078\64C7\5668:')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131271050853028194)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('Alpha \6ED1\687F, \6C34\5E73\6ED1\687F. \8ACB\4F7F\7528\65B9\5411\9375\9032\884C\5C0E\89BD.')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131270723092028194)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8272\5F69\983B\8B5C, 4 \5411\6ED1\687F. \8ACB\4F7F\7528\65B9\5411\9375\9032\884C\5C0E\89BD.')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131270832234028194)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8272\8ABF\6ED1\687F, \5782\76F4\6ED1\687F. \8ACB\4F7F\7528\65B9\5411\9375\9032\884C\5C0E\89BD.')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131447100888028246)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\8272\5F69')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131447436239028246)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8B8A\66F4\8272\5F69\683C\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131485352256028258)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\503C\6E05\55AE')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131485452529028258)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\555F\6E05\55AE: %0')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131465745584028252)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('(\5DF2\5B8C\6210)')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131354620677028219)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\6D3D\8A62\60A8\7684\61C9\7528\7A0B\5F0F\7BA1\7406\54E1.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131370174980028223)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\8ACB\6D3D\8A62\60A8\7684\61C9\7528\7A0B\5F0F\7BA1\7406\54E1.'),
unistr('\6709\95DC\6B64\672A\9810\671F\4E8B\4EF6\7684\8A73\7D30\8CC7\8A0A, \8ACB\900F\904E\9664\932F ID "%0" \4F86\53D6\5F97.')))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131451735939028248)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\5148\66F4\6B63\932F\8AA4\5F8C\518D\5132\5B58.')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131297034839028202)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0. \8ACB\6309 Backspace \4EE5\522A\9664.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131395217502028231)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\5230 %0 \500B\76F8\7B26\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131277188372028196)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\5230 1 \500B\76F8\7B26\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131395127527028231)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\76F8\7B26\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131271589434028194)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5176\4ED6')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131271473518028194)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9078\53D6 %0 \503C')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131466208694028252)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D\9032\5EA6')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131452152179028248)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('APEX_APPLICATION_TEMP_FILES \4E2D\6C92\6709\9805\76EE %0 \6307\5B9A\7684\6A94\6848.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131440684534028244)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5EAB\4E2D\7684\76EE\524D\8CC7\6599\7248\672C\81EA\4F7F\7528\8005\8D77\59CB\66F4\65B0\8655\7406\4F5C\696D\5F8C\5DF2\7D93\8B8A\66F4.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131409750244028235)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\8F09\5165')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131456074339028249)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\932F\8AA4')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131455863798028249)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63D2\5165\8CC7\6599\5217')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131469443002028253)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9806\5E8F : \52D5\4F5C')
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131455915224028249)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\65B0\8CC7\6599\5217')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131284478039028198)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\52D5\4F5C')
,p_is_js_message=>true
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131312087985028206)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'zh-tw'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131298150736028202)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5FC5\9808\662F\65E5\671F\9078\64C7\5668\6216\6709\6548\7684\65E5\671F, \4F8B\5982 %1.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131407310628028234)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\9664')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131315554359028207)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B8C\6210')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131326596605028211)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\683C\5F0F\906E\7F69\4E2D\6709\4E0D\652F\63F4\7684\90E8\5206: %1')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131311735298028206)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\6642')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131395660963028231)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F48\51FA\5F0F\884C\4E8B\66C6: %0')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131311529736028206)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9031')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131311669091028206)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9031')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131311988150028206)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131312194311028206)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6708')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131312587102028206)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \500B\6708')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131282180544028197)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7684\5F48\51FA\5F0F\8996\7A97')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131312402136028206)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\500B\6708')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131404997829028234)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\552F\8B80\65E5\671F\9078\64C7\5668')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131313341311028207)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\65E5\671F')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131282213352028198)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\65E5\671F\8207\6642\9593')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131279428880028197)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\5929\6B21')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131282830706028198)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\6708\4EFD\8207\5E74\5EA6')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131279619365028197)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\6642\9593')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131280108559028197)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4ECA\5929')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131297761390028202)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5FC5\9808\662F\6709\6548\7684\65E5\671F, \4F8B\5982 %0.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131297460252028202)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5FC5\9808\4ECB\65BC %0 \548C %1 \4E4B\9593.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131297584765028202)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5FC5\9808\5728 %0 \6216\4E4B\5F8C.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131297688106028202)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5FC5\9808\5728 %0 \6216\4E4B\524D.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131289073952028200)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8996\89BA\96B1\85CF\7DE8\8F2F')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131312337130028206)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E74')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131399312861028232)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5927\65BC\6307\5B9A\7684\6700\5927\65E5\671F %0.')
,p_version_scn=>2693968
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131399782009028232)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \4E0D\7B26\5408\683C\5F0F %0.')
,p_is_js_message=>true
,p_version_scn=>2693968
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131399283494028232)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5C0F\65BC\6307\5B9A\7684\6700\5C0F\65E5\671F %0.')
,p_version_scn=>2693968
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131399463347028232)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \4E0D\5728 %0 \5230 %1 \7684\6709\6548\7BC4\570D\5167.')
,p_version_scn=>2693968
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131399664601028232)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \4E0D\5728 %0 \5230 %1 \7684\6709\6548\5E74\5EA6\7BC4\570D\5167.')
,p_version_scn=>2693968
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131291497267028200)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406 DBMS_CLOUD \8981\6C42\6642\767C\751F\5167\90E8\932F\8AA4.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131452088189028248)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53D6\6D88')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131477982070028255)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\95DC\9589')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131339127698028214)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\78BA\8A8D')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131479996273028256)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131451812251028248)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\78BA\5B9A')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131451920865028248)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131319616320028208)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0D\8A71\65B9\584A\6A19\984C')
,p_is_js_message=>true
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131359380030028220)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8996\89BA\96B1\85CF\5C0D\8A71\65B9\584A\6A19\984C')
,p_is_js_message=>true
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131280432643028197)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('Oracle Document Generator \9810\5EFA\529F\80FD')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131291296372028200)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5217\5370\6587\4EF6\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131268426797028193)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%s \4E0D\652F\63F4\4EE5 %1 \4F5C\70BA\8F38\51FA.')
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131280317598028197)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\547C\53EB Oracle Document Generator \9810\5EFA\529F\80FD\6642\767C\751F\932F\8AA4 "%0":')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131271842613028194)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9700\6709\6A23\677F.')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131297227337028202)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\8F09\6A94\6848\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131297196299028202)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\53EF\4E0B\8F09\7684\8CC7\6599.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131300798289028203)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\50C5\9650\7A0B\5F0F\5BE6\969B\57F7\884C\74B0\5883\4E0D\63D0\4F9B\6B64\529F\80FD.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131353503437028218)
,p_name=>'APEX.ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\932F\8AA4')
,p_is_js_message=>true
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131313408074028207)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\57F7\884C\932F\8AA4\8655\7406\56DE\547C\6642\767C\751F\4E0B\5217\932F\8AA4: %0')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131326050061028210)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E6A\88FD\932F\8AA4\9801\9762\6642\767C\751F\932F\8AA4: %0')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131315161069028207)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5167\90E8\932F\8AA4')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131464889448028252)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\8ACB\6D3D\8A62\60A8\7684\7BA1\7406\54E1.'),
unistr('\6709\95DC\6B64\672A\9810\671F\4E8B\4EF6\7684\8A73\7D30\8CC7\8A0A, \8ACB\900F\904E\9664\932F ID "%0" \4F86\53D6\5F97.')))
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131459492484028250)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5EAB\4EE5\552F\8B80\6A21\5F0F\958B\555F.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131489514360028259)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ORA-28353: \7121\6CD5\958B\555F\516C\4E8B\5305. \61C9\7528\7A0B\5F0F\8CC7\6599\76EE\524D\7121\6CD5\5B58\53D6.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131459538132028250)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\62B1\6B49, \6B64\9801\9762\4E0D\5B58\5728')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131318177514028208)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6280\8853\8CC7\8A0A (\50C5\4F9B\958B\767C\4EBA\54E1\4F7F\7528)')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131424038704028239)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\932F\8AA4\8A0A\606F')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131437914243028243)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\671F\683C\5F0F: %0')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131402887419028233)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8005\5DF2\5728\5B58\53D6\63A7\5236\6E05\55AE\4E2D')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131402706771028233)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\78BA\8A8D\8981\5C07\4E0B\5217 %0 \4F4D\4F7F\7528\8005\65B0\589E\81F3 <strong>%1</strong> \5B58\53D6\63A7\5236\6E05\55AE.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131403207944028233)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B58\5728\91CD\8907\7684\4F7F\7528\8005')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131402994566028233)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\96FB\5B50\90F5\4EF6\5730\5740\300D\4E2D\907A\6F0F at \7B26\865F (@)')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131403062955028233)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\96FB\5B50\90F5\4EF6\5730\5740\300D\4E2D\907A\6F0F\53E5\865F (.)')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131403126218028233)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8005\540D\7A31\592A\9577')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131403436449028233)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53EA\6709\61C9\7528\7A0B\5F0F\5B58\53D6\63A7\5236\6E05\55AE\4E2D\5B9A\7FA9\7684\4F7F\7528\8005\53EF\4EE5\5B58\53D6\6B64\61C9\7528\7A0B\5F0F')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131403534349028233)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\9810\671F\7684\5B58\53D6\63A7\5236\8A2D\5B9A\503C: %0')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131403326746028233)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6240\6709\5DF2\8A8D\8B49\7684\4F7F\7528\8005\90FD\53EF\4EE5\5B58\53D6\6B64\61C9\7528\7A0B\5F0F')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131447892596028246)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\505C\7528')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131447793788028246)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\555F\7528')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131448002665028246)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0: \5DF2\505C\7528')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131447952079028246)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0: \5DF2\555F\7528')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131296539604028202)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131357720747028220)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\95DC\9589')
,p_is_js_message=>true
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131357663869028220)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\555F')
,p_is_js_message=>true
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131447662377028246)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\8B58\5225')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131288198421028199)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \500B\4F4D\5143\7D44')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131288667854028199)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'zh-tw'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131288345045028199)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'zh-tw'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131288541650028199)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'zh-tw'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131440869342028244)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\8F09')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131293929459028201)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\9805')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131293646603028201)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131293847972028201)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96B1\85CF\9762\5411')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131318532416028208)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E\7BE9\9078\689D\4EF6')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131394837511028231)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5957\7528\7684\7BE9\9078 %0')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131319259913028208)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5957\7528')
,p_is_js_message=>true
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131438405005028244)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5957\7528')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131319346196028208)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53D6\6D88')
,p_is_js_message=>true
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131303144503028204)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9577\689D\5716')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131451119807028247)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5176\4ED6')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131303231856028204)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5713\9905\5716')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131449730910028247)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\8868')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131302957828028204)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A08\6578')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131438908270028244)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\9664')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131439052515028244)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\6E05\9664')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131439177654028244)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\9664 %0')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131455618113028249)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9762\5411 %0 \6240\53C3\7167\7684\8CC7\6599\6B04 %1 \7121\6CD5\4F7F\7528\6216\672A\7D93\6388\6B0A.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131266397315028193)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\8981\986F\793A\7684\7BE9\9078\689D\4EF6')
,p_is_js_message=>true
,p_version_scn=>2693939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131392827989028230)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7B46\7D50\679C')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131392945299028230)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9078\53D6 %0 \7B46')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131395700942028231)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D\7684\7BE9\9078')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131271376932028194)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\591A\9762\5411\641C\5C0B\9700\6709\4E00\500B\5340\57DF\5C64\7D1A\7684\8CC7\6599\4F86\6E90.')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131275010644028195)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\689D\4EF6\6E05\55AE')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131454177887028248)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8D85\51FA\9762\5411 %1 \7684\76F8\7570\503C\9650\5236 (%0).')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131440480728028244)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('DATE \6216 TIMESTAMP \8CC7\6599\6B04\4E0D\652F\63F4\9762\5411 %0.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131438505493028244)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078 %0')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131313156936028207)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 (\5DF2\5957\7528\7BE9\9078\689D\4EF6)')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131438627814028244)
,p_name=>'APEX.FS.GO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\57F7\884C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131308617583028205)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5305\542B %0')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131440065549028244)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B49\65BC %0')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131308301229028205)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5927\65BC %0')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131308430078028205)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5927\65BC\6216\7B49\65BC %0')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131308093380028205)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\65BC %0')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131308206995028205)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\65BC\6216\7B49\65BC %0')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131307564275028205)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5305\542B %0')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131293392406028201)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\7B49\65BC %0')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131307604232028205)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\982D\4E0D\662F %0')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131308567310028205)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\982D\70BA %0')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131306621041028205)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\9762\5411')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131282483616028198)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\524D\7F6E\78BC "%0" \5C0D\9762\5411 "%1" \800C\8A00\7121\6548.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131280850688028197)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9762\5411 "%0" \907A\6F0F\7BE9\9078\524D\7F6E\78BC.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131315062226028207)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904B\7B97\5B50')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131296996260028202)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5305\542B')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131295910146028202)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B49\65BC')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131296615766028202)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5927\65BC')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131296759808028202)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5927\65BC\6216\7B49\65BC')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131296303329028202)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\65BC')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131296478766028202)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\65BC\6216\7B49\65BC')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131307412766028205)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5305\542B')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131296141232028202)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\7B49\65BC')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131307342829028205)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\982D\4E0D\70BA')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131296835910028202)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\982D\70BA')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131315484198028207)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\8F38\5165\6B04\4F4D\300D\9762\5411\4E0D\652F\63F4 %0 \8CC7\6599\985E\578B (%1).')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131282379833028198)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9762\5411 "%1" (\8CC7\6599\985E\578B %2) \4E0D\652F\63F4\7BE9\9078 "%0".')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131314939279028207)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\503C')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131440272489028244)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\91DD\5C0D\9762\5411 %0 \63D0\4F9B\4EFB\4F55\641C\5C0B\8CC7\6599\6B04')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131266491554028193)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\591A\7BE9\9078\689D\4EF6')
,p_is_js_message=>true
,p_version_scn=>2693939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131393021546028230)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BC4\570D\958B\59CB')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131439785712028244)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \81F3 %1')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131439804469028244)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9AD8\65BC %0')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131439999606028244)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F4E\65BC %0')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131393125876028230)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BC4\570D\7D50\675F')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131457715068028249)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BC4\570D\9762\5411 %0 \7684 LOV \9805\76EE #%2 ("%1") \7121\6548 (\907A\6F0F "|" \5340\9694\7B26\865F).')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131440171817028244)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D\4E0D\652F\63F4\624B\52D5\8F38\5165\7BC4\570D\9762\5411 %0, \56E0\70BA\8CC7\6599\6B04\70BA DATE \6216 TIMESTAMP.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131439437341028244)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\81F3')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131303075682028204)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664\5716\8868')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131389478641028229)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131438833124028244)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131438708230028244)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B...')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131439622428028244)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('- \9078\53D6 -')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131302887384028204)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\5716\8868')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131439245286028244)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\8F03\5C11\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131439300778028244)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\986F\793A')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131439526043028244)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \9846\661F\4EE5\4E0A')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131394734935028230)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\5EFA\8B70')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131440362906028244)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D\50C5 NUMBER \8CC7\6599\6B04\652F\63F4\6587\5B57\6B04\4F4D\9762\5411 %0.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131265852759028193)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217\7E3D\6578')
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131455725720028249)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\591A\9762\5411\641C\5C0B\4E0D\652F\63F4 %0 \8CC7\6599\985E\578B (%1).')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131385911383028228)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8996\89BA\96B1\85CF\6A19\984C')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131448217125028246)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D\5F80\932F\8AA4')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131404247842028233)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\805A\7E3D.')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131332196595028212)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7A7A\767D\6A19\984C')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131413577755028236)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96B1\85CF\63A7\5236\5206\6BB5')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131404306762028233)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63A7\5236\5206\6BB5.')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131413446195028236)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C55\958B\63A7\5236\5206\6BB5')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131413242337028236)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\522A\9664 %0 \500B\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131482356690028257)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8907\7684\8B58\5225')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131275216877028195)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9032\5165\7DE8\8F2F\6A21\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131401184481028232)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B2C\4E00\500B')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131274018760028195)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96B1\85CF\5C0D\8A71\65B9\584A')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131273038878028195)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6D6E\52D5\6EA2\51FA\5132\5B58\683C\5167\5BB9')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131274398890028195)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\6EA2\51FA\5167\5BB9')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131348567786028217)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\683C\8868\5C3E')
,p_is_js_message=>true
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131404519974028233)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7FA4\7D44\6A19\982D')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131404417370028233)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\982D.')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131401270393028233)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\5F8C\4E00\500B')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131275405430028196)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96E2\958B\7DE8\8F2F\6A21\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131300184904028203)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\8F09\5165')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131423074963028239)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\66F4\591A\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131400996506028232)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\4E00\500B')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131404600949028233)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131313758961028207)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B2C %0 \9801')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131401332667028233)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'zh-tw'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131401474940028233)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 - %1, \5171 %2')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131458335105028250)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\9801\9762')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131348885440028217)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\9801')
,p_is_js_message=>true
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131401045008028232)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\4E00\500B')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131299099201028202)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\7BC4\570D')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131332496686028212)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131482140607028257)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\65B0\589E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131482269540028257)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\8B8A\66F4')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131490538231028260)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\683C\8CC7\6599\5217\5E8F\865F %0, \8CC7\6599\6B04 %1.')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131490687443028260)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\683C\8CC7\6599\5217\5E8F\865F %0.')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131482094829028257)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\522A\9664')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131404888348028234)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217\6A19\982D')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131332304785028212)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131300243695028203)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9078\53D6 %0 \500B %1')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131400311514028232)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9078\53D6 %0 \500B\5132\5B58\683C')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131401573275028233)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9078\53D6 %0 \500B\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131443655441028245)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\9078')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131337193145028214)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\6240\6709\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131413357651028236)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B2C %0 \9801')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131404717377028234)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131405027120028234)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\589E\6392\5E8F %0')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131405109823028234)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\6E1B\6392\5E8F %0')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131400492807028232)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\589E\6392\5E8F')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131400791896028232)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\589E\6392\5E8F %0')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131400585387028232)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\6E1B\6392\5E8F')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131400812015028232)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\6E1B\6392\5E8F %0')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131400667276028232)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\6392\5E8F')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131266217167028193)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6392\5E8F\9078\9805')
,p_is_js_message=>true
,p_version_scn=>2693939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131348648391028217)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\72C0\614B\5716\793A')
,p_is_js_message=>true
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131348729108028217)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\683C\72C0\614B')
,p_is_js_message=>true
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131278555922028196)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'zh-tw'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131278264734028196)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'zh-tw'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131413198313028236)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\8A08 %0')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131331926382028212)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0D "%0" \7684 HTTP \8981\6C42\5931\6557.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131333508471028213)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04 %0')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131333726743028213)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04 %0 \548C\8CC7\6599\5217 %1')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131334035399028213)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5728\7B2C\4E00\500B\8CC7\6599\6B04. \8CC7\6599\6B04 %0 \548C\8CC7\6599\5217 %1')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131333913014028213)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5728\7B2C\4E00\500B\8CC7\6599\5217. \8CC7\6599\6B04 %0 \548C\8CC7\6599\5217 %1')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131479506276028256)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B58\5728\65BC %0 \500B\8CC7\6599\6B04\548C %1 \500B\8CC7\6599\5217\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131334154102028213)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5728\6700\5F8C\4E00\500B\8CC7\6599\6B04. \8CC7\6599\6B04 %0 \548C\8CC7\6599\5217 %1')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131333891387028213)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5728\6700\5F8C\4E00\500B\8CC7\6599\5217. \8CC7\6599\6B04 %0 \548C\8CC7\6599\5217 %1')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131413049693028236)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B58\5728\65BC %0 \500B\8CC7\6599\5217\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131333645916028213)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217 %0')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131490398250028259)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E92\52D5\5F0F\65B9\683C %0')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131397460904028231)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\52D5\4F5C')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131398426609028232)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131398332480028232)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131483946977028257)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\805A\7E3D')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131469512739028253)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\805A\7E3D')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131471218263028253)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131428822393028241)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6240\6709\6587\5B57\8CC7\6599\6B04')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131430075926028241)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66FF\4EE3\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131431154429028241)
,p_name=>'APEX.IG.AND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E14')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131450554792028247)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8FD1\4F3C\76F8\7570\8A08\6578')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131484980401028258)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6574\9AD4\8FD1\4F3C\76F8\7570\8A08\6578')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131468101739028253)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5340\57DF\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131470040860028253)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\589E')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131430134304028241)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6388\6B0A')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131484020661028257)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\81EA\52D5')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131450933850028247)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E73\5747\503C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131484627751028258)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6574\9AD4\5E73\5747\503C')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131467630681028252)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\7C64\8EF8\6A19\984C')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131467878343028252)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\6578\4F4D\6578')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131467784334028252)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6578\503C\8EF8\6A19\984C')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131473822677028254)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\80CC\666F\8272\5F69')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131468240350028253)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9577\689D\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131425479620028240)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4ECB\65BC')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131475053710028255)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E8C\8005')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131468398975028253)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6CE1\6CE1\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131398629763028232)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53D6\6D88')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131431038225028241)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5340\5206\5927\5C0F\5BEB')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131485590332028258)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('(\5340\5206\5927\5C0F\5BEB)')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131456897666028249)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5132\5B58\8B8A\66F4')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131399054061028232)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8B8A\66F4\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693968
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131432135635028242)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\8868')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131428689529028241)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\7684\67E5\8A62\8D85\51FA\6BCF\4E00\5716\8868 %0 \500B\8CC7\6599\9EDE\7684\6578\76EE\4E0A\9650. \8ACB\5957\7528\7BE9\9078\689D\4EF6\4F86\6E1B\5C11\60A8\57FA\790E\67E5\8A62\4E2D\7684\8A18\9304\6578\76EE.')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131397381448028231)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\8868\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131405719210028234)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\9664')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131467198131028252)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6536\76E4\50F9')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131474051289028254)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8272\5F69')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131451380244028247)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\89BD')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131430478944028241)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131397533997028231)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131359497881028220)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\52D5\4F5C')
,p_is_js_message=>true
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131359278171028220)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('"%0" \8CC7\6599\6B04\7684\52D5\4F5C')
,p_is_js_message=>true
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131475828858028255)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\7528\9014')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131430519878028241)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8907\96DC')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131397707425028231)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904B\7B97')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131426099458028240)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5305\542B')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131432381543028242)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63A7\5236\5206\6BB5')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131405599341028234)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8907\88FD\5230\526A\8CBC\7C3F')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131405617187028234)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8907\88FD')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131450360542028247)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A08\6578')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131450438274028247)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76F8\7570\8A08\6578')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131484878829028258)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6574\9AD4\76F8\7570\8A08\6578')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131484753874028258)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6574\9AD4\8A08\6578')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131482428770028257)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EFA\7ACB %0')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131429067286028241)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131475689789028255)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\985E\578B')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131475263221028255)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65E5\671F')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131456658176028249)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\65E5\671F\503C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131426780299028240)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5929')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131429729844028241)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\8A2D\503C')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131429592224028241)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\8A2D\985E\578B')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131398571995028232)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\522A\9664')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131476777964028255)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\78BA\5B9A\8981\522A\9664\6B64\5831\8868\55CE?')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131434172533028242)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\522A\9664\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131432938051028242)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\522A\9664\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131470182570028253)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\6E1B')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131431876391028242)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A73\7D30\8CC7\8A0A')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131397014967028231)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A73\7D30\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131459197121028250)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\5411')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131431551266028241)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\505C\7528')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131426197042028240)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5305\542B')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131426368042028240)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\982D\4E0D\70BA')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131468430834028253)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\74B0\5708\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131432521181028242)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\8F09')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131322810253028209)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\50C5\8CC7\6599')
,p_is_js_message=>true
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131477745655028255)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\683C\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131337990565028214)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\555F\7528\4E0B\8F09\683C\5F0F %0.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131470857606028253)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8907\7684\805A\7E3D')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131470931567028253)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8907\7684\63A7\5236\5206\6BB5')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131434025975028242)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8907\7684\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131432867710028242)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8907\88FD\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131398141129028231)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131469913680028253)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\5716\8868')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131350493590028218)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F %0')
,p_is_js_message=>true
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131481366722028257)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\7FA4\7D44\4F9D\64DA')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131388510645028229)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\6A21\5F0F\4E2D\7684 %0')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131364112917028222)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\683C\8655\65BC\7DE8\8F2F\6A21\5F0F, \53D6\6D88\6309\4E0B\5373\53EF\5207\63DB\70BA\6AA2\8996\6A21\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131477314865028255)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\4EF6\526F\672C (bcc)')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131477501842028255)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A0A\606F')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131477246274028255)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\526F\672C (cc)')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131476986581028255)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96FB\5B50\90F5\4EF6\5DF2\50B3\9001.')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131477424886028255)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E3B\65E8')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131477182763028255)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6536\4EF6\8005 (to)')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131431208270028241)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\555F\7528')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131424474511028239)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B49\65BC')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131431320763028241)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8868\793A\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131476372805028255)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\985E\578B')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131443586540028245)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A94\6848\5DF2\5099\59A5. \958B\59CB\4E0B\8F09\4E2D.')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131405846611028234)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\586B\5165')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131408028744028234)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\9805\76EE\586B\5165\65B9\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131407920508028234)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\586B\5165\9078\64C7\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131397628991028231)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131430650702028241)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\689D\4EF6')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131484366846028258)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078...')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131470363930028253)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B2C\4E00\500B')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131397824130028231)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5012\6EAF')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131429198131028241)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\683C\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131474911208028255)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\683C\5F0F\906E\7F69')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131476645502028255)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'zh-tw'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131476579710028255)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'zh-tw'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131387660803028228)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'zh-tw'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131321598637028209)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'zh-tw'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131433798398028242)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\51CD\7D50')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131431492030028241)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\51FD\6578\548C\904B\7B97\5B50')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131468594074028253)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6F0F\6597\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131450251401028247)
,p_name=>'APEX.IG.GO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\57F7\884C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131425009478028239)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5927\65BC')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131425113959028239)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5927\65BC\6216\7B49\65BC')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131431745341028241)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\683C')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131396851211028231)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\683C\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131471150825028253)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7FA4\7D44')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131431933573028242)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7FA4\7D44\4F9D\64DA')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131397160917028231)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7FA4\7D44\4F9D\64DA\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131475546060028255)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\689D\4EF6\985E\578B')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131474484748028254)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\984C')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131474629947028254)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\984C\5C0D\9F4A\65B9\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131484279774028258)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131479797057028256)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\76F4\63A5\5728\6B64\4E92\52D5\5F0F\65B9\683C\5167\63D2\5165\3001\66F4\65B0\53CA\522A\9664\8CC7\6599.</p>'),
'',
unistr('<p>\82E5\8981\63D2\5165\65B0\8CC7\6599\5217, \8ACB\6309\4E00\4E0B\300C\65B0\589E\8CC7\6599\5217\300D\6309\9215.</p>'),
'',
unistr('<p>\82E5\8981\7DE8\8F2F\73FE\6709\8CC7\6599, \8ACB\6309\5169\4E0B\7279\5B9A\5132\5B58\683C. \82E5\662F\8981\9032\884C\8F03\5927\91CF\7684\7DE8\8F2F\5DE5\4F5C, \8ACB\6309\4E00\4E0B\300C\7DE8\8F2F\300D\4EE5\9032\5165\7DE8\8F2F\6A21\5F0F. \5728\7DE8\8F2F\6A21\5F0F\4E2D, \60A8\53EF\4EE5\6309\4E00\4E0B\6216\4F7F\7528\9375\76E4\4F86\7DE8\8F2F\7279\5B9A\5132\5B58\683C.</p>'),
'',
unistr('<p>\82E5\8981\8907\88FD\53CA\522A\9664\8CC7\6599\5217, \8ACB\4F7F\7528\300C\8B8A\66F4\300D\529F\80FD\8868. \82E5\8981\555F\7528\300C\8B8A\66F4\300D\529F\80FD\8868, \8ACB\4F7F\7528\6838\53D6\65B9\584A\4F86\9078\53D6\4E00\6216\591A\500B\8CC7\6599\5217.</p>'),
'',
unistr('<p>\82E5\8981\8907\88FD\9078\53D6\7684\8CC7\6599\5217, \8ACB\6309\4E00\4E0B\300C\8B8A\66F4\300D\529F\80FD\8868\4E26\9078\53D6\300C\8907\88FD\8CC7\6599\5217\300D. \82E5\8981\522A\9664\9078\53D6\7684\8CC7\6599\5217, \8ACB\6309\4E00\4E0B\300C\8B8A\66F4\300D\529F\80FD\8868\4E26\9078\53D6\300C\522A\9664\8CC7\6599\5217\300D.</p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131481876183028257)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\529F\80FD')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131481902465028257)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\4E92\52D5\5F0F\65B9\683C\6703\4EE5\53EF\641C\5C0B\4E14\53EF\81EA\8A02\7684\5831\8868\5F62\5F0F\5448\73FE\4E00\7D44\8CC7\6599. \60A8\53EF\4EE5\57F7\884C\6578\7A2E\4F5C\696D\4F86\9650\5236\50B3\56DE\7684\8A18\9304, \4EE5\53CA\8B8A\66F4\8CC7\6599\7684\986F\793A\65B9\5F0F.</p>'),
'',
unistr('<p>\60A8\53EF\4EE5\4F7F\7528\300C\641C\5C0B\300D\6B04\4F4D\4F86\7BE9\9078\50B3\56DE\7684\8A18\9304. \6309\4E00\4E0B\300C\52D5\4F5C\300D\5373\53EF\5B58\53D6\8A31\591A\53EF\4F9B\4FEE\6539\5831\8868\7248\9762\914D\7F6E\7684\9078\9805, \6216\8005\4F7F\7528\5DF2\986F\793A\8CC7\6599\6B04\7684\300C\8CC7\6599\6B04\6A19\984C\300D\529F\80FD\8868.</p>'),
'',
unistr('<p>\82E5\8981\5C07\60A8\7684\81EA\8A02\9805\5132\5B58\81F3\5831\8868, \8ACB\4F7F\7528\300C\5831\8868\8A2D\5B9A\503C\300D. \60A8\4E5F\53EF\4EE5\5C07\5831\8868\7684\8CC7\6599\4E0B\8F09\81F3\5916\90E8\6A94\6848, \6216\4F7F\7528\96FB\5B50\90F5\4EF6\5C07\8CC7\6599\50B3\9001\7D66\81EA\5DF1\6216\5176\4ED6\4EBA.</p>'),
'',
unistr('<p>\82E5\8981\77AD\89E3\8A73\7D30\8CC7\8A0A, \8ACB\53C3\95B1 <em>Oracle APEX Installation Guide</em> \4E2D\7684 "Using Interactive Grids".')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131481645558028257)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\89BD')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131479624627028256)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\81EA\8A02\4E92\52D5\5F0F\65B9\683C, \8B93\5176\904B\7528\5167\5EFA\7684\529F\80FD, \4EE5\5404\7A2E\4E0D\540C\65B9\5F0F\986F\793A\8CC7\6599.</p>'),
'',
unistr('<p>\60A8\53EF\4EE5\4F7F\7528\300C\8CC7\6599\6B04\6A19\984C\300D\529F\80FD\8868\6216\300C\52D5\4F5C\300D\529F\80FD\8868\4F86\6C7A\5B9A\8981\986F\793A\7684\8CC7\6599\6B04\3001\986F\793A\9806\5E8F\4EE5\53CA\51CD\7D50\8CC7\6599\6B04. \60A8\4E5F\53EF\4EE5\5B9A\7FA9\5404\7A2E\50B3\56DE\8CC7\6599\7684\8CC7\6599\7BE9\9078\548C\6392\5E8F.</p>'),
'',
unistr('<p>\4F7F\7528\300C\6AA2\8996\300D\6309\9215 (\5728\300C\641C\5C0B\300D\6B04\4F4D\65C1\908A) \5373\53EF\5B58\53D6\61C9\7528\7A0B\5F0F\958B\767C\4EBA\54E1\5DF2\7D93\5B9A\7FA9\7684\5176\4ED6\8CC7\6599\6AA2\8996. \60A8\4E5F\53EF\4EE5\5EFA\7ACB\5716\8868\6216\6AA2\8996\73FE\6709\5716\8868.</p>  '),
'',
unistr('<p><em>\6CE8\610F: \6309\4E00\4E0B\4E92\52D5\5F0F\65B9\683C\5C0D\8A71\65B9\584A\4E2D\7684<strong>\8AAA\660E</strong>, \5373\53EF\53D6\5F97\6240\9078\51FD\6578\7684\8A73\7D30\8CC7\8A0A.</em></p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131481749645028257)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868\529F\80FD')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131432771652028242)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E92\52D5\5F0F\65B9\683C\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131478515747028256)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\4F7F\7528\6B64\5C0D\8A71\65B9\584A\4F86\805A\7E3D\8CC7\6599\6B04. \805A\7E3D\7684\503C\6703\986F\793A\5728\8CC7\6599\7684\5E95\7AEF, \82E5\5B9A\7FA9\300C\63A7\5236\5206\6BB5\300D\7684\8A71, \5247\986F\793A\5728\6BCF\500B\5206\9694\7684\5E95\7AEF.</p>'),
'',
unistr('<p><strong>\805A\7E3D\6E05\55AE</strong><br>'),
unistr('\300C\805A\7E3D\300D\6E05\55AE\6703\986F\793A\5DF2\5B9A\7FA9\7684\805A\7E3D. \82E5\8981\505C\7528\73FE\6709\7684\805A\7E3D, \53EA\8981\5C07\5B83\53D6\6D88\9078\53D6.<br>'),
unistr('\6309\4E00\4E0B\300C\65B0\589E\300D( &plus; ) \5373\53EF\5EFA\7ACB\65B0\805A\7E3D, \6309\4E00\4E0B\300C\522A\9664\300D( &minus; ) \5373\53EF\79FB\9664\73FE\6709\805A\7E3D.</p>'),
'',
unistr('<p><strong>\805A\7E3D\8A2D\5B9A\503C</strong><br>'),
unistr('\8ACB\4F7F\7528\53F3\5074\7684\8868\55AE\4F86\5B9A\7FA9\805A\7E3D.<br>'),
unistr('\9078\53D6\8CC7\6599\6B04\540D\7A31\548C\805A\7E3D\985E\578B.<br>'),
unistr('(\9078\64C7\6027) \8F38\5165\805A\7E3D\7684\5DE5\5177\63D0\793A.<br>'),
unistr('\82E5\60A8\5DF2\5B9A\7FA9\300C\63A7\5236\5206\6BB5\300D, \9078\53D6<strong>\986F\793A\6574\9AD4\503C</strong>\6642\6703\5728\8CC7\6599\7684\5E95\7AEF\986F\793A\6574\9AD4\5E73\5747\503C\3001\7E3D\8A08\6216\985E\4F3C\7684\503C.</p>'),
'',
unistr('<p><em>\6CE8\610F: \82E5\8981\5B58\53D6\300C\805A\7E3D\300D\5C0D\8A71\65B9\584A, \60A8\53EF\4EE5\4F7F\7528\300C\52D5\4F5C\300D\529F\80FD\8868\6216\6309\4E00\4E0B\8CC7\6599\6B04\6A19\984C\548C\7E3D\548C ( &sum; ).</em></p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131480790080028256)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\805A\7E3D\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131479292131028256)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\5728\6B64\5C0D\8A71\65B9\584A\4E2D\5B9A\7FA9\986F\793A\70BA\500B\5225\8CC7\6599\6AA2\8996\7684\5716\8868.<br>'),
unistr('\9700\9078\53D6\5716\8868\985E\578B\548C\5716\8868\5C6C\6027.</p>'),
unistr('<p><strong>\5716\8868\5C6C\6027</strong><br>'),
unistr('\53EF\7528\7684\5716\8868\5C6C\6027\53D6\6C7A\65BC\5716\8868\985E\578B.</p>'),
'<p>',
'<ul>',
unistr('  <li>\9078\53D6\5305\542B\5C6C\6027\503C\7684\8CC7\6599\6B04:'),
'    <ul>',
unistr('      <li>\6A19\7C64 - \6BCF\500B\8CC7\6599\9EDE\7684\6587\5B57.</li>'),
unistr('      <li>\503C - \8981\7E6A\88FD\7684\8CC7\6599.</li>'),
unistr('      <li>\6578\5217 - \7528\65BC\5B9A\7FA9\591A\6578\5217\52D5\614B\67E5\8A62.</li>'),
unistr('      <li>\958B\76E4\50F9 - \6BCF\65E5\80A1\7968\958B\76E4\50F9 (\50C5\9650\80A1\7968\5206\6790\5716).</li>'),
unistr('      <li>\6536\76E4\50F9 - \6BCF\65E5\80A1\7968\6536\76E4\50F9 (\50C5\9650\80A1\7968\5206\6790\5716).</li>'),
unistr('      <li>\9AD8 - \9AD8\503C (\50C5\9650\7BC4\570D\5716\548C\80A1\7968\5206\6790\5716).</li>'),
unistr('      <li>\4F4E - \4F4E\503C (\50C5\9650\7BC4\570D\5716\548C\80A1\7968\5206\6790\5716).</li>'),
unistr('      <li>\6210\4EA4\91CF - \6BCF\65E5\80A1\7968\6210\4EA4\91CF (\50C5\9650\80A1\7968\5206\6790\5716).</li>'),
unistr('      <li>\76EE\6A19 - \76EE\6A19\503C (\50C5\9650\6F0F\6597\5716).</li>'),
unistr('      <li>X - X \8EF8\503C (\50C5\9650\6CE1\6CE1\5716\548C\6563\5E03\5716).</li>'),
unistr('      <li>Y - Y \8EF8\503C (\50C5\9650\6CE1\6CE1\5716\548C\6563\5E03\5716).</li>'),
unistr('      <li>Z - \9577\689D\5BEC\5EA6\6216\6CE1\6CE1\534A\5F91 (\50C5\9650\9577\689D\5716\3001\6CE1\6CE1\5716\4EE5\53CA\7BC4\570D\5716).</li>'),
'    </ul>',
'  </li>',
unistr('  <li>\65B9\5411 - \5782\76F4\6216\6C34\5E73.</li>'),
unistr('  <li>\805A\7E3D - \9078\53D6\5716\8868\503C\7684\805A\7E3D\65B9\5F0F.</li>'),
unistr('  <li>\5806\758A - \6307\5B9A\662F\5426\5806\758A\8CC7\6599\9805\76EE.</li>'),
unistr('  <li>\6392\5E8F\65B9\5F0F - \4F9D\6A19\7C64\6216\503C\6392\5E8F.'),
'    <ul>',
unistr('      <li>\65B9\5411 - \4F9D\905E\589E\6216\905E\6E1B\65B9\5F0F\6392\5E8F\503C.</li>'),
unistr('      <li>\7A7A\503C - \6307\5B9A\76F8\8F03\65BC\975E\7A7A\503C\7684\8A18\9304, \61C9\5982\4F55\6392\5E8F\5305\542B\7A7A\503C\7684\8A18\9304.</li>'),
'    </ul>',
'  </li>',
unistr('  <li>\5C0F\6578\4F4D\6578</li>'),
unistr('  <li>\6A19\7C64\8EF8\6A19\984C</li>'),
unistr('  <li>\503C\8EF8\6A19\984C</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131481193402028257)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\8868\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131478249525028256)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\5728\6B64\5C0D\8A71\65B9\584A\4E2D\9078\64C7\986F\793A\7684\8CC7\6599\6B04\548C\986F\793A\9806\5E8F.</p>'),
'',
unistr('<p>\82E5\8981\96B1\85CF\8CC7\6599\6B04, \53EA\8981\5C07\5B83\53D6\6D88\9078\53D6.<br>'),
unistr('\82E5\8981\91CD\65B0\6392\5217\8CC7\6599\6B04, \8ACB\6309\4E00\4E0B\300C\4E0A\79FB\300D( &uarr; ) \6216\300C\4E0B\79FB\300D( &darr; ).<br>'),
unistr('\4F7F\7528\4E0B\62C9\5F0F\9078\53D6\5668\5373\53EF\5217\51FA\6240\6709\8CC7\6599\6B04\3001\986F\793A\7684\8CC7\6599\6B04\6216\672A\986F\793A\7684\8CC7\6599\6B04.</p>'),
'',
unistr('<p>(\9078\64C7\6027) \53EF\4F7F\7528\8868\55AE\6307\5B9A\8CC7\6599\6B04\7684\6700\5C0F\5BEC\5EA6 (\50CF\7D20).</p>'),
'',
unistr('<p><em>\6CE8\610F: \60A8\4E5F\53EF\4EE5\6309\4E00\4E0B\62D6\66F3\63A7\9EDE (\4F4D\65BC\8CC7\6599\6B04\6A19\984C\7684\958B\982D) \4E26\5C07\8CC7\6599\6B04\5411\5DE6\6216\5411\53F3\62D6\66F3, \4EE5\91CD\65B0\6392\5217\986F\793A\7684\8CC7\6599\6B04. \60A8\4E5F\53EF\4EE5\9078\53D6\8CC7\6599\6B04\5340\9694\7B26\865F (\5728\6A19\984C\4E4B\9593), \7136\5F8C\5C07\5176\5411\5DE6\6216\5411\53F3\79FB\52D5, \4EE5\8B8A\66F4\986F\793A\4E4B\8CC7\6599\6B04\7684\5BEC\5EA6.</em></p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131481042615028256)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131478627217028256)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\4F7F\7528\6B64\5C0D\8A71\65B9\584A, \4F9D\64DA\5C0D\73FE\6709\8CC7\6599\6B04\57F7\884C\7684\7B97\8853\548C\51FD\6578\904B\7B97, \5B9A\7FA9\5176\4ED6\8CC7\6599\6B04.</p>'),
'',
unistr('<p><strong>\904B\7B97\6E05\55AE</strong><br>'),
unistr('\300C\904B\7B97\300D\6E05\55AE\6703\986F\793A\5DF2\5B9A\7FA9\7684\904B\7B97. \82E5\8981\505C\7528\73FE\6709\7684\904B\7B97, \53EA\8981\5C07\5B83\53D6\6D88\9078\53D6.<br>'),
unistr('\6309\4E00\4E0B\300C\65B0\589E\300D( &plus; ) \5373\53EF\65B0\589E\904B\7B97, \6309\4E00\4E0B\300C\522A\9664\300D( &minus; ) \5373\53EF\79FB\9664\73FE\6709\904B\7B97.</p>'),
'',
unistr('<p><strong>\904B\7B97\8A2D\5B9A\503C</strong><br>'),
unistr('\8ACB\4F7F\7528\6B64\8868\55AE\5B9A\7FA9\904B\7B97.<br>'),
unistr('\8F38\5165\8CC7\6599\6B04\8A73\7D30\8CC7\8A0A, \4F8B\5982\6A19\984C\3001\6A19\7C64, \4E26\9078\53D6\5C0D\9F4A\65B9\5F0F\8A2D\5B9A\503C.<br> '),
unistr('\5728\300C\8868\793A\5F0F\300D\6587\5B57\5340\4E2D\8F38\5165\904B\7B97\7684\8CC7\6599\6B04\548C\95DC\806F\7684\51FD\6578.<br>'),
unistr('\70BA\65B0\8CC7\6599\6B04\9078\53D6\9069\7576\7684\8CC7\6599\985E\578B\548C\683C\5F0F\906E\7F69 (\6B64\70BA\9078\64C7\6027).</p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131480626714028256)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904B\7B97\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131478982318028256)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\5728\6B64\5C0D\8A71\65B9\584A\4E2D\5B9A\7FA9\4E00\6216\591A\500B\8CC7\6599\6B04\7684\63A7\5236\5206\6BB5.</p>'),
'',
unistr('<p><strong>\63A7\5236\5206\6BB5\6E05\55AE</strong><br>'),
unistr('\300C\63A7\5236\5206\6BB5\300D\6E05\55AE\6703\986F\793A\5DF2\5B9A\7FA9\7684\63A7\5236\5206\6BB5. \82E5\8981\505C\7528\73FE\6709\7684\63A7\5236\5206\6BB5\8CC7\6599\6B04, \53EA\8981\5C07\5B83\53D6\6D88\9078\53D6.<br>'),
unistr('\6309\4E00\4E0B\300C\65B0\589E\300D( &plus; ) \5373\53EF\5728\63A7\5236\5206\6BB5\4E2D\5305\542B\65B0\8CC7\6599\6B04, \6309\4E00\4E0B\300C\522A\9664\300D( &minus; ) \5373\53EF\79FB\9664\63A7\5236\5206\6BB5\4E2D\7684\73FE\6709\8CC7\6599\6B04.<br>'),
unistr('\82E5\8981\91CD\65B0\6392\5217\8CC7\6599\6B04, \8ACB\6309\4E00\4E0B\300C\4E0A\79FB\300D( &uarr; ) \6216\300C\4E0B\79FB\300D( &darr; ), \5C07\9078\53D6\7684\8CC7\6599\6B04\79FB\52D5\81F3\5176\4ED6\8CC7\6599\6B04\7684\4E0A\65B9\6216\4E0B\65B9.</p>'),
'',
unistr('<p><strong>\63A7\5236\5206\6BB5\8A2D\5B9A\503C</strong><br>'),
unistr('\8ACB\4F7F\7528\6B64\8868\55AE\5B9A\7FA9\63A7\5236\5206\6BB5\8CC7\6599\6B04.<br>'),
unistr('\9078\53D6\4E00\500B\63A7\5236\5206\6BB5\8CC7\6599\6B04\3001\6392\5E8F\65B9\5411\4EE5\53CA\7A7A\503C\8CC7\6599\6B04 (\4E0D\542B\503C\7684\8CC7\6599\6B04) \7684\6392\5217\65B9\5F0F.</p>'),
'',
unistr('<p><em>\6CE8\610F: \82E5\662F\6AA2\8996\4E92\52D5\5F0F\65B9\683C, \60A8\53EF\4EE5\6309\4E00\4E0B\300C\8CC7\6599\6B04\6A19\984C\300D\4E26\9078\53D6\63A7\5236\5206\6BB5\5716\793A\4F86\5B9A\7FA9\63A7\5236\5206\6BB5.</em></p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131480359368028256)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63A7\5236\5206\6BB5\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131479136228028256)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\4F7F\7528\6B64\5C0D\8A71\65B9\584A\5C07\6240\6709\76EE\524D\7684\8CC7\6599\5217\4E0B\8F09\81F3\5916\90E8\6A94\6848. \6B64\6A94\6848\5C07\53EA\6703\5305\542B\76EE\524D\986F\793A\7684\8CC7\6599\6B04 (\5728\8CC7\6599\5957\7528\4EFB\4F55\7BE9\9078\548C\6392\5E8F\6240\5F97\7684\8CC7\6599\6B04).</p>'),
'',
unistr('<p>\8ACB\9078\53D6\6A94\6848\683C\5F0F, \7136\5F8C\6309\4E00\4E0B\300C\4E0B\8F09\300D.<br>'),
unistr('\6CE8\610F: CSV \5C07\4E0D\6703\5305\62EC\50CF\805A\7E3D\548C\63A7\5236\5206\6BB5\7684\6587\5B57\683C\5F0F.</p>'),
'',
unistr('<p>\82E5\8981\4EE5\96FB\5B50\90F5\4EF6\50B3\9001\6A94\6848, \8ACB\9078\53D6\300C\4EE5\96FB\5B50\90F5\4EF6\50B3\9001\300D, \4E26\8F38\5165\96FB\5B50\90F5\4EF6\8A73\7D30\8CC7\8A0A (\6536\4EF6\8005\3001\4E3B\65E8\548C\8A0A\606F).</p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131480198161028256)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\8F09\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131478312325028256)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\5728\6B64\5C0D\8A71\65B9\584A\4E2D\8A2D\5B9A\9650\5236\50B3\56DE\4E4B\8CC7\6599\5217\7684\8CC7\6599\7BE9\9078\689D\4EF6.</p>'),
'',
unistr('<p><strong>\7BE9\9078\6E05\55AE</strong><br>'),
unistr('\300C\7BE9\9078\300D\6E05\55AE\6703\986F\793A\5B9A\7FA9\7684\7BE9\9078\689D\4EF6. \82E5\8981\505C\7528\73FE\6709\7684\7BE9\9078, \53EA\8981\5C07\5B83\53D6\6D88\9078\53D6.<br>'),
unistr('\6309\4E00\4E0B\300C\65B0\589E\300D( &plus; ) \5373\53EF\5EFA\7ACB\65B0\7BE9\9078, \6309\4E00\4E0B\300C\522A\9664\300D( &minus; ) \5373\53EF\79FB\9664\73FE\6709\7BE9\9078.</p>'),
'',
unistr('<p><strong>\7BE9\9078\8A2D\5B9A\503C</strong><br>'),
unistr('\60A8\53EF\4EE5\4F7F\7528\6B64\8868\55AE\5B9A\7FA9\7BE9\9078\7279\6027.<br>'),
unistr('\9078\53D6\9069\7576\7684\7BE9\9078\985E\578B:<br>'),
unistr('&nbsp;&nbsp;&nbsp;\8CC7\6599\5217 - \53EF\7BE9\9078\4EFB\4F55\53EF\7BE9\9078\8CC7\6599\6B04\4E2D\7684\8A5E\5F59.<br>'),
unistr('&nbsp;&nbsp;&nbsp;\8CC7\6599\6B04 - \53EF\4F7F\7528\6307\5B9A\7684\904B\7B97\5B50\548C\503C\7BE9\9078\7279\5B9A\8CC7\6599\6B04.</p>'),
'',
unistr('<p><em>\6CE8\610F: \82E5\662F\6AA2\8996\4E92\52D5\5F0F\65B9\683C, \60A8\53EF\4EE5\76F4\63A5\5728\300C\641C\5C0B\300D\6B04\4F4D\4E2D\8F38\5165\4EE5\5B9A\7FA9\8CC7\6599\5217\7BE9\9078\689D\4EF6. \6309\4E00\4E0B\300C\9078\53D6\8981\641C\5C0B\7684\8CC7\6599\6B04\300D\5373\53EF\5C07\641C\5C0B\7BC4\570D\9650\65BC\7279\5B9A\8CC7\6599\6B04. \6216\8005, \53EF\958B\555F\300C\8CC7\6599\6B04\6A19\984C\300D\529F\80FD\8868\4E26\9078\53D6\4E00\500B\503C, \4EE5\5EFA\7ACB\8CC7\6599\6B04\7BE9\9078.</em></p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131480991484028256)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131478784834028256)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\5728\6B64\5C0D\8A71\65B9\584A\4E2D\6AA2\8996\904E\53BB\6642\9593\9EDE\7684\8CC7\6599.</p>'),
unistr('<p>\8ACB\8F38\5165\904E\53BB\7684\5206\9418\6578\4EE5\57F7\884C\5012\6EAF\67E5\8A62.</p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131480519607028256)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5012\6EAF\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131481268463028257)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7FA4\7D44\4F9D\64DA\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131478869062028256)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\4F7F\7528\6B64\5C0D\8A71\65B9\584A, \4F9D\64DA\8F38\5165\7684\689D\4EF6, \6A19\793A\8CC7\6599\7684\8CC7\6599\5217\6216\8CC7\6599\6B04.</p>'),
'',
unistr('<p><strong>\6A19\793A\6E05\55AE</strong><br>'),
unistr('\300C\6A19\793A\300D\6E05\55AE\6703\986F\793A\5DF2\5B9A\7FA9\7684\6A19\793A\9805\76EE. \82E5\8981\505C\7528\73FE\6709\7684\6A19\793A, \53EA\8981\5C07\5B83\53D6\6D88\9078\53D6.<br>'),
unistr('\6309\4E00\4E0B\300C\65B0\589E\300D( &plus; ) \5373\53EF\5EFA\7ACB\65B0\6A19\793A, \6309\4E00\4E0B\300C\522A\9664\300D( &minus; ) \5373\53EF\79FB\9664\73FE\6709\6A19\793A.</p>'),
'',
unistr('<p><strong>\6A19\793A\8A2D\5B9A\503C</strong><br>'),
unistr('\8ACB\4F7F\7528\6B64\8868\55AE\5B9A\7FA9\6A19\793A\7279\6027.<br>'),
unistr('\8F38\5165\540D\7A31\3001\9078\53D6\300C\8CC7\6599\5217\300D\6216\300C\8CC7\6599\6B04\300D, \7136\5F8C\9078\53D6\80CC\666F\548C\6587\5B57\7684 HTML \8272\5F69\4EE3\78BC.<br>'),
unistr('\9078\53D6\9069\7576\7684<strong>\689D\4EF6\985E\578B</strong>\4EE5\6A19\793A\7279\5B9A\8CC7\6599:<br>'),
unistr('&nbsp;&nbsp;&nbsp;\8CC7\6599\5217 - \6A19\793A\4EFB\4E00\8CC7\6599\6B04\4E2D\7684\8A5E\5F59.<br>'),
unistr('&nbsp;&nbsp;&nbsp;\8CC7\6599\6B04 - \4F9D\64DA\6307\5B9A\7684\904B\7B97\5B50\548C\503C, \6A19\793A\7279\5B9A\7684\8CC7\6599\6B04.</p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131480424586028256)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\793A\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131479080055028256)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\5728\6B64\5C0D\8A71\65B9\584A\4E2D\5132\5B58\60A8\5C0D\76EE\524D\7684\65B9\683C\7248\9762\914D\7F6E\548C\7D44\614B\6240\505A\7684\8B8A\66F4.<br>'),
unistr('\61C9\7528\7A0B\5F0F\958B\767C\4EBA\54E1\53EF\4EE5\5B9A\7FA9\591A\500B\66FF\4EE3\7684\5831\8868\7248\9762\914D\7F6E. \82E5\60C5\6CC1\5141\8A31, \60A8\548C\5176\4ED6\4E00\822C\4F7F\7528\8005\90FD\53EF\4EE5\5C07\5831\8868\53E6\5B58\70BA\300C\516C\7528\300D, \8B93\5831\8868\53EF\4F9B\65B9\683C\7684\5176\4ED6\6240\6709\4F7F\7528\8005\4F7F\7528. \60A8\4E5F\53EF\4EE5\5C07\5831\8868\53E6\5B58\70BA\53EA\6709\60A8\80FD\5920\6AA2\8996\7684\300C\5C08\7528\300D\5831\8868.</p>'),
unistr('<p>\8ACB\5F9E\53EF\7528\7684\985E\578B\4E2D\9078\53D6, \7136\5F8C\8F38\5165\9810\5B58\5831\8868\7684\540D\7A31.</p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131480281776028256)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\5831\8868\8AAA\660E'),
''))
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131478472925028256)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\5728\6B64\5C0D\8A71\65B9\584A\4E2D\8A2D\5B9A\986F\793A\9806\5E8F.</p>'),
'',
unistr('<p><strong>\6392\5E8F\6E05\55AE</strong><br>'),
unistr('\300C\6392\5E8F\300D\5C0D\8A71\65B9\584A\6703\986F\793A\5DF2\8A2D\5B9A\7684\6392\5E8F\898F\5247\6E05\55AE.<br>'),
unistr('\6309\4E00\4E0B\300C\65B0\589E\300D( &plus; ) \5373\53EF\5EFA\7ACB\6392\5E8F\8CC7\6599\6B04, \6309\4E00\4E0B\300C\522A\9664\300D( &minus; ) \5373\53EF\79FB\9664\6392\5E8F\8CC7\6599\6B04.<br>'),
unistr('\6309\4E00\4E0B\300C\4E0A\79FB\300D( &uarr; ) \548C\300C\4E0B\79FB\300D( &darr; ) \5373\53EF\5C07\9078\53D6\7684\6392\5E8F\8CC7\6599\6B04\79FB\5230\5176\4ED6\6392\5E8F\8CC7\6599\6B04\7684\4E0A\65B9\6216\4E0B\65B9.</p>'),
'',
unistr('<p><strong>\6392\5E8F\8A2D\5B9A\503C</strong><br>'),
unistr('\8ACB\9078\53D6\4E00\500B\6392\5E8F\8CC7\6599\6B04\3001\6392\5E8F\65B9\5411\4EE5\53CA\7A7A\503C\8CC7\6599\6B04 (\4E0D\542B\503C\7684\8CC7\6599\6B04) \7684\6392\5217\65B9\5F0F.</p>'),
'',
unistr('<p><em>\6CE8\610F: \8CC7\6599\53EF\4EE5\4F9D\7167\672A\986F\793A\7684\8CC7\6599\6B04\6392\5E8F; \4F46\662F\4E26\975E\6240\6709\8CC7\6599\6B04\90FD\53EF\4EE5\6392\5E8F.</em><br>'),
unistr('<em>\6309\8CC7\6599\6B04\6A19\984C\672B\7AEF\7684\5411\4E0A (\905E\589E) \6216\5411\4E0B (\905E\6E1B) \7BAD\865F, \5373\53EF\6392\5E8F\986F\793A\7684\8CC7\6599\6B04. \82E5\8981\5C07\5F8C\7E8C\7684\8CC7\6599\6B04\52A0\5230\73FE\6709\6392\5E8F, \8ACB\6309\4F4F Shift \9375, \7136\5F8C\6309\4E00\4E0B\5411\4E0A\6216\5411\4E0B\7BAD\865F.</em></p>')))
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131480858703028256)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6392\5E8F\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131480086047028256)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A02\95B1\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131433661598028242)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96B1\85CF')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131398010876028231)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\793A')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131467249432028252)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\9AD8\50F9')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131468050990028253)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6C34\5E73')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131426663265028240)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\6642')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131431664360028241)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\793A')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131396960558028231)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\793A\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131424873949028239)
,p_name=>'APEX.IG.IN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131433249307028242)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\975E\4F5C\7528\4E2D\8A2D\5B9A\503C')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131433312800028242)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\975E\4F5C\7528\4E2D\8A2D\5B9A\503C')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131440979341028244)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\300C\4E92\52D5\5F0F\65B9\683C\300D\8981\6C42\6642\767C\751F\5167\90E8\932F\8AA4.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131328876625028211)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04 "%1" \4E0D\652F\63F4\8CC7\6599\6B04\7BE9\9078\985E\578B "%0".')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131479894570028256)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\65E5\671F\683C\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131454623670028248)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E92\52D5\5F0F\65B9\683C\4E0D\652F\63F4\5B9A\7FA9 %0 \8CC7\6599\6B04\7BE9\9078.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131454528515028248)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\662F\53EF\4F9B\5B9A\7FA9\4E92\52D5\5F0F\65B9\683C\7BE9\9078\7684\6709\6548\7BE9\9078\985E\578B.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131335479720028213)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6578\5B57\683C\5F0F\7121\6548')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131482540141028257)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\8A2D\5B9A\503C')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131482674167028257)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\8A2D\5B9A\503C')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131473797215028254)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\6392\5E8F\65B9\5F0F\300D\8A2D\70BA %0, \4F46\5C1A\672A\9078\53D6\7528\65BC %0 \7684\8CC7\6599\6B04.')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131471096057028253)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\503C\7121\6548')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131466156117028252)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\986F\793A')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131425651833028240)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\524D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131425835681028240)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\5F8C')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131424730184028239)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\662F\7A7A\7684')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131424636931028239)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\662F\7A7A\7684')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131474573258028254)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\7C64')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131466527877028252)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\7C64')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131470475252028253)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\5F8C\4E00\500B')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131414950227028237)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \5929')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131415169413028237)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \5C0F\6642')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131415659322028237)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131414637029028236)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \500B\6708')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131414778617028236)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \9031')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131414820528028236)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D %0 \5929')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131415052175028237)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D %0 \5C0F\6642')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131415712048028237)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D %0 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131415588798028237)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D %0 \500B\6708')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131415459724028237)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D %0 \9031')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131414453916028236)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D %0 \5E74')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131414598216028236)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \5E74')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131474786122028255)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0D\9F4A\5132\5B58\683C')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131474848323028255)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\7FA4\7D44 - ')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131425239003028240)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\65BC')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131425375392028240)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\65BC\6216\7B49\65BC')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131468637831028253)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6298\7DDA\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131468751653028253)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6298\7DDA\5340\57DF\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131475172519028255)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'zh-tw'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131467360438028252)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\4F4E\50F9')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131477686727028255)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\4F7F\7528\9017\865F\5340\9694\591A\500B\5730\5740')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131426467253028240)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B26\5408\6B63\898F\8868\793A\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131450853092028247)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\5927\503C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131485145779028258)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6574\9AD4\6700\5927\503C')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131451092752028247)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E2D\9593\503C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131485225081028258)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6574\9AD4\4E2D\9593\503C')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131450782667028247)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\5C0F\503C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131426518174028240)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131451502279028247)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\9418\524D')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131485094936028258)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6574\9AD4\6700\5C0F\503C')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131426991304028240)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\500B\6708')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131433571325028242)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5305\542B\7684\8CC7\6599\5217\7B46\6578\8D85\904E %0, \9019\5DF2\8D85\904E\5141\8A31\7684\4E0A\9650. \8ACB\5957\7528\5176\4ED6\7BE9\9078\4EE5\6AA2\8996\7D50\679C.')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131459316835028250)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\5305\542B\591A\500B\4E92\52D5\5F0F\65B9\683C, \56E0\6B64\5FC5\9808\6307\5B9A\5340\57DF\975C\614B ID.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131429688844028241)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\540D\7A31')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131429858569028241)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5177\540D\7684\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131413864416028236)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \5929')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131413604047028236)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \5C0F\6642')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131415860077028237)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131414181323028236)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \500B\6708')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131414068063028236)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \9031')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131413910985028236)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C %0 \5929')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131413791983028236)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C %0 \5C0F\6642')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131415951538028237)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C %0 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131415238719028237)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C %0 \500B\6708')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131415315093028237)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C %0 \9031')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131414318945028236)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C %0 \5E74')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131414247015028236)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \5E74')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131425528854028240)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\4ECB\65BC')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131424598728028239)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\7B49\65BC')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131489350298028259)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ID \70BA %0 \7684\5340\57DF\4E0D\662F\300C\4E92\52D5\5F0F\65B9\683C\300D\5340\57DF, \6216\8005\4E0D\5B58\5728\65BC\61C9\7528\7A0B\5F0F %1 \4E2D.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131424900604028239)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5728')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131425747410028240)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5728\524D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131425933847028240)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5728\5F8C')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131433417076028242)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\8CC7\6599')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131470259808028253)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7A7A\503C')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131475358476028255)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6578\503C')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131470502968028253)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\95DC\9589')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131470683748028253)
,p_name=>'APEX.IG.ON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\555F')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131423797922028239)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('1 \5206\9418\524D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131478141081028256)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\555F\8272\5F69\9078\64C7\5668: %0')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131467024789028252)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\76E4\50F9')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131430756794028241)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904B\7B97\5B50')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131466498954028252)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\5411')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131468847856028253)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5713\9905\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131432028305028242)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A1E\7D10\5206\6790\8868')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131397208879028231)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A1E\7D10\5206\6790\8868\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131478030360028256)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528 "%0" \5340\9694\503C')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131468924133028253)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6975\5EA7\6A19\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131474222197028254)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E2D\9593')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131474326578028254)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7D50\5C3E')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131474172139028254)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\982D')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131429907111028241)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E3B\8981')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131430246669028241)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E3B\8981\9810\8A2D\503C')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131446731874028246)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E3B\8981\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131320302186028209)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5305\62EC\8F14\52A9\529F\80FD\6A19\8A18')
,p_is_js_message=>true
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131317721415028208)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A6B\5370')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131317894363028208)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76F4\5370')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131317608986028208)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\65B9\5411')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131317524531028208)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'zh-tw'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131317414155028208)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'zh-tw'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131320589632028209)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\81EA\8A02')
,p_is_js_message=>true
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131317228697028208)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'zh-tw'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131317182300028208)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'zh-tw'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131317376307028208)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'zh-tw'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131317024334028208)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\5927\5C0F')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131282650446028198)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664 Rich Text \683C\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131469008267028253)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96F7\9054\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131469193672028253)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BC4\570D\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131479354731028256)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\65B0\6574\7406')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131434222146028242)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\65B0\6574\7406\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131433046702028242)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\65B0\6574\7406\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131438260576028243)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F %0\3001\9801\9762 %1 \8207\5340\57DF %2 \4E2D\4E0D\5B58\5728\300C\4E92\52D5\5F0F\65B9\683C\300D\5340\57DF.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131398772049028232)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664 %0')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131429340787028241)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131488583854028259)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\522A\9664\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131488207604028259)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\70BA\6240\6709\4F7F\7528\8005\5132\5B58\66FF\4EE3\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131488165235028259)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\70BA\6240\6709\4F7F\7528\8005\5132\5B58\9810\8A2D\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131488442326028259)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5132\5B58\5C08\7528\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131488369989028259)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\70BA\6240\6709\4F7F\7528\8005\5132\5B58\516C\7528\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131438337794028243)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\540D\7A31\70BA %0 \7684\300C\9810\5B58\4E92\52D5\5F0F\65B9\683C\300D\4E0D\5B58\5728.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131423689501028239)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5206\9418\524D\7684\65B9\683C\8CC7\6599')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131423549219028239)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('1 \5206\9418\524D\7684\65B9\683C\8CC7\6599')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131359024176028220)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E92\52D5\5F0F\65B9\683C\5831\8868\4E0D\5B58\5728.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131481524949028257)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868 - \7DE8\8F2F')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131438171201028243)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ID \70BA %0 \7684\300C\9810\5B58\4E92\52D5\5F0F\65B9\683C\300D\4E0D\5B58\5728.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131481475933028257)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868 - \53E6\5B58\65B0\6A94')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131398821663028232)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\683C\8A2D\5B9A\503C')
,p_is_js_message=>true
,p_version_scn=>2693967
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131489453678028259)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\975C\614B ID \70BA %0 \7684\300C\9810\5B58\4E92\52D5\5F0F\65B9\683C\300D\4E0D\5B58\5728.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131484425007028258)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131397906748028231)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131434341293028242)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\56DE\5FA9\8B8A\66F4')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131433164616028242)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\56DE\5FA9\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131430343037028241)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131429298208028241)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6BCF\9801\8CC7\6599\5217\6578')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131489028168028259)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217\52D5\4F5C')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131490270542028259)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217 %0 \7684\52D5\4F5C')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131398226255028231)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131443353348028245)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5132\5B58')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131347903650028217)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\5B58\5831\8868: %0')
,p_is_js_message=>true
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131396430312028231)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\5B58\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131396501053028231)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\8A2D')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131370048238028223)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\540D\7A31\70BA %0 \7684\9810\5B58\5831\8868\5DF2\7D93\5B58\5728. \8ACB\8F38\5165\65B0\540D\7A31.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131396636679028231)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C08\7528')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131396778346028231)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\516C\7528')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131484100081028257)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53E6\5B58\65B0\6A94')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131432466029028242)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58\5831\8868\8A2D\5B9A\503C')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131469208341028253)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6563\5E03\5716')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131396331412028231)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131476478055028255)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B: \6240\6709\6587\5B57\8CC7\6599\6B04')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131396251905028231)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B: %0')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131475761901028255)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B: \5168\6587')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131423457918028239)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B ''%0''')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131465824670028252)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('- \9078\53D6 -')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131405928879028234)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131459032909028250)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\7236\9805\5340\57DF\4E2D\7684 1 \500B\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131396145212028231)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\8981\641C\5C0B\7684\8CC7\6599\6B04')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131488710110028259)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\52D5\4F5C')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131406103450028234)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\5132\5B58\683C')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131406096282028234)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\8CC7\6599\5217')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131477065752028255)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4EE5\96FB\5B50\90F5\4EF6\50B3\9001')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131469615110028253)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6578\5217')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131393847188028230)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131449089346028247)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\6574\9AD4\503C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131433927270028242)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\55AE\4E00\8CC7\6599\5217\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131432282712028242)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6392\5E8F')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131469742482028253)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6392\5E8F\65B9\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131489142095028259)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6BCF\500B\8CC7\6599\6B04\53EA\80FD\5B9A\7FA9\4E00\7A2E\6392\5E8F\65B9\5F0F.')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131488964940028259)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8B8A\66F4')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131470779780028253)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5806\758A\5716')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131426271130028240)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\982D\70BA')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131469359315028253)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\80A1\7968\5206\6790\5716')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131388674098028229)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EF6\4F38\8CC7\6599\6B04\5BEC\5EA6')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131432661367028242)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A02\95B1')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131450615363028247)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\548C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131490463591028259)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E92\52D5\5F0F\65B9\683C. \5831\8868: %0, \8996\89C0\8868: %1.')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131484583594028258)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6574\9AD4\7E3D\548C')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131467585668028252)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\6A19')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131473920086028254)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6587\5B57\8272\5F69')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131398963596028232)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5207\63DB')
,p_is_js_message=>true
,p_version_scn=>2693968
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131281098441028197)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\683C')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131448900833028247)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\5177\63D0\793A')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131429488418028241)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\985E\578B')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131433817229028242)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\89E3\9664\51CD\7D50')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131430980733028241)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\55AE\4F4D')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131476866774028255)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6709\672A\5132\5B58\7684\8B8A\66F4. \8981\7E7C\7E8C\55CE?')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131430812600028241)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\503C')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131466679973028252)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\503C')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131471557092028254)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\8F38\5165\503C.')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131456751093028249)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\503C (\4E0D\80FD\8B8A\66F4\6642\5340)')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131475491490028255)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6587\5B57')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131467933243028252)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5782\76F4')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131428932611028241)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131364033237028222)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996\6A21\5F0F\4E0B\7684\65B9\683C, \6309\4E0B\5373\53EF\7DE8\8F2F')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131465939595028252)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131467461843028252)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6210\4EA4\91CF')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131426888656028240)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9031')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131466050673028252)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\5C0F\8CC7\6599\6B04\5BEC\5EA6 (\50CF\7D20)')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131418053008028237)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4ECB\65BC %1 \5230 %2 \4E4B\9593')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131417739498028237)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5305\542B %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131417853794028237)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \672A\5305\542B %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131393207486028230)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\662F\4EE5 %1 \70BA\958B\982D')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131416559612028237)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7B49\65BC %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131416731465028237)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5927\65BC %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131416812451028237)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5927\65BC\6216\7B49\65BC %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131417592484028237)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728 %1 \4E2D')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131418793809028238)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D %1 \5929\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131418555963028238)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D %1 \5C0F\6642\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131418395361028237)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D %1 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131419110624028238)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D %1 \500B\6708\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131418952347028238)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D %1 \9031\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131419316356028238)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D %1 \5E74\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131418606795028238)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D 1 \5929\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131418440337028238)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D 1 \5C0F\6642\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131418256641028237)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D 1 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131419013555028238)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D 1 \500B\6708\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131418839562028238)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D 1 \9031\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131419240659028238)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D 1 \5E74\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131421198398028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C %1 \5929\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131420917912028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C %1 \5C0F\6642\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131420753568028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C %1 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131421536471028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C %1 \500B\6708\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131421301514028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C %1 \9031\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131421722494028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C %1 \5E74\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131421093907028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C 1 \5929\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131420876125028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C 1 \5C0F\6642\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131420648260028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C 1 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131421420722028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C 1 \500B\6708\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131421237211028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C 1 \9031\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131421646455028238)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C 1 \5E74\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131417273315028237)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\662F\7A7A\7684')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131417185515028237)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \662F\7A7A\7684')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131416956203028237)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5C0F\65BC %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131417034225028237)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5C0F\65BC\6216\7B49\65BC %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131417322339028237)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \540C\65BC %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131417907201028237)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7B26\5408\6B63\898F\8868\793A\5F0F %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131423854067028239)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5206\9418\524D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131418169187028237)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\4ECB\65BC %1 \5230 %2 \4E4B\9593')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131416623366028237)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\7B49\65BC %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131417680480028237)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728 %1 \4E2D')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131419906690028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D %1 \5929\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131419779767028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D %1 \5C0F\6642\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131419552632028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D %1 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131420357950028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D %1 \500B\6708\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131420124318028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D %1 \9031\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131420571639028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D %1 \5E74\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131419891596028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D 1 \5929\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131419625068028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D 1 \5C0F\6642\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131419489851028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D 1 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131420271453028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D 1 \500B\6708\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131420020645028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D 1 \9031\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131420401290028238)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D 1 \5E74\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131422336170028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C %1 \5929\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131422157600028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C %1 \5C0F\6642\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131421978979028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C %1 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131422796559028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C %1 \500B\6708\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131422500372028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C %1 \9031\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131422989533028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C %1 \5E74\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131422258423028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C 1 \5929\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131422013942028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C 1 \5C0F\6642\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131421835376028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C 1 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131422693767028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C 1 \500B\6708\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131422474970028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C 1 \9031\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131422830283028239)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C 1 \5E74\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131417470984028237)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\540C\65BC %1')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131424368549028239)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \958B\982D\70BA %1')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131466752126028252)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131427089179028240)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E74')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131466881756028252)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131466943598028252)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131475931731028255)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'zh-tw'
,p_message_text=>'Monday, 12 January, 2016'
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131476084843028255)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'zh-tw'
,p_message_text=>'January'
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131476170937028255)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('16 \5C0F\6642\524D')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131476293400028255)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('16 \5C0F\6642\5167')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131294272862028201)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5957\7528')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131286277474028199)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\62D6\66F3\60A8\7684\5F71\50CF, \4E26\4F7F\7528\7E2E\653E\6ED1\687F\5728\6846\67B6\5167\91CD\65B0\5B9A\4F4D.</p>'),
'',
unistr('<p>\7576\7126\9EDE\7F6E\65BC\5F71\50CF\526A\88C1\5668\6642, \53EF\4F7F\7528\4EE5\4E0B\9375\76E4\5FEB\901F\9375:</p>'),
'<ul>',
unistr('    <li>\5411\5DE6\7BAD\865F: \5F71\50CF\5DE6\79FB*</li>'),
unistr('    <li>\5411\4E0A\7BAD\865F: \5F71\50CF\4E0A\79FB*</li>'),
unistr('    <li>\5411\53F3\7BAD\865F: \5F71\50CF\53F3\79FB*</li>'),
unistr('    <li>\5411\4E0B\7BAD\865F: \5F71\50CF\4E0B\79FB*</li>'),
unistr('    <li>I: \653E\5927</li>'),
unistr('    <li>O: \7E2E\5C0F</li>'),
unistr('    <li>L: \5411\5DE6\65CB\8F49</li>'),
unistr('    <li>R: \5411\53F3\65CB\8F49</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*\6309\4F4F Shift \53EF\5FEB\901F\79FB\52D5</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131286456454028199)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\526A\88C1\5F71\50CF\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131294354086028201)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131286723473028199)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\526A\88C1\5F71\50CF')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131294431132028201)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\52D5\6ED1\687F\4EE5\8ABF\6574\7E2E\653E\7B49\7D1A')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131324091518028210)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A94\6848\985E\578B\7121\6548. \652F\63F4\7684\6A94\6848\985E\578B\70BA %0.')
,p_is_js_message=>true
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131458404821028250)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\700F\89BD')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131458178032028250)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\6A94\6848')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131458227652028250)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\6A94\6848')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131323831228028210)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\62D6\653E\529F\80FD')
,p_is_js_message=>true
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131324296796028210)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\62D6\653E\6A94\6848')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131325602037028210)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\4E00\500B\6A94\6848\6216\5C07\4E00\500B\6A94\6848\653E\5230\6B64\8655.')
,p_is_js_message=>true
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131325757727028210)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\6216\5C07\6A94\6848\653E\5230\6B64\8655.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131325836774028210)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\4E00\500B\6A94\6848\6216\5C07\4E00\500B\6A94\6848\653E\5230\6B64\8655.')
,p_is_js_message=>true
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131325961028028210)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\6216\5C07\6A94\6848\653E\5230\6B64\8655.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131324199944028210)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \500B\6A94\6848')
,p_is_js_message=>true
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131323984405028210)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A94\6848\904E\5927. \6A94\6848\5927\5C0F\4E0A\9650\70BA %0.')
,p_is_js_message=>true
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131304411812028204)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4\591A\500B\6A94\6848\4E0A\50B3.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131287305971028199)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131292801780028201)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\8F38\5165\5730\5740.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131291739107028200)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E23/\5E02')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131292144551028200)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\570B\78BC')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131291807711028200)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F4F\5BB6\9580\724C\865F\78BC')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131292703288028201)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DEF\5EA6')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131292661359028201)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7D93\5EA6')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131292589950028201)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\5730\5716\4E0A\986F\793A')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131292214464028201)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\6578')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131291969337028200)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\90F5\905E\5340\865F')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131292012996028200)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\72C0\614B')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131291655523028200)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8DEF/\8857')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131291528383028200)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5730\7406\7DE8\78BC\7D50\679C')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131323078418028209)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9032\884C\5730\7406\7DE8\78BC')
,p_is_js_message=>true
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131323106489028210)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\9032\884C\5730\7406\7DE8\78BC')
,p_is_js_message=>true
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131292425066028201)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5730\5716')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131292344785028201)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\5730\5740.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131292990873028201)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\8F38\5165 %0.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131399108592028232)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\8F38\5165 %0 \6216 %1.')
,p_is_js_message=>true
,p_version_scn=>2693968
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131488693517028259)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996 %0 \7684\8AAA\660E\5167\5BB9.')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131294611112028201)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\6620\50CF\6A94')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131294785025028201)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\5F71\50CF')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131294591348028201)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\8F09')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131294873371028201)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\62D6\653E\529F\80FD')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131294913608028201)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\62D6\653E\5F71\50CF')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131295051557028201)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\4E00\500B\5F71\50CF\6216\5C07\5F71\50CF\653E\5230\6B64\8655.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131295126051028201)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\6216\5C07\5F71\50CF\653E\5230\6B64\8655.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131295208620028201)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\4E00\500B\5F71\50CF\6216\5C07\5F71\50CF\653E\5230\6B64\8655.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131295311461028201)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\6216\5C07\5F71\50CF\653E\5230\6B64\8655.')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131380033865028226)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\52FE\9078')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131380185698028226)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\52FE\9078')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131407642428028234)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7A7A\7684\552F\8B80\7D44\5408\65B9\584A')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131405405541028234)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7A7A\7684\552F\8B80\6E05\55AE\65B9\584A')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131405289863028234)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\552F\8B80\7D44\5408\65B9\584A')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131405347001028234)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\552F\8B80\6E05\55AE\65B9\584A')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131321038921028209)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \4E0D\5728 %0 \5230 %1 \7684\6709\6548\7BC4\570D\5167.')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131321175906028209)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \4E0D\662F %0 \7684\500D\6578.')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131408423222028235)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\552F\8B80\958B\95DC')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131349094884028217)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5305\542B\9023\7D50\7684\552F\8B80\7DE8\8F2F')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131320643090028209)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5FC5\9808\7B26\5408\503C %0 \8207 %1.')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131320875255028209)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5426')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131407153476028234)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\95DC\9589')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131407293364028234)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\555F')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131320702832028209)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\662F')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131328667851028211)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A9E\8A00\9078\53D6\5668')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131265087394028192)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E\9805\76EE')
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131441838990028245)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131441985643028245)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131265191561028192)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\7684\9805\76EE')
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131445687884028246)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9032\968E')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131445993649028246)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53D6\6D88')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131445791733028246)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E00\822C')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131446095323028246)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5373\6642\6A23\677F\9078\9805')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131446673187028246)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\5143\4EF6\4E26\672A\5728\9801\9762\4E2D\5448\73FE, \56E0\6B64\7121\6CD5\4F7F\7528\300C\6A23\677F\9078\9805\300D.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131445539824028246)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\4EFB\4F55\300C\6A23\677F\9078\9805\300D.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131445869035028246)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131299681136028203)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\9664\5713\5F62')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131302004011028203)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\81EA\8A02\6A23\5F0F\4E0D\662F\6709\6548\7684 JSON.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131299949921028203)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8DDD\96E2\5DE5\5177')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131299714145028203)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E6A\88FD\5713\5F62')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131279588820028197)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D\7684\4F4D\7F6E')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131285999213028199)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8D77\59CB\4F4D\7F6E\5EA7\6A19\7121\6548.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131274975174028195)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8D77\59CB\4F4D\7F6E\5FC5\9808\662F\9EDE\5E7E\4F55.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131283538491028198)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\516C\91CC')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131278736286028197)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\5C64')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131449159458028247)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\5C64: %0')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131297951511028202)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0D\61C9')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131267693402028193)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A0A\606F')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131283712475028198)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\82F1\54E9')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131448142424028246)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5305\542B\7684\8CC7\6599\5217\7B46\6578\8D85\904E %0, \9019\5DF2\8D85\904E\5141\8A31\7684\4E0A\9650.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131278031091028196)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">\689D\6B3E</a> &nbsp;&nbsp; \5730\5716\8CC7\6599 &copy; 2021 HERE')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131274669928028195)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\8CC7\6599\5EAB\4E2D\7121\6CD5\4F7F\7528 SDO_GEOMETRY \8CC7\6599\985E\578B.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131278103234028196)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap \63D0\4F9B\8005</a>')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131302759466028204)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap \63D0\4F9B\8005</a>')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131278936131028197)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9EDE')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131449254409028247)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \500B\9EDE')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131299806191028203)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\77E9\5F62\7E2E\653E')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131299506315028203)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131279359465028197)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\65B9\4F4D\91CD\8A2D\70BA\5317\65B9')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131394123958028230)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5207\63DB\70BA 2D \6A21\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131394269452028230)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5207\63DB\70BA 3D \6A21\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131299474099028203)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5207\63DB\8457\4F5C\6B0A\8072\660E')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131300098336028203)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\8DDD\96E2')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131279035944028197)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\653E\5927')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131279298678028197)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E2E\5C0F')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131443798336028245)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7C97\9AD4')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131444661538028245)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F71\50CF')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131444220191028245)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5167\5D4C\7A0B\5F0F\78BC')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131456988900028249)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63D2\5165\5F71\50CF')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131457002214028249)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63D2\5165\9023\7D50')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131443859704028245)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\659C\9AD4')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131457634044028249)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9023\7D50')
,p_is_js_message=>true
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131444516378028245)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\55AE')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131444402771028245)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\6392\5217\7684\6E05\55AE')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131443953603028245)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\89BD')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131444011599028245)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6C92\6709\53EF\9810\89BD\7684\5167\5BB9')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131444166863028245)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\522A\9664\7DDA')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131444323702028245)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6392\5217\7684\6E05\55AE')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131423270322028239)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131479413951028256)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5176\4ED6...')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131423138639028239)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F09\5165\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131337364918028214)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\5272\6309\9215')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131337204780028214)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\5272\529F\80FD\8868')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131454262397028248)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\901A\77E5\8A0A\606F')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131278376703028196)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230 %0')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131428239815028240)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5FC5\9808\662F\5C0F\65BC\6216\7B49\65BC %0 \7684\6578\5B57.')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131428326171028240)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5FC5\9808\662F\6709\6548\7684\6578\5B57.')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131428454728028241)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \4E0D\7B26\5408\6578\5B57\683C\5F0F %0 (\7BC4\4F8B: %1).')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131428183831028240)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5FC5\9808\662F\5927\65BC\6216\7B49\65BC %0 \7684\6578\5B57.')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131428002741028240)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('#LABEL# \5FC5\9808\662F\4ECB\65BC %0 \548C %1 \4E4B\9593\7684\6578\5B57.')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131423353867028239)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\65B0\8996\7A97\4E2D\958B\555F')
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131373104082028224)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\7D93\9001\51FA\6B64\9801\9762, \7121\6CD5\91CD\65B0\9001\51FA.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131354528965028219)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\61C9\7528\7A0B\5F0F "%0" \9801\9762 "%1".')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131390014724028229)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\8F38\5165 #LABEL# \503C.')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131280760744028197)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96B1\85CF\5BC6\78BC')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131280671543028197)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\5BC6\78BC')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131328270693028211)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B')
,p_is_js_message=>true
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131442273116028245)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\95DC\9589')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131442129843028245)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0B\627E %0')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131442406125028245)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\4E00\500B')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131442334764028245)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\4E00\500B')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131319079184028208)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F38\5165\81F3\5C11\6709 %0 \500B\5B57\5143\7684\641C\5C0B\8A5E.')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131395345130028231)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F48\51FA\5F0F\503C\6E05\55AE: %0')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131319122051028208)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F38\5165\641C\5C0B\8A5E.')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131266141184028193)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\503C\6E05\55AE')
,p_is_js_message=>true
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131318905019028208)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\4EFB\4F55\7D50\679C.')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131318893900028208)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664 %0')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131416058047028237)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B\8A5E')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131442089392028245)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131268221854028193)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9700\6709 %0.')
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131280542429028197)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5217\5370\5831\8868\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131291312710028200)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\4F7F\7528\8A2D\5B9A\7684\5217\5370\4F3A\670D\5668\5217\5370\6B64\6587\4EF6.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131314035420028207)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\547C\53EB %1 \6642, \5728\8A55\4F30\53C3\6578 %0 \671F\9593\767C\751F\932F\8AA4. \8ACB\67E5\770B\932F\8AA4\65E5\8A8C\77AD\89E3\8A73\7D30\8CC7\8A0A.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131452785372028248)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\4E2D')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131311869275028206)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8FD4\56DE')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131312982665028207)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\7DB2\7AD9\5305\542B\61C9\7528\7A0B\5F0F\529F\80FD. \8ACB\5728\60A8\7684\88DD\7F6E\5B89\88DD\8A72\529F\80FD\4EE5\7372\5F97\6700\4F73\9AD4\9A57.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131314296916028207)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\4E00\500B')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131315828488028207)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B89\88DD\6B64\61C9\7528\7A0B\5F0F')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131300645863028203)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\7684\88DD\7F6E\6216\700F\89BD\5668\76EE\524D\4F3C\4E4E\4E0D\652F\63F4\5B89\88DD\6F38\9032\5F0F Web App.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131295722483028202)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('1. \9EDE\9078<strong>\5171\7528</strong>\5716\793A')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131295893286028202)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('2. \5411\4E0B\6372\52D5\4E26\9EDE\9078<strong>\65B0\589E\81F3\9996\9801\756B\9762</strong>')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131312231140028206)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('3. \9EDE\9078<strong style="color:#007AE1;">\65B0\589E</strong>\52A0\4EE5\78BA\8A8D')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131311307064028206)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'zh-tw'
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
unistr('    <h1>\7121\6CD5\9023\7DDA</h1>'),
unistr('    <p>\4F3C\4E4E\662F\767C\751F\7DB2\8DEF\554F\984C. \8ACB\6AA2\67E5\60A8\7684\9023\7DDA\4E26\91CD\8A66.</p>'),
unistr('    <button type="button">\91CD\8A66</button>'),
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131311208843028206)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\9023\7DDA')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131357873331028220)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\88DD\7F6E\7121\6CD5\555F\7528\63A8\9001\901A\77E5.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131363347428028221)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FEB\901F\9078\64C7 %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131363228906028221)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FEB\901F\9078\64C7\9023\7D50')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131337085121028214)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8996\89BA\96B1\85CF\5713\9215')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131281106956028197)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\55AE\4E00\8CC7\6599\5217\6AA2\8996')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131463813368028251)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131409126215028235)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\65E5')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131486798504028258)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\50B3\9001\9080\8ACB')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131486590707028258)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\9805')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131410970703028235)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65E5\6AA2\8996 (\5168\65E5)')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131410729411028235)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65E5\6AA2\8996 (\8CC7\6599\8207\6642\9593)')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131454968117028249)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5929')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131449912679028247)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63CF\8FF0')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131333483942028213)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'zh-tw'
,p_message_text=>'CSV'
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131333248211028212)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'zh-tw'
,p_message_text=>'iCal'
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131333151008028212)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'zh-tw'
,p_message_text=>'PDF'
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131333320156028212)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'zh-tw'
,p_message_text=>'XML'
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131332891927028212)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7D50\675F\65E5\671F')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131333060721028212)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E8B\4EF6\540D\7A31')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131486647631028258)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9080\8ACB')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131455085166028249)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\55AE')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131454767323028248)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6708')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131457332812028249)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\4E00\500B')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131471320430028254)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6C92\6709\4E8B\4EF6')
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131486908539028258)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\73FE\6709\4E8B\4EF6.')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131486833575028258)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\900F\904E\96FB\5B50\90F5\4EF6\50B3\9001\9080\8ACB.')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131457496668028249)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\4E00\500B')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131465105521028252)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\50B3\9001\96FB\5B50\90F5\4EF6')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131464977016028252)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\50B3\9001\96FB\5B50\90F5\4EF6')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131487505172028258)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6240\6709\6B04\4F4D\90FD\662F\5FC5\8981\7684.')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131487414709028258)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\50B3\9001\9080\8ACB')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131486496187028258)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E3B\65E8')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131465025182028252)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6536\4EF6\8005')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131332965395028212)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\59CB\65E5\671F')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131463171418028251)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \76F8\95DC\8868\55AE')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131410539687028235)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6642\9593')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131457534639028249)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4ECA\5929')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131455571223028249)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131454809760028248)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9031')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131410817113028235)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9031\6AA2\8996 (\5168\65E5)')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131410652519028235)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9031\6AA2\8996 (\8CC7\6599\8207\6642\9593)')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131455497586028249)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E74')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131455163968028249)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04...')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131455290097028249)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F09\5165\5176\4ED6\9805\76EE...')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131384649440028228)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8FD4\56DE')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131326174853028210)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F09\5165\5176\4ED6\9805\76EE...')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131328460651028211)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B...')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131455342832028249)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F09\5165\5176\4ED6\9805\76EE...')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131457221903028249)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\5340\57DF ID %0.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131328306579028211)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\8CC7\6599')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131355816168028219)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\91CD\8A2D\5340\57DF\5206\9801.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131319582083028208)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A2D\5B9A\5340\57DF\5206\9801\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131449301465028247)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04...')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131303855105028204)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9072\7DE9\8F09\5165\8207 %0 (\55AE\4E00 (\5C40\90E8) \5340\57DF) \7684\69FD\4F4D\4E0D\76F8\5BB9. \8ACB\5C0D\6B64\5340\57DF\505C\7528\9072\7DE9\8F09\5165, \6216\5C07\69FD\4F4D\5143\4EF6\79FB\81F3\5176\4ED6\5340\57DF.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131299150092028203)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7684\6A23\677F\5143\4EF6\907A\6F0F\7FA4\7D44\6A23\677F.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131294191917028201)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \662F\55AE\4E00 (\90E8\5206) \5340\57DF\4E14\50B3\56DE\591A\500B\8CC7\6599\5217.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131457126016028249)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4\5340\57DF\985E\578B %0.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131319414726028208)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5448\73FE\5340\57DF "#COMPONENT_NAME#" \6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131390198491028229)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\8F38\5165 #COLUMN_HEADER# \503C.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131271729478028194)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\5FC5\9808\6307\5B9A\5831\8868\7248\9762\914D\7F6E.')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131486091715028258)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0, Rich Text \7DE8\8F2F\5668')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131392292148028230)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('Rich Text HTML \6A19\8A18\8D85\904E\9805\76EE\7684\6700\5927\9577\5EA6 (\4E0A\9650\70BA %1 \500B\5B57\5143, \4F46\5BE6\969B\6709 %0 \500B\5B57\5143)')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131301634064028203)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\552F\8B80 Rich Text \7DE8\8F2F\5668')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131301538913028203)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('Rich Text \7DE8\8F2F\5668')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131301371124028203)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0D\9F4A\65B9\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131301449970028203)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9644\52A0\529F\80FD')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131301132886028203)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B57\578B')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131301039821028203)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\683C\5F0F\5316')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131301252247028203)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\55AE')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131454312006028248)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\522A\9664')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131446866981028246)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8907\88FD')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131445102045028246)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\7684\8CC7\6599\6B04')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131445095928028246)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6392\9664\7A7A\503C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131454492329028248)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131408740941028235)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\79FB')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131408845805028235)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\79FB')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131444814931028245)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\4E00\500B')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131445401194028246)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5176\4ED6\8CC7\6599\6B04')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131444955170028245)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\4E00\500B')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131445234715028246)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217 %0')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131445331165028246)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B2C %0 \500B\8CC7\6599\5217, \5171 %1 \500B')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131446914800028246)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\65B0\6574\7406')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131447015330028246)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\56DE\5FA9\8B8A\66F4')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131444792479028245)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A2D\5B9A\503C')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131403944528028233)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F8B\5982, %0')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131408257074028235)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BC4\4F8B: %0')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131320994324028209)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('1 \7B46\7D50\679C')
,p_is_js_message=>true
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131318012737028208)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7B46\7D50\679C')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131369867928028223)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\9801')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131369923878028223)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7D50\679C: \7B2C %0 \5230 %1 \7B46')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131265627835028193)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\65B0\767B\5165')
,p_is_js_message=>true
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131265542370028193)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\7684\968E\6BB5\4F5C\696D\5DF2\7D50\675F')
,p_is_js_message=>true
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131265713528028193)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EF6\9577')
,p_is_js_message=>true
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131265383917028193)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\7684\968E\6BB5\4F5C\696D\5C07\5728 %0 \7D50\675F. \8981\5EF6\9577\55CE?')
,p_is_js_message=>true
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131265471429028193)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\7684\968E\6BB5\4F5C\696D\5C07\5728 %0 \7D50\675F\4E14\7121\6CD5\5EF6\9577. \8ACB\7ACB\5373\5132\5B58\6240\6709\4F5C\696D, \4EE5\907F\514D\4EFB\4F55\8CC7\6599\907A\5931.')
,p_is_js_message=>true
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131464745264028252)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\8CC7\6599\5EAB\968E\6BB5\4F5C\696D\6E05\9664\7A0B\5F0F\78BC\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131354402072028219)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\8CC7\6599\5EAB\968E\6BB5\4F5C\696D\8A2D\5B9A\7A0B\5F0F\78BC\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131324842836028210)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\7684\968E\6BB5\4F5C\696D\5DF2\7D50\675F.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131463953423028251)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\95DC\9589\6B64\5C0D\8A71\65B9\584A, \7136\5F8C\6309\700F\89BD\5668\7684\300C\91CD\65B0\8F09\5165\300D\6309\9215\4EE5\53D6\5F97\65B0\7684\968E\6BB5\4F5C\696D.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131482819410028257)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\65B0<a href="%0">\767B\5165</a>\4EE5\5EFA\7ACB\65B0\7684\968E\6BB5\4F5C\696D.')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131367174187028222)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\968E\6BB5\4F5C\696D\7121\6548')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131410231868028235)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5728\4F7F\7528\8005 "%0" \7684 Real Application Security \968E\6BB5\4F5C\696D\4E2D\555F\7528\4EFB\4F55\300C\52D5\614B\89D2\8272\300D.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131352387308028218)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-99900 \7121\6CD5\5EFA\7ACB\552F\4E00\7684\968E\6BB5\4F5C\696D ID: %0')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131281419728028197)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9805\76EE %0 \4E0D\5141\8A31\4F7F\7528\968E\6BB5\4F5C\696D\72C0\614B\8CC7\6599\985E\578B CLOB.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131300830488028203)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4\66FF\4EE3\968E\6BB5\4F5C\696D\72C0\614B\8CC7\6599\985E\578B CLOB \7684\9805\76EE.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131369693645028223)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\968E\6BB5\4F5C\696D\72C0\614B\4FDD\8B77\9055\898F: \53EF\80FD\7684\539F\56E0\662F\624B\52D5\66F4\6539\53D7\4FDD\8B77\7684\9801\9762\9805\76EE %0. \5982\679C\60A8\4E0D\78BA\5B9A\9020\6210\6B64\932F\8AA4\7684\539F\56E0, \8ACB\6D3D\8A62\61C9\7528\7A0B\5F0F\7BA1\7406\54E1\53D6\5F97\5354\52A9.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131490817325028260)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\4FDD\8B77\9055\898F: \53EF\80FD\7684\539F\56E0\662F\9001\51FA\5C1A\672A\5B8C\6210\8F09\5165\7684\9801\9762, \6216\624B\52D5\66F4\6539\53D7\4FDD\8B77\9801\9762\9805\76EE. \5982\9700\9032\4E00\6B65\7684\5354\52A9, \8ACB\6D3D\8A62\61C9\7528\7A0B\5F0F\7BA1\7406\54E1.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131489977197028259)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5305\542B\4E0B\5217\5176\4E2D\4E00\500B\7121\6548\5B57\5143 &<>"/;,*|=% \6216 --')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131490095383028259)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5305\542B\4E0B\5217\5176\4E2D\4E00\500B\7121\6548\5B57\5143 &<>"/;,*|=% \6216 -- \6216\65B0\884C.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131489776337028259)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5305\542B\7279\6B8A\5B57\5143. \50C5\5141\8A31\5B57\5143 a-Z\30010-9 \8207\7A7A\683C.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131489882594028259)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5305\542B <, > \6216 " \7B49\7121\6548\7684\5B57\5143.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131327265671028211)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\4E00\6216\591A\500B request, clear cache \6216\5F15\6578\503C\4F5C\70BA\53C3\6578\50B3\9001\6642, \672A\63D0\4F9B\7E3D\548C\6AA2\9A57\4F86\986F\793A\9700\8981\7E3D\548C\6AA2\9A57\7684\9801\9762\8655\7406.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131364575384028222)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\968E\6BB5\4F5C\696D\72C0\614B\4FDD\8B77\9055\898F: \53EF\80FD\7684\539F\56E0\662F\624B\52D5\66F4\6539\5167\542B\7E3D\548C\6AA2\9A57\7684 URL, \6216\4F7F\7528\7684\9023\7D50\5305\542B\932F\8AA4\6216\907A\6F0F\7684\7E3D\548C\6AA2\9A57. \5982\679C\60A8\4E0D\78BA\5B9A\9020\6210\6B64\932F\8AA4\7684\539F\56E0, \8ACB\6D3D\8A62\61C9\7528\7A0B\5F0F\7BA1\7406\54E1\53D6\5F97\5354\52A9.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131446125116028246)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\9AD8\5C0D\6BD4\6A21\5F0F\8A2D\70BA\95DC\9589')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131446297514028246)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\9AD8\5C0D\6BD4\6A21\5F0F\8A2D\70BA\958B\555F')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131310657189028206)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F\8A2D\5B9A %0 \662F\8A02\95B1\81EA\5176\4ED6\61C9\7528\7A0B\5F0F, \56E0\6B64\7121\6CD5\66F4\65B0.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131360922822028221)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E95\7AEF')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131361198018028221)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\79FB')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131361254981028221)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\52D5')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131361359800028221)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\79FB\52D5')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131361479675028221)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131361565388028221)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\79FB\9664')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131361689033028221)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131360860842028221)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9802\7AEF')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131361018913028221)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\79FB')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131472602054028254)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131473328114028254)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5929\5167')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131472553207028254)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131473480177028254)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5C0F\6642\5167')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131472386516028254)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131473507025028254)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5206\9418\5167')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131472955693028254)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \500B\6708')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131473182843028254)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \500B\6708\5167')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131472473882028254)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131473267278028254)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \79D2\5167')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131472753375028254)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131473625332028254)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \9031\5167')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131472825386028254)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131473065237028254)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5E74\5167')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131273958512028195)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('[\7DDA\689D]')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131274501480028195)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('[\591A\500B\7DDA\689D]')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131274292946028195)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('[\591A\9EDE]')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131274706627028195)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('[\591A\500B\591A\908A\5F62]')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131274888168028195)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('[\5E7E\4F55\7269\4EF6]')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131273874430028195)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('[\9EDE (%0,%1)]')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131274108041028195)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('[\591A\908A\5F62]')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131273328895028195)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\96B1\85CF\5340\57DF: %0')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131388471100028229)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96B1\85CF')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131272383968028195)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5C07\6C34\5E73\65B9\5411\7684\5206\5272\5668\5411\5DE6\6216\5411\53F3\79FB\52D5')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131272599523028195)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9054\5230 %0px \7684\5927\5C0F\4E0A\9650')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131273592920028195)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9054\5230 %0px \7684\5927\5C0F\4E0B\9650')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131273424172028195)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\96B1\85CF\5340\57DF')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131273271572028195)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\56DE\5FA9\5340\57DF')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131272908869028195)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5927\5C0F\5DF2\8ABF\6574\70BA %0px')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131273150500028195)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\56DE\5FA9\5340\57DF: %0')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131388302493028229)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\56DE\5FA9')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131272495335028195)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5C07\5782\76F4\65B9\5411\7684\5206\5272\5668\5411\4E0A\6216\5411\4E0B\79FB\52D5')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131437814175028243)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\9664\8A55\6BD4')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131427726851028240)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728 1 - %1 \7684\6709\6548\8A55\6BD4\7BC4\570D\5167')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131427858249028240)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\662F\6578\5B57')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131423913971028239)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6210\529F\8A0A\606F')
,p_is_js_message=>true
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131485719720028258)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\4E00\500B')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131485602070028258)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\4E00\500B')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131395896183028231)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\8207\6B64\5DE5\4F5C\57F7\884C\8655\7406\95DC\806F\7684\8A18\9304\7CFB\7D71')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131404148396028233)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\57F7\884C\5DE5\4F5C\52D5\4F5C %0 \5931\6557 - \5DE5\4F5C\8A2D\70BA\767C\751F\932F\8AA4\72C0\614B, \8ACB\6AA2\67E5\5DE5\4F5C\52D5\4F5C\4EE3\78BC')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131284320659028198)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E\8A3B\89E3: \672A\6388\6B0A')
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131283624656028198)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\5DF2\6307\5B9A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131277010503028196)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6307\5B9A\7D66 %0')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131283370900028198)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53D6\6D88\5DE5\4F5C: \672A\6388\6B0A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131298907446028202)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\79FB\9664\6B64\5DE5\4F5C\7684\5BE6\969B\64C1\6709\8005. \5728\91CD\8A66\6B64\4F5C\696D\4E4B\524D, \8ACB\5148\5C07\6B64\5DE5\4F5C\59D4\6D3E\7D66\5176\4ED6\53C3\8207\8005.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131282963986028198)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BA3\544A\5DE5\4F5C: \672A\6388\6B0A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131283095794028198)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B8C\6210\5DE5\4F5C: \672A\6388\6B0A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131283145056028198)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\59D4\6D3E\5DE5\4F5C: \672A\6388\6B0A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131281513473028197)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\7684\5230\671F\65E5\4E0D\53EF\4EE5\662F\904E\53BB\7684\65E5\671F.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131276805789028196)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5230\671F: %0')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131277229251028196)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\52D5\4F5C %1 \5931\6557. \932F\8AA4\8A0A\606F - %0')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131276994807028196)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5931\6557')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131276567124028196)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6210\529F')
,p_is_js_message=>true
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131276714395028196)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\52D5\4F5C %1 \6210\529F\4F46\6709\8A0A\606F %0')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131280025165028197)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904E\671F\524D')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131305660152028204)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53D6\6D88')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131305156535028204)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\53D6\6D88\5DE5\4F5C')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131305705927028204)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5141\8A31\53C3\8207\8005\53D6\6D88\6B64\5DE5\4F5C')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131305009580028204)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BA3\544A')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131305496022028204)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\5DF2\7D93\7531\5176\4ED6\4F7F\7528\8005\5BA3\544A, \6216\8005\672A\6388\6B0A\53C3\8207\8005\5BA3\544A\6B64\5DE5\4F5C')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131305222072028204)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\7531 %0 \5BA3\544A')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131406341603028234)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B8C\6210')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131304887446028204)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5B8C\6210\5DE5\4F5C, \7D50\679C\70BA %0')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131306108154028205)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\672A\6307\5B9A\6216\4E0D\5141\8A31\53C3\8207\8005\5B8C\6210\5DE5\4F5C')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131266502182028193)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5B8C\6210\5DE5\4F5C, \6C92\6709\7D50\679C')
,p_version_scn=>2693939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131406437361028234)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EFA\7ACB')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131299331875028203)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528 ID %0 \5EFA\7ACB\7684\5DE5\4F5C')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131406541528028234)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\59D4\6D3E')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131304985877028204)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5C07\5DE5\4F5C\59D4\6D3E\7D66\6F5B\5728\64C1\6709\8005 %0')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131305584092028204)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6388\6B0A\53C3\8207\8005, \6216\8005\65B0\53C3\8207\8005\4E0D\662F\6B64\5DE5\4F5C\7684\6F5B\5728\64C1\6709\8005')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131278675018028196)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904E\671F')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131279757811028197)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\5DF2\904E\671F.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131406620635028234)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5931\6557')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131275344342028195)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\672A\6307\5B9A\6216\4E0D\5141\8A31\53C3\8207\8005\8981\6C42\5DE5\4F5C\8CC7\8A0A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131275580863028196)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\8981\6C42\4EFB\4F55\5DE5\4F5C\8CC7\8A0A, \6216\4E0D\5141\8A31\53C3\8207\8005\9001\51FA\5DE5\4F5C\8CC7\8A0A.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131279151534028197)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9054\7E7C\7E8C\6B21\6578\4E0A\9650 %0, \56E0\6B64\5DF2\5C07\5DE5\4F5C\904E\671F.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131306432238028205)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\7684\72C0\614B\4E0D\6B63\78BA, \6216\8005\53C3\8207\8005\4E0D\662F\6B64\5DE5\4F5C\7684\696D\52D9\7BA1\7406\54E1')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131306557673028205)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F5C\696D %0 \4E0D\660E\6216\4E0D\9069\7528\65BC\6B64\5DE5\4F5C')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131406736865028234)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CB\51FA')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131392479627028230)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\91CB\51FA\5DE5\4F5C, \73FE\5728\5176\4ED6\4EBA\53EF\4EE5\5BA3\544A\6B64\5DE5\4F5C')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131285307349028198)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5141\8A31\91CB\51FA\5DE5\4F5C - \4F7F\7528\8005\4E0D\662F\5DE5\4F5C\7684\64C1\6709\8005')
,p_version_scn=>2693945
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131302364092028203)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664\64C1\6709\8005')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131302557893028203)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5F9E\5DE5\4F5C\79FB\9664\53C3\8207\8005 %0')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131279901584028197)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E7C\7E8C')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131278851501028197)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\4F7F\7528 ID %0 \7E7C\7E8C\5DE5\4F5C, \904E\671F\524D\7684\5269\9918\7E7C\7E8C\6B21\6578\4E0A\9650\70BA %1.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131279883456028197)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\4F7F\7528\5DE5\4F5C ID %1 \7E7C\7E8C\5DE5\4F5C ID %0')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131275884199028196)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8981\6C42\8CC7\8A0A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131275776416028196)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\8981\6C42 %0 \7684\66F4\591A\8CC7\8A0A: %1')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131273699977028195)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\300C\8D77\59CB\8005\53EF\5B8C\6210\300D\8A2D\70BA %0')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131275955090028196)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9001\51FA\8CC7\8A0A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131275673608028196)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\8981\6C42\5C07\8CC7\8A0A\9001\51FA\81F3 %0: %1')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131406856334028234)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\65B0\8A3B\89E3')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131303394165028204)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E\8A3B\89E3: %0')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131306298965028205)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\72C0\614B\4E0D\5141\8A31\8A3B\89E3')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131313599484028207)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A2D\5B9A\5DE5\4F5C\5230\671F\65E5\70BA %0')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131271675257028194)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\65B0\5230\671F\65E5')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131406953156028234)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\65B0\64C1\6709\8005')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131304621046028204)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\6F5B\5728\64C1\6709\8005 %0 \65B0\589E\70BA\5DE5\4F5C\53C3\8207\8005')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131303789783028204)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\65B0\53C3\6578')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131407089416028234)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\65B0\512A\5148\9806\5E8F')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131305397900028204)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\5DE5\4F5C\512A\5148\9806\5E8F\8A2D\70BA %0')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131302669051028204)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5C07\53C3\6578 "%0" \5F9E "%1" \66F4\65B0\70BA "%2".')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131286120466028199)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0D\61C9\7684\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406\5DF2\7D42\6B62, \56E0\6B64\5DE5\4F5C\5DF2\53D6\6D88.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131283202996028198)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F49\9001\5DE5\4F5C: \672A\6388\6B0A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131276663172028196)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7531 %0 %1 \8D77\59CB')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131285553125028199)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767C\751F\672A\9810\671F\7684\5167\90E8\932F\8AA4')
,p_version_scn=>2693945
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131283862236028198)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\4F5C\696D\4E0D\9069\7528')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131309440346028206)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\6F5B\5728\64C1\6709\8005\4E0D\5B58\5728.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131285196167028198)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\6838\51C6')
,p_version_scn=>2693945
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131285243039028198)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\88AB\62D2\7D55')
,p_version_scn=>2693945
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131266668949028193)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\5B8C\6210\9700\8981\6709\7D50\679C')
,p_version_scn=>2693939
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131266828762028193)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5141\8A31\5DE5\4F5C\6709\7D50\679C')
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131302440853028203)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\66F4\65B0\53C3\6578 %0.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131298718309028202)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\5DE5\4F5C\57F7\884C\8655\7406\5DF2\6709\53C3\8207\8005.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131400268150028232)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DCA\6025')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131277398820028196)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DCA\6025')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131400101873028232)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9AD8')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131277416985028196)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9AD8\512A\5148\9806\5E8F')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131400021601028232)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E2D')
,p_version_scn=>2693969
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131277548221028196)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E2D\512A\5148\9806\5E8F')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131399930765028232)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F4E')
,p_version_scn=>2693969
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131277651829028196)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F4E\512A\5148\9806\5E8F')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131399893687028232)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\4F4E')
,p_version_scn=>2693969
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131277705910028196)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\4F4E\512A\5148\9806\5E8F')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131283497290028198)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A2D\5B9A\5DE5\4F5C\512A\5148\9806\5E8F: \672A\6388\6B0A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131284649632028198)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\6307\5B9A')
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131285066423028198)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\53D6\6D88')
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131284703764028198)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5B8C\6210')
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131284991834028198)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767C\751F\932F\8AA4')
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131278463227028196)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\904E\671F')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131284812420028198)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5931\6557')
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131275138182028195)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\8981\6C42\8CC7\8A0A')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131284552942028198)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6307\5B9A')
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131306904520028205)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\5728\61C9\7528\7A0B\5F0F %1 \4E2D\5EFA\7ACB\5DE5\4F5C\5B9A\7FA9 %0 \7684\65B0\5DE5\4F5C\5931\6557.'),
'SQLCODE: %2'))
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131306804992028205)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5617\8A66\5728\61C9\7528\7A0B\5F0F %1 \4E2D\5EFA\7ACB\5DE5\4F5C\5B9A\7FA9 %0 \7684\5DE5\4F5C\5931\6557, \56E0\70BA\5DE5\4F5C\5B9A\7FA9\672A\5305\542B\4EFB\4F55\6F5B\5728\64C1\6709\8005 - \8ACB\7DE8\8F2F\5DE5\4F5C\5B9A\7FA9, \81F3\5C11\65B0\589E\4E00\500B\6F5B\5728\64C1\6709\8005\985E\578B\7684\53C3\8207\8005')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131284140239028198)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\5DE5\4F5C\5B9A\7FA9')
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131284050410028198)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\6B64\5DE5\4F5C\7684\53C3\8207\8005')
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131285475396028198)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6307\5B9A\7684\5DE5\4F5C ID \6709\591A\9805\5DE5\4F5C - \8ACB\6D3D\8A62\8CC7\6599\5EAB\7BA1\7406\54E1')
,p_version_scn=>2693945
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131284210377028198)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\5DE5\4F5C')
,p_version_scn=>2693944
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131283943670028198)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\5DE5\4F5C\53C3\6578')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131320209603028209)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\52D5\4F5C')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131320168544028209)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6838\51C6')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131267516843028193)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F %1 \4E2D\5DE5\4F5C\5B9A\7FA9 %0 \7684\4F11\5047\898F\5247\7A0B\5E8F %2 \7121\6CD5\57F7\884C.')
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131267751801028193)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\65B0\589E\53C3\8207\8005 %1 \4F5C\70BA\53C3\8207\8005 %0 \7684\66FF\4EE3\4EBA\54E1. \539F\56E0 - %2 .')
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131471403768028254)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\5177\5217')
,p_is_js_message=>true
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131324931142028210)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131486136527028258)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C55\958B/\96B1\85CF\5C0E\89BD')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131486215933028258)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C55\958B/\96B1\85CF\5074\908A\8CC7\6599\6B04')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131394680169028230)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E3B\8981\5C0E\89BD')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131295441575028201)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('"%0" \4E0D\662F\6709\6548\7684\9810\7559\4F4D\7F6E\540D\7A31.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131402359106028233)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('1 \5929')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131402119113028233)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('1 \5C0F\6642')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131402409905028233)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5929')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131402297176028233)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5C0F\6642')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131402006982028233)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5206\9418')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131402681807028233)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \9031')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131402501706028233)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('1 \9031')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131300338921028203)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9078\53D6 %0 \500B\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131300566154028203)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131300447789028203)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6 %0')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131489268260028259)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\958B\982D')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131346856508028216)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\555F\7528')
,p_is_js_message=>true
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131315312402028207)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\8981\6C42\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131300924802028203)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6587\5B57\8A0A\606F %0 \662F\8A02\95B1\81EA\5176\4ED6\61C9\7528\7A0B\5F0F, \56E0\6B64\7121\6CD5\66F4\65B0.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131404027741028233)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\8F38\5165\503C')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131320418464028209)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\984C\5C64\7D1A %0, \96B1\85CF')
,p_is_js_message=>true
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131448888372028247)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\9801\9762\6709\672A\5132\5B58\7684\8B8A\66F4.')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131310468913028206)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0E\89BD\5668')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131310194298028206)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\653E\5927')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131311159403028206)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E2E\653E\7B49\7D1A {0}%')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131310207278028206)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E2E\5C0F')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131310346047028206)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D\7E2E\653E')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131285899785028199)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D\7121\6CD5\5B58\53D6\5DE5\4F5C\6D41\7A0B\5716\8868.')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131285755282028199)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B\5716\8868')
,p_is_js_message=>true
,p_version_scn=>2693945
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131287630716028199)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \76EE\524D\8655\65BC %1 \72C0\614B. \56E0\6B64\4E0D\5141\8A31\8A72\4F5C\696D')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131290240091028200)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5B8C\6210\5DE5\4F5C\6D41\7A0B %0 \4E2D\6D3B\52D5 %2 \7684\57F7\884C\8655\7406 %1')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131290030798028200)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5728\5DE5\4F5C\6D41\7A0B %0 \5EFA\7ACB\6D3B\52D5 %2 \7684\65B0\57F7\884C\8655\7406 %1')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131281820457028197)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\8207\6B64\5DE5\4F5C\6D41\7A0B\6D3B\52D5\57F7\884C\8655\7406\95DC\806F\7684\5176\4ED6\8CC7\6599\5217')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131290188950028200)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\91CD\8A66\5DE5\4F5C\6D41\7A0B %0 \4E2D\6D3B\52D5 %2 \767C\751F\932F\8AA4\7684\57F7\884C\8655\7406 %1')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131272118621028195)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \4E2D\7684\6D3B\52D5\57F7\884C\8655\7406 %1 \5DF2\88AB\7D42\6B62')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131305949136028204)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \4E2D\7684\6D3B\52D5\57F7\884C\8655\7406 %1 \5DF2\903E\6642\800C\88AB\7D42\6B62.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131290307911028200)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \4E2D\6D3B\52D5 %2 \7684\57F7\884C\8655\7406 %1 \8655\65BC\300C\7B49\5F85\4E2D\300D\72C0\614B')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131271950974028194)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \5728\6D3B\52D5 %1 \8655\88AB\66F4\6539\4E26\5DF2\7E7C\7E8C')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131289365632028200)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\9806\5229\5B8C\6210\5DE5\4F5C\6D41\7A0B %0 \4E2D\6D3B\52D5 %2 \7684\7B49\5F85\4E2D\57F7\884C\8655\7406 %1')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131289176011028200)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \5728\6D3B\52D5\5B8C\6210\524D\5C31\5DF2\8655\65BC\300C\767C\751F\932F\8AA4\300D\72C0\614B, \56E0\6B64\7B49\5F85\4E2D\6D3B\52D5 %1 \70BA\300C\767C\751F\932F\8AA4\300D')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131289235235028200)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \5728\6D3B\52D5\5B8C\6210\524D\5DF2\8655\65BC\300C\5DF2\7D42\6B62\300D\72C0\614B, \56E0\6B64\7B49\5F85\4E2D\6D3B\52D5 %1 \5DF2\7D42\6B62')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131272246933028195)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7D42\6B62\5DE5\4F5C\6D41\7A0B %0 \4E2D\7684\6D3B\52D5 %1 \5931\6557, \767C\751F\4EE5\4E0B\7570\5E38\72C0\6CC1 - %2')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131287889192028199)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B\6B63\5FD9\65BC\5B8C\6210\524D\4E00\9805\4F5C\696D. \8ACB\7A0D\5F8C\518D\8A66')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131303973388028204)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5B8C\6210: %0')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131286999094028199)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \76EE\524D\5728\6D3B\52D5 %1 \8655, \8A72\6D3B\52D5\4E0D\662F\8655\65BC\300C\7B49\5F85\4E2D\300D\72C0\614B, \56E0\6B64\7121\6CD5\7E7C\7E8C')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131298872093028202)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\662F\6B64\5DE5\4F5C\6D41\7A0B\6D3B\52D5\57F7\884C\4E2D\8655\7406\4F5C\696D\7684\6709\6548\5DE5\4F5C\6D41\7A0B\95DC\806F\76F8\95DC\8CC7\8A0A\74B0\5883. \95DC\806F\76F8\95DC\8CC7\8A0A\74B0\5883\5FC5\9808\662F\4EE5\5206\865F\5340\9694\7684\6587\5B57, \6B64\6587\5B57\5305\542B APEX_APPL_WORKFLOW \5F8C\9762\52A0\4E0A\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 ID \548C\6D3B\52D5\57F7\884C\8655\7406 ID.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131289575281028200)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5EFA\7ACB\5DE5\4F5C\6D41\7A0B %1 \7684\57F7\884C\8655\7406 %0, \7248\672C\70BA %2')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131281639969028197)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\8207\6B64\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406\95DC\806F\7684\5176\4ED6\8CC7\6599\5217')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131304170851028204)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5230\671F: %0')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131289439217028200)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \5DF2\7D50\675F, \72C0\614B\70BA %1')
,p_version_scn=>2693946
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131286620564028199)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\5DE5\4F5C\6D41\7A0B %0 \5207\63DB\6D3B\52D5\4E2D\6BD4\8F03\7684\689D\4EF6\8CC7\6599\985E\578B %1 \8207\689D\4EF6\904B\7B97\5B50\4E0D\76F8\5BB9')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131276401600028196)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7531 %0 %1 \8D77\59CB')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131299249953028203)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5EFA\7ACB\5DE5\4F5C\6D41\7A0B %1 \7684\65B0\57F7\884C\8655\7406 %0, \7248\672C\70BA %2 - \5F9E\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %3 \7684\6D3B\52D5\57F7\884C\8655\7406 %4 \547C\53EB')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131272078111028195)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\975C\614B ID \70BA %1 \7684\6D3B\52D5\4E0D\662F\5DE5\4F5C\6D41\7A0B %0 \4E2D\7684\6D3B\52D5. \8ACB\6AA2\67E5\5C0D\61C9\5DE5\4F5C\6D41\7A0B\7248\672C\7684\6D3B\52D5\975C\614B ID.')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131297361171028202)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \662F\6B64\5DE5\4F5C\6D41\7A0B\7684\5FC5\8981\53C3\6578, \4E0D\80FD\662F\7A7A\503C.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131289910249028200)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \5DF2\7E7C\7E8C')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131289854932028200)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \5DF2\91CD\8A66')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131304285883028204)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A66 %0 \6B21')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131304335443028204)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A66 %0 \6B21')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131304023032028204)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\958B\59CB: %0')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131298253469028202)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F5C\7528\4E2D')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131298405393028202)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5B8C\6210')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131298541150028202)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767C\751F\932F\8AA4')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131298618320028202)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\66AB\505C')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131298364973028202)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\7D42\6B62')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131313614936028207)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B49\5F85\4E2D')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131289678575028200)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \5DF2\66AB\505C')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131295542573028201)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5224\65B7\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \7684\4E0B\4E00\500B\6D3B\52D5. \8ACB\5148\9A57\8B49\4E26\66F4\6B63\91DD\5C0D\76EE\524D\5207\63DB\6D3B\52D5\6240\5B9A\7FA9\7684\689D\4EF6, \518D\91CD\8A66\5DE5\4F5C\6D41\7A0B.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131289723756028200)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \5DF2\7D42\6B62')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131288815919028199)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53EA\6709\5DE5\4F5C\6D41\7A0B %0 \7684\696D\52D9\7BA1\7406\54E1\53EF\4EE5\7E7C\7E8C\5DE5\4F5C\6D41\7A0B')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131288977908028200)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \53EA\80FD\7531\696D\52D9\7BA1\7406\54E1\548C (\6216) \64C1\6709\8005\91CD\8A66')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131288458069028199)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \53EA\80FD\7531\5DE5\4F5C\6D41\7A0B\7684\696D\52D9\7BA1\7406\54E1\66AB\505C')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131288780777028199)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53EA\6709\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \7684\64C1\6709\8005\548C\696D\52D9\7BA1\7406\54E1\53EF\4EE5\7D42\6B62\5DE5\4F5C\6D41\7A0B')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131287181957028199)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \7684\8B8A\6578\53EA\80FD\7531\70BA\5DE5\4F5C\6D41\7A0B\5B9A\7FA9\7684\696D\52D9\7BA1\7406\54E1\66F4\65B0')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131301776924028203)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \5FC5\9808\8655\65BC\767C\751F\932F\8AA4\6216\5DF2\66AB\505C\72C0\614B, \624D\80FD\66F4\65B0\5176\8B8A\6578.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131293282326028201)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5C07\5DE5\4F5C\6D41\7A0B\8B8A\6578 %0 \7684\503C\66F4\65B0\70BA %1')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131303495887028204)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \6C92\6709\300C\4F5C\7528\4E2D\300D\7248\672C')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131303594954028204)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \6C92\6709\300C\958B\767C\4E2D\300D\7248\672C')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131303615941028204)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B %0 \6C92\6709\300C\4F5C\7528\4E2D\300D\6216\300C\958B\767C\4E2D\300D\7248\672C')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131286521169028199)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0 \7684\6D3B\52D5\57F7\884C\8655\7406 %1')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131286320626028199)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\5DE5\4F5C\6D41\7A0B\57F7\884C\8655\7406 %0')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131321467770028209)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\5DE5\4F5C\7C3F\6C92\6709\4F5C\7528\4E2D\5DE5\4F5C\8868.')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131321345134028209)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\5DE5\4F5C\7C3F\672A\8D77\4F7F.')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131321245044028209)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EFA\7ACB XLSX \6A94\6848\6642\767C\751F\5167\90E8\932F\8AA4.')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131323793341028210)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\8868')
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131334357066028213)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\8868\540D\7A31 "%0" \5DF2\88AB\4F7F\7528. \8ACB\5617\8A66\5176\4ED6\540D\7A31.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131462929598028251)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\52D5\4F5C')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131377984812028226)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\52D5\4F5C\529F\80FD\8868')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131373620213028224)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E\51FD\6578')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131373552664028224)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F9D\8CC7\6599\6B04\65B0\589E\7FA4\7D44')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131411119594028235)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E\6A1E\7D10\8CC7\6599\6B04')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131411239442028235)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E\8CC7\6599\5217\8CC7\6599\6B04')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131345689755028216)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\805A\7E3D')
,p_is_js_message=>true
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131384140837028227)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\805A\7E3D')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131365009844028222)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E73\5747\503C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131369329652028223)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A08\6578')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131365178131028222)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\5927\503C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131365369050028222)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E2D\9593\503C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131365291961028222)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\5C0F\503C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131364904953028222)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\548C %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131366029723028222)
,p_name=>'APEXIR_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131344953244028216)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6240\6709\8CC7\6599\6B04')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131325027289028210)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6240\6709\8CC7\6599\5217')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131459974928028250)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66FF\4EE3\9805\76EE')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131461538828028251)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66FF\4EE3\9810\8A2D\503C:  %0 ')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131359199615028220)
,p_name=>'APEXIR_AND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E14')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131393996926028230)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\532F\5165\9810\5B58\5831\8868. \5167\5BB9\5DF2\7D93\640D\6BC0.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131394098083028230)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\532F\5165\9810\5B58\5831\8868. \5167\5BB9\662F\7A7A\7684.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131347108302028217)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5957\7528')
,p_is_js_message=>true
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131340764263028215)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\589E')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131362239142028221)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65BC %0')
,p_version_scn=>2693961
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131462141402028251)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E73\5747\503C %0')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131453766195028248)
,p_name=>'APEXIR_BAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9577\689D\5716')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131346489586028216)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4ECB\65BC')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131339575573028214)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\80CC\666F\8272\5F69')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131341409145028215)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\85CD\8272')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131375506165028225)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E95\7AEF')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131306372491028205)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \641C\5C0B\5217\65C1\7684\6309\9215')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131342042532028215)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53D6\6D88')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131348377329028217)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\985E\5225')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131339471699028214)
,p_name=>'APEXIR_CELL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58\683C')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131365934064028222)
,p_name=>'APEXIR_CHART'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\8868')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131376481861028225)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B63\5728\8D77\59CB...')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131416153602028237)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A\5716\8868\6A19\7C64.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131428587539028241)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\7684\67E5\8A62\8D85\51FA\6BCF\4E00\5716\8868 %0 \500B\8CC7\6599\9EDE\7684\6578\76EE\4E0A\9650. \8ACB\5957\7528\7BE9\9078\689D\4EF6\4F86\6E1B\5C11\60A8\57FA\790E\67E5\8A62\4E2D\7684\8A18\9304\6578\76EE.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131427410638028240)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\5716\8868\300D\67E5\8A62\7684\8CC7\6599\5217\8A08\6578\4E0A\9650\9650\5236\7684\662F\57FA\790E\67E5\8A62\4E2D\7684\8CC7\6599\5217\6578\76EE, \800C\4E0D\662F\9650\5236\986F\793A\7684\8CC7\6599\5217\6578\76EE.  \60A8\7684\57FA\790E\67E5\8A62\8D85\51FA\8CC7\6599\5217\8A08\6578\4E0A\9650 (%0 \500B\8CC7\6599\5217).  \8ACB\5957\7528\7BE9\9078\4EE5\6E1B\5C11\60A8\57FA\790E\67E5\8A62\4E2D\7684\8A18\9304\6578\76EE.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131345073493028216)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\8868\985E\578B')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131308994620028205)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7684\5716\8868\6AA2\8996')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131424134402028239)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\52FE\9078')
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131362676900028221)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\5831\8868\683C\5F0F')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131370423190028223)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\9664')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131341908162028215)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131381754295028227)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131348917026028217)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\5225\540D')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131456510864028249)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078...')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131316704839028208)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\6A19\982D')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131330873179028212)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\52D5\4F5C')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131331156438028212)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('"%0" \8CC7\6599\6B04\7684\52D5\4F5C')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131372504974028224)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\6A19\984C\529F\80FD\8868')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131376201270028225)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\8CC7\8A0A')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131458819060028250)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\6A19\7C64')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131373971094028224)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04 %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131356898791028219)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5305\542B')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131358106743028220)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5305\542B')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131340440856028215)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131358315015028220)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5728\524D')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131367420912028223)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5728\5F8C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131358230651028220)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\524D')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131367384514028223)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\5F8C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131340340633028215)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\662F\7A7A\503C')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131340240337028214)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\662F\7A7A\503C')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131340021013028214)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\540C\65BC')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131340566377028215)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\5728')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131340103536028214)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\540C\65BC')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131357126506028220)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B26\5408\6B63\898F\8868\793A\5F0F')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131362521685028221)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904B\7B97')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131427115491028240)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904B\7B97\8868\793A\5F0F')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131382056307028227)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8CC7\6599\6B04\5225\540D\5EFA\7ACB\904B\7B97.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131382148559028227)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'zh-tw'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131382241078028227)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'zh-tw'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131382353240028227)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'zh-tw'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131323251609028210)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'zh-tw'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131366702077028222)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904B\7B97')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131374591188028225)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63A7\5236\5206\6BB5')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131377548679028225)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63A7\5236\5206\6BB5')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131464120880028251)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63A7\5236\5206\6BB5\8CC7\6599\6B04')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131319946033028209)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76F8\7570\8A08\6578')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131462679939028251)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76F8\7570\8A08\6578')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131462585598028251)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A08\6578 %0')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131435563166028243)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6BCF\65E5')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131488844514028259)
,p_name=>'APEXIR_DATA'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131376305820028225)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5206\9418\524D\7684\5831\8868\8CC7\6599.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131309349348028205)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7684\8CC7\6599\6AA2\8996')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131345759818028216)
,p_name=>'APEXIR_DATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65E5\671F')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131380204754028226)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\8A2D')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131459795610028250)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\8A2D\5831\8868\985E\578B')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131342139178028215)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\522A\9664')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131346054798028216)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8981\522A\9664\9019\4E9B\5831\8868\8A2D\5B9A\503C?')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131446534866028246)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\522A\9664\9810\8A2D\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131374276304028225)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\522A\9664\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131340859500028215)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\6E1B')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131348401813028217)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63CF\8FF0')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131372416110028224)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\55AE\4E00\8CC7\6599\5217\6AA2\8996')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131380776224028226)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\5411 %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131381663441028227)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\505C\7528')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131341694134028215)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\986F\793A')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131344847980028216)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\7684\8CC7\6599\6B04')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131380657095028226)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\5728\5831\8868\4E2D')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131375461870028225)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\79FB')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131366835690028222)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\8F09')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131380551757028226)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\986F\793A')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131449840469028247)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\793A\5DF2\7D93\5B58\5728\7684\76F8\540C\689D\4EF6.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131464337180028251)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8907\7684\6A1E\7D10\5206\6790\8868\8CC7\6599\6B04.  \6A1E\7D10\5206\6790\8868\8CC7\6599\6B04\6E05\55AE\5FC5\9808\662F\552F\4E00\7684.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131464555918028251)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131376590087028225)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\5716\8868\8A2D\5B9A\503C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131383161692028227)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\5716\8868')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131347098530028217)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\63A7\5236\5206\6BB5')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131383542947028227)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\7BE9\9078\689D\4EF6')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131350030916028217)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\5012\6EAF')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131441333147028244)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\7FA4\7D44\4F9D\64DA')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131383468478028227)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\6A19\793A')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131411415229028235)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\6A1E\7D10\5206\6790\8868')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131370837772028224)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\5831\8868')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131460001981028250)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96FB\5B50\90F5\4EF6')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131332212835028212)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96FB\5B50\90F5\4EF6\5730\5740')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131460311893028250)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\4EF6\526F\672C')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131460583745028250)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672C\6587')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131460231098028250)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\526F\672C')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131461092574028250)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\983B\7387')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131337421191028214)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C1A\672A\8A2D\5B9A\6B64\61C9\7528\7A0B\5F0F\7684\96FB\5B50\90F5\4EF6.  \8ACB\6D3D\8A62\60A8\7684\7BA1\7406\54E1.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131434893439028242)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A\96FB\5B50\90F5\4EF6\5730\5740.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131460656779028250)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\67E5\770B\9644\52A0\9805\76EE')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131460487509028250)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E3B\65E8')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131435899911028243)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A\96FB\5B50\90F5\4EF6\4E3B\65E8.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131460169893028250)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6536\4EF6\8005')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131339248375028214)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\555F\7528')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131383346802028227)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\555F\7528/\505C\7528')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131382861807028227)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767C\751F\932F\8AA4! %0')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131382422123028227)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BC4\4F8B')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131383245575028227)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BC4\4F8B:')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131344727099028216)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6392\9664\7A7A\503C')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131383899953028227)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C55\958B/\96B1\85CF')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131381458171028227)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8868\793A\5F0F')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131366327880028222)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131377408042028225)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\689D\4EF6')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131388142573028229)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\8868\793A\5F0F')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131486305239028258)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\8868\793A\5F0F\592A\9577.')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131331015884028212)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\5EFA\8B70')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131388057531028229)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\985E\578B')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131384075431028227)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\8981\641C\5C0B\7684\8CC7\6599\6B04')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131366631342028222)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5012\6EAF')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131381289680028227)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\82E5\60F3\6AA2\8996\5148\524D\6642\9EDE\7684\8CC7\6599, \53EF\4EE5\4F7F\7528\5012\6EAF\67E5\8A62.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131435220648028243)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5012\6EAF\6301\7E8C\6642\9593')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131436662360028243)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\683C\5F0F')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131362441289028221)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\683C\5F0F\906E\7F69 %0')
,p_version_scn=>2693961
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131374127290028225)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\51FD\6578')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131381955884028227)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\51FD\6578 %0')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131459654161028250)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\51FD\6578/\904B\7B97\5B50')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131373802283028224)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\51FD\6578 %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131366161518028222)
,p_name=>'APEXIR_GO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\57F7\884C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131339715522028214)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DA0\8272')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131384796119028228)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F9D\8CC7\6599\6B04\7FA4\7D44')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131384852101028228)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F9D\51FD\6578\7FA4\7D44')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131320072898028209)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7FA4\7D44\4F9D\64DA')
,p_is_js_message=>true
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131460781485028250)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F9D\8CC7\6599\6B04 %0 \7FA4\7D44')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131416282401028237)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A\7FA4\7D44\4F9D\64DA\8CC7\6599\6B04.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131427318080028240)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\7FA4\7D44\4F9D\64DA\300D\67E5\8A62\7684\8CC7\6599\5217\8A08\6578\4E0A\9650\9650\5236\7684\662F\57FA\790E\67E5\8A62\4E2D\7684\8CC7\6599\5217\6578\76EE, \800C\4E0D\662F\9650\5236\986F\793A\7684\8CC7\6599\5217\6578\76EE.  \60A8\7684\57FA\790E\67E5\8A62\8D85\51FA\8CC7\6599\5217\8A08\6578\4E0A\9650 (%0 \500B\8CC7\6599\5217).  \8ACB\5957\7528\7BE9\9078\4EE5\6E1B\5C11\60A8\57FA\790E\67E5\8A62\4E2D\7684\8A18\9304\6578\76EE.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131407521444028234)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6309\6392\5E8F\7FA4\7D44')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131464285461028251)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6309\6392\5E8F\9806\5E8F\7FA4\7D44')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131309115156028205)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7684\7FA4\7D44\4F9D\64DA\6AA2\8996')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131345182623028216)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6C34\5E73\8CC7\6599\6B04')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131379147526028226)
,p_name=>'APEXIR_HELP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8AAA\660E')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131370914842028224)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\4E00\822C\4F7F\7528\8005\53EF\5728\4E92\52D5\5F0F\5831\8868\81EA\8A02\5831\8868. \4F7F\7528\8005\53EF\4EE5\9078\53D6\60F3\8981\7684\8CC7\6599\6B04, \4E26\7BE9\9078\3001\6A19\793A\53CA\6392\5E8F, \4EE5\66F4\6539\5831\8868\8CC7\6599\7684\7248\9762\914D\7F6E. \4E5F\53EF\4EE5\5B9A\7FA9\5206\6BB5\3001\805A\7E3D\3001\5716\8868\3001\7FA4\7D44\65B9\5F0F\4EE5\53CA\65B0\589E\81EA\5DF1\7684\904B\7B97. \4E5F\53EF\4EE5\5EFA\7ACB\8A02\95B1, \4F9D\6307\5B9A\7684\9593\9694\900F\904E\96FB\5B50\90F5\4EF6\6536\5230 HTML \7248\672C\7684\5831\8868. \4F7F\7528\8005\53EF\4EE5\5EFA\7ACB\591A\7A2E\4E0D\540C\7684\5831\8868, \4E26\5132\5B58\70BA\5177\540D\5831\8868, \4F9B\516C\7528\6216\79C1\4EBA\6AA2\8996\4E4B\7528. '),
'<p/>',
unistr('\5F8C\9762\7684\6BB5\843D\6703\6458\8981\8AAA\660E\60A8\53EF\4EE5\81EA\8A02\4E92\52D5\5F0F\5831\8868\7684\65B9\5F0F. \5982\9700\77AD\89E3\8A73\7D30\8CC7\8A0A, \8ACB\53C3\95B1 <i>Oracle APEX End User''s Guide</i> \7684 "Using Interactive Reports".')))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131378017550028226)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\52D5\4F5C\300D\529F\80FD\8868\6703\986F\793A\5728\300C\641C\5C0B\300D\5217\4E2D\300C\57F7\884C\300D\6309\9215\7684\53F3\908A. \60A8\53EF\4EE5\4F7F\7528\6B64\529F\80FD\8868\4F86\81EA\8A02\4E92\52D5\5F0F\5831\8868.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131371793545028224)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\805A\7E3D\662F\6307\5C0D\8CC7\6599\6B04\57F7\884C\7B97\8853\904B\7B97. \5728\6BCF\500B\63A7\5236\5206\6BB5\4E4B\5F8C\8207\5831\8868\7D50\5C3E\8655, \65BC\5B9A\7FA9\8981\8A08\7B97\805A\7E3D\7684\8CC7\6599\6B04\5167\986F\793A\805A\7E3D\503C. \9078\9805\5305\62EC:'),
'<p>',
'</p><ul>',
unistr('<li><strong>\805A\7E3D</strong>: \9078\53D6\5148\524D\5B9A\7FA9\7684\805A\7E3D\9032\884C\7DE8\8F2F.</li>'),
unistr('<li><strong>\51FD\6578</strong>: \8981\57F7\884C\7684\51FD\6578 (\4F8B\5982 SUM\3001MIN).</li>'),
unistr('<li><strong>\8CC7\6599\6B04</strong>: \9078\53D6\8981\5957\7528\7B97\8853\51FD\6578\7684\8CC7\6599\6B04. \53EA\6703\986F\793A\6578\503C\8CC7\6599\6B04.</li>'),
'</ul>'))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131371847906028224)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\60A8\53EF\4EE5\66FF\6BCF\4E00\4EFD\5132\5B58\7684\5831\8868\5B9A\7FA9\4E00\500B\5716\8868. \5B9A\7FA9\4E4B\5F8C, \5C31\53EF\4EE5'),
unistr('\4F7F\7528\300C\641C\5C0B\300D\5217\7684\6AA2\8996\5716\793A, \5728\5716\8868\8207\5831\8868\6AA2\8996\4E4B\9593\5207\63DB.'),
unistr('\9078\9805\5305\62EC:  '),
'<p>',
'</p><ul>',
unistr('<li><strong>\5716\8868\985E\578B</strong>: \6307\5B9A\8981\5305\542B\7684\5716\8868\985E\578B.'),
unistr('\53EF\9078\53D6\7684\985E\578B\5305\62EC\6C34\5E73\9577\689D\5716\3001\5782\76F4\9577\689D\5716\3001\5713\9905\5716\6216\6298\7DDA\5716.</li>'),
unistr('<li><strong>\6A19\7C64</strong>: \9078\53D6\8981\7576\4F5C\6A19\7C64\7684\8CC7\6599\6B04.</li>'),
unistr('<li><strong>\6A19\7C64\7684\5EA7\6A19\8EF8\6A19\984C</strong>: \5728\9078\53D6\70BA\300C\6A19\7C64\300D\4E4B\8CC7\6599\6B04\7684\5EA7\6A19\8EF8\4E0A\986F\793A\7684'),
unistr('\6A19\984C. \9019\4E0D\9069\7528\65BC\5713\9905\5716.</li>'),
unistr('<li><strong>\503C</strong>: \9078\53D6\8981\7576\4F5C\503C\7684\8CC7\6599\6B04.  \82E5\4F7F\7528 COUNT \51FD\6578,'),
unistr('\5C31\4E0D\9700\8981\9078\53D6\300C\503C\300D.</li>'),
unistr('<li><strong>\503C\7684\5EA7\6A19\8EF8\6A19\984C</strong>: \5728\9078\53D6\70BA\300C\503C\300D\4E4B\8CC7\6599\6B04\7684\5EA7\6A19\8EF8\4E0A\986F\793A\7684'),
unistr('\6A19\984C. \9019\4E0D\9069\7528\65BC\5713\9905\5716.</li>'),
unistr('<li><strong>\51FD\6578</strong>: \8981\5C0D\9078\53D6\70BA\300C\503C\300D\4E4B\8CC7\6599\6B04\57F7\884C\7684\9078\64C7\6027\51FD\6578.</li>'),
unistr('<li><strong>\6392\5E8F</strong>: \53EF\6392\5E8F\7D50\679C\96C6.</li></ul>')))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131371193599028224)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\6309\4E00\4E0B\4EFB\4E00\8CC7\6599\6B04\6A19\984C\5373\53EF\986F\793A\8CC7\6599\6B04\6A19\984C\529F\80FD\8868. \9078\9805\5305\62EC:'),
'<p></p>',
'<ul>',
unistr('<li><strong>\905E\589E\6392\5E8F</strong>\5716\793A: \6309\8CC7\6599\6B04, \4EE5\905E\589E\9806\5E8F\6392\5E8F\5831\8868.</li>'),
unistr('<li><strong>\905E\6E1B\6392\5E8F</strong>\5716\793A: \6309\8CC7\6599\6B04, \4EE5\905E\6E1B\9806\5E8F\6392\5E8F\5831\8868.</li>'),
unistr('<li><strong>\96B1\85CF\8CC7\6599\6B04</strong>: \96B1\85CF\8CC7\6599\6B04.  \60A8\7121\6CD5\96B1\85CF\6240\6709\8CC7\6599\6B04.  \8CC7\6599\6B04\82E5\7121\6CD5\96B1\85CF, \5C31\4E0D\6703\6709\300C\96B1\85CF\8CC7\6599\6B04\300D\5716\793A.</li>'),
unistr('<li><strong>\5206\6BB5\8CC7\6599\6B04</strong>: \6839\64DA\8CC7\6599\6B04\5EFA\7ACB\5206\6BB5\7FA4\7D44.  \5831\8868\5C07\6703\4EE5\8A72\8CC7\6599\6B04\4F5C\70BA\4E3B\8981\8A18\9304.</li>'),
unistr('<li><strong>\8CC7\6599\6B04\8CC7\8A0A</strong>: \986F\793A\8CC7\6599\6B04\7684\8AAA\660E\5167\5BB9 (\5982\679C\6709\7684\8A71).</li>'),
unistr('<li><strong>\6587\5B57\5340</strong>: \53EF\65BC\5176\4E2D\8F38\5165\6C92\6709\5927\5C0F\5BEB\4E4B\5206\7684\641C\5C0B\689D\4EF6'),
unistr('(\4E0D\9700\4F7F\7528\842C\7528\5B57\5143). \82E5\8F38\5165\503C, \5C07\53EF\6E1B\5C11\529F\80FD\8868'),
unistr('\5E95\7AEF\7684\503C\6E05\55AE. \60A8\53EF\4EE5\5F9E\5E95\7AEF\9078\53D6\4E00\500B\503C,'),
unistr('\9078\53D6\7684\503C\5C07\6703\4F7F\7528 ''='' \5EFA\7ACB\70BA\7BE9\9078\689D\4EF6'),
unistr('(\4F8B\5982, <code>column = ''ABC''</code>). \6216\8005, \60A8\53EF\4EE5\6309\4E00\4E0B\300C\624B\96FB\7B52\300D \5716\793A\4E26\8F38\5165\503C, \4F7F\7528 ''LIKE'' \4FEE\98FE\689D\4EF6'),
unistr('\5C07\503C\5EFA\7ACB\70BA\7BE9\9078\689D\4EF6 (\4F8B\5982, <code>column LIKE ''%ABC%''</code>).</li>'),
unistr('<li><strong>\552F\4E00\503C\6E05\55AE</strong>: \5305\542B\7B26\5408\7BE9\9078\689D\4EF6'),
unistr('\7684\524D 500 \500B\552F\4E00\503C. \8CC7\6599\6B04\82E5\662F\65E5\671F, \5247\6703\986F\793A'),
unistr('\65E5\671F\7BC4\570D\6E05\55AE. \5982\679C\9078\53D6\67D0\500B\503C, \5C07\6703\4F7F\7528'),
unistr('''='' \5EFA\7ACB\4E00\500B\7BE9\9078\689D\4EF6 (\4F8B\5982, <code>column = ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131371638879028224)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\53EF\8B93\60A8\65B0\589E\7D93\904E\904B\7B97\7684\8CC7\6599\6B04\5230\60A8\7684\5831\8868. \53EF\4EE5\662F\5957\7528\81F3\73FE\6709\8CC7\6599\6B04\7684\7B97\8853\904B\7B97 (\4F8B\5982, <code>NBR_HOURS/24</code>) \6216\6A19\6E96\7684 Oracle'),
unistr('\51FD\6578. \90E8\5206\986F\793A\70BA\7BC4\4F8B\548C\5176\4ED6\9805\76EE (\4F8B\5982\4E5F\53EF\4EE5\4F7F\7528 <code>TO_DATE)</code>). \9078\9805\5305\62EC:'),
'<p></p>',
'<ul>',
unistr('<li><strong>\904B\7B97</strong>: \9078\53D6\5148\524D\5B9A\7FA9\7684\904B\7B97\4F86\52A0\4EE5\7DE8\8F2F.</li>'),
unistr('<li><strong>\8CC7\6599\6B04\6A19\984C</strong>: \65B0\8CC7\6599\6B04\7684\6A19\984C.</li>'),
unistr('<li><strong>\683C\5F0F\906E\7F69</strong>: \8CC7\6599\6B04\5957\7528\7684 Oracle \683C\5F0F\906E\7F69 (\4F8B\5982 S9999).</li>'),
unistr('<li><strong>\904B\7B97</strong>: \8981\57F7\884C\7684\904B\7B97. \5728\904B\7B97\5167, \4E3B\8981\4F7F\7528\986F\793A\7684\5225\540D\53C3\7167\8CC7\6599\6B04.</li>'),
'</ul>',
unistr('<p>\5728\904B\7B97\4E0B\65B9, \60A8\67E5\8A62\4E2D\7684\8CC7\6599\6B04\6703\4EE5\5176\76F8\95DC\5225\540D'),
unistr('\986F\793A. \6309\4E00\4E0B\8CC7\6599\6B04\540D\7A31\6216\5225\540D\5373\53EF\5C07\5176\5305\62EC\5728'),
unistr('\300C\904B\7B97\300D\4E2D. \300C\8CC7\6599\6B04\300D\7684\65C1\908A\662F\4E00\500B\9375\53F0. \6B64\9375\53F0\7684\529F\80FD\70BA'),
unistr('\5E38\7528\6309\9375\7684\6377\5F91. \6700\53F3\908A\5247\662F\300C\51FD\6578\300D.</p>'),
unistr('<p>\4E0B\5217\7BC4\4F8B\904B\7B97\793A\7BC4\5982\4F55\986F\793A\5831\916C\7E3D\8A08:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
unistr('(\5176\4E2D\7684 A \662F ORGANIZATION, B \662F SALARY, \800C C \662F COMMISSION)'),
''))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131378127156028226)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91DD\5C0D\4E00\6216\6578\500B\8CC7\6599\6B04\5EFA\7ACB\5206\7D44. \9019\53EF\5C07\4E92\52D5\5F0F\5831\8868\7684\8CC7\6599\6B04\986F\793A\70BA\4E3B\8981\8A18\9304.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131372304831028224)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\82E5\8981\4E00\6B21\6AA2\8996\67D0\500B\55AE\4E00\8CC7\6599\5217\7684\8A73\7D30\8CC7\8A0A, \8ACB\6309\4E00\4E0B\60F3\8981\6AA2\8996\4E4B\8CC7\6599\5217\7684\55AE\4E00\8CC7\6599\5217\6AA2\8996\5716\793A. \5982\679C\6709\7684\8A71, \55AE\4E00\8CC7\6599\5217\6AA2\8996\4E00\5F8B\662F\7B2C\4E00\500B\8CC7\6599\6B04. \6839\64DA\81EA\8A02\4E92\52D5\5F0F\5831\8868\65B9\5F0F\7684\4E0D\540C, \55AE\4E00\8CC7\6599\5217\6AA2\8996\6709\53EF\80FD\662F\6A19\6E96\6AA2\8996\6216\5141\8A31\66F4\65B0\7684\81EA\8A02\9801\9762.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131372241082028224)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8B93\76EE\524D\7684\7D50\679C\96C6\53EF\4F9B\4E0B\8F09. \4E0B\8F09\683C\5F0F\5305\62EC PDF\3001Excel\3001HTML \548C CSV. \4E0B\8F09\9078\9805\6703\6839\64DA\6240\9078\683C\5F0F\800C\6709\6240\4E0D\540C. \6240\6709\683C\5F0F\90FD\53EF\4EE5\7528\96FB\5B50\90F5\4EF6\65B9\5F0F\50B3\9001.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131371365112028224)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\5728\67E5\8A62\65B0\589E\6216\4FEE\6539 <code>WHERE</code> \5B50\53E5, \4EE5\5F37\8ABF\5831\8868\91CD\9EDE. \60A8\53EF\4EE5\6839\64DA\8CC7\6599\6B04\6216\8CC7\6599\5217\7BE9\9078.  '),
unistr('<p>\82E5\6309\8CC7\6599\6B04\7BE9\9078, \8ACB\9078\53D6\4E00\500B\8CC7\6599\6B04 (\4E0D\4E00\5B9A\8981\662F'),
unistr('\986F\793A\7684\8CC7\6599\6B04), \63A5\8457\9078\53D6\4E00\500B\6A19\6E96 Oracle \904B\7B97\5B50 (=\3001!=\3001not in\3001between), \7136\5F8C\8F38\5165\64DA\4EE5\6BD4\8F03\7684\8868\793A\5F0F. \8868\793A\5F0F\6709\5927\5C0F\5BEB\4E4B\5206. \8ACB\4F7F\7528 % \4F5C\70BA\842C\7528\5B57\5143 (\4F8B\5982, <code>STATE_NAME'),
'like A%)</code>.</p>',
unistr('<p>\82E5\6309\8CC7\6599\5217\7BE9\9078, \53EF\4EE5\5EFA\7ACB\8907\96DC\7684 <code>WHERE</code> \5B50\53E5, \65B9\6CD5\70BA\4F7F\7528'),
unistr('\8CC7\6599\6B04\5225\540D\548C\4EFB\4F55\7684 Oracle \51FD\6578\6216\904B\7B97\5B50 (\4F8B\5982, <code>G = ''VA'' \6216 G = ''CT''</code>, \5176\4E2D\7684'),
unistr('<code>G</code> \662F <code>CUSTOMER_STATE</code> \7684\5225\540D).</p>'),
''))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131371958617028224)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\60A8\53EF\4EE5\5229\7528\5012\6EAF\67E5\8A62\6AA2\8996\5148\524D\6642\9EDE\7684\8CC7\6599.'),
unistr('\4F9D\7167\9810\8A2D, \53EF\4EE5\5012\6EAF\7684\6642\9593\70BA 3 \5C0F\6642 (\6216 180 \5206\9418),'),
unistr('\4F46\5BE6\969B\6642\9593\5C07\6839\64DA\6BCF\500B\8CC7\6599\5EAB\800C\6709\6240\4E0D\540C.')))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131436530548028243)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\60A8\53EF\4EE5\5229\7528\683C\5F0F\81EA\8A02\5831\8868\7684\986F\793A.'),
unistr('\683C\5F0F\5305\542B\4E0B\5217\5B50\529F\80FD\8868:</p>'),
unistr('<ul><li>\6392\5E8F</li>'),
unistr('<li>\63A7\5236\5206\6BB5</li>'),
unistr('<li>\6A19\793A</li>'),
unistr('<li>\904B\7B97</li>'),
unistr('<li>\805A\7E3D</li>'),
unistr('<li>\5716\8868</li>'),
unistr('<li>\7FA4\7D44\4F9D\64DA</li>'),
unistr('<li>\6A1E\7D10\5206\6790\8868</li>'),
'</ul>',
''))
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131434738266028242)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\60A8\53EF\4EE5\66FF\6BCF\4E00\4EFD\5132\5B58\7684\5831\8868\5B9A\7FA9\4E00\500B\300C\7FA4\7D44\4F9D\64DA\300D\6AA2\8996.'),
unistr('\5B9A\7FA9\4E4B\5F8C, \5C31\53EF\4EE5\4F7F\7528\300C\641C\5C0B\300D\5217\4E0A\7684\6AA2\8996\5716\793A, \5728\7FA4\7D44\4F9D\64DA'),
unistr('\8207\5831\8868\6AA2\8996\4E4B\9593\5207\63DB. \82E5\8981\5EFA\7ACB\300C\7FA4\7D44\4F9D\64DA\300D\6AA2\8996,'),
unistr('\8ACB\9078\53D6:'),
'<p></p><ul>',
unistr('<li>\8981\7FA4\7D44\7684\8CC7\6599\6B04</li>'),
unistr('<li>\8981\805A\7E3D\7684\8CC7\6599\6B04\8207\8981\57F7\884C\7684\51FD\6578 (average\3001sum\3001count... \7B49\7B49)</li>'),
'</ul>'))
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131371595227028224)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\53EF\8B93\60A8\5B9A\7FA9\7BE9\9078. \7CFB\7D71\5C07\4F7F\7528\7BE9\9078\76F8\95DC\7279\6027, \5C07\7B26\5408\7BE9\9078\689D\4EF6\7684\8CC7\6599\5217\9AD8\4EAE\5EA6\986F\793A. \9078\9805\5305\62EC:</p>'),
'<ul>',
unistr('<li><strong>\540D\7A31</strong>: \53EA\7528\65BC\986F\793A.</li>'),
unistr('<li><strong>\9806\5E8F</strong>: \6307\5B9A\898F\5247\7684\8A55\4F30\9806\5E8F.</li>'),
unistr('<li><strong>\555F\7528</strong>: \6307\5B9A\555F\7528\6216\505C\7528\898F\5247.</li>'),
unistr('<li><strong>\6A19\793A\985E\578B</strong>: \6307\5B9A\61C9\8A72\6A19\793A\8CC7\6599\5217\6216\5132\5B58\683C.'),
unistr('\5982\679C\9078\53D6\300C\5132\5B58\683C\300D, \5247\6703\6A19\793A\300C\6A19\793A\689D\4EF6\300D\4E2D\53C3\7167\7684'),
unistr('\8CC7\6599\6B04.</li>'),
unistr('<li><strong>\80CC\666F\8272\5F69</strong>: \65B0\7684\6A19\793A\5340\57DF\80CC\666F\8272\5F69.</li>'),
unistr('<li><strong>\6587\5B57\8272\5F69</strong>: \65B0\7684\6A19\793A\5340\57DF\4E2D\6587\5B57\8272\5F69.</li>'),
unistr('<li><strong>\6A19\793A\689D\4EF6</strong>: \5B9A\7FA9\7BE9\9078\689D\4EF6.</li>'),
'</ul>',
''))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131264905993028192)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\60A8\53EF\4EE5\66FF\6BCF\4E00\4EFD\5132\5B58\7684\5831\8868\5B9A\7FA9\4E00\500B\300C\6A1E\7D10\5206\6790\8868\300D\6AA2\8996. \5B9A\7FA9\4E4B\5F8C, \5C31\53EF\4EE5\4F7F\7528\300C\641C\5C0B\300D\5217\4E0A\7684\6AA2\8996\5716\793A, \5728\6A1E\7D10\5206\6790\8868\8207\5831\8868\6AA2\8996\4E4B\9593\9032\884C\5207\63DB. \82E5\8981\5EFA\7ACB\300C\6A1E\7D10\5206\6790\8868\300D\6AA2\8996, \8ACB\9078\53D6: '),
'<p></p>',
'<ul>',
unistr('<li>\6A1E\7D10\5206\6790\8868\4F5C\7528\7684\8CC7\6599\6B04</li>'),
unistr('<li>\8981\986F\793A\70BA\8CC7\6599\5217\7684\8CC7\6599\6B04</li>'),
unistr('<li>\8207\8981\57F7\884C\51FD\6578 (average\3001sum\3001count \7B49\7B49) \805A\7E3D\7684\8CC7\6599\6B04</li>'),
'</ul>'))
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131382688279028227)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\5982\679C\60A8\81EA\8A02\4E92\52D5\5F0F\5831\8868, \5831\8868\8A2D\5B9A\503C\6703\986F\793A\5728\300C\641C\5C0B\300D\5217\4E0B\65B9\548C\5831\8868\7684\4E0A\65B9.'),
unistr('\60A8\53EF\4EE5\4F7F\7528\5DE6\908A\7684\5716\793A\96B1\85CF\53CA\5C55\958B\6B64\5340\57DF.'),
'<p>',
unistr('\60A8\53EF\4EE5\5C0D\6BCF\4E00\500B\5831\8868\8A2D\5B9A\57F7\884C\4E0B\5217\4F5C\696D:'),
'</p><ul>',
unistr('<li>\6309\4E00\4E0B\540D\7A31\4F86\7DE8\8F2F\67D0\9805\8A2D\5B9A\503C.</li>'),
unistr('<li>\53D6\6D88\52FE\9078\6216\52FE\9078\300C\555F\7528/\505C\7528\300D\6838\53D6\65B9\584A, \4EE5\505C\7528/\555F\7528\67D0\9805\8A2D\5B9A\503C. \60A8\53EF\4EE5\4F7F\7528\6B64\63A7\5236\9805\66AB\6642\95DC\9589\548C\958B\555F\67D0\9805\8A2D\5B9A\503C.</li>'),
unistr('<li>\6309\4E00\4E0B\300C\79FB\9664\300D\5716\793A, \4EE5\79FB\9664\67D0\9805\8A2D\5B9A\503C.</li>'),
'</ul>',
unistr('<p>\5982\679C\60A8\5DF2\7D93\5EFA\7ACB\5716\8868\3001\7FA4\7D44\4F9D\64DA\6216\6A1E\7D10\5206\6790\8868, \53EF\4EE5\4F7F\7528\53F3\65B9\986F\793A\7684\300C\5831\8868\6AA2\8996\300D\3001'),
unistr('\300C\5716\8868\6AA2\8996\300D\3001\300C\7FA4\7D44\4F9D\64DA\6AA2\8996\300D\548C\300C\6A1E\7D10\5206\6790\8868\6AA2\8996\300D\9023\7D50, \5728\5B83\5011\8207\57FA\672C\5831\8868\4E4B\9593'),
unistr('\5207\63DB. \5982\679C\60A8\6AA2\8996\5716\8868\3001\7FA4\7D44\4F9D\64DA\6216\6A1E\7D10\5206\6790\8868, \4E5F\53EF\4EE5\4F7F\7528\300C\7DE8\8F2F\300D\9023\7D50\4F86\7DE8\8F2F'),
unistr('\8A2D\5B9A\503C.</p>'),
''))
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131372193045028224)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\5831\8868\91CD\8A2D\70BA\9810\8A2D\503C, \79FB\9664\4E4B\524D\8A2D\5B9A\7684\81EA\8A02\503C.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131436855425028243)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A2D\5B9A\6BCF\9801\6240\8981\986F\793A\7684\8A18\9304\6578\76EE.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131372079124028224)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\5132\5B58\81EA\8A02\5831\8868\4F9B\672A\4F86\4F7F\7528. \59B3\9700\8981\63D0\4F9B\540D\7A31\548C\9078\64C7\6027\7684\63CF\8FF0, \4E5F\53EF\4EE5\8B93\5831\8868\53EF\4F9B\516C\958B\5B58\53D6 (\4EA6\5373, \80FD\5920\5B58\53D6\4E3B\8981\9810\8A2D\5831\8868\7684\6240\6709\4F7F\7528\8005). \60A8\53EF\4EE5\5132\5B58\56DB\7A2E\985E\578B\7684\4E92\52D5\5F0F\5831\8868:</p>'),
'<ul>',
unistr('<li><strong>\4E3B\8981\9810\8A2D</strong> (\50C5\9650\958B\767C\4EBA\54E1).\300C\4E3B\8981\9810\8A2D\300D\662F\4E00\958B\59CB\986F\793A\7684\5831\8868.\300C\4E3B\8981\9810\8A2D\300D\5831\8868\4E0D\53EF\91CD\65B0\547D\540D\6216\52A0\4EE5\522A\9664.</li>'),
unistr('<li><strong>\66FF\4EE3\5831\8868</strong> (\50C5\9650\958B\767C\4EBA\54E1). \53EF\8B93\958B\767C\4EBA\54E1\5EFA\7ACB\591A\500B\5831\8868\7248\9762\914D\7F6E. \53EA\6709\958B\767C\4EBA\54E1\80FD\5920\5132\5B58\3001\91CD\65B0\547D\540D\6216\522A\9664\300C\66FF\4EE3\5831\8868\300D.</li>'),
unistr('<li><strong>\516C\7528\5831\8868</strong> (\4E00\822C\4F7F\7528\8005). \53EF\7531\5EFA\7ACB\5831\8868\7684\4E00\822C\4F7F\7528\8005\5132\5B58\3001\91CD\65B0\547D\540D\6216\522A\9664. \5176\4ED6\4F7F\7528\8005\53EF\4EE5\6AA2\8996\4EE5\53CA\5C07\7248\9762\914D\7F6E\53E6\5B58\70BA\53E6\4E00\4EFD\5831\8868.</li>'),
unistr('<li><strong>\5C08\7528\5831\8868</strong> (\4E00\822C\4F7F\7528\8005). \53EA\6709\5EFA\7ACB\5831\8868\7684\4E00\822C\4F7F\7528\8005\53EF\4EE5\6AA2\8996\3001\5132\5B58\3001\91CD\65B0\547D\540D\6216\522A\9664\5831\8868.</li>'),
'</ul>',
unistr('<p>\82E5\60A8\5132\5B58\81EA\8A02\5831\8868, \6703\5728\300C\641C\5C0B\300D\5217\4E2D\300C\8CC7\6599\5217\300D\9078\53D6\5668 (\82E5\555F\7528\6B64\529F\80FD) \7684\5DE6\908A\986F\793A\300C\5831\8868\300D\9078\53D6\5668.</p>'),
''))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131371003532028224)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6BCF\500B\5831\8868\9801\9762\7684\9802\7AEF\90FD\6709\4E00\500B\641C\5C0B\5340\57DF. \6B64\5340\57DF (\6216\300C\641C\5C0B\300D\5217) \63D0\4F9B\4E0B\5217\529F\80FD:')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131437444123028243)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('<li><strong>\52D5\4F5C\529F\80FD\8868</strong>: \53EF\4F9B\81EA\8A02\5831\8868. \8ACB\53C3\95B1\5F8C\9762\7684\6BB5\843D.</li>')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131436920369028243)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('<li><strong>\9078\53D6\8CC7\6599\6B04\5716\793A</strong>: \53EF\6307\5B9A\8981\641C\5C0B\7684\8CC7\6599\6B04 (\6216\5168\90E8\8CC7\6599\6B04).</li>')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131437209556028243)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('<li><strong>\5831\8868</strong>: \986F\793A\66FF\4EE3\9810\8A2D\503C\4EE5\53CA\9810\5B58\7684\5C08\7528\6216\516C\7528\5831\8868.</li>')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131437181264028243)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('<li><strong>\8CC7\6599\5217</strong>: \8A2D\5B9A\6BCF\9801\6240\8981\986F\793A\7684\8A18\9304\6578\76EE.</li>')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131437061500028243)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>\6587\5B57\5340</strong>: \53EF\4F9B\60A8\8F38\5165\4E0D\5340\5206\5927\5C0F\5BEB\7684\641C\5C0B\689D\4EF6 (\6703\81EA\52D5\4F7F\7528\842C\7528\5B57\5143).</li>'),
unistr('<li><strong>\57F7\884C\6309\9215</strong>: \57F7\884C\641C\5C0B. \5982\679C\6E38\6A19\5728\641C\5C0B\6587\5B57\5340\4E2D, \5247\6309 Enter \9375\4E5F\6703\57F7\884C\641C\5C0B.</li>')))
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131437325846028243)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('<li><strong>\6AA2\8996\5716\793A</strong>: \53EF\5728\5831\8868\7684\5DF2\5B9A\7FA9\5716\793A\3001\5831\8868\3001\8A73\7D30\8CC7\8A0A\3001\5716\8868\3001\7FA4\7D44\4F9D\64DA\8207\6A1E\7D10\5206\6790\8868\6AA2\8996\4E4B\9593\5207\63DB.</li>')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131371242095028224)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7528\4EE5\4FEE\6539\986F\793A\7684\8CC7\6599\6B04. \6703\986F\793A\5728\53F3\65B9\7684\8CC7\6599\6B04. \5728\5DE6\65B9\7684\8CC7\6599\6B04\5247\6703\96B1\85CF\8D77\4F86. \60A8\53EF\4EE5\4F7F\7528\6700\53F3\65B9\7684\7BAD\982D\91CD\65B0\6392\5217\986F\793A\7684\8CC7\6599\6B04. \7D93\904E\904B\7B97\7684\8CC7\6599\6B04\524D\9762\6703\52A0\4E0A <strong>**</strong>.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131371464411028224)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\7528\4EE5\8B8A\66F4\6392\5E8F\7684\8CC7\6599\6B04\53CA\6C7A\5B9A\662F\6309\905E\589E\6216\905E\6E1B\9806\5E8F'),
unistr('\6392\5E8F. \60A8\4E5F\53EF\4EE5\6307\5B9A\8655\7406 <code>NULL</code> \7684\65B9\5F0F.'),
unistr('\9810\8A2D\70BA\4E00\5F8B\5728\6700\5F8C\9762\6216\4E00\5F8B\5728\6700\524D\9762\986F\793A <code>NULL</code>.'),
unistr('\6392\5E8F\7D50\679C\6703\986F\793A\5728\5831\8868\4E2D\8CC7\6599\6B04\6A19\984C\7684\53F3\65B9.</p>')))
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131434522949028242)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\589E\8A02\95B1\6642, \60A8\9700\8981\63D0\4F9B\96FB\5B50\90F5\4EF6\5730\5740 (\82E5\6709\591A\500B\96FB\5B50\90F5\4EF6\5730\5740, \4F7F\7528\9017\865F\5340\9694)\3001\96FB\5B50\90F5\4EF6\4E3B\65E8\3001\983B\7387\4EE5\53CA\958B\59CB\548C\7D50\675F\65E5\671F. \7522\751F\7684\96FB\5B50\90F5\4EF6\6703\5305\62EC\4E00\500B\5176\4E2D\5305\542B\76EE\524D\8CC7\6599\4E4B\4E92\52D5\5F0F\5831\8868 (\4F7F\7528\65B0\589E\8A02\95B1\6642\7684\5831\8868\8A2D\5B9A) \7684\532F\51FA\7248\672C (PDF\3001Excel\3001HTML \6216 CSV).')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131376108869028225)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96B1\85CF\8CC7\6599\6B04')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131366593160028222)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\793A')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131377677879028226)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\793A')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131347878646028217)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728 %1 \6A19\793A\5132\5B58\683C %0')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131382716920028227)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\793A\689D\4EF6')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131347741002028217)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728 %1 \6A19\793A\8CC7\6599\5217 %0')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131435148881028242)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\793A\6A23\5F0F')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131339381551028214)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\793A\985E\578B')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131453976635028248)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6C34\5E73')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131482931461028257)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('1 \500B\975E\4F5C\7528\4E2D\8A2D\5B9A\503C')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131483007648028257)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \500B\975E\4F5C\7528\4E2D\8A2D\5B9A\503C')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131372708872028224)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E92\52D5\5F0F\5831\8868\8AAA\660E')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131383714063028227)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131377149987028225)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\904B\7B97\8868\793A\5F0F. %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131332745189028212)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7D50\675F\65E5\671F\5FC5\9808\665A\65BC\958B\59CB\65E5\671F.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131391954069028230)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\7BE9\9078\8868\793A\5F0F. %0')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131461727592028251)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\7BE9\9078\67E5\8A62')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131483195583028257)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('1 \500B\7121\6548\7684\8A2D\5B9A\503C')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131483269607028257)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \500B\7121\6548\7684\8A2D\5B9A\503C')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131435395402028243)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('(\5206\9418)')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131452310417028248)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\524D %1 \4E2D')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131452592076028248)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728\5F8C %1 \4E2D')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131452493956028248)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\524D %1 \4E2D')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131452646125028248)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E0D\5728\5F8C %1 \4E2D')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131381803453028227)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9375\53F0')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131345587703028216)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\7C64 %0')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131375790478028225)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\7C64\7684\5EA7\6A19\8EF8\6A19\984C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131368011783028223)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \5929')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131368297747028223)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \5C0F\6642')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131367776462028223)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \500B\6708')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131367894983028223)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \9031')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131367929613028223)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D %0 \5929')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131368173949028223)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D %0 \5C0F\6642')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131367534120028223)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D %0 \5E74')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131367612298028223)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D 1 \5E74')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131345402322028216)
,p_name=>'APEXIR_LINE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6298\7DDA\5716')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131342280233028215)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6298\7DDA\5340\57DF\5716')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131461618467028251)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E6A\88FD\5730\5716')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131376663233028225)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\67E5\8A62\9810\4F30\6703\8D85\904E\5141\8A31\7684\8CC7\6E90\4E0A\9650.  \8ACB\4FEE\6539\60A8\7684\5831\8868\8A2D\5B9A\503C, \7136\5F8C\518D\8A66\4E00\6B21.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131358058233028220)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\5831\8868\7684\8CC7\6599\5217\6578\76EE\4E0A\9650\70BA %0 \500B\8CC7\6599\5217.  \8ACB\5957\7528\7BE9\9078\4F86\6E1B\5C11\60A8\67E5\8A62\4E2D\7684\8A18\9304\6578\76EE.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131462231999028251)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\5927\503C %0')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131462443473028251)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E2D\9593\503C %0')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131304708316028204)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A0A\606F')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131362302038028221)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5206\9418\524D')
,p_version_scn=>2693961
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131462341507028251)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\5C0F\503C %0')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131461303734028251)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6708')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131435789597028243)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6BCF\6708')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131374966617028225)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\52D5')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131374851406028225)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\79FB\52D5')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131488081266028259)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\5305\542B\591A\500B\4E92\52D5\5F0F\5831\8868, \56E0\6B64\5FC5\9808\6307\5B9A\5340\57DF\975C\614B ID.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131340942079028215)
,p_name=>'APEXIR_NAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\540D\7A31')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131370606911028223)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\5EFA\805A\7E3D')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131483882999028257)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\985E\5225')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131370714719028224)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\5EFA\904B\7B97')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131365446239028222)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\4E00\500B')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131368597753028223)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \5929')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131368325144028223)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \5C0F\6642')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131368847097028223)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \500B\6708')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131368771920028223)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \9031')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131368683448028223)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C %0 \5929')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131368475414028223)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C %0 \5C0F\6642')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131369046836028223)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C %0 \5E74')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131368969860028223)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F8C 1 \5E74')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131341221588028215)
,p_name=>'APEXIR_NO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5426')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131383949088028227)
,p_name=>'APEXIR_NONE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('- \7121 -')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131434981281028242)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\662F\6709\6548\7684\96FB\5B50\90F5\4EF6\5730\5740.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131307096565028205)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\9078\53D6\8981\986F\793A\7684\8CC7\6599\6B04. \8ACB\4F7F\7528\300C\52D5\4F5C\300D\529F\80FD\8868\4E2D\7684<strong>\8CC7\6599\6B04</strong>, \8B93\8CC7\6599\6B04\53EF\4F9B\986F\793A.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131380421997028226)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7A7A\503C\4E00\5F8B\986F\793A\5728\6700\524D\9762')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131380300325028226)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7A7A\503C\4E00\5F8B\986F\793A\5728\6700\5F8C\9762')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131380807788028226)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7A7A\503C\6392\5E8F %0')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131377239210028225)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5012\6EAF\6642\9593\5FC5\9808\662F\6578\503C.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131376856266028225)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9806\5E8F\5FC5\9808\662F\6578\5B57.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131381326693028227)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904B\7B97\5B50')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131339820999028214)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A58\8272')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131453876845028248)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B9\5411')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131341779603028215)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5176\4ED6')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131307991776028205)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7684\5206\9801')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131321986690028209)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\65B9\5411')
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131322668852028209)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A6B\5370')
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131322792561028209)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76F4\5370')
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131321852994028209)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\5927\5C0F')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131322455466028209)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'zh-tw'
,p_message_text=>'A3'
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131322381018028209)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'zh-tw'
,p_message_text=>'A4'
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131322541367028209)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\81EA\8A02')
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131322161276028209)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'zh-tw'
,p_message_text=>'Legal'
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131322035494028209)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'zh-tw'
,p_message_text=>'Letter'
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131322294415028209)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'zh-tw'
,p_message_text=>'Tabloid'
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131462728581028251)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\8A08\6578\767E\5206\6BD4 %0 (%)')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131461999340028251)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\548C\767E\5206\6BD4 %0 (%)')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131460920690028250)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\8A08\6578\767E\5206\6BD4')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131460887921028250)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\548C\767E\5206\6BD4')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131345306804028216)
,p_name=>'APEXIR_PIE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5713\9905\5716')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131411082378028235)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A1E\7D10\5206\6790\8868')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131412575584028236)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A\805A\7E3D.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131412713160028236)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\4E0D\80FD\5C0D\88AB\9078\53D6\4F5C\70BA\8CC7\6599\5217\8CC7\6599\6B04\7684\8CC7\6599\6B04\57F7\884C\805A\7E3D.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131411986487028236)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A1E\7D10\8CC7\6599\6B04')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131411721025028236)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A1E\7D10\8CC7\6599\6B04 %0')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131412333499028236)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A\6A1E\7D10\8CC7\6599\6B04.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131264814108028192)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\6A1E\7D10\5206\6790\8868\300D\67E5\8A62\7684\8CC7\6599\5217\8A08\6578\4E0A\9650\9650\5236\7684\662F\57FA\790E\67E5\8A62\4E2D\7684\8CC7\6599\5217\6578\76EE, \800C\4E0D\662F\9650\5236\986F\793A\7684\8CC7\6599\5217\6578\76EE. \60A8\7684\57FA\790E\67E5\8A62\8D85\51FA\8CC7\6599\5217\8A08\6578\4E0A\9650 (%0 \500B\8CC7\6599\5217). \8ACB\5957\7528\7BE9\9078\4EE5\6E1B\5C11\60A8\57FA\790E\67E5\8A62\4E2D\7684\8A18\9304\6578\76EE.')
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131412249532028236)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A1E\7D10\5206\6790\8868\6392\5E8F')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131378224580028226)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A1E\7D10\5206\6790\8868\8CC7\6599\6B04\5305\542B\592A\591A\4E0D\540C\7684\503C - \7121\6CD5\7522\751F\6A1E\7D10\5206\6790\8868 SQL.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131309291381028205)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7684\6A1E\7D10\5206\6790\8868\6AA2\8996')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131435016822028242)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\89BD')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131365527175028222)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\4E00\500B')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131459821810028250)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E3B\8981')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131436013733028243)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E3B\8981\5831\8868')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131321724152028209)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5305\62EC\8F14\52A9\529F\80FD\6A19\8A18')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131282507094028198)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664 Rich Text \683C\5F0F')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131390962935028229)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C08\7528')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131345986967028216)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\516C\7528')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131341590361028215)
,p_name=>'APEXIR_RED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7D05\8272')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131487938421028259)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5340\57DF\975C\614B ID %0 \4E0D\5B58\5728.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131375035889028225)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131375185323028225)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\79FB\9664')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131483372535028257)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664\5716\8868')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131374603977028225)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664\63A7\5236\5206\6BB5')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131374311548028225)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664\7BE9\9078')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131374401662028225)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664\5012\6EAF')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131483489559028257)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664\7FA4\7D44\4F9D\64DA')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131374725961028225)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664\6A19\793A')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131483521859028257)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664\6A1E\7D10\5206\6790\8868')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131464630037028251)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\9664\5831\8868')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131446478166028246)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\65B0\547D\540D\9810\8A2D\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131384246084028227)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\65B0\547D\540D\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131365818108028222)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131462876680028251)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131338084783028214)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5225\540D\70BA %0 \7684\300C\9810\5B58\4E92\52D5\5F0F\300D\5831\8868\4E0D\5B58\5728.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131391288763028229)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868\4E0D\5B58\5728.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131338182083028214)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\9810\5B58\4E92\52D5\5F0F\5831\8868\300DID %0 \4E0D\5B58\5728.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131382583249028227)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868\8A2D\5B9A\503C')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131306794053028205)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7684\5831\8868\8A2D\5B9A\503C')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131362842546028221)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868\6AA2\8996')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131367070008028222)
,p_name=>'APEXIR_RESET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131346188938028216)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\5831\8868\56DE\5FA9\6210\9810\8A2D\503C.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131341371690028215)
,p_name=>'APEXIR_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131458946006028250)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\4E0D\80FD\4F7F\7528 ROWID \4F5C\70BA REST \8CC7\6599\4F86\6E90\7684\4E3B\7D22\5F15\9375\8CC7\6599\6B04.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131373792602028224)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131436723908028243)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6BCF\9801\8CC7\6599\5217\6578')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131412072931028236)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217\8CC7\6599\6B04')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131411862239028236)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217\8CC7\6599\6B04 %0')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131412433580028236)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A\8CC7\6599\5217\8CC7\6599\6B04.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131412661778028236)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217\8CC7\6599\6B04\5FC5\9700\8207\6A1E\7D10\8CC7\6599\6B04\4E0D\540C.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131388277328028229)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217\7BE9\9078')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131362952585028221)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B2C %0 \500B\8CC7\6599\5217, \5171 %1 \500B')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131367229032028223)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217\6587\5B57\5305\542B')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131340608033028215)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131377890784028226)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\5B58\5831\8868')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131377739471028226)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\5B58\5831\8868 = "%0"')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131379922964028226)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D\7684\5831\8868\8A2D\5B9A\503C\5C07\6210\70BA\6240\6709\4F7F\7528\8005\7684\9810\8A2D\503C.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131446360389028246)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58\9810\8A2D\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131366996233028222)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58\5831\8868')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131483792393028257)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58\5831\8868 *')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131437717956028243)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131372679820028224)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B\5217')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131306083813028205)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \7684\641C\5C0B\5217')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131483669560028257)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B: %0')
,p_is_js_message=>true
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131443203381028245)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B\5831\8868')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131427297674028240)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\7684\8CC7\6599\6B04')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131342320940028215)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('- \9078\53D6\8CC7\6599\6B04 -')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131366286279028222)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\8CC7\6599\6B04')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131345853425028216)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('- \9078\53D6\51FD\6578 -')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131373494033028224)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('- \4F9D\8CC7\6599\6B04\9078\53D6\7FA4\7D44 -')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131411593135028236)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('- \9078\53D6\6A1E\7D10\8CC7\6599\6B04 -')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131461891526028251)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\8CC7\6599\5217')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131411691504028236)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('- \9078\53D6\8CC7\6599\5217\8CC7\6599\6B04 -')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131293159145028201)
,p_name=>'APEXIR_SEND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\50B3\9001')
,p_is_js_message=>true
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131315670249028207)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4EE5\96FB\5B50\90F5\4EF6\50B3\9001')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131341072639028215)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9806\5E8F')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131366441918028222)
,p_name=>'APEXIR_SORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6392\5E8F')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131375959965028225)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\589E\6392\5E8F')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131376053257028225)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\905E\6E1B\6392\5E8F')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131464086921028251)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6392\5E8F\9806\5E8F')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131370392277028223)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7A7A\683C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131381559854028227)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\72C0\614B %0')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131435423757028243)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A02\95B1')
,p_is_js_message=>true
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131461204402028250)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7D50\675F\65BC')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131280294515028197)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\8CC7\6599\6642\7565\904E')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131461150168028250)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\59CB\65BC')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131462066092028251)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\548C %0')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131452992565028248)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0, \5831\8868 = %1, \6AA2\8996 = %2')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131339978933028214)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6587\5B57\8272\5F69')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131358667099028220)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5929')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131358598031028220)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\6642')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131358497313028220)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\9418')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131358882582028220)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\500B\6708')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131358752119028220)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9031')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131358912719028220)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E74')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131464404562028251)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5207\63DB')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131375239095028225)
,p_name=>'APEXIR_TOP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9802\7AEF')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131457908528028249)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\5206\7D44\7684\8CC7\6599\6B04')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131376791554028225)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\6A19\793A\540D\7A31\300D\5FC5\9808\662F\552F\4E00\7684.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131344669560028216)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4\7684\8CC7\6599\985E\578B')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131375330743028225)
,p_name=>'APEXIR_UP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\79FB')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131376961438028225)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\8F38\5165\6709\6548\7684\8272\5F69.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131377056607028225)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\8F38\5165\6709\6548\7684\683C\5F0F\906E\7F69.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131341897727028215)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\503C')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131375864073028225)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\503C\7684\5EA7\6A19\8EF8\6A19\984C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131383652942028227)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\8F38\5165\503C')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131345271197028216)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5782\76F4\8CC7\6599\6B04')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131454079085028248)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5782\76F4')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131382966936028227)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996\5716\8868')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131441505549028244)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996\8A73\7D30\8CC7\8A0A')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131485885331028258)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868\672A\5B9A\7FA9 %0 \6AA2\8996.')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131441639294028244)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996\7FA4\7D44\4F9D\64DA')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131441407016028244)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996\5716\793A')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131411352718028235)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996\6A1E\7D10\5206\6790\8868')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131383012699028227)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996\5831\8868')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131435628058028243)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6BCF\9031')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131365729166028222)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\5831\8868')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131463447288028251)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5929')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131463378354028251)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5C0F\6642')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131463267842028251)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5206\9418')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131463650048028251)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \500B\6708')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131463578955028251)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \9031')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131463785459028251)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5E74')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131461422339028251)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E74')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131339628219028214)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9EC3\8272')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131341132631028215)
,p_name=>'APEXIR_YES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\662F')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131375666555028225)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5305\542B < \6216 > \7121\6548\5B57\5143.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131399560263028232)
,p_name=>'APEX_REGION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5340\57DF')
,p_version_scn=>2693968
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131290677216028200)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\89E3\58D3\7E2E ZIP \6A94\6848.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131290526897028200)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230 End-of-central-directory \7C3D\7AE0. \6B64\6A94\6848\4E0D\662F ZIP \6A94\6848.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131321694864028209)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9055\53CD API \5148\6C7A\689D\4EF6')
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131343751634028216)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\53D6\5F97\61C9\7528\7A0B\5F0F\8A2D\5B9A\503C %0 \7684\503C, \56E0\70BA\95DC\806F\7684\7D44\5EFA\9078\9805\5DF2\505C\7528.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131343663303028216)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\8A2D\5B9A\61C9\7528\7A0B\5F0F\8A2D\5B9A\503C %0 \7684\503C, \56E0\70BA\95DC\806F\7684\7D44\5EFA\9078\9805\5DF2\505C\7528.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131456252250028249)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F\8A2D\5B9A %0 \503C\7121\6548')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131456172442028249)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\5B9A\7FA9\8981\6C42\7684\61C9\7528\7A0B\5F0F\8A2D\5B9A %0')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131456334797028249)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F\8A2D\5B9A %0 \4E0D\53EF\8A2D\70BA\7A7A\503C')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131330225015028212)
,p_name=>'BACK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8FD4\56DE')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131312645099028206)
,p_name=>'BUILDER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7522\751F\5668')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131386226790028228)
,p_name=>'BUTTON LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6309\9215\6A19\7C64')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131309595976028206)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6309\9215 CSS \985E\5225')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131348058320028217)
,p_name=>'BUTTON_ID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7522\751F\7684\6309\9215 ID \5C07\662F\6309\9215\7684\300C\975C\614B ID\300D(\5982\679C\5B9A\7FA9), \6216\8005\82E5\672A\5B9A\7FA9\7684\8A71, \5C07\662F\683C\5F0F\70BA ''B'' || [\5167\90E8\6309\9215 ID] \7684\5167\90E8\7522\751F ID')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131282087711028197)
,p_name=>'CANDLESTICK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('K \7DDA\5716')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131396063890028231)
,p_name=>'CENTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7F6E\4E2D')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131342661540028215)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \8981\6C42')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131332660972028212)
,p_name=>'CHECK$'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217\9078\53D6\5668')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131458060712028250)
,p_name=>'CHECKED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\52FE\9078')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131434446679028242)
,p_name=>'COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131392034863028230)
,p_name=>'COMMENTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A3B\89E3')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131373081676028224)
,p_name=>'CONTINUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E7C\7E8C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131330527970028212)
,p_name=>'COPYRIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8457\4F5C\6B0A\6240\6709 &copy; 1999, %0, Oracle \548C (\6216) \5176\95DC\4FC2\4F01\696D.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131378772629028226)
,p_name=>'COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A08\6578')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131385772645028228)
,p_name=>'CREATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EFA\7ACB')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131441172598028244)
,p_name=>'CREATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EFA\7ACB\6642\9593')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131441221110028244)
,p_name=>'CREATED_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EFA\7ACB\8005')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131362169862028221)
,p_name=>'CREATED_ON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EFA\7ACB\65E5\671F')
,p_version_scn=>2693961
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131373224664028224)
,p_name=>'CUSTOM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\81EA\8A02')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131384427922028227)
,p_name=>'CUSTOMIZE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\81EA\8A02')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131386491708028228)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\91CD\8A2D\4F7F\7528\8005 %0 \7684\9801\9762\504F\597D\8A2D\5B9A.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131386544283028228)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\8B8A\66F4\4F7F\7528\8005 %0 \7684\504F\597D\8A2D\5B9A.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131386355961028228)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\91CD\8A2D\4F7F\7528\8005 %0 \7684\9801\9762\504F\597D\8A2D\5B9A.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131347488686028217)
,p_name=>'DAILY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6BCF\65E5')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131310884089028206)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\50B3\7684\6A94\6848\7121\6548, \6216\526F\6A94\540D\4E0D\6B63\78BA.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131342895555028215)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\7684 XML \6216 JSON \9078\53D6\5668\7121\6548.')
,p_version_scn=>2693955
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131287915519028199)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\8A2D\5B9A\6A94\548C\4E0A\50B3\7684\6A94\6848\672A\5305\542B\4EFB\4F55\76EE\6A19\8868\683C\8CC7\6599\6B04.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131401898308028233)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\4E0A\50B3\7684\6A94\6848\4E2D\627E\4E0D\5230\8CC7\6599.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131401929168028233)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\5DE5\4F5C\8868 "%0" \4E2D\627E\4E0D\5230\8CC7\6599.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131307720541028205)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6307\5B9A\7684\6A94\6848\4E0D\662F XLSX \6A94\6848.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131273787745028195)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\8F09\5165\5B8C\6210: \5DF2\8655\7406 %0 \500B\8CC7\6599\5217.')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131276041019028196)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\8F09\5165\5B8C\6210: \5DF2\8655\7406 %0 \500B\8CC7\6599\5217, \4F46\767C\751F 1 \500B\932F\8AA4.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131276313960028196)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\8F09\5165\5B8C\6210: \5DF2\8655\7406 %0 \500B\8CC7\6599\5217, \4F46\767C\751F %1 \500B\932F\8AA4.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131276104293028196)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\8F09\5165\5B8C\6210: \5DF2\8655\7406 1 \500B\8CC7\6599\5217.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131290483464028200)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\8F09\5165\5B8C\6210: \5DF2\8655\7406 1 \500B\8CC7\6599\5217, \4F46\767C\751F\932F\8AA4.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131276289050028196)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\8F09\5165\5B8C\6210: \5DF2\8655\7406 1 \500B\8CC7\6599\5217, \4E14\7121\4EFB\4F55\932F\8AA4.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131408985906028235)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\6A19\8CC7\6599\6B04')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131316104527028207)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\8F09\5165')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131316209819028207)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406\932F\8AA4')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131409008407028235)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F86\6E90\8CC7\6599\6B04')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131409853815028235)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65E5\671F / \6578\5B57\683C\5F0F')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131315996830028207)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63D2\5165\8CC7\6599\5217')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131472095164028254)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\64F7\53D6\67E5\5C0B\503C.')
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131441791760028245)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599/\8868\683C\5C0D\61C9')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131409978307028235)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131316371476028208)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9806\5E8F : \52D5\4F5C')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131403619769028233)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F49\63DB\898F\5247\5931\6557')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131316007012028207)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\65B0\8CC7\6599\5217')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131378331642028226)
,p_name=>'DATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65E5\671F')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131351236344028218)
,p_name=>'DAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5929')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131351323602028218)
,p_name=>'DAYS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5929')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131391731555028230)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\61C9\7528\7A0B\5F0F\672A\555F\7528\9664\932F\529F\80FD.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131443476315028245)
,p_name=>'DEFAULT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\8A2D')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131352056219028218)
,p_name=>'DELETE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\522A\9664')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131327624650028211)
,p_name=>'DELETE_MSG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8981\57F7\884C\6B64\522A\9664\52D5\4F5C\55CE?')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131307250479028205)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\968E\6BB5\4F5C\696D\8986\5BEB')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131308117674028205)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\555F\7528\968E\6BB5\4F5C\696D\8986\5BEB')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131309035500028205)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F09\5165\968E\6BB5\4F5C\696D\8986\5BEB\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131308872970028205)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58\968E\6BB5\4F5C\696D\8986\5BEB\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131308748242028205)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\968E\6BB5\4F5C\696D\8986\5BEB\5DF2\5132\5B58. \95DC\9589\6B64\5C0D\8A71\65B9\584A\4EE5\67E5\770B\8B8A\66F4.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131281986263028197)
,p_name=>'DIAL_PCT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A08\91CF (\767E\5206\6BD4)')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131322941960028209)
,p_name=>'DOWNLOAD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\8F09')
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131442503580028245)
,p_name=>'DUP_USER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\55AE\5167\6709\91CD\8907\7684\300C\4F7F\7528\8005\540D\7A31\300D.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131331367117028212)
,p_name=>'EDIT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131342533169028215)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\96FB\5B50\90F5\4EF6\5730\5740 "%0".')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131325287925028210)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\96FB\5B50\90F5\4EF6\662F\7531 %0 \6240\50B3\9001.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131442790434028245)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\96FB\5B50\90F5\4EF6\5730\5740\300D\592A\9577.  \9650\5236\70BA 240 \500B\5B57\5143.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131372972954028224)
,p_name=>'ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\932F\8AA4')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131403775519028233)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\8A2D\5B9A\91CD\65B0\6574\7406\90E8\5206\9801\9762\5340\57DF\7684\9801\9762\9805\76EE\4F86\6E90\503C')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131364251005028222)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EFA\7ACB\8005')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131325581523028210)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\904E\671F')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131317906349028208)
,p_name=>'FILE_EMPTY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A94\6848\662F\7A7A\7684.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131407710004028234)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\50B3\7684\6A94\6848\5927\5C0F\8D85\904E %0 MB. \8ACB\4E0A\50B3\8F03\5C0F\7684\6A94\6848.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131327842039028211)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8005\8A8D\8B49\5931\6557, \672A\4E0A\50B3\4E00\6216\591A\500B\6A94\6848.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131327979881028211)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\57F7\884C\8655\7406\4E0D\5141\8A31\672A\8A8D\8B49\7684\4F7F\7528\8005\4E0A\50B3\6A94\6848.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131407891211028234)
,p_name=>'FILTERS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BE9\9078\689D\4EF6')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131385869296028228)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767C\751F 1 \500B\932F\8AA4')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131385028691028228)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\7D93\767C\751F %0 \500B\932F\8AA4')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131330451296028212)
,p_name=>'FORM_OF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0, \5171 %1')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131369422796028223)
,p_name=>'GO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\57F7\884C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131471693341028254)
,p_name=>'HELP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8AAA\660E')
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131312725837028206)
,p_name=>'HOME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9996\9801')
,p_is_js_message=>true
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131351069962028218)
,p_name=>'HOUR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\6642')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131351193979028218)
,p_name=>'HOURS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C0F\6642')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131332566883028212)
,p_name=>'ICON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\793A %0')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131309820905028206)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\526A\88C1\5716\793A\8AAA\660E')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131311077154028206)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\62D6\66F3\60A8\7684\5716\793A, \4E26\4F7F\7528\7E2E\653E\6ED1\687F\5728\6846\67B6\5167\91CD\65B0\5B9A\4F4D.</p>'),
'',
unistr('<p>\4E0A\50B3\65B0\5716\793A\6642, \6703\91CD\65B0\8ABF\6574\5716\793A\7684\5927\5C0F, \4EE5\7B26\5408\4E09\7A2E\683C\5F0F: \6211\7684\6700\611B\5716\793A\3001\5C0F\578B\5716\793A\548C\5927\578B\5716\793A.</p>'),
'',
unistr('<p>\7576\7126\9EDE\7F6E\65BC\5716\793A\526A\88C1\5668\6642, \53EF\4F7F\7528\4EE5\4E0B\9375\76E4\5FEB\901F\9375:</p>'),
'<ul>',
unistr('    <li>\5411\5DE6\7BAD\865F: \5F71\50CF\5DE6\79FB*</li>'),
unistr('    <li>\5411\4E0A\7BAD\865F: \5F71\50CF\4E0A\79FB*</li>'),
unistr('    <li>\5411\53F3\7BAD\865F: \5F71\50CF\53F3\79FB*</li>'),
unistr('    <li>\5411\4E0B\7BAD\865F: \5F71\50CF\4E0B\79FB*</li>'),
unistr('    <li>I: \653E\5927</li>'),
unistr('    <li>O: \7E2E\5C0F</li>'),
unistr('    <li>L: \5411\5DE6\65CB\8F49</li>'),
unistr('    <li>R: \5411\53F3\65CB\8F49</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*\6309\4F4F Shift \53EF\5FEB\901F\79FB\52D5</em></p>')))
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131316518068028208)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\62D6\66F3\4EE5\91CD\65B0\5B9A\4F4D\5716\793A')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131316640129028208)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\52D5\6ED1\687F\4EE5\8ABF\6574\7E2E\653E\7B49\7D1A')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131309608606028206)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F\61C9\7528\7A0B\5F0F\5716\793A')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131309977091028206)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58\5716\793A\6642\767C\751F\932F\8AA4')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131392315932028230)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> \6B64\61C9\7528\7A0B\5F0F\4F7F\7528\820A\6709\5716\793A. \82E5\4E0A\50B3\65B0\5716\793A, \5C07\6703\53D6\4EE3\6240\6709\820A\6709\5716\793A.</p>')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131310516437028206)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\50B3\65B0\5716\793A')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131386774243028228)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\767B\5165\8B49\660E\8CC7\6599')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131487870993028259)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\53C3\6578\503C: %0')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131381097291028226)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53E6\5B58\70BA\9810\8A2D\5831\8868\8A2D\5B9A\503C')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131381170351028227)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\547D\540D\5F8C\5B58\70BA\5831\8868')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131363060402028221)
,p_name=>'IR_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \932F\8AA4. %1')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131362785067028221)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5F9E\5C0E\89BD\904B\7B97. %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131338372537028214)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\4E92\52D5\5F0F\5831\8868.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131337724375028214)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F %0\3001\9801\9762 %1 \8207\5340\57DF %2 \4E2D\4E0D\5B58\5728\4E92\52D5\5F0F\5831\8868\5340\57DF.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131380937465028226)
,p_name=>'IR_STAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53EA\6709\958B\767C\4EBA\54E1\770B\5F97\5230')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131369166476028223)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868\67E5\8A62\9700\8981\4F7F\7528\552F\4E00\7684\7D22\5F15\9375\4F86\8B58\5225\6BCF\500B\8CC7\6599\5217.  \6B64\7D22\5F15\7121\6CD5\4F7F\7528\63D0\4F9B\7684\7D22\5F15\9375.  \8ACB\5B9A\7FA9\552F\4E00\7684\7D22\5F15\9375\8CC7\6599\6B04. %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131369291286028223)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868\67E5\8A62\9700\8981\4F7F\7528\552F\4E00\7684\7D22\5F15\9375\4F86\8B58\5225\6BCF\500B\8CC7\6599\5217.  \6B64\7D22\5F15\7121\6CD5\4F7F\7528\63D0\4F9B\7684\7D22\5F15\9375.  \8ACB\7DE8\8F2F\5831\8868\5C6C\6027, \5B9A\7FA9\552F\4E00\7684\7D22\5F15\9375\8CC7\6599\6B04. %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131410115737028235)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\6A94\6848')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131410083502028235)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\6A94\6848\62D6\653E\5230\6B64\8655, \6216')
,p_is_js_message=>true
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131330765320028212)
,p_name=>'ITEMS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9805\76EE')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131364494289028222)
,p_name=>'ITEM_VALUE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9805\76EE\503C')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131379002243028226)
,p_name=>'LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\7C64')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131391635523028230)
,p_name=>'LANGUAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A9E\8A00')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131351762814028218)
,p_name=>'LAST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904E\53BB')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131327781764028211)
,p_name=>'LENGTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9577\5EA6')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131386073063028228)
,p_name=>'LOGIN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767B\5165')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131427698753028240)
,p_name=>'MANAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BA1\7406')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131490739939028260)
,p_name=>'MAXIMIZE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\5927\5316')
,p_is_js_message=>true
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131350816894028218)
,p_name=>'MINUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\9418')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131350965011028218)
,p_name=>'MINUTES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5206\9418')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131442927369028245)
,p_name=>'MISSING_AT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\96FB\5B50\90F5\4EF6\5730\5740\300D\4E2D\907A\6F0F "@".')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131443172136028245)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8B66\544A: \5C1A\672A\5728\61C9\7528\7A0B\5F0F %1 \4E2D\70BA\300C\5C0D\8A71\65B9\584A\300D\9801\9762 %0 \5B9A\7FA9\300C\5C0D\8A71\65B9\584A\9801\9762\300D\6A23\677F.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131442805232028245)
,p_name=>'MISSING_DOT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\96FB\5B50\90F5\4EF6\5730\5740\300D\7DB2\57DF\4E2D\907A\6F0F ".".')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131389145893028229)
,p_name=>'MODULE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A21\7D44')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131343372339028215)
,p_name=>'MONTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6708')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131347206862028217)
,p_name=>'MONTHLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6BCF\6708')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131343423502028215)
,p_name=>'MONTHS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\500B\6708')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131378646256028226)
,p_name=>'MOVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\52D5')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131449478906028247)
,p_name=>'MOVE_FROM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\52D5\81EA')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131449528441028247)
,p_name=>'MOVE_TO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79FB\52D5\81F3')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131365683787028222)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\522A\9664\591A\91CD\8CC7\6599\5217\4F5C\696D\767C\932F\8AA4: \8CC7\6599\5217= %0, %1, %2')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131364675260028222)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\80FD\662F\516C\7528\4F7F\7528\8005')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131313260506028207)
,p_name=>'NAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\540D\7A31')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131378894123028226)
,p_name=>'NEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\5EFA')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131343125205028215)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\53EF\4EE5\524D\5F80\4E0B\5217\4F4D\5740\767B\5165 %0:')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131343287997028215)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0 %0 \5E33\6236\901A\77E5')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131471853148028254)
,p_name=>'NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\4E00\500B')
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131389063515028229)
,p_name=>'NO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5426')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131485969384028258)
,p_name=>'NOBODY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6307\5B9A')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131352137626028218)
,p_name=>'NOT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\662F')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131395085848028231)
,p_name=>'NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\975E\7A7A\503C')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131364748494028222)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\662F %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131384591844028228)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\8CC7\6599')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131394557304028230)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\53EF\66F4\65B0\7684\5831\8868. \60A8\53EA\80FD\5728\985E\578B\70BA\300C\53EF\66F4\65B0\7684\5831\8868\300D\7684\5217\8868\5316\8868\55AE\57F7\884C\591A\91CD\8CC7\6599\5217\66F4\65B0\548C\522A\9664\4F5C\696D.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131395483921028231)
,p_name=>'OK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\78BA\5B9A')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131390760989028229)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'zh-tw'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131489665663028259)
,p_name=>'ORA_06550'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ORA-06550: \884C %0, \8CC7\6599\6B04 %1')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131440592966028244)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\4E0D\652F\63F4\60A8\76EE\524D\4F7F\7528\7684 Web \700F\89BD\5668. \5982\9700\652F\63F4\7684\700F\89BD\5668\6E05\55AE, \8ACB\53C3\95B1 Oracle APEX Installation Guide.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131335560609028213)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8981\6C42\7684\4E00\7D44\8CC7\6599\5217\7121\6548, \5831\8868\7684\4F86\6E90\8CC7\6599\5DF2\7D93\904E\4FEE\6539.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131357547206028220)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A\6709\6548\7684\9801\78BC, \4F8B\5982 p?n=1234.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131361759497028221)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\4E00\500B')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131361880725028221)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0B\4E00\7D44')
,p_version_scn=>2693961
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131361928020028221)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\4E00\500B')
,p_version_scn=>2693961
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131362004179028221)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\4E00\7D44')
,p_version_scn=>2693961
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131471774887028254)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\5206\9801')
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131401732690028233)
,p_name=>'PASSWORD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131342465728028215)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\7684 %0 \5BC6\78BC\5DF2\7D93\8B8A\66F4.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131330150979028212)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\4E0D\7B26\5408\6B64\7DB2\7AD9\7684\5BC6\78BC\8907\96DC\6027\898F\5247.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131329235400028211)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\65B0\5BC6\78BC\8207\820A\5BC6\78BC\81F3\5C11\5FC5\9808\6709 %0 \500B\5B57\5143\4E0D\540C.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131329869279028211)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\4E0D\5F97\5305\542B\4F7F\7528\8005\540D\7A31.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131330012387028212)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\5305\542B\7981\6B62\4F7F\7528\7684\7C21\55AE\6587\5B57.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131329938045028211)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\4E0D\5F97\5305\542B\5DE5\4F5C\5340\540D\7A31.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131329147288028211)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\81F3\5C11\5FC5\9808\8981\6709 %0 \500B\5B57\5143.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131329387634028211)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\81F3\5C11\5FC5\9808\5305\542B\4E00\500B\5B57\6BCD\5B57\5143 (%0).')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131329734047028211)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\81F3\5C11\5FC5\9808\5305\542B\4E00\500B\5C0F\5BEB\5B57\6BCD\5B57\5143.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131329470266028211)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\81F3\5C11\5FC5\9808\5305\542B\4E00\500B\6578\5B57\5B57\5143 (0123456789).')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131329523475028211)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\81F3\5C11\5FC5\9808\5305\542B\4E00\500B\6A19\9EDE\7B26\865F\5B57\5143 (%0).')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131329635749028211)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\81F3\5C11\5FC5\9808\5305\542B\4E00\500B\5927\5BEB\5B57\6BCD\5B57\5143.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131342942698028215)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\91CD\8A2D\901A\77E5')
,p_version_scn=>2693955
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131328053801028211)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC\7121\6CD5\4F7F\7528, \904E\53BB %0 \5167\5DF2\7528\904E\6B64\5BC6\78BC.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131324798627028210)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767E\5206\6BD4\5716\8868')
,p_is_js_message=>true
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131416348460028237)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9805\76EE')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131416421314028237)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9805\76EE')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131390524392028229)
,p_name=>'PERCENT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767E\5206\6BD4')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131359864259028220)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8ACB\6D3D\8A62\7BA1\7406\54E1.')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131471945663028254)
,p_name=>'PREVIOUS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\4E00\500B')
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131408533113028235)
,p_name=>'PRINT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5217\5370')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131389368977028229)
,p_name=>'PRIVILEGES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B0A\9650')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131357960757028220)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5340\57DF\53C3\7167')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131378981456028226)
,p_name=>'REPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131389295692028229)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868\671F\9593')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131472111448028254)
,p_name=>'REPORT_LABEL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868: %0')
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131389981884028229)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5831\8868\7E3D\8A08')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131335623812028213)
,p_name=>'RESET'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D\5206\9801')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131364332537028222)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D\5206\9801')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131394473437028230)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D\5BC6\78BC')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131370215258028223)
,p_name=>'RESTORE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\56DE\5FA9')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131403821671028233)
,p_name=>'RESULTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7D50\679C')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131395569706028231)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8FD4\56DE\61C9\7528\7A0B\5F0F.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131395963294028231)
,p_name=>'RIGHT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9760\53F3')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131427977907028240)
,p_name=>'ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217 %0')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131378595584028226)
,p_name=>'ROW_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217\8A08\6578')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131268390106028193)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A62\554F Oracle')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131268647524028194)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\95DC\9589\300C\8A62\554F Oracle\300D')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131268946681028194)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\901A\77E5\6E05\55AE')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131268556380028193)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\555F\300C\8A62\554F Oracle\300D')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131268880912028194)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7522\54C1\5730\5716')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131268712882028194)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5EFA\8B70\6E05\55AE')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131269698545028194)
,p_name=>'RW_CLEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\9664')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131269538213028194)
,p_name=>'RW_CLOSE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\95DC\9589')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131269339440028194)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996\66F4\591A')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131269772443028194)
,p_name=>'RW_GO_TO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\524D\5F80')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131269110777028194)
,p_name=>'RW_GP_STEP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B65\9A5F')
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131269281736028194)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'zh-tw'
,p_message_text=>'/'
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131269020740028194)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5207\63DB\6B65\9A5F\986F\793A')
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131268103837028193)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96B1\85CF\5BC6\78BC')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131269475867028194)
,p_name=>'RW_OPEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\555F')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131267924267028193)
,p_name=>'RW_ORACLE'
,p_message_language=>'zh-tw'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131268012470028193)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A\5BC6\78BC')
,p_is_js_message=>true
,p_version_scn=>2693940
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131269809221028194)
,p_name=>'RW_START'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\982D')
,p_is_js_message=>true
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131394937938028231)
,p_name=>'SAVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5132\5B58')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131391117254028229)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66FF\4EE3\9810\8A2D\503C')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131391593574028230)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63CF\8FF0')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131391032609028229)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E3B\8981\9810\8A2D\503C')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131391865199028230)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6709 %0 \500B\4EE5\4E0A\53EF\7528\7684\8CC7\6599\5217. \8ACB\589E\52A0\8CC7\6599\5217\9078\53D6\5668\4EE5\6AA2\8996\66F4\591A\8CC7\6599\5217.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131459256757028250)
,p_name=>'SEARCH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131350799731028218)
,p_name=>'SECONDS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\79D2')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131390692286028229)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\67E5\770B\9644\52A0\9805\76EE')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131451217251028247)
,p_name=>'SELECT_ROW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\53D6\8CC7\6599\5217')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131390323152028229)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\87A2\5E55\52A9\8B80\7A0B\5F0F\6A21\5F0F\8A2D\70BA\95DC\9589')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131390411518028229)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C07\87A2\5E55\52A9\8B80\7A0B\5F0F\6A21\5F0F\8A2D\70BA\958B\555F')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131386609306028228)
,p_name=>'SHOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131453057671028248)
,p_name=>'SHOW_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\986F\793A')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131477879167028255)
,p_name=>'SIGN_IN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767B\5165')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131428724343028241)
,p_name=>'SIGN_OUT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767B\51FA')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131379517474028226)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5929\524D')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131387100716028228)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F9E\73FE\5728\8D77 %0 \5929')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131379437062028226)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5C0F\6642\524D')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131387088905028228)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F9E\73FE\5728\8D77 %0 \5C0F\6642')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131379316176028226)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5206\9418\524D')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131386921699028228)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F9E\73FE\5728\8D77 %0 \5206\9418')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131379779720028226)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \500B\6708\524D')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131387346643028228)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F9E\73FE\5728\8D77 %0 \500B\6708')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131387541608028228)
,p_name=>'SINCE_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\525B\525B')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131379253588028226)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \79D2\524D')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131386816201028228)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F9E\73FE\5728\8D77 %0 \79D2')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131379638779028226)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \9031\524D')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131387254283028228)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F9E\73FE\5728\8D77 %0 \9031')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131379891567028226)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5E74\524D')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131387443254028228)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5F9E\73FE\5728\8D77 %0 \5E74')
,p_is_js_message=>true
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131373388039028224)
,p_name=>'STANDARD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\6E96')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131390278997028229)
,p_name=>'START_DATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\958B\59CB\65E5\671F')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131325459988028210)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\6536\5230\7684\9019\5C01\96FB\5B50\90F5\4EF6, \662F\4F86\81EA %0 \5EFA\7ACB\7684\300C\4E92\52D5\5F0F\300D\5831\8868\8A02\95B1\9805\76EE.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131487002100028258)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A02\95B1')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131436462910028243)
,p_name=>'TAB'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\7C64')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131350695527028218)
,p_name=>'TITLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\984C')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131330300605028212)
,p_name=>'TODAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4ECA\5929')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131389810945028229)
,p_name=>'TOTAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7E3D\8A08')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131331678303028212)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6700\591A\53EF\4EE5\9078\53D6 %0 \500B\8CC7\6599\6B04.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131287495262028199)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\96B1\85CF')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131288053826028199)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96B1\85CF\4E0B\65B9\6240\6709\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131287073214028199)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\5C55\958B')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131287791540028199)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C55\958B\4E0B\65B9\6240\6709\9805\76EE')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131288276974028199)
,p_name=>'TREE.REPARENT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\91CD\8A2D\7236\9805')
,p_is_js_message=>true
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131410398140028235)
,p_name=>'TREES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A39\72C0\7D50\69CB')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131453152979028248)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\8981')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131374028867028224)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6388\6B0A')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131424227929028239)
,p_name=>'UNAVAILABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\4F7F\7528')
,p_version_scn=>2693971
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131387956877028229)
,p_name=>'UNKNOWN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\660E')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131326398732028210)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767C\751F\7121\6CD5\8FA8\8A8D\7684\8A8D\8B49\932F\8AA4.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131328544923028211)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\82E5\4E0D\60F3\518D\6536\5230\96FB\5B50\90F5\4EF6, \8ACB\6309\4E00\4E0B<a href="%0">\53D6\6D88\8A02\95B1</a>\4EE5\7BA1\7406\60A8\7684\8A02\95B1.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131325323840028210)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\82E5\4E0D\60F3\518D\6536\5230\96FB\5B50\90F5\4EF6, \8ACB\81F3\4E0B\5217 URL \7BA1\7406\60A8\7684\8A02\95B1:')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131364819192028222)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4\7684\8CC7\6599\985E\578B')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131351977143028218)
,p_name=>'UPDATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\65B0')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131350536575028218)
,p_name=>'UPDATED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\65B0\6642\9593')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131293707542028201)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5347\7D1A\9032\884C\4E2D')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131294077450028201)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('Oracle APEX \6B63\5728\5347\7D1A\70BA\66F4\65B0\7248\672C. \6B64\8655\7406\4F5C\696D\901A\5E38\6703\5728 3 \5206\9418\5167\5B8C\6210.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131357337376028220)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8981\6C42\7684 URL \7981\6B62\4F7F\7528. \8ACB\6D3D\8A62\60A8\7684\7BA1\7406\54E1.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131378413681028226)
,p_name=>'USER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8005')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131401682063028233)
,p_name=>'USERNAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8005\540D\7A31')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131443087058028245)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\4F7F\7528\8005\540D\7A31\300D\592A\9577, \4E0D\53EF\8D85\904E %0 \500B\5B57\5143.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131385572126028228)
,p_name=>'USERS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8005')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131442644922028245)
,p_name=>'USER_EXISTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\4F7F\7528\8005\540D\7A31\300D\5DF2\7D93\5B58\5728.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131456409000028249)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8005 %0 \7684\8A2D\5B9A\6A94\5F71\50CF')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131318336836028208)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\81EA\52D5\5316 - %0')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131316818373028208)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7B2C %0 - %1 \9801 ')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131319766228028209)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'zh-tw'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131319887045028209)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'zh-tw'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693950
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131318735221028208)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B\7D44\614B - %0')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131318693704028208)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5171\7528\7684\52D5\614B LOV - %0')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131318430497028208)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\5B9A\7FA9 - %0')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131316983652028208)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\6D41\7A0B - %0 ')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131339034471028214)
,p_name=>'VALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6709\6548')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131330688211028212)
,p_name=>'VALIDATIONS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9A57\8B49')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131391384759028229)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A\503C')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131437603194028243)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A %0 \7684\503C')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131360251932028220)
,p_name=>'VERTICAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5782\76F4')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131351887558028218)
,p_name=>'VIEW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131385601326028228)
,p_name=>'VIEWS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6AA2\8996')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131392152170028230)
,p_name=>'VIEW_ALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5168\90E8\6AA2\8996')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131332059392028212)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8996\89BA\96B1\85CF\9023\7D50')
,p_is_js_message=>true
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131372861365028224)
,p_name=>'WARNING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8B66\544A')
,p_is_js_message=>true
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131351402144028218)
,p_name=>'WEEK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9031')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131347391763028217)
,p_name=>'WEEKLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6BCF\9031')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131351565223028218)
,p_name=>'WEEKS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9031')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131391427164028230)
,p_name=>'WELCOME_USER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B61\8FCE\4F7F\7528: %0')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131389684834028229)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767C\73FE\7121\6548\7684\503C, \8ACB\6AA2\67E5\8F38\5165\7684\8CC7\6599.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131389709550028229)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767C\73FE\7121\6548\7684\503C, \8ACB\6AA2\67E5\8F38\5165\7684\8CC7\6599.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131327553033028211)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\5230\7121\6548\7684\65E5\671F\503C, \8ACB\6AA2\67E5\65E5\671F\683C\5F0F.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131389524355028229)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767C\73FE\7121\6548\7684\6578\503C, \8ACB\6AA2\67E5\6578\5B57\683C\5F0F.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131338678926028214)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\767C\73FE\7121\6548\7684\6642\6233\503C, \8ACB\6AA2\67E5\6642\6233\683C\5F0F.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131363147823028221)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\9023\7D50 "%0". \8ACB\5728\591A\4F4D\5143\7D44\9805\76EE\4F7F\7528\96D9\5F15\865F, \6216\6AA2\67E5\9805\76EE\9577\5EA6\662F\5426\5728 30 \500B\4F4D\5143\7D44\4EE5\5167. \8ACB\4F7F\7528 v() \8A9E\6CD5\4F86\53C3\7167\8D85\904E 30 \500B\4F4D\5143\7D44\7684\9805\76EE.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131352909143028218)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B58\53D6\88AB %0 \5B89\5168\6027\6AA2\67E5\62D2\7D55')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131355434492028219)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F\7121\6CD5\4F7F\7528')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131353879695028219)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\61C9\7528\7A0B\5F0F.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131353926808028219)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F=%0  \5DE5\4F5C\5340=%1')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131354382979028219)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5B58\53D6\6B64\61C9\7528\7A0B\5F0F\6709\9650\5236, \8ACB\7A0D\5F8C\518D\8A66.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131354200966028219)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53EA\6709\61C9\7528\7A0B\5F0F\958B\767C\4EBA\54E1\624D\80FD\5B58\53D6\6B64\61C9\7528\7A0B\5F0F, \8ACB\7A0D\5F8C\518D\8A66.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131353454460028218)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-7744 \7121\6CD5\8655\7406\5206\652F\5230\50B3\56DE URL \7684\51FD\6578.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131353330391028218)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-7744 \7121\6CD5\8655\7406\5206\652F\5230\50B3\56DE\9801\9762\7684\51FD\6578.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131353663462028218)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-1430 \4E0D\652F\63F4\5F9E\9801\9762\8655\7406\4F5C\696D\986F\793A\547C\53EB: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131354789471028219)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-1018 \6E05\9664\6B65\9A5F\5FEB\53D6\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131353121713028218)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-1005 \4E0D\660E\7684\904B\7B97\985E\578B.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131354067766028219)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-1201 \672A\5728\81EA\8A02\8A8D\8B49\8A2D\5B9A\968E\6BB5\4F5C\696D ID.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131354176219028219)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762=%0')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131353776907028219)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-7620 \7121\6CD5\5224\65B7\61C9\7528\7A0B\5F0F\7684\5DE5\4F5C\5340 (%0).')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131334218620028213)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7DE8\8F2F')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131352872570028218)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-1802 \627E\4E0D\5230\9805\76EE id "%0"')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131352500920028218)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-1002 \5728\61C9\7528\7A0B\5F0F "%1" \4E2D\627E\4E0D\5230\9805\76EE "%0" \7684 ID.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131352608079028218)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\9810\671F\7684\932F\8AA4, \5728\61C9\7528\7A0B\5F0F\6216\9801\9762\5C64\7D1A\627E\4E0D\5230\9805\76EE\540D\7A31.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131353032091028218)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\5DF2\7D93\5728\7B2C\4E00\500B\8CC7\6599\9801\9762.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131369567318028223)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9805\76EE ID (%0) \4E0D\662F\76EE\524D\9801\9762\4E2D\5B9A\7FA9\7684\9805\76EE.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131327119750028211)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\900F\904E\5C07\5F15\6578\50B3\9001\81F3\61C9\7528\7A0B\5F0F\4F86\8A2D\5B9A\9805\76EE.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131327433910028211)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('(\672A\63D0\4F9B\7E3D\548C\6AA2\9A57)')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131326952472028211)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9805\76EE\82E5\642D\914D\300C\4F7F\7528\8005\5C64\7D1A\66F8\7C64\300D\7E3D\548C\6AA2\9A57, \5373\53EF\8A2D\5B9A\9805\76EE.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131326817955028211)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9805\76EE\82E5\642D\914D\300C\61C9\7528\7A0B\5F0F\5C64\7D1A\66F8\7C64\300D\7E3D\548C\6AA2\9A57, \5373\53EF\8A2D\5B9A\9805\76EE.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131327083231028211)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9805\76EE\82E5\642D\914D\300C\968E\6BB5\4F5C\696D\300D\7E3D\548C\6AA2\9A57, \5373\53EF\8A2D\5B9A\9805\76EE.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131326765802028211)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9805\76EE\6C92\6709\4FDD\8B77.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131354809916028219)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6C92\6709\9801\9762\8AAA\660E.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131342767254028215)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\5340 %0 \6C92\6709\5256\6790\65B9\5F0F\7DB1\8981 %1 \7684\6B0A\9650.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131353253131028218)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-1010 \5DF2\7D93\8D85\904E\9023\7D50\5230\5206\652F\9801\9762\63A5\53D7\8655\7406\5FAA\74B0\9650\5236. %0')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131309778494028206)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\7121\6CD5\4F7F\7528, \60A8\7121\6CD5\57F7\884C\9801\9762\6A23\5F0F.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131327345052028211)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\4F7F\7528 URL \4F86\547C\53EB\6B64\9801\9762, \6216\4F7F\7528 GET \6216 POST \4F86\986F\793A\7A0B\5E8F, \5FC5\9808\4F7F\7528\300C\9023\7D50\5230\5206\652F\9801\9762\300D\5206\652F\985E\578B\4F86\547C\53EB\5B83.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131412179203028236)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5617\8A66\5728\9805\76EE %0 \4E2D\5132\5B58\975E\6578\503C\6642\767C\751F\932F\8AA4. ')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131344402192028216)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5EAB\4E2D\6C92\6709\61C9\7528\7A0B\5F0F\7684\5256\6790\7DB1\8981 "%0".')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131344580481028216)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('INTERNAL \5DE5\4F5C\5340\4E2D\7684\5E33\6236\53EA\80FD\7528\65BC\5B58\53D6 &PRODUCT_NAME. <a href="%0">\7BA1\7406\670D\52D9</a>.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131352410710028218)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-1029 \7121\6CD5\5132\5B58\968E\6BB5\4F5C\696D\8CC7\8A0A  \968E\6BB5\4F5C\696D=%0 \9805\76EE=%1')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131355551909028219)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\505C\6B62\8FFD\8E64: %0')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131352704459028218)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\9810\671F\7684\932F\8AA4')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131363521678028221)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('update_substitution_cache \767C\751F\932F\8AA4: %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131355627912028219)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\63D0\4F9B\61C9\7528\7A0B\5F0F\548C\9801\9762\624D\80FD\6AA2\8996\8AAA\660E.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131377363239028225)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\81EA\52D5\5316.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131312867421028207)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\81EA\52D5\5316\67E5\8A62\932F\8AA4: %0')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131356742707028219)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5C07 %0 \500B\968E\6BB5\4F5C\696D\6C38\4E45\6E05\9664.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131298037558028202)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\57F7\884C %0 \7A0B\5F0F\78BC! \8CC7\6599\5EAB\4E0D\652F\63F4\6216\57F7\884C\8655\7406\53C3\6578 MLE_LANGUAGES \672A\555F\7528\6B64\7A0B\5F0F\78BC.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131295666621028201)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\8CC7\6599\5EAB\7248\672C\6C92\6709\591A\8A9E\8A00\5F15\64CE!')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131334810076028213)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F\96C6\5408\9663\5217\4E0D\80FD\662F\7A7A\503C')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131334615608028213)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6307\5B9A\7684\6210\54E1\5C6C\6027\7DE8\865F %0 \7121\6548.  \5C6C\6027\7DE8\865F\5FC5\9808\4ECB\65BC 1 \5230 %1 \4E4B\9593')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131335154525028213)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F\96C6\5408\5B58\5728')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131334926017028213)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96C6\5408\540D\7A31\4E0D\80FD\662F\7A7A\503C')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131335011244028213)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96C6\5408\540D\7A31\4E0D\80FD\8D85\904E 255 \500B\5B57\5143')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131334474054028213)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F\96C6\5408 %0 \4E0D\5B58\5728')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131335297797028213)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E38\6A19\5C1A\672A\958B\555F')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131334564936028213)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\61C9\7528\7A0B\5F0F\300D\96C6\5408 %1 \4E2D\6C92\6709\6210\54E1\9806\5E8F %0')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131334743726028213)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\7528\7A0B\5F0F\96C6\5408 "%1" \4E2D\6C92\6709\6210\54E1\9806\5E8F %0')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131287534255028199)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ECDSA \4E0D\652F\63F4 %0 \6F14\7B97\6CD5.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131287245991028199)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4 %0 \6A62\5713\66F2\7DDA.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131412974553028236)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\7CFB\7D71\4E0D\652F\63F4\52A0\5BC6\7684\51FD\6578 "%0".')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131465271138028252)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F14\52A9\529F\80FD\5DF2\6E2C\8A66')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131356241044028219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\95DC\9589')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131356372919028219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\81EA\8A02\9078\9805')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131356415160028219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9810\8A2D')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131356519583028219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\986F\793A')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131356617388028219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96B1\85CF')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131356014454028219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\52FE\9078\60A8\60F3\5305\62EC\5728\6B64\9801\9762\4E2D\7684\5340\57DF.  \5982\679C\60A8\4E0D\5728\6B63\78BA\7684\61C9\7528\7A0B\5F0F\76F8\95DC\8CC7\8A0A\74B0\5883\4E2D, \6216\8005\6C92\6709\6B63\78BA\7684\6B0A\9650, \5C07\4E0D\6703\986F\793A\52FE\9078\7684\5340\57DF.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131356100669028219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\9801\9762\4E0D\80FD\81EA\8A02.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131465586671028252)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\53EF\4EE5\8B8A\66F4\300C\4E3B\984C\6A23\5F0F\300D, \4EE5\500B\4EBA\5316\6B64\61C9\7528\7A0B\5F0F\7684\5916\89C0. \8ACB\7531\4E0B\65B9\6E05\55AE\4E2D\9078\53D6\4E00\500B\300C\4E3B\984C\6A23\5F0F\300D, \7136\5F8C\6309\4E00\4E0B\300C\5957\7528\8B8A\66F4\300D.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131466316757028252)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5340\57DF\986F\793A')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131465419254028252)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\61C9\7528\7A0B\5F0F\9810\8A2D\6A23\5F0F')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131465345180028252)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5916\89C0 ')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131409550531028235)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\805A\7E3D %0 \4E2D\6240\53C3\7167\7684\8CC7\6599\6B04\7D22\5F15\4E0D\5B58\5728.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131302215051028203)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \683C\5F0F\4E0D\652F\63F4\9644\52A0\8CC7\6599\532F\51FA.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131265264338028193)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \683C\5F0F\4E0D\652F\63F4 CLOB \8F38\51FA.')
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131409207398028235)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\5206\6BB5\9700\8981\5728\8CC7\6599\6B04\9663\5217\7684\958B\982D.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131409318550028235)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E2D\6240\53C3\7167\7684\8CC7\6599\6B04\7FA4\7D44\7D22\5F15\4E0D\5B58\5728.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131316453696028208)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\532F\51FA')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131323656752028210)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528 ORDS \4F5C\70BA\5217\5370\4F3A\670D\5668\6642, \532F\51FA\683C\5F0F\5FC5\9808\662F XML.')
,p_version_scn=>2693952
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131409622464028235)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6A19\793A %0 \4E2D\6240\53C3\7167\7684\8CC7\6599\6B04\7D22\5F15\4E0D\5B58\5728.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131313021096028207)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\532F\51FA\683C\5F0F: %0')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131409458958028235)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E2D\6240\53C3\7167\7684\7236\9805\7FA4\7D44\7D22\5F15\4E0D\5B58\5728.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131434622665028242)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \8868\683C\7684 %1 \8CC7\6599\6B04\662F "GENERATED ALWAYS" \8B58\5225\8CC7\6599\6B04. \8ACB\78BA\5B9A\300C\8A2D\5B9A\300D\5C0D\8A71\65B9\584A\4E2D\6C92\6709\4EFB\4F55\4F86\6E90\8CC7\6599\6B04\5C0D\61C9\81F3 %1 \8CC7\6599\6B04.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131346219161028216)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6307\5B9A\7684\78BA\8A8D\9593\9694\592A\5C0F.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131346359129028216)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C1A\70BA\91DD\5C0D\8CC7\6599\8F09\5165\63D0\4F9B\4EFB\4F55\8CC7\6599\6B04.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131347641281028217)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\4EFB\4F55\8CC7\6599\5217\9078\53D6\5668 "%0" \7684\8CC7\6599\6B04. \8ACB\5617\8A66\81EA\52D5\5075\6E2C\6216\8907\67E5 JSON \7D50\69CB.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131357069062028219)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728 XLSX \6A94\6848\4E2D\627E\4E0D\5230\4EFB\4F55\5DE5\4F5C\8868.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131302194512028203)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8981\6C42\8981\5C0B\627E\7684\968E\5C64\5C64\7D1A\6578 (%0) \8D85\904E %1 \500B\7684\4E0A\9650.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131356995181028219)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6307\5B9A\7684\5DE5\4F5C\8868\4E0D\5728 XLSX \6A94\6848\4E2D.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131335346022028213)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5EAB\4E2D\7684\76EE\524D\8CC7\6599\7248\672C\81EA\4F7F\7528\8005\8D77\59CB\66F4\65B0\8655\7406\4F5C\696D\5F8C\5DF2\7D93\8B8A\66F4.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131338252508028214)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66F4\65B0\5831\8868\8CC7\6599\6B04\6642\767C\751F\932F\8AA4: %0')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131448799465028247)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5C07 %0 \8F49\63DB\6210 SDO_GEOMETRY.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131385276378028228)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5C07\8CC7\6599\985E\578B %1 \7684\8CC7\6599\6B04 %0 \8F49\63DB\70BA VARCHAR2!')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131392667273028230)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\8CC7\6599\4F86\6E90\4E2D\627E\4E0D\5230\66FF\5C6C\6027 "%1" \6307\5B9A\7684\8CC7\6599\6B04 "%0"!')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131328728078028211)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\591A\91CD\503C\8CC7\6599\6B04\4E0D\652F\63F4\7BE9\9078\985E\578B %0.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131452235257028248)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\4ECB\65BC\300D\7BE9\9078\689D\4EF6\7121\6548.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131307810529028205)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\8CC7\6599\6B04 %0\3001\8CC7\6599\5217 #%1 \4E2D\627E\4E0D\5230 %2 \503C.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131304579001028204)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04 %0 \6216\8CC7\6599\5217 #%1 \4E0D\5B58\5728.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131291158962028200)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6307\5B9A\7684\503C\6E05\55AE\985E\578B\7121\6548.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131291007726028200)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\67E5\8A62\985E\578B\7121\6548. \67E5\8A62\985E\578B\5FC5\9808\662F\8868\683C\3001SQL \67E5\8A62, \6216\50B3\56DE SQL \67E5\8A62\7684 PL/SQL \51FD\6578.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131385305222028228)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\7121\6CD5\5256\6790 SQL \67E5\8A62!'),
'%0'))
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131392716663028230)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728 SQL \6558\8FF0\53E5\4E2D\627E\4E0D\5230\66FF\5C6C\6027 "%1" \6307\5B9A\7684\8CC7\6599\6B04\4F4D\7F6E %0!')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131282750638028198)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\591A\91CD\503C\7BE9\9078\689D\4EF6\4E2D\4F7F\7528\4E86\592A\591A\9805\76EE.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131392587495028230)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6307\5B9A\5C6C\6027 "%0" \7684\8CC7\6599\6B04.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131290944917028200)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('PL/SQL \51FD\6578\4E3B\9AD4\672A\50B3\56DE\503C.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131408367609028235)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('REST \8CC7\6599\4F86\6E90\672A\5305\542B\8655\7406\6240\8981\6C42 DML \52D5\4F5C\7684\4F5C\696D.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131450084593028247)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7BC4\570D\7BE9\9078\50C5\652F\63F4 NUMBER\3001DATE \6216 TIMESTAMP \8CC7\6599\985E\578B.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131270915547028194)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8981\6C42\5931\6557: %0')
,p_version_scn=>2693941
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131274452451028195)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\8CC7\6599\5EAB\4E2D\7121\6CD5\9032\884C GeoJSON \8207 SDO_GEOMETRY \8F49\63DB (\8CC7\6599\6B04 %0).')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131277843468028196)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('XML \8CC7\6599\4F86\6E90\4E0D\652F\63F4 SDO_GEOMETRY \8F49\63DB (\8CC7\6599\6B04 %0).')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131301926304028203)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4\4EE5 %0 \5B57\5143\4F5C\70BA\591A\91CD\503C\5340\9694\7B26\865F.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131450118196028247)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5728\67E5\8A62\76F8\95DC\8CC7\8A0A\74B0\5883\4F7F\7528\6B64\51FD\6578.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131277907190028196)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\6B04\8CC7\6599\985E\578B\4E0D\7B26.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131311479756028206)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\8CC7\6599\4F86\6E90\4E0D\652F\63F4\8B8A\66F4\591A\500B\8CC7\6599\5217.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131290859505028200)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5167\90E8 ORDS OUT \9023\7D50\9650\5236\5DF2\8D85\904E. \8ACB\6E1B\5C11 DML \8CC7\6599\5217\6578\76EE.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131393544252028230)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\7121\6CD5\5256\6790\4F86\81EA\9060\7AEF\4F3A\670D\5668\7684 JSON \56DE\61C9: '),
'%0'))
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131290773691028200)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76F8\95DC\8CC7\8A0A\74B0\5883\985E\578B\4E0D\660E\6216\4E0D\6B63\78BA.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131314886101028207)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4\7684\53EF\8B80\53D6\532F\51FA\5143\4EF6: %0')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131412827140028236)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5256\6790\5668\4E0D\652F\63F4\6B64\6A94\6848\985E\578B.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131363653340028221)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6388\6B0A\7684\5B58\53D6 (\672A\8A2D\5B9A wwv_flow_api.set_credentials).')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131338575433028214)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DE5\4F5C\5340\5DF2\7D93\5B58\5728, \56E0\6B64\672A\5EFA\7ACB.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131338494725028214)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\5EFA\7ACB\4F7F\7528\8005\7FA4\7D44, \56E0\70BA\5DF2\7D93\5B58\5728.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131349884478028217)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\5230 %0 \7684\91CD\8907\4F7F\7528\8005\540D\7A31.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131349974240028217)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F09\5165\4F7F\7528\8005\6642\767C\751F\932F\8AA4. \5728\4F7F\7528\8005 %0 \5931\6557.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131360766610028221)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\61C9\8A72\5DF2\7D93\8F09\5165 %0 \500B\4F7F\7528\8005.')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131360577348028221)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5BC6\78BC')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131360675921028221)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B0A\9650')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131360345483028220)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F7F\7528\8005\540D\7A31')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131440729407028244)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5448\73FE\9801\9762\9805\76EE #COMPONENT_NAME# \6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131355721116028219)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\986F\793A\9801\9762\9805\76EE, \56E0\70BA\5C1A\672A\958B\555F HTML \8868\55AE.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131314130672028207)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904B\7B97\9801\9762\9805\76EE #COMPONENT_NAME# \7684\9805\76EE\9810\8A2D\503C\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131355083053028219)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9801\9762\9805\76EE #COMPONENT_NAME# \7684\9805\76EE\5F8C\7E8C\904B\7B97\6709\932F\8AA4.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131354918341028219)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\904B\7B97\9801\9762\9805\76EE #COMPONENT_NAME# \7684\9805\76EE\4F86\6E90\503C\6642\767C\751F\932F\8AA4.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131331731737028212)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6388\6B0A\7684\5B58\53D6.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131281283396028197)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%1 \7684\503C %0 \4E0D\662F\6709\6548\7684 JSON \9663\5217.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131355203790028219)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4 JavaScript.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131355382164028219)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6E05\55AE')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131355921279028219)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\8D77\59CB\67E5\8A62.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131363913155028222)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0D\652F\63F4\66F4\65B0 %0.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131357489875028220)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684\9805\76EE ID: %0 ')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131385100906028228)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\9805\76EE\6C92\6709\76F8\95DC\8AAA\660E.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131346977376028217)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5716\8868\67E5\8A62\7522\751F\5931\6557. \8ACB\6AA2\67E5\300C\4F86\6E90\300D\548C\300C\8CC7\6599\6B04\5C0D\61C9\300D\8A2D\5B9A\503C.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131348278686028217)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684 p_mail_id \53C3\6578\503C: %0')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131384902133028228)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\4F7F\7528\300C\6536\4EF6\8005\300D\6216\300C\56DE\8986\300D\4F5C\70BA\300C\5BC4\4EF6\8005\300D\5730\5740, \56E0\70BA\9019\4E9B\5305\542B\591A\500B\96FB\5B50\90F5\4EF6\5730\5740.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131469833611028253)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\5DF2\7D93\8D85\51FA\6BCF\4E00\5DE5\4F5C\5340\7684\96FB\5B50\90F5\4EF6\8A0A\606F\6578\76EE\4E0A\9650.  \8ACB\6D3D\8A62\7BA1\7406\54E1.')
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131326466735028210)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\5F9E\61C9\7528\7A0B\5F0F\968E\6BB5\4F5C\696D\5167\547C\53EB\6B64\7A0B\5E8F.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131348157590028217)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\63D0\4F9B\7D66 %0 \53C3\6578\7684\503C\662F\7A7A\503C.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131406253610028234)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728\61C9\7528\7A0B\5F0F %1 \4E2D\627E\4E0D\5230\96FB\5B50\90F5\4EF6\6A23\677F "%0".')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131482763159028257)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('SMTP_HOST_ADDRESS \57F7\884C\8655\7406\53C3\6578\5FC5\9808\8A2D\70BA\50B3\9001\90F5\4EF6.')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131347527891028217)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\60A8\5FC5\9808\8F38\5165\8A0A\606F\6536\4EF6\8005\624D\80FD\50B3\9001\90F5\4EF6.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131472299527028254)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\8207\8A2D\5B9A\7684\96FB\5B50\90F5\4EF6\4F3A\670D\5668\5EFA\7ACB SMTP \9023\7DDA.')
,p_version_scn=>2693977
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131447565910028246)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6548\7684 Ajax \547C\53EB!')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131331437284028212)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C1A\672A\66FF Plug-in %0 \5B9A\7FA9 Ajax \51FD\6578')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131438063732028243)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C1A\672A\66FF Plug-in %0 \5B9A\7FA9\57F7\884C\51FD\6578')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131331594220028212)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5C1A\672A\66FF Plug-in %0 \5B9A\7FA9\5448\73FE\51FD\6578')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131448462382028247)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('REST \8CC7\6599\4F86\6E90 Plug-In "%0" \4E0D\5305\542B\300C\529F\80FD\300D\51FD\6578.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131448342870028247)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('REST \8CC7\6599\4F86\6E90 Plug-In "%0" \4E0D\5305\542B DML \51FD\6578.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131448579603028247)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('REST \8CC7\6599\4F86\6E90 Plug-In "%0" \4E0D\5305\542B\57F7\884C\51FD\6578.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131448653207028247)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('REST \8CC7\6599\4F86\6E90 Plug-In "%0" \4E0D\5305\542B\64F7\53D6\51FD\6578.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131328908904028211)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8655\7406 Plug-in \6642, PLSQL \7A0B\5F0F\78BC\767C\751F\932F\8AA4.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131337552243028214)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\6307\5B9A\503C.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131370510979028223)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5C07\8CC7\6599\985E\578B %0 \8F49\63DB\70BA VARCHAR2!')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131458715433028250)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5728 SQL \6558\8FF0\53E5\4E2D\627E\4E0D\5230\66FF\5C6C\6027 "%1" \6307\5B9A\7684\8CC7\6599\6B04 "%0"!')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131286070949028199)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%1 \7684\503C %0 \4E0D\662F\6709\6548\7684 JSON \9663\5217.')
,p_version_scn=>2693946
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131435933141028243)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5FC5\9808\5C0D %0 \6307\5B9A\503C\6E05\55AE (LOV) \67E5\8A62\6216\5177\540D\7684\503C\6E05\55AE.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131437520333028243)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \4E4B LOV SQL \67E5\8A62\4E2D\6240\9078\7684\8CC7\6599\6B04\6578\76EE\4E0D\6B63\78BA. \8ACB\53C3\95B1\7BC4\4F8B, \77AD\89E3\6709\6548\7684\6558\8FF0\53E5.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131458502960028250)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\672A\6307\5B9A\5C6C\6027 "%0" \7684\8CC7\6599\6B04.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131487712414028259)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\70BA\5C6C\6027 "%1" \8F38\5165\7684\503C %0 \4E0D\662F\6578\5B57.')
,p_version_scn=>2693980
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131441028665028244)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \5728 SQL \6558\8FF0\53E5\4E2D\7684\8CC7\6599\985E\578B\4E0D\6B63\78BA. \8CC7\6599\6B04# %1 \70BA %2, \4F46\61C9\70BA %3.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131458695412028250)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\66FF\5C6C\6027 "%1" \6307\5B9A\4E4B\8CC7\6599\6B04 "%0" \7684\8CC7\6599\985E\578B\70BA %2, \4F46\61C9\70BA %3.')
,p_version_scn=>2693975
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131328172004028211)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\627E\4E0D\5230\5831\8868\7248\9762\914D\7F6E.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131315797938028207)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 \8D85\904E\80CC\666F\57F7\884C\9650\5236.')
,p_version_scn=>2693949
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131266044824028193)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\57F7\884C\53E6\4E00\500B %0 \57F7\884C.')
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131265911758028193)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\5C0D\76F8\95DC\8CC7\8A0A\74B0\5883 %1 \57F7\884C\53E6\4E00\500B %0 \57F7\884C.')
,p_version_scn=>2693938
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131280983109028197)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E0A\50B3\7684\6A94\6848\5728 %0 \57F7\884C\7684\5DE5\4F5C\968E\6BB5\4F5C\696D\4E2D\4E0D\53EF\898B.')
,p_version_scn=>2693943
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131393406458028230)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4EE5 REST \8CC7\6599\4F86\6E90\70BA\4F9D\64DA\7684\5831\8868\4E0D\80FD\4F7F\7528\904B\7B97\7E3D\548C\529F\80FD.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131355181466028219)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('ERR-2904 \7121\6CD5\8A2D\5B9A\6377\5F91\503C.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131360130868028220)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\932F\8AA4: \4E0D\660E\7684\6377\5F91\985E\578B.')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131297885929028202)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\641C\5C0B\67E5\8A62\592A\9577.')
,p_version_scn=>2693948
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131349252974028217)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\5F9E\61C9\7528\7A0B\5F0F %0 \64F7\53D6 authentication_scheme.')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131357279258028220)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\64F7\53D6\5143\4EF6 %0.')
,p_version_scn=>2693958
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131427562721028240)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D\7684\968E\6BB5\4F5C\696D\5DF2\7D93\6709\8A72\79DF\7528\6236 ID.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131360437719028220)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\96FB\5B50\90F5\4EF6')
,p_version_scn=>2693960
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131487278552028258)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8A8D\8B49\5931\6557.')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131387852067028228)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4E00\6216\591A\500B apex_util.g_request_cookies \4E2D\8A2D\5B9A\7684 Cookie \5305\542B\7121\6548\7684\503C.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131369753034028223)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('UDDI \767B\9304\7684\56DE\61C9\7121\6548.')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131329076617028211)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8F38\5165\7684 URL \672A\50B3\56DE\6709\6548\7684 WSDL \6587\4EF6.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131331865832028212)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('WSDL \6587\4EF6\5305\542B\591A\500B SOAP \9023\7D50. &PRODUCT_NAME. \50C5\652F\63F4\5167\542B\4E00\500B SOAP \9023\7D50\7684 WSDL. \6309\4E00\4E0B\300C\624B\52D5\5EFA\7ACB Web \670D\52D9\53C3\7167\300D, \5373\53EF\7E7C\7E8C\5EFA\7ACB\6B64\670D\52D9\7684\53C3\7167.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131407436578028234)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\670D\52D9\7684\56DE\61C9\4E0D\662F XML.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131487100073028258)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('OAuth \5B58\53D6\6B0A\6756\7121\6CD5\4F7F\7528\6216\5DF2\904E\671F.')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131451606022028248)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5DF2\7D93\8D85\51FA\6BCF\4E00\5DE5\4F5C\5340\7684 Web \670D\52D9\8981\6C42\6578\76EE\4E0A\9650. \8ACB\6D3D\8A62\7BA1\7406\54E1.')
,p_version_scn=>2693974
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131487373446028258)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\4F3A\670D\5668\56DE\61C9\4E0D\652F\63F4\7684 OAuth \6B0A\6756\985E\578B.')
,p_version_scn=>2693978
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131331267382028212)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('WSDL \6587\4EF6\672A\5305\542B SOAP \7684\9023\7D50, \6240\4EE5\7121\6CD5\65B0\589E\53C3\7167.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131326660981028211)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64 WSDL \9700\8981\8A8D\8B49\8B49\660E\8CC7\6599. \8ACB\5728\4E0B\65B9\8F38\5165\4F7F\7528\8005\540D\7A31\548C\5BC6\78BC.')
,p_version_scn=>2693953
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131337679994028214)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5448\73FE\5F15\64CE\7121\6CD5\77AD\89E3 WSDL \6587\4EF6. \6309\4E00\4E0B\300C\624B\52D5\5EFA\7ACB Web \670D\52D9\53C3\7167\300D, \5373\53EF\7E7C\7E8C\5EFA\7ACB\6B64\670D\52D9\7684\53C3\7167.')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131410419153028235)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\7121\6CD5\8655\7406\66F4\65B0.')
,p_version_scn=>2693970
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131436205689028243)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\503C\6E05\55AE\300D\7684\50B3\56DE\8CC7\6599\6B04\548C\986F\793A\8CC7\6599\6B04\76F8\540C!')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131436143219028243)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\300C\503C\6E05\55AE\300D\6C92\6709\50B3\56DE\8CC7\6599\6B04.')
,p_version_scn=>2693973
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131363810238028222)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\64F7\53D6\8CC7\6599\6B04\503C\767C\751F\932F\8AA4: %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131388791669028229)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\76EE\524D\7684\5217\8868\5316\8868\55AE\8CC7\6599\592A\820A; \4F86\6E90\8CC7\6599\5DF2\4FEE\6539\904E.<br/> \8ACB\6309\4E00\4E0B<strong><a href="%0">\6B64\8655</a></strong>\4F86\6368\68C4\60A8\7684\8B8A\66F4, \7136\5F8C\5F9E\8CC7\6599\5EAB\91CD\65B0\8F09\5165\8CC7\6599.')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131343962473028216)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5224\65B7\5206\9801\5B57\4E32\6642\767C\751F\932F\8AA4')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131343874424028216)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\7121\6CD5\5224\65B7\67E5\8A62\6A19\984C:'),
'%0'))
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131344026148028216)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\57F7\884C\5831\8868\8868\5C3E\53D6\4EE3\6642\767C\751F\932F\8AA4')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131344124024028216)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\7121\6CD5\5256\6790 SQL \67E5\8A62:'),
'%0',
'%1'))
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131350282254028217)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8981\6C42\7684\8CC7\6599\5217\6578\76EE\4E0B\9650: %0, \627E\5230\4F46\672A\986F\793A\7684\8CC7\6599\5217\6578\76EE: %1')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131346615736028216)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\67E5\8A62\8CC7\6599\6B04 #%0 (%1) \7121\6548, \4F7F\7528 HTML \7684\8CC7\6599\6B04\9700\8981\5225\540D\540D\7A31')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131363725836028221)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\53D6\5F97\67E5\8A62\6A19\984C\6642\767C\751F\932F\8AA4: %0')
,p_version_scn=>2693963
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131344291498028216)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\5831\8868\932F\8AA4:'),
'%0'))
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131384365429028227)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6309\6B64\8CC7\6599\6B04\6392\5E8F')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131346721868028216)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'zh-tw'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\7121\6CD5\5256\6790\67E5\8A62, \8ACB\6AA2\67E5\60A8\7684\67E5\8A62\8A9E\6CD5.'),
'(%0)',
'</p>'))
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131388867856028229)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\6B64\8868\55AE\5305\542B\672A\5132\5B58\7684\8B8A\66F4. \82E5\4E0D\8981\5132\5B58\8B8A\66F4, \8ACB\6309\300C\78BA\5B9A\300D\7E7C\7E8C\9032\884C\4F5C\696D. ')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131393381458028230)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\9078\64C7\7684\8CC7\6599\4F86\6E90\4E0D\652F\63F4\5831\8868\5206\9801\914D\7F6E (%0).')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131346575271028216)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\67E5\8A62\8CC7\6599\6B04 #%0 (%1) \7121\6548, \8ACB\4F7F\7528\8CC7\6599\6B04\5225\540D')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131350370950028218)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217 %0 - %1 , \5171\8D85\904E %2')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131390870912028229)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 - %1, \8D85\904E %2')
,p_version_scn=>2693964
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131350198566028217)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\8CC7\6599\5217 %0 - %1, \5171 %2')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131330972006028212)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('%0 - %1, \5171 %2')
,p_version_scn=>2693954
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131344330202028216)
,p_name=>'Y'
,p_message_language=>'zh-tw'
,p_message_text=>'Y'
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131351646647028218)
,p_name=>'YEAR'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E74')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131343569674028215)
,p_name=>'YEARS'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\5E74')
,p_version_scn=>2693957
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(131388909959028229)
,p_name=>'YES'
,p_message_language=>'zh-tw'
,p_message_text=>unistr('\662F')
,p_version_scn=>2693964
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
 p_id=>wwv_flow_imp.id(109678305570583962.4477)
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
 p_id=>1.4477
,p_name=>unistr('\8A0A\606F')
,p_alias=>'MESSAGES'
,p_step_title=>unistr('\8A0A\606F')
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
