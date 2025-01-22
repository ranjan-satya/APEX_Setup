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
,p_default_application_id=>4543
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4543 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4543
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131493064339035365')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'ro'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4543)
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
 p_id=>wwv_flow_imp.id(4543)
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
 p_id=>wwv_flow_imp.id(728504220438374.4543)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4543)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4543)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4543)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4543)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4543)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4543)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4543)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4543)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4543)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4543)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4543)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4543)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4543)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4543)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4543)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4543)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.ro'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4543)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4543)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4543)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4543)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4543)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4543)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4543)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.ro'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4543)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4543)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4543)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4543)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4543)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4543)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4543)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.ro'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4543)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4543)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4543)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4543)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4543)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4543)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4543)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4543)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4543)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4543)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4543)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4543)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4543)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4543)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4543)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4543)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4543)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4543)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4543)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.ro'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4543)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4543)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4543)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4543)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4543)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4543)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4543)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4543)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4543)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4543)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4543)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4543)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4543)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4543)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4543)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4543)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4543)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.ro'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4543)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4543)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4543)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4543)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4543)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4543)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4543)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4543)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4543)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4543)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4543)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4543)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4543)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4543)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4543)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4543)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4543)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.ro'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4543)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4543)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4543)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4543)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4543)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4543)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4543)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4543)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4543)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4543)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4543)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4543)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4543)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4543)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4543)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.ro'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4543)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4543)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4543)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4543)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4543)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4543)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4543)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4543)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4543)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4543)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4543)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4543)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4543)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4543)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4543)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4543)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4543)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4543)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4543)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4543)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4543)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4543)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4543)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4543)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4543)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4543)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4543)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4543)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4543)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4543)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4543)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4543)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4543)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4543)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4543)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4543)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4543)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4543)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4543)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4543)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4543)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4543)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4543)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4543)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4543)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4543)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4543)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4543)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4543)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4543)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4543)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4543)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4543)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4543)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4543)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4543)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4543)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4543)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4543)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4543)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4543)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4543)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4543)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4543)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4543)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4543)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4543)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4543)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4543)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4543)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4543)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4543)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4543)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4543)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4543)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4543)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4543)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4543)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4543)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4543)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4543)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4543)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4543)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4543)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4543)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4543)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4543)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4543)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4543)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4543)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4543)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4543)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4543)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4543)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4543)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4543)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4543)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4543)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4543)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4543)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4543)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4543)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4543)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4543)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4543)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4543)
,p_page_name=>'winlov'
,p_page_title=>unistr('Dialog c\0103utare')
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
,p_find_button_text=>unistr('C\0103utare')
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>unistr('\00CEnchidere')
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>unistr('\00CEnainte &gt;')
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>unistr('&lt; \00EEnapoi')
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>unistr('<div class="a-PopupLOV-pagination">R\00E2ndurile #FIRST_ROW# - #LAST_ROW#</div>')
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
 p_id=>wwv_flow_imp.id(649611609668764506.4543)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4543)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4543)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4543)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4543)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4543)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4543)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4543)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4543)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4543)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4543)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4543)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4543)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4543)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4543)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4543)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4543)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4543)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4543)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4543)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4543)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4543)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4543)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4543)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4543)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4543)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4543)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4543)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4543)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4543)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4543)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4543)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4543)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4543)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4543)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4543)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4543)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4543)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4543)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4543)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4543)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4543)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4543)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4543)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4543)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4543)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4543)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4543)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4543)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4543)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4543)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4543)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4543)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4543)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4543)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4543)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4543)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4543)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4543)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4543)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4543)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4543)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4543)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4543)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4543)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4543)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4543)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4543)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4543)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4543)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4543)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4543)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4543)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4543)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4543)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4543)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4543)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4543)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4543)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4543)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4543)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4543)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4543)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4543)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4543)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4543)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4543)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4543)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4543)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4543)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4543)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4543)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4543)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4543)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4543)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4543)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4543)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4543)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4543)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4543)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4543)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4543)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4543)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4543)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4543)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4543)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4543)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4543)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4543)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4543)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4543)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4543)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4543)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4543)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4543)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4543)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4543)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4543)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4543)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4543)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4543)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4543)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4543)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4543)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4543)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4543)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4543)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4543)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4543)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4543)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4543)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4543)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4543)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4543)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4543)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4543)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4543)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4543)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4543)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4543)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4543)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4543)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4543)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4543)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4543)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4543)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4543)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4543)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4543)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4543)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4543)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4543)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4543)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4543)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4543)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4543)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4543)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4543)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4543)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4543)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4543)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4543)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4543)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4543)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4543)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4543)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4543)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4543)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4543)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4543)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4543)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4543)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4543)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4543)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4543)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4543)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4543)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4543)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4543)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4543)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4543)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4543)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4543)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4543)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4543)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4543)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4543)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4543)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4543)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4543)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4543)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4543)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4543)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4543)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4543)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4543)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4543)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4543)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4543)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4543)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4543)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4543)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4543)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4543)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4543)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4543)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4543)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4543)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4543)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4543)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4543)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4543)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4543)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4543)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4543)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4543)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4543)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4543)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4543)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4543)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4543)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4543)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4543)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4543)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4543)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4543)
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
 p_id=>wwv_flow_imp.id(128625705932027352)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'ro'
,p_message_text=>'Coloana %0'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128610363292027347)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'ro'
,p_message_text=>'Administrator'
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128610231309027347)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'ro'
,p_message_text=>'Nume de utilizator'
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128672950597027366)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'ro'
,p_message_text=>'Acces interzis'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128629837140027353)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'ro'
,p_message_text=>'Contul dvs. %0 a fost creat.'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128613026037027348)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'ro'
,p_message_text=>'Contul este blocat.'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128597584574027343)
,p_name=>'AM_PM'
,p_message_language=>'ro'
,p_message_text=>'AM / PM'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128580302841027338)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'ro'
,p_message_text=>unistr('link pt. ac\0163iune')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128580243473027338)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'ro'
,p_message_text=>unistr('link pt. caset\0103 de dialog')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128744630631027388)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'ro'
,p_message_text=>'Comutare %0'
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128752414719027390)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'ro'
,p_message_text=>'(Activ)'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128557239993027331)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'ro'
,p_message_text=>'Chat golit'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128557196311027331)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'ro'
,p_message_text=>'Golire chat'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128553702764027330)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'ro'
,p_message_text=>'Acceptare'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128553896713027330)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'ro'
,p_message_text=>'Refuzare'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128553552544027330)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'ro'
,p_message_text=>unistr('Istoric conversa\0163ii')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128556957301027331)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'ro'
,p_message_text=>'Copiat'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128557023012027331)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'ro'
,p_message_text=>unistr('Copiat \00EEn clipboard')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128556731556027331)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'ro'
,p_message_text=>'Copiere'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128556853218027331)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'ro'
,p_message_text=>unistr('Copiere \00EEn clipboard')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128554286784027331)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'ro'
,p_message_text=>'Asistent'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128554661345027331)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'ro'
,p_message_text=>unistr('Inteligen\0163a artificial\0103 este dezactivat\0103 la nivel de spa\0163iu de lucru sau de instan\0163\0103.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128593909476027342)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'ro'
,p_message_text=>unistr('Serviciul de inteligen\0163\0103 artificial\0103 generativ\0103 cu ID-ul (sau ID-ul static) dat nu a fost g\0103sit.')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128592646665027342)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare de autentificare sau acces interzis (HTTP-%1) pentru adresa URL %0. Verifica\0163i configura\0163ia serviciului Generative AI %2.')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128572453260027336)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Cererea HTTP pt. serviciul de inteligen\0163\0103 artificial\0103 generativ\0103, de la %0, a e\015Fuat, cu codul HTTP-%1: %2')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128596813506027343)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la cererea HTTP c\0103tre serviciul Generative AI, pt. plug-inul %0, \00EEn modul %1. Verifica\0163i configura\0163ia serviciului Generative AI.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128559670539027332)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Exemple'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128558029941027332)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'ro'
,p_message_text=>'Asistent'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128559440926027332)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128557940871027332)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'ro'
,p_message_text=>'Dvs.'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128588616897027341)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>unistr('OCI Generative AI nu permite \00EEn acest moment experien\0163a de chat cu mai multe mesaje.')
,p_version_scn=>2693302
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128568549593027335)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea promptului %0 pentru aplica\0163ia %1. Verifica\0163i dac\0103 Generatorul de aplica\0163ii este disponibil \00EEn aceast\0103 instan\0163\0103.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128573619335027336)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a putut procesa r\0103spunsul pentru serviciul de inteligen\0163\0103 artificial\0103 %0, r\0103spuns %1')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128579838279027338)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>'Trimitere mesaj'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128568169464027335)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la serviciul de inteligen\0163\0103 artificial\0103 din back-end %0')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128553961561027330)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Mesaj'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128554081061027330)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'ro'
,p_message_text=>unistr('Introduce\0163i mesajul dvs. aici')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128557355246027331)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'ro'
,p_message_text=>'Avatar utilizator'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128557462245027331)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'ro'
,p_message_text=>unistr('Utiliza\0163i acest element')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128554159814027330)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Ave\0163i un mesaj netrimis, sunte\0163i sigur?')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128723118559027381)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Apelul Ajax a returnat eroarea de server %0 pentru %1.'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128650287722027359)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'ro'
,p_message_text=>unistr('Aliasul de aplica\0163ie "%0" nu poate fi convertit la un ID de aplica\0163ie unic.')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128639035894027356)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-1816 Eroare nea\015Fteptat\0103 la convertirea aliasului de aplica\0163ie p_flow_alias_or_id (%0).')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128736410253027385)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Suma de control a aplica\0163iei furnizeaz\0103 un mod simplu de a stabili dac\0103 aceea\015Fi aplica\0163ie este implementat\0103 \00EEn spa\0163iile de lucru. Pute\0163i compara aceast\0103 sum\0103 de control pentru a stabili dac\0103 exist\0103 o potrivire. ')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128623090893027351)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea func\0163iei de autentificare.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128605085832027346)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea func\0163iei de autentificare.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128776957553027397)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'ro'
,p_message_text=>unistr('Numele de tenant %0, returnat de Oracle Cloud Identity Management, nu este autorizat pentru domeniul %1!<br/><a href="&LOGOUT_URL.">Reconecta\0163i-v\0103</a> \015Fi specifica\0163i un nume de tenant autorizat sau modifica\0163i adresa URL.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128601196772027344)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'ro'
,p_message_text=>unistr('Contul dvs. "%0" nu are privilegiile de dezvoltare necesare (DB_DEVELOPER sau DB_ADMINISTRATOR)<br/>pentru spa\0163iul de lucru "%1"! <a href="&LOGOUT_URL.">Reconecta\0163i-v\0103</a> dup\0103 acordarea privilegiilor.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128597719000027343)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'ro'
,p_message_text=>unistr('Numele de tenant returnat de Oracle Cloud Identity Management nu este autorizat pentru spa\0163iul de lucru curent!<br/><a href="&LOGOUT_URL.">Reconecta\0163i-v\0103</a> \015Fi specifica\0163i un nume de tenant autorizat.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128601251108027344)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'ro'
,p_message_text=>unistr('Din motive de securitate, rularea aplica\0163iilor din acest spa\0163iu de lucru prin domeniul din URL nu este permis\0103.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128622780890027351)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Cere\0163i DBA s\0103 ruleze $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128622603689027351)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'ro'
,p_message_text=>unistr('Pachetul SYS.DBMS_LDAP nu exist\0103 sau este nevalid.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128622548500027351)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea edit\0103rii func\0163iei utilizator LDAP.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128622830081027351)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea autentific\0103rii LDAP.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128623637368027351)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare \00EEn argumentul p_flow_page pentru procedura login_page.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128623286358027351)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'ro'
,p_message_text=>unistr('p_session nevalid \00EEn wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128674509274027366)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'ro'
,p_message_text=>unistr('Argument cu format gre\015Fit pentru wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128623366528027351)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'ro'
,p_message_text=>unistr('Nume de utilizator nul trecut c\0103tre procedura de conectare.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128610113009027347)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'ro'
,p_message_text=>unistr('A\015Ftepta\0163i <span id="apex_login_throttle_sec">%0</span> secunde \00EEnainte de reconectare.')
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128611472405027348)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEncercarea de conectare a fost blocat\0103.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128672249305027366)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Autentificarea "%0" nu a fost g\0103sit\0103')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128611949329027348)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'ro'
,p_message_text=>'ID-ul grupului de securitate este nul.'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128623178191027351)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Eroare la executarea procesului de post-autentificare.'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128622951614027351)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Eroare la procesarea procesului de pre-autentificare.'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128624694047027351)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Redeschide\0163i adresa URL \00EEn acela\015Fi browser \00EEn care a\0163i ini\0163iat cererea de resetare a parolei. Dac\0103 face\0163i clic pe URL-ul de resetare a parolei \015Fi sunte\0163i redirec\0163ionat c\0103tre pagina de conectare, ini\0163ia\0163i din nou resetarea parolei \015Fi l\0103sa\0163i'),
'browserul deschis.'))
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128774480064027397)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'ro'
,p_message_text=>unistr('URL resetare parol\0103')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128601489882027345)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'ro'
,p_message_text=>'Grupul de consumatori %0 pentru managerul de resurse nu a fost acordat pentru %1'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128601516046027345)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'ro'
,p_message_text=>unistr('Utiliza\0163i DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP pentru acordarea privilegiului lips\0103.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128636181934027355)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea func\0163iei de santinel\0103 pentru sesiune.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128636204360027355)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea func\0163iei de verificare pentru sesiune.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128636403478027355)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Cere\0163i administratorului %0 s\0103 configureze motorul pentru conectarea unic\0103 SSO pentru Oracle Application Server.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128646804615027358)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 ilegal \00EEn tokenul %1 returnat de SSO.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128623530514027351)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'ro'
,p_message_text=>unistr('Edita\0163i schema de autentificare \015Fi ad\0103uga\0163i numele aplica\0163iei.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128646521857027358)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'ro'
,p_message_text=>'Apelant ilegal pentru procedura %0:'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128646712522027358)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'ro'
,p_message_text=>unistr('Sesiune de aplica\0163ie nevalid\0103 \00EEn tokenul URLC: %0')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128646356033027358)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare \00EEn portal_sso_redirect: lipsesc informa\0163iile de \00EEnregistrare pentru aplica\0163ie: %0')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128636325508027355)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'ro'
,p_message_text=>unistr('Pachetul WWSEC_SSO_ENABLER_PRIVATE nu exist\0103 sau este nevalid.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128623440944027351)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a putut g\0103si numele aplica\0163iei partenere \00EEnregistrate din schema de autentificare.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128646434771027358)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnregistra\0163i aceast\0103 aplica\0163ie conform descrierii din ghidul de instalare.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128636532350027355)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea autentific\0103rii SSO.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128749848050027389)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'ro'
,p_message_text=>'URL neautorizat: %0'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128635902097027355)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea autentific\0103rii.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128601341008027345)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'ro'
,p_message_text=>unistr('Spa\0163iul de lucru "%0" este inactiv. Contacta\0163i administratorul.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128602047735027345)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'ro'
,p_message_text=>'%0'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128611105415027347)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Acces interzis de verificarea de securitate a aplica\0163iei')
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128611223349027347)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'ro'
,p_message_text=>'Acces interzis de verificarea de securitate a paginii'
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128611350485027348)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea autoriza\0163iei.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128680497732027368)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'ro'
,p_message_text=>unistr('Generat cu %0 utiliz\00E2nd %1')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128680550046027368)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'ro'
,p_message_text=>'Ador'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128740392595027386)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>'Descriere eveniment'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128740113066027386)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'ro'
,p_message_text=>unistr('Data final\0103')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128740482178027386)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'ro'
,p_message_text=>'ID eveniment'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128740072748027386)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'ro'
,p_message_text=>unistr('Data ini\0163ial\0103')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128740272646027386)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'ro'
,p_message_text=>'Titlu eveniment'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128582843243027339)
,p_name=>'APEX.CARD'
,p_message_language=>'ro'
,p_message_text=>unistr('Fi\015F\0103')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128583008200027339)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iune pt. fi\015F\0103')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128623798932027351)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'ro'
,p_message_text=>unistr('Caset\0103 de validare ascuns\0103 vizual')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128625612377027352)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare de con\0163inut pentru suma de control')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128625573321027352)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Eroare de format pentru suma de control'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128695426213027373)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'ro'
,p_message_text=>unistr('Copiat \00EEn clipboard.')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128694990711027373)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'ro'
,p_message_text=>unistr('Acest browser nu accept\0103 copierea utiliz\00E2nd un buton sau meniu. \00CEncerca\0163i Ctrl+C sau Command+C.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128681162221027368)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnchidere')
,p_is_js_message=>true
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128559510697027332)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'ro'
,p_message_text=>unistr('Con\0163inutul editorului de coduri dep\0103\015Fe\015Fte lungimea maxim\0103 a elementului (lungimea curent\0103 este %0, sunt permise %1 caractere)')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128739636752027386)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'ro'
,p_message_text=>'Contrast'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128734155941027384)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'ro'
,p_message_text=>'Curent'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128734035879027384)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'ro'
,p_message_text=>unistr('Ini\0163ial')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128738265945027386)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 fie o culoare valid\0103. Exemplu: %0')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128600697384027344)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'ro'
,p_message_text=>'Mai multe culori'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128600749830027344)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'ro'
,p_message_text=>'Deschidere selector de culori'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128557837980027332)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'ro'
,p_message_text=>unistr('Slider pentru opacitate, orizontal. Utiliza\0163i tastele cu s\0103ge\0163i pentru a naviga.')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128557532616027331)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'ro'
,p_message_text=>unistr('Spectru de culori, slider cu 4 direc\0163ii. Utiliza\0163i tastele cu s\0103ge\0163i pentru a naviga.')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128557685720027332)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'ro'
,p_message_text=>unistr('Slider pentru nuan\0163e, vertical. Utiliza\0163i tastele cu s\0103ge\0163i pentru a naviga.')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128733915418027384)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Alege\0163i o culoare')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128734293789027384)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'ro'
,p_message_text=>'Modificare format de culoare'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128772196278027396)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103 de valori')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128772267532027396)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'ro'
,p_message_text=>unistr('Deschidere list\0103 pentru: %0')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128752562601027390)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'ro'
,p_message_text=>'(Finalizat)'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128641455091027356)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'ro'
,p_message_text=>unistr('Contacta\0163i administratorul aplica\0163iei.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128656979875027361)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Contacta\0163i administratorul aplica\0163iei.'),
'Detalii despre acest incident sunt disponibile prin ID-ul de remediere "%0".'))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128738518851027386)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'ro'
,p_message_text=>unistr('Corecta\0163i erorile \00EEnainte de salvare.')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128583870059027339)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'ro'
,p_message_text=>unistr('%0. Ap\0103sa\0163i Backspace pt. a \015Fterge.')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128682020814027369)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Au fost g\0103site %0 rezultate')
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128563900216027333)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('1 rezultat g\0103sit')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128681997416027369)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a g\0103sit niciun rezultat')
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128558308771027332)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'ro'
,p_message_text=>'Altele'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128558260851027332)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'ro'
,p_message_text=>'%0 valori selectate'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128753039275027390)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'ro'
,p_message_text=>'Stadiu curent'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128738916464027386)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Fi\015Fierul specificat \00EEn articolul %0 nu exist\0103 \00EEn APEX_APPLICATION_TEMP_FILES.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128727446569027382)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'ro'
,p_message_text=>unistr('Versiunea curent\0103 a datelor din baza de date s-a schimbat de c\00E2nd utilizatorul a ini\0163iat procesul de actualizare.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128696526729027373)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu \00EEnc\0103rca\0163i')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128742896050027387)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('Se preproceseaz\0103 eroarea')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128742680686027387)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'ro'
,p_message_text=>unistr('Inserare r\00E2nd')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128756288099027391)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Secven\0163\0103: ac\0163iune')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128742718122027387)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Actualizare r\00E2nd')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128571217241027336)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iuni')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128598877541027344)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'ro'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128584903440027340)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 trebuie s\0103 fie un selector de dat\0103 sau o dat\0103 valid\0103, de exemplu %1.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128694122829027372)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'ro'
,p_message_text=>'Golire'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128602379807027345)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'ro'
,p_message_text=>'Finalizat'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128613349708027348)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 are por\0163iuni neacceptate \00EEn masca de formatare: %1')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128598503410027344)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('Or\0103')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128682407216027369)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'ro'
,p_message_text=>'Calendar pop-up: %0'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128598369610027344)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('S\0103pt\0103m\00E2n\0103')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128598493433027344)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'ro'
,p_message_text=>unistr('S\0103pt\0103m\00E2n\0103')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128598768182027344)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'ro'
,p_message_text=>'Minute'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128598962385027344)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Lun\0103')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128599331061027344)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Luna urm\0103toare')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128568952742027335)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'ro'
,p_message_text=>unistr('Fereastr\0103 pop-up pentru %0')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128599270060027344)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Luna precedent\0103')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128691775097027372)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'ro'
,p_message_text=>'Instrument de selectare a datei read-only'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128600176578027344)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare dat\0103')
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128569056925027335)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare dat\0103 \015Fi or\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128566264942027334)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i ziua')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128569602377027335)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i luna \015Fi anul')
,p_is_js_message=>true
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128566433837027334)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare or\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128566938763027334)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Ast\0103zi')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128584512806027339)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 fie o dat\0103 valid\0103, de exemplu: %0')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128584255698027339)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 fie \00EEntre %0 \015Fi %1.')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128584371270027339)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 fie egal cu sau ulterior %0.')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128584492778027339)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 fie anterioar\0103 %0.')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128575880232027337)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'ro'
,p_message_text=>'Editare element ascuns vizual'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128599161038027344)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'ro'
,p_message_text=>'An'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128686152956027370)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# este ulterioar\0103 datei maxime specificate %0.')
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128686516537027370)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'ro'
,p_message_text=>'#LABEL# nu corespunde formatului %0.'
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128686017351027370)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# este anterioar\0103 datei minime specificate %0.')
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128686267275027370)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# nu este \00EEn intervalul valid de la %0 la %1.')
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128686448737027370)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# nu este \00EEn intervalul de ani valid \00EEntre %0 \015Fi %1.')
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128578298263027338)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('A survenit o eroare intern\0103 la procesarea cererii DBMS_CLOUD.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128738801204027386)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'ro'
,p_message_text=>'Anulare'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128764734149027394)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnchidere')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128625963760027352)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'ro'
,p_message_text=>'Confirmare'
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128766788895027394)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128738615791027386)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'ro'
,p_message_text=>'OK'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128738745701027386)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'ro'
,p_message_text=>'Salvare'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128606446101027346)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'ro'
,p_message_text=>'Titlu dialog'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128646100465027358)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'ro'
,p_message_text=>'Titlu de dialog ascuns vizual'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128567213210027334)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'ro'
,p_message_text=>unistr('Func\0163ie pre-generat\0103 Oracle Document Generator')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128578053044027338)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la tip\0103rirea unui document.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128555213947027331)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('%s nu accept\0103 %1 ca rezultat.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128567173393027334)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('A survenit eroarea "%0" la invocarea func\0163iei pre-generate Oracle Document Generator:')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128558622695027332)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Este obligatoriu un \015Fablon.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128584006884027339)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la desc\0103rcarea fi\015Fierului.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128583988023027339)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-au g\0103sit date care s\0103 poat\0103 fi desc\0103rcate.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128587553201027340)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'ro'
,p_message_text=>unistr('Aceast\0103 caracteristic\0103 nu este disponibil\0103 \00EEntr-un mediu de tip Numai runtime.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128640355628027356)
,p_name=>'APEX.ERROR'
,p_message_language=>'ro'
,p_message_text=>'Eroare'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128600252926027344)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('A survenit urm\0103toarea eroare la executarea unui callback pentru tratarea erorilor: %0')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128612871331027348)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>'A survenit o eroare la generarea paginii de eroare: %0'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128601935817027345)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare intern\0103')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128751648450027390)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Contacta\0163i administratorul.'),
'Detalii despre acest incident sunt disponibile prin ID-ul de remediere "%0".'))
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128746242576027388)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'ro'
,p_message_text=>unistr('Baza de date este deschis\0103 pentru acces read-only.')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128776392229027397)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'ro'
,p_message_text=>unistr('ORA-28353: E\015Fec la deschiderea walletului. Datele aplica\0163iei nu sunt accesibile momentan.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128746313698027388)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Ne pare r\0103u, aceast\0103 pagin\0103 nu este disponibil\0103')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128604946302027346)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'ro'
,p_message_text=>unistr('Informa\0163ii tehnice (disponibile doar pentru dezvoltatori)')
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128710854431027377)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'ro'
,p_message_text=>'Mesaj de eroare'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128724756510027382)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'ro'
,p_message_text=>unistr('Format a\015Fteptat: %0')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128689690560027371)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'ro'
,p_message_text=>unistr('Utilizatorul este deja \00EEn lista de control al accesului')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128689524489027371)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'ro'
,p_message_text=>unistr('Confirma\0163i ad\0103ugarea urm\0103torilor utilizatori %0 la <strong>%1</strong> lista de control al accesului.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128690096593027371)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'ro'
,p_message_text=>unistr('Exist\0103 un utilizator duplicat')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128689740103027371)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'ro'
,p_message_text=>unistr('Lipse\015Fte simbolul @ \00EEn adresa de e-mail')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128689854148027371)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'ro'
,p_message_text=>unistr('Caracter punct (.) lips\0103 \00EEn adresa de e-mail')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128689994035027371)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'ro'
,p_message_text=>'Numele de utilizator este prea lung'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128690254070027371)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'ro'
,p_message_text=>unistr('Numai utilizatorii defini\0163i \00EEn lista de control al accesului pentru aplica\0163ie pot accesa aceast\0103 aplica\0163ie')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128690339644027371)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoare nea\015Fteptat\0103 pentru setarea controlului accesului: %0')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128690162953027371)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'ro'
,p_message_text=>unistr('To\0163i utilizatorii autentifica\0163i pot accesa aceast\0103 aplica\0163ie')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128734696388027384)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'ro'
,p_message_text=>'Dezactivat'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128734565393027384)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'ro'
,p_message_text=>'Activat'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128734818385027385)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'ro'
,p_message_text=>'%0: este dezactivat'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128734709729027385)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'ro'
,p_message_text=>'%0: este activat'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128583353114027339)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>'Nu este acceptat'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128644533641027357)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'ro'
,p_message_text=>'Oprit'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128644431199027357)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'ro'
,p_message_text=>'Pornit'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128734424691027384)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'ro'
,p_message_text=>'Neidentificat'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128574969640027337)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'ro'
,p_message_text=>'%0 bytes'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128575448146027337)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'ro'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128575109967027337)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'ro'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128575347945027337)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'ro'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128727697781027382)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('Desc\0103rcare')
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128580732711027338)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Op\0163iuni')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128580435529027338)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'ro'
,p_message_text=>'Filtru'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128580601504027338)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'ro'
,p_message_text=>unistr('Ascundere fa\0163et\0103')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128605315819027346)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare filtru')
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128681689494027369)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'ro'
,p_message_text=>'Filtru aplicat %0'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128606008851027346)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'ro'
,p_message_text=>'Aplicare'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128725254466027382)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'ro'
,p_message_text=>'Aplicare'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128606178895027346)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'ro'
,p_message_text=>'Anulare'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128589975014027341)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Diagram\0103 cu bare')
,p_is_js_message=>true
,p_version_scn=>2693305
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128737961856027386)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'ro'
,p_message_text=>'Altele'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128590098159027341)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'ro'
,p_message_text=>unistr('Diagram\0103 disc')
,p_is_js_message=>true
,p_version_scn=>2693305
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128736570485027385)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Diagram\0103')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128589729580027341)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103r')
,p_is_js_message=>true
,p_version_scn=>2693305
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128725798031027382)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'ro'
,p_message_text=>'Golire'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128725845631027382)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'ro'
,p_message_text=>'Golire toate'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128725913589027382)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'ro'
,p_message_text=>'Golire %0'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128742498094027387)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana %1, referin\0163\0103 pentru fa\0163eta %0, nu este disponibil\0103 sau este neautorizat\0103.')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128553120073027330)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i filtrele de afi\015Fat')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128679627954027368)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'ro'
,p_message_text=>'%0 rezultate'
,p_is_js_message=>true
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128679712997027368)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'ro'
,p_message_text=>'%0 selectate'
,p_is_js_message=>true
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128682508620027369)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'ro'
,p_message_text=>'Filtre curente'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128558115928027332)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utarea cu fa\0163ete necesit\0103 o surs\0103 de date la nivel regional.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128561861954027333)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103 de filtre')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128740987907027386)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoarea limit\0103 distinct\0103 (%0) a fost dep\0103\015Fit\0103 pentru fa\0163eta %1.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128727296983027382)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>unistr('Fa\0163eta %0 nu este acceptat\0103 pentru coloanele DATE sau TIMESTAMP.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128725323477027382)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'ro'
,p_message_text=>'Filtru %0'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128599953799027344)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'ro'
,p_message_text=>'%0 (Filtru aplicat)'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128725438885027382)
,p_name=>'APEX.FS.GO'
,p_message_language=>'ro'
,p_message_text=>'Start'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128595425994027343)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'ro'
,p_message_text=>unistr('Con\0163ine %0')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128726833910027382)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'ro'
,p_message_text=>'egal cu %0'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128595187041027343)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'ro'
,p_message_text=>'Mai mare ca %0'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128595202648027343)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'ro'
,p_message_text=>'mai mare sau egal cu %0'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128594883785027343)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'ro'
,p_message_text=>'Mai mic ca %0'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128595018740027343)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'ro'
,p_message_text=>'mai mic sau egal cu %0'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128594354499027342)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'ro'
,p_message_text=>unistr('nu con\0163ine %0')
,p_is_js_message=>true
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128580103176027338)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'ro'
,p_message_text=>'nu este egal cu %0'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128594479208027342)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'ro'
,p_message_text=>unistr('nu \00EEncepe cu %0')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128595356147027343)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEncepe cu %0')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128593452878027342)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'ro'
,p_message_text=>unistr('Selec\0163ie de fa\0163ete')
,p_is_js_message=>true
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128569265744027335)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'ro'
,p_message_text=>unistr('Prefixul de filtru "%0" este nevalid pt. fa\0163eta "%1".')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128567606099027334)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'ro'
,p_message_text=>unistr('Lipse\015Fte prefixul filtrului pt. fa\0163eta "%0".')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128601825376027345)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'ro'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128583722281027339)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'ro'
,p_message_text=>unistr('con\0163ine')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128582707217027339)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'ro'
,p_message_text=>'egal cu'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128583436030027339)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'ro'
,p_message_text=>unistr('mai mare dec\00E2t')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128583580834027339)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'ro'
,p_message_text=>'mai mare sau egal cu'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128583130539027339)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'ro'
,p_message_text=>unistr('mai mic dec\00E2t')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128583227105027339)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'ro'
,p_message_text=>'mai mic sau egal cu'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128594222432027342)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'ro'
,p_message_text=>unistr('nu con\0163ine')
,p_is_js_message=>true
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128582904911027339)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'ro'
,p_message_text=>'nu este egal cu'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128594102013027342)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'ro'
,p_message_text=>unistr('nu \00EEncepe cu')
,p_is_js_message=>true
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128583629265027339)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEncepe cu')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128602222790027345)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Tipul de date %0 (%1) nu este acceptat pentru fa\0163eta c\00E2mpului de intrare.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128569189445027335)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Filtrul "%0" nu este acceptat pt. fa\0163eta "%1" (tip de date %2).')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128601760413027345)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'ro'
,p_message_text=>'Valoare'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128727050969027382)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu au fost furnizate coloane de c\0103utare pentru fa\0163eta %0')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128553288361027330)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'ro'
,p_message_text=>'Mai multe filtre'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128679838735027368)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnceput de interval')
,p_is_js_message=>true
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128726553246027382)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'ro'
,p_message_text=>'%0 la %1'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128726616676027382)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'ro'
,p_message_text=>'Peste %0'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128726750981027382)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'ro'
,p_message_text=>'Sub %0'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128679980855027368)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'ro'
,p_message_text=>'Final de interval'
,p_is_js_message=>true
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128744507425027387)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'ro'
,p_message_text=>unistr('Articolul LOV #%2 ("%1") pentru fa\0163eta de interval %0 este nevalid (separatorul "|" lipse\015Fte).')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128726976949027382)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Intrarea manual\0103 nu este acceptat\0103 momentan pentru fa\0163eta %0, deoarece coloana este DATE sau TIMESTAMP.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128726209681027382)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'ro'
,p_message_text=>'la'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128589864903027341)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'ro'
,p_message_text=>unistr('Eliminare diagram\0103')
,p_is_js_message=>true
,p_version_scn=>2693305
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128676265665027367)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'ro'
,p_message_text=>'Resetare'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128725637385027382)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128725512816027382)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare...')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128726436719027382)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'ro'
,p_message_text=>'- Selectare -'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128589644831027341)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare diagram\0103')
,p_is_js_message=>true
,p_version_scn=>2693305
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128726003653027382)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare mai pu\0163ine')
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128726113725027382)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare tot')
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128726342419027382)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 stele \015Fi mai multe')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128681591753027369)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'ro'
,p_message_text=>'Sugestii filtru'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128727149623027382)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>unistr('Fa\0163eta c\00E2mp de text %0 este acceptat\0103 \00EEn prezent numai pentru coloanele NUMBER.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128552673741027330)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103r total de r\00E2nduri')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128742558510027387)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Tipul de date %0 (%1) nu este acceptat pentru c\0103utarea cu fa\0163ete.')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128672710124027366)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'ro'
,p_message_text=>'Titlu ascuns vizual'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128735022994027385)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Accesa\0163i eroarea')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128691075416027371)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'ro'
,p_message_text=>'Agregare.'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128618941361027350)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'ro'
,p_message_text=>'Titlu blanc'
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128700345400027374)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'ro'
,p_message_text=>unistr('Restr\00E2ngere control de \00EEntrerupere')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128691125191027371)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('Control de \00EEntrerupere.')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128700209738027374)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'ro'
,p_message_text=>unistr('Extindere control de \00EEntrerupere')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128700081124027374)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 r\00E2nduri \015Fterse')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128769127021027395)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'ro'
,p_message_text=>'Duplicare identitate'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128562069390027333)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'ro'
,p_message_text=>unistr('Se intr\0103 \00EEn modul Editare')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128687932101027370)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'ro'
,p_message_text=>'Primul'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128560801921027332)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'ro'
,p_message_text=>'Ascundere dialog'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128559864687027332)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Con\0163inutul care dep\0103\015Fe\015Fte celula este flotant')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128561167009027333)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare con\0163inut ce dep\0103\015Fe\015Fte celula')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128635365750027355)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'ro'
,p_message_text=>unistr('Subsol gril\0103')
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128691371750027372)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'ro'
,p_message_text=>'Antet grup'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128691246061027371)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'ro'
,p_message_text=>'Antet.'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128688095802027371)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'ro'
,p_message_text=>'Ultimul'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128562229389027333)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'ro'
,p_message_text=>'Se iese din modul Editare'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128586947524027340)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcare global\0103')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128709802988027377)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare mai multe')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128687718509027370)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnainte')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128691491814027372)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2nduri pagin\0103')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128600516257027344)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'ro'
,p_message_text=>'Pagina %0'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128688143640027371)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'ro'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128688225906027371)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'ro'
,p_message_text=>'%0 - %1 din %2'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128745183504027388)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'ro'
,p_message_text=>'Selectarea paginii'
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128635619736027355)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'ro'
,p_message_text=>'Paginare'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128687875721027370)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128585869372027340)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare interval')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128619270495027350)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Selec\0163ie de r\00E2nduri')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128768953454027395)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugat')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128769095168027395)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'ro'
,p_message_text=>'Modificat'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128777344223027397)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('Secven\0163\0103 r\00E2nd din gril\0103 %0, coloana %1.')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128777474234027398)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('Secven\0163\0103 r\00E2nd din gril\0103 %0.')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128768866981027395)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Eters')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128691669818027372)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'ro'
,p_message_text=>unistr('Antet r\00E2nd')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128619142724027350)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare r\00E2nduri')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128587095907027340)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'ro'
,p_message_text=>'%0 %1 selectat(e)'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128687168645027370)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'ro'
,p_message_text=>'%0 celule selectate'
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128688380783027371)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 r\00E2nduri selectate')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128730414150027383)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'ro'
,p_message_text=>'Selectare tot'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128623957848027351)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare toate r\00E2ndurile')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128700145083027374)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'ro'
,p_message_text=>'Pagina %0'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128691500956027372)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare r\00E2nd')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128691829997027372)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'ro'
,p_message_text=>'Sortate ascendent %0'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128691928791027372)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'ro'
,p_message_text=>'Sortate descendent %0'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128687202975027370)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'ro'
,p_message_text=>unistr('Sortare ascendent\0103')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128687529475027370)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'ro'
,p_message_text=>unistr('Sortare ascendent\0103 %0')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128687370366027370)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'ro'
,p_message_text=>unistr('Sortare descendent\0103')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128687617638027370)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'ro'
,p_message_text=>unistr('Sortare descendent\0103 %0')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128687497996027370)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'ro'
,p_message_text=>unistr('F\0103r\0103 sortare')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128553090956027330)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Op\0163iuni de sortare')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128635456127027355)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'ro'
,p_message_text=>'Pictograme pentru stare'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128635548616027355)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'ro'
,p_message_text=>unistr('Stare gril\0103')
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128565362273027334)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'ro'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128565077309027334)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'ro'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128699977307027374)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'ro'
,p_message_text=>'Total %0'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128618749130027350)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('Cererea HTTP c\0103tre "%0" a e\015Fuat.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128620339228027350)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'ro'
,p_message_text=>'Coloana %0'
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128620535821027350)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana %0 \015Fi r\00E2ndul %1')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128620835146027350)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Deja s-a ajuns la prima coloan\0103. Coloana %0 \015Fi r\00E2ndul %1')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128620701833027350)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('Deja s-a ajuns la primul r\00E2nd. Coloana %0 \015Fi r\00E2ndul %1')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128766370028027394)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'ro'
,p_message_text=>unistr('Prezentat \00EEn %0 coloane \015Fi %1 r\00E2nduri')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128620961033027350)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Deja s-a ajuns la ultima coloan\0103. Coloana %0 \015Fi r\00E2ndul %1')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128620636959027350)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('Deja s-a ajuns la ultimul r\00E2nd. Coloana %0 \015Fi r\00E2ndul %1')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128699804603027374)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'ro'
,p_message_text=>unistr('Prezentat \00EEn %0 r\00E2nduri')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128620499375027350)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2ndul %0')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128777191767027397)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Gril\0103 interactiv\0103 %0')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128684219422027369)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iuni')
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128685296853027370)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare')
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128685147928027370)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare r\00E2nd')
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128770737759027395)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'ro'
,p_message_text=>'Agregare'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128756316809027391)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'ro'
,p_message_text=>'Agregare'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128758016704027392)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'ro'
,p_message_text=>'Toate'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128715691737027379)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>'Toate coloanele de text'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128716807722027379)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'ro'
,p_message_text=>unistr('Alternativ\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128717920272027379)
,p_name=>'APEX.IG.AND'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Fi')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128737346078027385)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rare distinct\0103 aproximativ\0103')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128771715429027396)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rare distinct\0103 aproximativ\0103 general\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128754939592027391)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'ro'
,p_message_text=>unistr('Zon\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128756846447027391)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'ro'
,p_message_text=>'Ascendent'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128716982506027379)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'ro'
,p_message_text=>'Autorizare'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128770828332027395)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'ro'
,p_message_text=>'Automat'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128737754447027385)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'ro'
,p_message_text=>'Medie'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128771496585027396)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Medie general\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128754465211027390)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Titlu ax\0103 etichet\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128754642946027391)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103r de zecimale')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128754568956027390)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Titlu ax\0103 valoare')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128760612984027392)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'ro'
,p_message_text=>'Culoare de fundal'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128755011937027391)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Bar\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128712257812027378)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEntre')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128761888555027393)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'ro'
,p_message_text=>'Ambele'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128755179218027391)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Bul\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128685447695027370)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'ro'
,p_message_text=>'Anulare'
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128717813494027379)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'ro'
,p_message_text=>unistr('Concordan\0163\0103 litere mari/mici')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128772344107027396)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'ro'
,p_message_text=>unistr('(Concordan\0163\0103 litere mari/mici)')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128743638627027387)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'ro'
,p_message_text=>unistr('Modific\0103ri salvate')
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128685814739027370)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'ro'
,p_message_text=>'Modificare vizualizare'
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128718954517027380)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'ro'
,p_message_text=>unistr('Diagram\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128715437390027379)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'ro'
,p_message_text=>unistr('Interogarea dvs. dep\0103\015Fe\015Fte num\0103rul maxim de %0 puncte de date per diagram\0103. Aplica\0163i un filtru pentru a reduce num\0103rul de \00EEnregistr\0103ri din interogarea dvs. de baz\0103.')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128684123527027369)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare diagram\0103')
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128692552486027372)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'ro'
,p_message_text=>'Golire'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128753979700027390)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnchidere')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128760869310027392)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'ro'
,p_message_text=>'Culori'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128738102278027386)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'ro'
,p_message_text=>'Previzualizare'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128717244937027379)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128684346371027369)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'ro'
,p_message_text=>'Coloane'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128646249179027358)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iuni coloan\0103')
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128646058490027358)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iuni pentru coloana "%0"')
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128762611813027393)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Scop coloan\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128717361005027379)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'ro'
,p_message_text=>'Complex'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128684521665027369)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'ro'
,p_message_text=>'Compute'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128712869743027378)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'ro'
,p_message_text=>unistr('con\0163ine')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128719115462027380)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'ro'
,p_message_text=>unistr('Control de \00EEntrerupere')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128692337194027372)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'ro'
,p_message_text=>unistr('Copiere \00EEn clipboard')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128692418143027372)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'ro'
,p_message_text=>unistr('Copiere \00EEn jos')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128737149524027385)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103r')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128737283905027385)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rare distinct\0103')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128771619504027396)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rare distinct\0103 general\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128771500447027396)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103r general')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128769245519027395)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'ro'
,p_message_text=>'Creare %0'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128715800195027379)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'ro'
,p_message_text=>'Date'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128762417638027393)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'ro'
,p_message_text=>'Tip de date'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128762012060027393)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Dat\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128743461652027387)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoare nevalid\0103 pentru dat\0103')
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128713578690027378)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'ro'
,p_message_text=>'zile'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128716537099027379)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'ro'
,p_message_text=>unistr('Set\0103ri prestabilite')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128716339473027379)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'ro'
,p_message_text=>'Tip prestabilit'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128685328065027370)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Etergere')
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128763578447027393)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'ro'
,p_message_text=>unistr('Sigur \015Fterge\0163i acest raport?')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128720973221027380)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Etergere r\00E2nd')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128719710439027380)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Etergere r\00E2nduri')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128756968428027391)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'ro'
,p_message_text=>'Descendent'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128718640414027380)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'ro'
,p_message_text=>'Detaliu'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128683815327027369)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare detalii'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128745974063027388)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Direc\0163ie')
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128718310469027380)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'ro'
,p_message_text=>'Dezactivat'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128712920931027378)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'ro'
,p_message_text=>unistr('nu con\0163ine')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128713108263027378)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'ro'
,p_message_text=>unistr('nu \00EEncepe cu')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128755277535027391)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'ro'
,p_message_text=>'Cercuri concentrice'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128719370529027380)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'ro'
,p_message_text=>unistr('Desc\0103rcare')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128609623190027347)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'ro'
,p_message_text=>'Numai date'
,p_is_js_message=>true
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128764584263027393)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'ro'
,p_message_text=>'Selectare format'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128624704515027352)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'ro'
,p_message_text=>unistr('Formatul de desc\0103rcare %0 nu este activat.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128757644483027391)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'ro'
,p_message_text=>'Duplicare agregare'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128757774481027391)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'ro'
,p_message_text=>unistr('Duplicare control de \00EEntrerupere')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128720843842027380)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2nd duplicat')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128719624380027380)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('Duplicare r\00E2nduri')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128684948127027370)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'ro'
,p_message_text=>'Editare'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128756724603027391)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'ro'
,p_message_text=>unistr('Editare diagram\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128637275439027355)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'ro'
,p_message_text=>'Editare %0'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128768116299027395)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'ro'
,p_message_text=>unistr('Editare grup dup\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128675349669027367)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn modul de editare')
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128650985409027359)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Grila este \00EEn modul Editare, \00EEn momentul \00EEn care nu ve\0163i mai ap\0103sa, ve\0163i trece la modul Vizualizare')
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128764179588027393)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'ro'
,p_message_text=>unistr('Copiere invizibil\0103 (BCC)')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128764383828027393)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'ro'
,p_message_text=>'Mesaj'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128764093793027393)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'ro'
,p_message_text=>'Copiere (cc)'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128763766190027393)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'ro'
,p_message_text=>'E-mail trimis.'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128764272361027393)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'ro'
,p_message_text=>'Subiect'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128763958163027393)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'ro'
,p_message_text=>'Destinatar (la)'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128718039596027380)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'ro'
,p_message_text=>'Activat'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128711213931027377)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'ro'
,p_message_text=>'egal cu'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128718173327027380)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'ro'
,p_message_text=>'Expresie'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128763111469027393)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'ro'
,p_message_text=>'Tip'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128730341801027383)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'ro'
,p_message_text=>unistr('Fi\015Fier preg\0103tit. Se \00EEncepe desc\0103rcarea.')
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128692665054027372)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'ro'
,p_message_text=>'Umplere'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128694897320027373)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Umplere selec\0163ie cu')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128694757561027373)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'ro'
,p_message_text=>'Selectare umplere'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128684415476027369)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'ro'
,p_message_text=>'Filtru'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128717459564027379)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'ro'
,p_message_text=>'Filtre'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128771116376027395)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'ro'
,p_message_text=>'Filtrare...'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128757168843027391)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'ro'
,p_message_text=>'Primul'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128684624861027369)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'ro'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128715907384027379)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'ro'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128761750810027393)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'ro'
,p_message_text=>unistr('Masc\0103 de formatare')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128763478496027393)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'ro'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128763320941027393)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'ro'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128674426558027366)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'ro'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128608350627027347)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'ro'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128720587616027380)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnghe\0163are')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128718288432027380)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'ro'
,p_message_text=>unistr('Func\0163ii \015Fi operatori')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128755324293027391)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'ro'
,p_message_text=>unistr('P\00E2lnie')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128737085598027385)
,p_name=>'APEX.IG.GO'
,p_message_language=>'ro'
,p_message_text=>'Start'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128711833080027378)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'ro'
,p_message_text=>unistr('mai mare dec\00E2t')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128711966417027378)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'ro'
,p_message_text=>'mai mare sau egal cu'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128718556407027380)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'ro'
,p_message_text=>unistr('Gril\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128683660416027369)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare gril\0103')
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128757970156027392)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'ro'
,p_message_text=>'Grup'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128718728450027380)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'ro'
,p_message_text=>unistr('Grupare dup\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128683953558027369)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare grupare'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128762330933027393)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Tip condi\0163ie')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128761224683027392)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'ro'
,p_message_text=>'Antet'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128761445416027393)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'ro'
,p_message_text=>'Aliniere antet'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128771063591027395)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128766533017027394)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pute\0163i introduce, actualiza \015Fi \015Fterge date direct din aceast\0103 gril\0103 interactiv\0103.</p>'),
'',
unistr('<p>Introduce\0163i un r\00E2nd nou f\0103c\00E2nd clic pe butonul Ad\0103ugare r\00E2nd.</p>'),
'',
unistr('<p>Edita\0163i datele existente f\0103c\00E2nd dublu clic pe o anumit\0103 celul\0103. Pentru lucr\0103ri de editare mai mari, face\0163i clic pe Editare pentru a intra \00EEn modul de editare. \00CEn modul de editare pute\0163i face clic simplu sau utiliza\0163i tastatura pentru a edita anumi')
||'te celule.</p>',
'',
unistr('<p>Utiliza\0163i meniul Modific\0103ri pentru a duplica \015Fi \015Fterge r\00E2nduri. Pentru a activa meniul Modific\0103ri, utiliza\0163i casetele de selectare pentru a selecta unul sau mai multe r\00E2nduri.</p>'),
'',
unistr('<p>Duplica\0163i un r\00E2nd selectat f\0103c\00E2nd clic pe meniul Modific\0103ri \015Fi select\00E2nd duplicare r\00E2nduri. \015Eterge\0163i un r\00E2nd selectat f\0103c\00E2nd clic pe meniul Modific\0103ri \015Fi select\00E2nd \015Etergere r\00E2nd.</p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128768680408027395)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'ro'
,p_message_text=>unistr('Capacit\0103\0163i de editare')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128768729669027395)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>O gril\0103 interactiv\0103 prezint\0103 un set de date \00EEntr-un raport personalizat care permite c\0103utarea. Pute\0163i efectua numeroase opera\0163ii pentru a limita \00EEnregistr\0103rile returnate \015Fi a modifica modul \00EEn care datele sunt afi\015Fate.</p>'),
'',
unistr('<p>Utiliza\0163i c\00E2mpul de c\0103utare pentru filtrarea \00EEnregistr\0103rilor returnate. Face\0163i clic pe Ac\0163iuni pentru a accesa numeroasele op\0163iuni pentru modificarea machetei raportului, sau utiliza\0163i meniurile Antet coloan\0103 pe coloanele afi\015Fate.</p>'),
'',
unistr('<p>Utiliza\0163i set\0103ri raport pentru a salva personaliz\0103rile \00EEntr-un raport. Pute\0163i, de asemenea, s\0103 desc\0103rca\0163i datele din raport \00EEntr-un fi\015Fier extern sau s\0103 trimite\0163i datele prin e-mail c\0103tre dvs. \015Fi al\0163ii.</p>'),
'',
unistr('<p>Pentru a afla mai multe consulta\0163i "Utilizare grile interactive" \00EEn <em>Ghidul utilizatorului final Oracle APEX</em>.')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128768461826027395)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'ro'
,p_message_text=>unistr('Prezentare general\0103')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128766406306027394)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Pute\0163i personaliza grila interactiv\0103 pentru a afi\015Fa datele \00EEn diferite moduri utiliz\00E2nd capacit\0103\0163ile \00EEnglobate.</p>'),
'',
unistr('<p>Utiliza\0163i meniurile Antet de coloan\0103 sau meniul Ac\0163iuni pentru a stabili ce coloane s\0103 afi\015Fa\0163i, \00EEn ce secven\0163\0103 \015Fi coloanele \00EEnghe\0163ate. Pute\0163i \015Fi s\0103 defini\0163i diferite filtre de date \015Fi s\0103 sorta\0163i datele returnate.</p>'),
'',
unistr('<p>Utiliza\0163i butonul Vizualizare (adiacent c\00E2mpului de c\0103utare) pentru a accesa alte vizualiz\0103ri de date ce au putut fi definite de dezvoltatorul aplica\0163iei. Pute\0163i \015Fi s\0103 crea\0163i o diagram\0103 sau s\0103 vizualiza\0163i o diagram\0103 existent\0103.</p>  '),
'',
unistr('<p><em>Not\0103: face\0163i clic pe <strong>Asisten\0163\0103</strong> din dialogurile grilei interactive pentru a ob\0163ine informa\0163ii detaliate pentru func\0163ia selectat\0103.</em></p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128768566145027395)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'ro'
,p_message_text=>unistr('Capacit\0103\0163i de raportare')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128719543940027380)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 gril\0103 interactiv\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128765336062027394)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru agregarea coloanelor. Valorile agregate sunt afi\015Fate \00EEn partea de jos a datelor sau, dac\0103 sunt definite controale de \00EEntrerupere, sub fiecare \00EEntrerupere.</p>'),
'',
unistr('<p><strong>List\0103 de agregare</strong><br>'),
unistr('Lista de agregare afi\015Feaz\0103 agreg\0103rile definite. Dezactiva\0163i o agregare existent\0103 prin deselectare.<br>'),
unistr('Face\0163i clic pe Ad\0103ugare ( &plus; ) pentru a crea o agregare nou\0103 sau pe \015Etergere ( &minus; ) pentru a elimina o agregare existent\0103.</p>'),
'',
unistr('<p><strong>Set\0103ri de agregare</strong><br>'),
unistr('Utiliza\0163i formularul din dreapta pentru a defini agregarea.<br>'),
unistr('Selecta\0163i numele coloanei \015Fi tipul de agregare.<br>'),
unistr('Op\0163ional, introduce\0163i o sugestie pentru agregare.<br>'),
unistr('Dac\0103 a\0163i definit un control de \00EEntrerupere, select\00E2nd <strong>Afi\015Fare valoare general\0103</strong> se afi\015Feaz\0103 media general\0103, totalul sau valoarea similar\0103 sub date.</p>'),
'',
unistr('<p><em>Not\0103: accesa\0163i dialogul de agregare din meniul Ac\0163iuni sau f\0103c\00E2nd clic pe antetul de coloan\0103 \015Fi sum\0103 ( &sum; ).</em></p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128767520619027394)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 agregare')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128766012727027394)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru a defini o diagram\0103 ce se afi\015Feaz\0103 ca vizualizare de date separat\0103.<br>'),
unistr('Selecta\0163i un tip de diagram\0103 \015Fi atributele diagramei.</p>'),
unistr('<p><strong>Atribute diagram\0103</strong><br>'),
unistr('Atributele de diagram\0103 disponibile variaz\0103 \00EEn func\0163ie de tipul de diagram\0103.</p>'),
'<p>',
'<ul>',
unistr('  <li>Selecta\0163i coloana ce con\0163ine valoarea pentru atributul:'),
'    <ul>',
unistr('      <li>Etichet\0103 - Textul pentru fiecare punct de date.</li>'),
'      <li>Valoare - Datele de distribuit.</li>',
unistr('      <li>Serii - Pentru definirea interog\0103rii dinamice cu mai multe serii.</li>'),
unistr('      <li>Deschidere - Pre\0163ul de deschidere zilnic pentru ac\0163iuni (numai tipul Ac\0163iuni).</li>'),
unistr('      <li>\00CEnchidere - Pre\0163ul de \00EEnchidere zilnic pentru ac\0163iuni (numai tipul Ac\0163iuni).</li>'),
unistr('      <li>Superior - Valoarea superioar\0103 (numai tipurile Interval \015Fi Ac\0163iuni).</li>'),
unistr('      <li>Inferior - Valoarea inferioar\0103 (numai tipurile Interval \015Fi Ac\0163iuni).</li>'),
unistr('      <li>Volum - Volumul zilnic de ac\0163iuni (numai tipul Ac\0163iuni).</li>'),
unistr('      <li>\0162int\0103 - Valoarea \0163int\0103 (numai tipul P\00E2lnie).</li>'),
unistr('      <li>X - Valoare ax\0103 x (numai tipurile Sfer\0103 \015Fi Dispersie).</li>'),
unistr('      <li>Y - Valoare ax\0103 y (numai tipurile Sfer\0103 \015Fi Dispersie).</li>'),
unistr('      <li>Z - L\0103\0163ime bar\0103 sau raz\0103 sfer\0103 (numai tipurile Bar\0103, Sfer\0103 \015Fi Interval).</li>'),
'    </ul>',
'  </li>',
'  <li>Orientare - Vertical sau orizontal.</li>',
unistr('  <li>Agregare - Selecta\0163i modul de agregare pentru valorile asociate ale diagramei.</li>'),
unistr('  <li>Stiv\0103 - Specific\0103 dac\0103 elementele de date sunt stivuite.</li>'),
unistr('  <li>Sortare dup\0103 - Sortare dup\0103 etichet\0103 sau valori.'),
'    <ul>',
unistr('      <li>Direc\0163ie - Sortarea valorilor \00EEn ordine ascendent\0103 sau descendent\0103.</li>'),
unistr('      <li>Nule - Specific\0103 modul de sortare a \00EEnregistr\0103rilor cu valori nule comparativ cu cele cu valori non nule.</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Num\0103r de zecimale</li>'),
unistr('  <li>Titlu ax\0103 etichet\0103</li>'),
unistr('  <li>Titlu ax\0103 valoare</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128767949529027394)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 diagram\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128765003165027394)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru a selecta ce coloane vor fi afi\015Fate \015Fi \00EEn ce ordine.</p>'),
'',
unistr('<p>Ascunde\0163i o coloan\0103 prin deselectare.<br>'),
unistr('Reordona\0163i coloanele f\0103c\00E2nd clic pe Mutare \00EEn sus ( &uarr; ) sau Mutare \00EEn jos ( &darr; ).<br>'),
unistr('Utiliza\0163i selectorul derulant pentru a lista Toate coloanele, Coloanele afi\015Fate sau Coloanele neafi\015Fate.</p>'),
'',
unistr('<p>Op\0163ional, utiliza\0163i formularul pentru a specifica l\0103\0163imea minim\0103 a unei coloane \00EEn pixeli.</p>'),
'',
unistr('<p><em>Not\0103: de asemenea, pute\0163i reordona coloanele afi\015Fate f\0103c\00E2nd clic pe cursorul de glisare (de la \00EEnceputul antetului coloanei) \015Fi glis\00E2nd coloana spre st\00E2nga sau dreapta. Pute\0163i modifica l\0103\0163imea coloanei pentru coloanele afi\015Fate \015Fi prin selectar')
||unistr('ea separatorului coloanei, \00EEntre anteturi, \015Fi deplasarea acestuia spre st\00E2nga sau dreapta.</em></p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128767858470027394)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 pt. coloane')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128765462034027394)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru a defini coloane suplimentare pe baza calculelor matematice \015Fi func\0163ionale efectuate pe coloanele existente.</p>'),
'',
unistr('<p><strong>List\0103 calcule</strong><br>'),
unistr('Lista de calcule afi\015Feaz\0103 calculele definite. Dezactiva\0163i un calcul existent prin deselectare.<br>'),
unistr('Face\0163i clic pe Ad\0103ugare ( &plus; ) pentru a ad\0103uga un calcul nou sau pe \015Etergere ( &minus; ) pentru a elimina un calcul existent.</p>'),
'',
unistr('<p><strong>Set\0103ri de calcul</strong><br>'),
unistr('Utiliza\0163i formularul pentru a defini calculul.<br>'),
unistr('Introduce\0163i detaliile coloanei cum ar fi antet, etichet\0103 \015Fi set\0103rile de selectare pentru aliniere.<br> '),
unistr('Utiliza\0163i expresia textarea pentru a introduce coloanele \015Fi func\0163iile asociate pentru calcul.<br>'),
unistr('Selecta\0163i tipul de date adecvat \015Fi, op\0163ional, o masc\0103 de formatare pentru noua coloan\0103.</p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128767482058027394)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 Compute')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128765734526027394)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru a defini un control de \00EEntrerupere pe una sau mai multe coloane.</p>'),
'',
unistr('<p><strong>List\0103 controale de \00EEntrerupere</strong><br>'),
unistr('Lista de controale de \00EEntrerupere afi\015Feaz\0103 controalele de \00EEntrerupere definite. Dezactiva\0163i o coloan\0103 dintr-un control de \00EEntrerupere prin deselectare.<br>'),
unistr('Face\0163i clic pe Ad\0103ugare ( &plus; ) pentru a ad\0103uga o nou\0103 coloan\0103 \00EEn controlul de \00EEntrerupere sau pe \015Etergere ( &minus; ) pentru a elimina o coloan\0103 existent\0103 din controlul de \00EEntrerupere.<br>'),
unistr('Pentru reordonarea coloanelor, face\0163i clic pe Mutare \00EEn sus ( &uarr; ) sau Mutare \00EEn jos ( &darr; ) pentru a muta coloana selectat\0103 \00EEn sus \015Fi jos fa\0163\0103 de alte coloane.</p>'),
'',
unistr('<p><strong>Set\0103ri pentru controale de \00EEntrerupere</strong><br>'),
unistr('Utiliza\0163i formularul pentru a defini o coloana \00EEn controlul de \00EEntrerupere.<br>'),
unistr('Selecta\0163i o coloan\0103 din controlul de \00EEntrerupere, direc\0163ia de sortare \015Fi modul de ordonare pentru coloane nule (coloane f\0103r\0103 valori).</p>'),
'',
unistr('<p><em>Not\0103: la vizualizarea unei grile interactive, pute\0163i defini un control de \00EEntrerupere f\0103c\00E2nd clic pe un Antet de coloan\0103 \015Fi select\00E2nd pictograma control de \00EEntrerupere.</em></p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128767168758027394)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 control de \00EEntrerupere')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128765933310027394)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru a desc\0103rca toate r\00E2ndurile curente \00EEntr-un fi\015Fier extern. Fi\015Fierul va con\0163ine numai coloanele afi\015Fate \00EEn prezent, utiliz\00E2nd orice filtre \015Fi sort\0103ri aplicate datelor.</p>'),
'',
unistr('<p>Selecta\0163i formatul de fi\015Fier \015Fi face\0163i clic pe Desc\0103rcare.<br>'),
unistr('Not\0103: fi\015Fierul CSV nu va include formatarea de text cum ar fi agreg\0103rile \015Fi controalele de \00EEntrerupere.</p>'),
'',
unistr('<p>Pentru a trimite fi\015Fierul prin e-mail, selecta\0163i Trimitere e-mail \015Fi introduce\0163i detaliile pentru e-mail (destinatar, subiect \015Fi mesaj).</p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128766944821027394)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 desc\0103rcare')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128765171894027394)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru a configura filtrele de date ce limiteaz\0103 r\00E2ndurile returnate.</p>'),
'',
unistr('<p><strong>List\0103 filtre</strong><br>'),
unistr('Lista filtrelor afi\015Feaz\0103 filtrele definite. Dezactiva\0163i un filtru existent prin deselectare.<br>'),
unistr('Face\0163i clic pe Ad\0103ugare ( &plus; ) pentru a crea un filtru nou, sau pe \015Etergere ( &minus; ) pentru a elimina un filtru existent.</p>'),
'',
unistr('<p><strong>Set\0103ri filtru</strong><br>'),
unistr('Utiliza\0163i acest formular pentru a defini propriet\0103\0163ile filtrului.<br>'),
unistr('Selecta\0163i tipul de filtru adecvat:<br>'),
unistr('&nbsp;&nbsp;&nbsp;R\00E2nd - filtrare pentru un termen \00EEn orice coloan\0103 filtrabil\0103.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Coloan\0103 - filtrare pentru o anumit\0103 coloan\0103 cu un operator \015Fi o valoare specificate.</p>'),
'',
unistr('<p><em>Not\0103: la vizualizarea grilei interactive, pute\0163i defini filtrele de r\00E2nd tast\00E2nd direct \00EEn c\00E2mpul de c\0103utare. Face\0163i clic pe Selectare coloane de c\0103utat pentru a limita c\0103utarea la o anumit\0103 coloan\0103. Alternativ, deschide\0163i un meniu Antet de co')
||unistr('loan\0103 \015Fi selecta\0163i o valoare pentru a crea un filtru de coloan\0103.</em></p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128767753347027394)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 filtrare')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128765525245027394)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru a vizualiza datele a\015Fa cum au existat la un moment anterior.</p>'),
unistr('<p>Introduce\0163i num\0103rul de minute din trecut pentru executarea interog\0103rii flashback.</p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128767381797027394)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 flashback')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128768032368027395)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 grupare')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128765676233027394)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru a eviden\0163ia r\00E2ndurile sau coloanele de date pe baza condi\0163iilor introduse.</p>'),
'',
unistr('<p><strong>List\0103 eviden\0163ieri</strong><br>'),
unistr('Lista de eviden\0163ieri afi\015Feaz\0103 eviden\0163ierile definite. Dezactiva\0163i o eviden\0163iere existent\0103 prin deselectare.<br>'),
unistr('Face\0163i clic pe Ad\0103ugare ( &plus; ) pentru a ad\0103uga o eviden\0163iere nou\0103 sau pe \015Etergere ( &minus; ) pentru a elimina o eviden\0163iere existent\0103.</p>'),
'',
unistr('<p><strong>Set\0103ri de eviden\0163iere</strong><br>'),
unistr('Utiliza\0163i formularul pentru a defini set\0103rile de eviden\0163iere.<br>'),
unistr('Introduce\0163i numele, selecta\0163i r\00E2ndul sau coloan \015Fi selecta\0163i codurile de culoare HTML pentru fundal \015Fi text.<br>'),
unistr('Selecta\0163i <strong>Tipul de condi\0163ie</strong> adecvat pentru a eviden\0163ia anumite date:<br>'),
unistr('&nbsp;&nbsp;&nbsp;R\00E2nd - eviden\0163ierea termenului din orice coloan\0103.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Coloan\0103 - eviden\0163iere \00EEn cadrul unei anumite coloane pe baza operatorului \015Fi valorii specificate.</p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128767213574027394)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 eviden\0163iere')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128765890835027394)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru a salva modific\0103rile f\0103cute pentru macheta \015Fi configura\0163ia grilei curente.<br>'),
unistr('Dezvoltatorii de aplica\0163ii pot defini multiple machete de raportare alternative. Acolo unde este permis, dvs. \015Fi al\0163i utilizatori finali pute\0163i salva un raport ca Public, acest lucru f\0103c\00E2nd raportul disponibil pentru to\0163i ceilal\0163i utilizatori din gri')
||unistr('l\0103. De asemenea, pute\0163i salva un raport ca un raport Privat pe care doar dvs. \00EEl pute\0163i vizualiza.</p>'),
unistr('<p>Selecta\0163i din tipurile disponibile \015Fi introduce\0163i un nume pentru raportul salvat.</p>')))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128767006670027394)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Asisten\0163\0103 raport'),
''))
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128765239358027394)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utiliza\0163i acest dialog pentru a seta ordinea de afi\015Fare.</p>'),
'',
unistr('<p><strong>List\0103 de sortare</strong><br>'),
unistr('Dialogul de sortare afi\015Feaz\0103 o list\0103 a regulilor de sortare configurate.<br>'),
unistr('Face\0163i clic pe Ad\0103ugare ( &plus; ) pentru a crea o coloan\0103 de sortare sau pe \015Etergere ( &minus; ) pentru a elimina o coloan\0103 de sortare.<br>'),
unistr('Face\0163i clic pe Mutare \00EEn sus ( &uarr; ) \015Fi Mutare \00EEn jos ( &darr; ) pentru a muta coloana de sortare selectat\0103 \00EEn sus \015Fi jos fa\0163\0103 de celelalte coloane de sortare.</p>'),
'',
unistr('<p><strong>Set\0103ri de sortare</strong><br>'),
unistr('Selecta\0163i o coloan\0103 de sortare, direc\0163ia de sortare \015Fi modul de ordonare pentru coloane nule (coloane f\0103r\0103 valori).</p>'),
'',
unistr('<p><em>Not\0103: datele pot fi sortate dup\0103 coloanele ce nu sunt afi\015Fate, totu\015Fi, nu toate coloanele se pot sorta.</em><br>'),
unistr('<em>Coloanele afi\015Fate pot fi sortate prin ap\0103sarea s\0103ge\0163ilor sus (ascendent) sau jos (descendent) de la cap\0103tul anteturilor de coloan\0103. Pentru a ad\0103uga o coloan\0103 ulterioar\0103 la o sortare existent\0103, \0163ine\0163i ap\0103sat\0103 tasta Shift \015Fi face\0163i clic pe s\0103geata ')
||'sus sau jos.</em></p>'))
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128767618182027394)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 sortare')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128766851208027394)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 abonament')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128720456858027380)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'ro'
,p_message_text=>'Ascundere'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128684828209027370)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'ro'
,p_message_text=>unistr('Eviden\0163iere')
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128754033951027390)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'ro'
,p_message_text=>'Ridicat'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128754803343027391)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'ro'
,p_message_text=>'Orizontal'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128713482063027378)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'ro'
,p_message_text=>'ore'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128718477932027380)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'ro'
,p_message_text=>unistr('Pictogram\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128683746270027369)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare pictogram\0103')
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128711628679027378)
,p_name=>'APEX.IG.IN'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128720016445027380)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'ro'
,p_message_text=>unistr('Setare inactiv\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128720106834027380)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'ro'
,p_message_text=>unistr('Set\0103ri inactive')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128727708845027382)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('A survenit o eroare intern\0103 la procesarea cererii de gril\0103 interactiv\0103.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128615601474027349)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Filtrul de coloan\0103 de tipul "%0" nu este acceptat pentru coloana "%1".')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128766634481027394)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'ro'
,p_message_text=>unistr('Format de dat\0103 nevalid')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128741400075027387)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Grila interactiv\0103 nu accept\0103 definirea unui filtru pe coloana %0.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128741382012027387)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu este un tip de filtru valid pentru definirea unui filtru de gril\0103 interactiv\0103.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128622239512027351)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'ro'
,p_message_text=>unistr('Format de num\0103r nevalid')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128769353935027395)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'ro'
,p_message_text=>unistr('Setare nevalid\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128769425698027395)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'ro'
,p_message_text=>unistr('Set\0103ri nevalide')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128760574217027392)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'ro'
,p_message_text=>unistr('Tipul de sortare a fost setat la %0, dar nu a fost selectat\0103 nicio coloan\0103 pentru %0.')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128757825787027391)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoare nevalid\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128752920929027390)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu se afi\015Feaz\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128712430885027378)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn ultimele')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128712654201027378)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn urm\0103torul')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128711515934027378)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>'nu este gol'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128711400214027378)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'ro'
,p_message_text=>'este gol'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128761355450027393)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Etichet\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128753355805027390)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Etichet\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128757239227027391)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'ro'
,p_message_text=>'Ultimul'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128701782570027375)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'ro'
,p_message_text=>'Ultima zi'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128701907684027375)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('Ultima or\0103')
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128702459326027375)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'ro'
,p_message_text=>'Ultimul minut'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128701424002027374)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Ultima lun\0103')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128701509386027375)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('Ultima s\0103pt\0103m\00E2n\0103')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128701672351027375)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'ro'
,p_message_text=>'Ultimele %0 zile'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128701832683027375)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'ro'
,p_message_text=>'Ultimele %0 ore'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128702565883027375)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'ro'
,p_message_text=>'Ultimele %0 minute'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128702337607027375)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'ro'
,p_message_text=>'Ultimele %0 luni'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128702260012027375)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('Ultimele %0 s\0103pt\0103m\00E2ni')
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128701207022027374)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'ro'
,p_message_text=>'Ultimii %0 ani'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128701373363027374)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'ro'
,p_message_text=>'Ultimul an'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128761571154027393)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'ro'
,p_message_text=>'Aliniere celule'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128761676689027393)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'ro'
,p_message_text=>'Utilizare grup pentru'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128712001943027378)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'ro'
,p_message_text=>unistr('mai mic dec\00E2t')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128712148347027378)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'ro'
,p_message_text=>'mai mic sau egal cu'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128755456658027391)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'ro'
,p_message_text=>'Linie'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128755567845027391)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'ro'
,p_message_text=>unistr('Linie cu zon\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128761999587027393)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'ro'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128754101534027390)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'ro'
,p_message_text=>'Redus'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128764442409027393)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'ro'
,p_message_text=>unistr('Separa\0163i adresele multiple prin virgule')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128713275981027378)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'ro'
,p_message_text=>unistr('se potrive\015Fte cu expresia logic\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128737685678027385)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'ro'
,p_message_text=>'Maxim'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128771981795027396)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'ro'
,p_message_text=>'Maxim general'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128737871964027385)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'ro'
,p_message_text=>unistr('Median\0103')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128772036384027396)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Median\0103 general\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128737553316027385)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'ro'
,p_message_text=>'Minim'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128713315851027378)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'ro'
,p_message_text=>'minute'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128738318380027386)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'ro'
,p_message_text=>unistr('Minute \00EEn urm\0103')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128771838963027396)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'ro'
,p_message_text=>'Minim general'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128713718266027378)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'ro'
,p_message_text=>'luni'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128720307615027380)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Datele con\0163in mai mult de %0 r\00E2nduri dep\0103\015Find maximul permis. Aplica\0163i filtre suplimentare pentru a vizualiza rezultatele.')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128746145055027388)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('ID-ul static pentru regiune trebuie s\0103 fie specificat deoarece pagina con\0163ine mai multe grile interactive.')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128716471097027379)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'ro'
,p_message_text=>'Nume'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128716647686027379)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Raport denumit'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128700602310027374)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Ziua urm\0103toare')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128700426071027374)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('Ora urm\0103toare')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128702623799027375)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'ro'
,p_message_text=>unistr('Minutul urm\0103tor')
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128700978416027374)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Luna urm\0103toare')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128700833056027374)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('S\0103pt\0103m\00E2na urm\0103toare')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128700796093027374)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'ro'
,p_message_text=>unistr('Urm\0103toarele %0 zile')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128700536562027374)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'ro'
,p_message_text=>unistr('Urm\0103toarele %0 ore')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128702744351027375)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'ro'
,p_message_text=>unistr('Urm\0103toarele %0 minute')
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128702002108027375)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'ro'
,p_message_text=>unistr('Urm\0103toarele %0 luni')
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128702194866027375)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('Urm\0103toarele %0 s\0103pt\0103m\00E2ni')
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128701136940027374)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'ro'
,p_message_text=>unistr('Urm\0103torii %0 ani')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128701000736027374)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Anul urm\0103tor')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128712345575027378)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn afara')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128711353592027378)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'ro'
,p_message_text=>'nu este egal cu'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128776103918027397)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Regiunea cu ID-ul %0 nu este o regiune cu gril\0103 interactiv\0103 sau nu exist\0103 \00EEn aplica\0163ia %1.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128711710698027378)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'ro'
,p_message_text=>unistr('nu este \00EEn')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128712586024027378)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'ro'
,p_message_text=>unistr('nu este \00EEn ultimele')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128712737376027378)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('nu este \00EEn urm\0103torul')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128720270371027380)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu au fost g\0103site date')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128757046910027391)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'ro'
,p_message_text=>'Valori nule'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128762112049027393)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoare numeric\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128757329532027391)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'ro'
,p_message_text=>'Oprit'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128757429254027391)
,p_name=>'APEX.IG.ON'
,p_message_language=>'ro'
,p_message_text=>'Pornit'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128710578978027377)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'ro'
,p_message_text=>'Acum 1 minut'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128764954745027394)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'ro'
,p_message_text=>'Deschidere selector de culori: %0'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128753890671027390)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'ro'
,p_message_text=>'Deschidere'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128717553224027379)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'ro'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128753281359027390)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'ro'
,p_message_text=>'Orientare'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128755644541027391)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'ro'
,p_message_text=>'Disc'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128718881655027380)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'ro'
,p_message_text=>'Pivot'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128684075517027369)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare pivot'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128764870042027394)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'ro'
,p_message_text=>unistr('Separa\0163i valorile cu "%0"')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128755729242027391)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'ro'
,p_message_text=>'Polar'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128761006419027392)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'ro'
,p_message_text=>'Centru'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128761183846027392)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'ro'
,p_message_text=>unistr('Sf\00E2r\015Fit')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128760947248027392)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'ro'
,p_message_text=>'Start'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128716771849027379)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'ro'
,p_message_text=>'Principal'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128717098550027379)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'ro'
,p_message_text=>'Prestabilit principal'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128733501673027384)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Raport principal'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128607100910027346)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'ro'
,p_message_text=>'Includere etichete de accesibilitate'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128604554107027345)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'ro'
,p_message_text=>'Peisaj'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128604628861027345)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'ro'
,p_message_text=>'Portret'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128604459225027345)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'ro'
,p_message_text=>unistr('Orientare pagin\0103')
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128604343689027345)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'ro'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128604231372027345)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'ro'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128607341591027346)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'ro'
,p_message_text=>'Personalizat'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128604051205027345)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'ro'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128603937083027345)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'ro'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128604151668027345)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'ro'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128603841887027345)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'ro'
,p_message_text=>unistr('Dimensiune pagin\0103')
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128569454875027335)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'ro'
,p_message_text=>'Golire text formatat'
,p_is_js_message=>true
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128755889988027391)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'ro'
,p_message_text=>'Radar'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128755983786027391)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'ro'
,p_message_text=>'Interval'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128766132280027394)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'ro'
,p_message_text=>'Reactualizare'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128721093224027380)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('Reactualizare r\00E2nd')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128719832016027380)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('Reactualizare r\00E2nduri')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128725092458027382)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Regiunea de gril\0103 interactiv\0103 nu exist\0103 \00EEn aplica\0163ia %0, pagina %1 \015Fi regiunea %2.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128685523280027370)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'ro'
,p_message_text=>'Eliminare %0'
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128716112573027379)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'ro'
,p_message_text=>'Raport'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128775353925027397)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'ro'
,p_message_text=>unistr('Raport \015Fters')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128775047724027397)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'ro'
,p_message_text=>unistr('Raport alternativ salvat pentru to\0163i utilizatorii')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128774988279027397)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'ro'
,p_message_text=>unistr('Raport prestabilit salvat pentru to\0163i utilizatorii')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128775222555027397)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'ro'
,p_message_text=>'Raport privat salvat'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128775124450027397)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'ro'
,p_message_text=>unistr('Raport public salvat pentru to\0163i utilizatorii')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128725163121027382)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Grila interactiv\0103 salvat\0103 cu numele %0 nu exist\0103.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128710403980027377)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'ro'
,p_message_text=>'Datele grilei de acum %0 minute'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128710376242027377)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'ro'
,p_message_text=>'Datele grilei de acum 1 minut'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128645823951027358)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Raportul de gril\0103 interactiv nu exist\0103.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128768309441027395)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'ro'
,p_message_text=>'Raport - Editare'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128724991523027382)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Grila interactiv\0103 salvat\0103 cu ID-ul %0 nu exist\0103.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128768209496027395)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'ro'
,p_message_text=>'Raport - Salvare ca'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128685608166027370)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'ro'
,p_message_text=>unistr('Set\0103ri gril\0103')
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128776216800027397)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Grila interactiv\0103 salvat\0103 cu ID-ul static %0 nu exist\0103.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128771226156027396)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare raport'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128684738349027370)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'ro'
,p_message_text=>'Resetare'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128721176870027380)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'ro'
,p_message_text=>unistr('Anulare modific\0103ri')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128719985896027380)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('Restabilire r\00E2nduri')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128717177869027379)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2nd')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128716074358027379)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2nduri pe pagin\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128775878464027397)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iuni r\00E2nd')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128777054578027397)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iuni pentru r\00E2ndul %0')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128685079581027370)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'ro'
,p_message_text=>'Salvare'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128730184041027383)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'ro'
,p_message_text=>'salvat'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128634741352027355)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Raport salvat: %0'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128683221119027369)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'ro'
,p_message_text=>'Rapoarte salvate'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128683313384027369)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'ro'
,p_message_text=>'Prestabilit'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128656843249027361)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'ro'
,p_message_text=>unistr('Exist\0103 deja un raport salvat cu denumirea %0. Introduce\0163i un nume nou.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128683401481027369)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'ro'
,p_message_text=>'Privat'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128683539057027369)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'ro'
,p_message_text=>'Public'
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128770977865027395)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'ro'
,p_message_text=>'Salvare ca'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128719213470027380)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'ro'
,p_message_text=>unistr('Salvare set\0103ri raport')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128756086507027391)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'ro'
,p_message_text=>'Dispersie'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128683157319027369)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare')
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128763254204027393)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare: toate coloanele de text')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128683084381027369)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare: %0')
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128762566830027393)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare: text integral')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128710299601027377)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare pentru ''%0''')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128752673049027390)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'ro'
,p_message_text=>'- Selectare -'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128692716808027372)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'ro'
,p_message_text=>'Selectare'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128745888639027388)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i 1 r\00E2nd \00EEn regiunea p\0103rinte')
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128682968993027369)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i coloanele pentru c\0103utare')
,p_is_js_message=>true
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128775539150027397)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iuni selectare')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128692911038027372)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare celul\0103')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128692809293027372)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare r\00E2nduri')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128763891554027393)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'ro'
,p_message_text=>'Trimitere ca e-mail'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128756418816027391)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'ro'
,p_message_text=>'Serie'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128680686949027368)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare')
,p_is_js_message=>true
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128735813137027385)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare valoare general\0103')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128720775345027380)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare pentru un singur r\00E2nd')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128719036152027380)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'ro'
,p_message_text=>'Sortare'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128756564587027391)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'ro'
,p_message_text=>unistr('Sortare dup\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128775928556027397)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Pute\0163i defini o singur\0103 sortare per coloan\0103.')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128775769172027397)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'ro'
,p_message_text=>'Modificare'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128757506367027391)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'ro'
,p_message_text=>unistr('Stiv\0103')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128713071927027378)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEncepe cu')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128756128536027391)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'ro'
,p_message_text=>'Stoc'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128675454116027367)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>unistr('Extindere l\0103\0163imi coloane')
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128719451379027380)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'ro'
,p_message_text=>'Abonament'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128737443317027385)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'ro'
,p_message_text=>unistr('Sum\0103')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128777201457027397)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'ro'
,p_message_text=>unistr('Gril\0103 interactiv\0103. Raport: %0, Vizualizare: %1.')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128771357202027396)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Sum\0103 general\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128754399299027390)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Destina\0163ie')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128760754262027392)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'ro'
,p_message_text=>'Culoare text'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128685702654027370)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'ro'
,p_message_text=>'Comutare'
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128567821140027334)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Gril\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128735729181027385)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'ro'
,p_message_text=>'Sugestie'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128716242813027379)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'ro'
,p_message_text=>'Tip'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128720628105027380)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'ro'
,p_message_text=>unistr('Dezghe\0163are')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128717784369027379)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'ro'
,p_message_text=>'Unitate'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128763667549027393)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'ro'
,p_message_text=>unistr('Exist\0103 modific\0103ri nesalvate. Continua\0163i?')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128717682224027379)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'ro'
,p_message_text=>'Valoare'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128753416225027390)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'ro'
,p_message_text=>'Valoare'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128758370401027392)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>'Este obligatorie o valoare.'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128743576005027387)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'ro'
,p_message_text=>'Valoare (fusul orar nu poate fi modificat)'
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128762259645027393)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'ro'
,p_message_text=>'Text'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128754713246027391)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'ro'
,p_message_text=>'Vertical'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128715703959027379)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128650892315027359)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Grila este \00EEn modul Vizualizare, ap\0103sa\0163i pentru a o edita')
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128752798267027390)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fat')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128754213722027390)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'ro'
,p_message_text=>'Volum'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128713637333027378)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('s\0103pt\0103m\00E2ni')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128752869248027390)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'ro'
,p_message_text=>unistr('L\0103\0163ime minim\0103 coloan\0103 (pixeli)')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128704838254027376)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 este \00EEntre %1 \015Fi %2')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128704527636027375)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 con\0163ine %1')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128704623109027376)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu con\0163ine %1')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128680084432027368)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEncepe cu %1')
,p_is_js_message=>true
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128703350567027375)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'ro'
,p_message_text=>'%0 egal cu %1'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128703568900027375)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'ro'
,p_message_text=>'%0 mai mare ca %1'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128703637310027375)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'ro'
,p_message_text=>'%0 mai mare sau egal cu %1'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128704378850027375)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 este \00EEn %1')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128705508073027376)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultimele %1 zile')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128705337992027376)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultimele %1 ore')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128705120303027376)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultimele %1 minute')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128705959325027376)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultimele %1 luni')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128705705930027376)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultimele %1 s\0103pt\0103m\00E2ni')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128706132302027376)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultimii %1 ani')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128705463877027376)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultima zi')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128705277560027376)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultima or\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128705092420027376)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultimul minut')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128705805417027376)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultima lun\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128705677767027376)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultima s\0103pt\0103m\00E2n\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128706029147027376)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn ultimul an')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128707985806027376)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103toarele %1 zile')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128707775678027376)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103toarele %1 ore')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128707542255027376)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103toarele %1 minute')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128708377253027377)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103toarele %1 luni')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128708139557027377)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103toarele %1 s\0103pt\0103m\00E2ni')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128708552653027377)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103tori %1 ani')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128707802241027376)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103toarea zi')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128707661323027376)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103toarea or\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128707443871027376)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103torul minut')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128708266667027377)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103toarea lun\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128708045740027377)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103toarea s\0103pt\0103m\00E2n\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128708456926027377)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEn urm\0103torul an')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128704019262027375)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>'%0 nu este gol'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128703925207027375)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'ro'
,p_message_text=>'%0 este gol'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128703753936027375)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'ro'
,p_message_text=>'%0 mai mic ca %1'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128703822580027375)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'ro'
,p_message_text=>'%0 mai mic sau egal cu %1'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128704128372027375)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'ro'
,p_message_text=>'%0 la fel ca %1'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128704755848027376)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 se potrive\015Fte cu expresia logic\0103 %1')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128710681788027377)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'ro'
,p_message_text=>'Acum %0 minute'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128704931633027376)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu este \00EEntre %1 \015Fi %2')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128703450845027375)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'ro'
,p_message_text=>'%0 nu este egal cu %1'
,p_is_js_message=>true
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128704456368027375)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu este \00EEn %1')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128706762423027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultimele %1 zile')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128706588513027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultimele %1 ore')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128706306034027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultimele %1 minute')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128707175991027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultimele %1 luni')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128706922724027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultimele %1 s\0103pt\0103m\00E2ni')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128707390720027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultimii %1 ani')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128706603731027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultima zi')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128706435960027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultima or\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128706225944027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultimul minut')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128707019551027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultima lun\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128706857127027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultima s\0103pt\0103m\00E2n\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128707201362027376)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn ultimul an')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128709104758027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103toarele %1 zile')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128708982066027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103toarele %1 ore')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128708788704027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103toarele %1 minute')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128709503118027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103toarele %1 luni')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128709303875027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103toarele %1 s\0103pt\0103m\00E2ni')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128709767643027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103torii %1 ani')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128709011926027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103toarea zi')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128708814192027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103toarea or\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128708655169027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103torul minut')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128709406563027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103toarea lun\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128709263422027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103toarea s\0103pt\0103m\00E2n\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128709661897027377)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu \00EEn urm\0103torul an')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128704251750027375)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'ro'
,p_message_text=>'%0 diferit de %1'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128711113050027377)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 \00EEncepe cu %1')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128753521522027390)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'ro'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128713848576027378)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'ro'
,p_message_text=>'ani'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128753683079027390)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'ro'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128753740082027390)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'ro'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128762716617027393)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'ro'
,p_message_text=>'Luni, 12 ianuarie 2016'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128762831554027393)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'ro'
,p_message_text=>'Ianuarie'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128762947544027393)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'ro'
,p_message_text=>unistr('16 ore \00EEn urm\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128763004466027393)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn 16h')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128581086933027338)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'ro'
,p_message_text=>'Aplicare'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128573090723027336)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Glisa\0163i imaginea \015Fi utiliza\0163i sliderul de zoom pt. a o repozi\0163iona \00EEn cadru.</p>'),
'',
unistr('<p>C\00E2nd sunte\0163i cu mouse-ul pe instrumentul de decupare a imaginii, sunt disponibile urm\0103toarele scurt\0103turi din taste:</p>'),
'<ul>',
unistr('    <li>S\0103geat\0103 st\00E2nga: Muta\0163i imaginea spre st\00E2nga*</li>'),
unistr('    <li>S\0103geat\0103 sus: Muta\0163i imaginea \00EEn sus*</li>'),
unistr('    <li>S\0103geat\0103 dreapta: Muta\0163i imaginea spre dreapta*</li>'),
unistr('    <li>S\0103geat\0103 jos: Muta\0163i imaginea \00EEn jos*</li>'),
unistr('    <li>I: M\0103rire</li>'),
unistr('    <li>O: Mic\015Forare</li>'),
unistr('    <li>L: Roti\0163i la st\00E2nga</li>'),
unistr('    <li>R: Roti\0163i la dreapta</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*\0162ine\0163i ap\0103sat\0103 tasta Shift pt. a v\0103 deplasa mai repede</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128573255445027336)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 pt. decuparea imaginilor')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128581148079027338)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'ro'
,p_message_text=>'Resetare'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128573589937027336)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'ro'
,p_message_text=>'Decupare imagine'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128581252833027338)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Muta\0163i sliderul pentru ajustarea nivelului de zoom')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128610851626027347)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'ro'
,p_message_text=>unistr('Tip de fi\015Fier nevalid. Tipuri de fi\015Fiere acceptate %0.')
,p_is_js_message=>true
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128745204035027388)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'ro'
,p_message_text=>'Parcurgere'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128744924197027388)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare fi\015Fier')
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128745020957027388)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'ro'
,p_message_text=>'Selectare filtre'
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128610667042027347)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Glisare \015Fi plasare')
,p_is_js_message=>true
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128611031007027347)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'ro'
,p_message_text=>unistr('Glisare \015Fi plasare fi\015Fiere')
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128612402510027348)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i un fi\015Fier sau plasa\0163i unul aici.')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128612503483027348)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i fi\015Fiere sau plasa\0163i-le aici.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128612656425027348)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i un fi\015Fier sau plasa\0163i unul aici.')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128612799837027348)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i fi\015Fiere sau plasa\0163i-le aici.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128610977752027347)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 fi\015Fiere')
,p_is_js_message=>true
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128610735057027347)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'ro'
,p_message_text=>unistr('Fi\015Fierul este prea mare. Dimensiunea maxim\0103 a fi\015Fierului este de %0.')
,p_is_js_message=>true
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128591243434027341)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu sunt acceptate \00EEnc\0103rc\0103rile mai multor fi\015Fiere.')
,p_is_js_message=>true
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128574125265027336)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'ro'
,p_message_text=>'Eliminare'
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128579644194027338)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>'Adresa este obligatorie.'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128578549469027338)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'ro'
,p_message_text=>'Localitate'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128578965220027338)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'ro'
,p_message_text=>unistr('Cod \0163ar\0103')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128578670331027338)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103r cas\0103')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128579585971027338)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'ro'
,p_message_text=>'Latitudine'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128579437613027338)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'ro'
,p_message_text=>'Longitudine'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128579310285027338)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare pe hart\0103')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128579082179027338)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'ro'
,p_message_text=>'Punctaj'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128578793672027338)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'ro'
,p_message_text=>unistr('Cod po\015Ftal')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128578858646027338)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'ro'
,p_message_text=>'Stare'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128578483875027338)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'ro'
,p_message_text=>unistr('Strad\0103')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128578370351027338)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'ro'
,p_message_text=>'Rezultate geocodificare'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128609845453027347)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'ro'
,p_message_text=>unistr('Cu codificare geografic\0103')
,p_is_js_message=>true
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128609904886027347)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'ro'
,p_message_text=>unistr('F\0103r\0103 codificare geografic\0103')
,p_is_js_message=>true
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128579228809027338)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Hart\0103')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128579180991027338)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost g\0103sit\0103 nicio adres\0103.')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128579715163027338)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'ro'
,p_message_text=>'%0 este obligatoriu.'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128685991043027370)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'ro'
,p_message_text=>'Obligatoriu: %0 sau %1.'
,p_is_js_message=>true
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128775441309027397)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualiza\0163i textul de asisten\0163\0103 pentru %0.')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128581438558027339)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'ro'
,p_message_text=>'Selectare imagine'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128581596640027339)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'ro'
,p_message_text=>'Selectare imagini'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128581343971027339)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('Desc\0103rcare')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128581642484027339)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Glisare \015Fi plasare')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128581703884027339)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'ro'
,p_message_text=>unistr('Glisare \015Fi plasare imagini')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128581897267027339)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i o imagine sau plasa\0163i una aici.')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128581998886027339)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i imagini sau plasa\0163i-le aici.')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128582048779027339)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i o imagine sau plasa\0163i una aici.')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128582137889027339)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i imagini sau plasa\0163i-le aici.')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128666827330027364)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'ro'
,p_message_text=>'Bifat'
,p_is_js_message=>true
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128666993405027364)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'ro'
,p_message_text=>'Nebifat'
,p_is_js_message=>true
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128694472873027372)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'ro'
,p_message_text=>unistr('Caset\0103 combinat\0103 read-only goal\0103')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128692287298027372)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'ro'
,p_message_text=>unistr('Caset\0103 list\0103 read-only goal\0103')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128692091679027372)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'ro'
,p_message_text=>unistr('Caset\0103 combinat\0103 read-only')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128692103651027372)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'ro'
,p_message_text=>unistr('Caset\0103 list\0103 read-only')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128607885710027346)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# nu este \00EEn intervalul valid de la %0 la %1.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128607947100027346)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'ro'
,p_message_text=>'#LABEL# nu este un multiplu de %0.'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128695278488027373)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'ro'
,p_message_text=>'Comutator read-only'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128635832738027355)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'ro'
,p_message_text=>unistr('Editare op\0163iune read-only cu un link')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128607433802027346)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 corespund\0103 valorilor %0 \015Fi %1.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128607689205027346)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Nu'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128693995986027372)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Oprit'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128694022297027372)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Pornit'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128607582589027346)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Da'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128615452551027349)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'ro'
,p_message_text=>unistr('Selector de limb\0103')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128551894807027330)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare intrare')
,p_version_scn=>2693296
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128728680076027383)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128728751121027383)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'ro'
,p_message_text=>'Eliminare'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128551979449027330)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'ro'
,p_message_text=>unistr('Intr\0103ri selectate')
,p_version_scn=>2693296
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128732492831027384)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'ro'
,p_message_text=>'Avansat'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128732729891027384)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'ro'
,p_message_text=>'Anulare'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128732548431027384)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'ro'
,p_message_text=>'Comun'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128732851487027384)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Op\0163iuni \015Fablon live')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128733484097027384)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Op\0163iunile pentru \015Fablon nu sunt disponibile deoarece aceast\0103 component\0103 nu este randat\0103 pe pagin\0103.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128732319231027384)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost g\0103sit\0103 nicio op\0163iune de \015Fablon.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128732645302027384)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'ro'
,p_message_text=>'Salvare'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128586431940027340)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'ro'
,p_message_text=>'Eliminare cerc'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128588865204027341)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'ro'
,p_message_text=>unistr('Stilurile personalizate nu sunt \00EEn format JSON valid.')
,p_version_scn=>2693302
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128586793474027340)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'ro'
,p_message_text=>unistr('Instrumentul Distan\0163\0103')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128586509034027340)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'ro'
,p_message_text=>'Desenare cerc'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128566303192027334)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Loca\0163ie curent\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128572794946027336)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'ro'
,p_message_text=>unistr('Coordonatele pozi\0163iei ini\0163iale sunt nevalide.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128561781769027333)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Pozi\0163ia ini\0163ial\0103 trebuie s\0103 fie un punct geometric.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128570303714027335)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'ro'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128565581607027334)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'ro'
,p_message_text=>'Strat'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128735950834027385)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'ro'
,p_message_text=>'Strat: %0'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128584763220027340)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'ro'
,p_message_text=>unistr('Hart\0103')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128554456374027331)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'ro'
,p_message_text=>'Mesaje'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128570527652027335)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'ro'
,p_message_text=>'mile'
,p_is_js_message=>true
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128734944255027385)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Datele con\0163in mai mult de %0 r\00E2nduri dep\0103\015Find maximul permis.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128564886668027334)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'ro'
,p_message_text=>unistr('&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Termeni</a> &nbsp;&nbsp; Date hart\0103 &copy; 2021 AICI')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128561415943027333)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Tipul de date SDO_GEOMETRY nu este disponibil \00EEn aceast\0103 baz\0103 de date.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128564988822027334)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'ro'
,p_message_text=>'<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; Contributori OpenStreetMap </a>'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128589590147027341)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'ro'
,p_message_text=>'<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; Contributori OpenStreetMap </a>'
,p_version_scn=>2693305
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128565792113027334)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'ro'
,p_message_text=>'Puncte'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128736044568027385)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'ro'
,p_message_text=>'%0 puncte'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128586688546027340)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'ro'
,p_message_text=>'Zoom dreptunghi'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128586386596027340)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>'Eliminare'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128566126271027334)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Resetare orientare c\0103tre nord')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128680916501027368)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'ro'
,p_message_text=>'Comutare mod 2D'
,p_is_js_message=>true
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128681022970027368)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'ro'
,p_message_text=>'Comutare mod 3D'
,p_is_js_message=>true
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128586286364027340)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'ro'
,p_message_text=>unistr('Comutare not\0103 de Copyright')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128586843501027340)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'ro'
,p_message_text=>unistr('Distan\0163a total\0103')
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128565839335027334)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'ro'
,p_message_text=>unistr('M\0103rire')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128566002423027334)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'ro'
,p_message_text=>unistr('Mic\015Forare')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128730509959027383)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'ro'
,p_message_text=>'Aldin'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128731483986027384)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'ro'
,p_message_text=>'Imagine'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128731068435027383)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'ro'
,p_message_text=>'Cod inline'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128743736376027387)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'ro'
,p_message_text=>'Inserare imagine'
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128743886375027387)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'ro'
,p_message_text=>unistr('Inserare leg\0103tur\0103')
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128730653623027383)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'ro'
,p_message_text=>'Cursiv'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128744416894027387)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'ro'
,p_message_text=>unistr('Leg\0103tur\0103')
,p_is_js_message=>true
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128731326202027384)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103')
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128731295649027383)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103 ordonat\0103')
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128730723814027383)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'ro'
,p_message_text=>'Previzualizare'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128730880970027383)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'ro'
,p_message_text=>'Nimic de previzualizat'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128730903577027383)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'ro'
,p_message_text=>unistr('Text t\0103iat cu o linie')
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128731164460027383)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103 neordonat\0103')
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128710021130027377)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'ro'
,p_message_text=>'curent'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128766212292027394)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Mai mult...'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128709928266027377)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'ro'
,p_message_text=>unistr('Se \00EEncarc\0103')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128624113447027351)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'ro'
,p_message_text=>'Butonul Divizare'
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128624068238027351)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'ro'
,p_message_text=>'Meniu - Divizare'
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128741061464027386)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'ro'
,p_message_text=>'Mesaj de notificare'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128565136357027334)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a g\0103sit niciun obiect %0')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128715001530027379)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 fie un num\0103r mai mic sau egal cu %0.')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128715116623027379)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 fie un num\0103r valid.')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128715255594027379)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# nu corespunde formatului de num\0103r %0 (exemplu: %1).')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128714955848027379)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 fie un num\0103r mai mare sau egal cu %0.')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128714822473027379)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 fie un num\0103r cuprins \00EEntre %0 \015Fi %1.')
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128710117786027377)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'ro'
,p_message_text=>unistr('se deschide \00EEn fereastr\0103 nou\0103')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128659952919027362)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'ro'
,p_message_text=>unistr('Aceast\0103 pagin\0103 a fost deja trimis\0103 \015Fi nu poate fi retrimis\0103.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128641342218027356)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Aplica\0163ia "%0", pagina "%1" nu a fost g\0103sit\0103.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128676855542027367)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('#LABEL# trebuie s\0103 aib\0103 o valoare.')
,p_is_js_message=>true
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128567546506027334)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'ro'
,p_message_text=>unistr('Ascundere parol\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128567405920027334)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare parol\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128615008569027349)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128729028399027383)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnchidere')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128728973090027383)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare %0')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128729217467027383)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnainte')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128729122322027383)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128605804970027346)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'ro'
,p_message_text=>unistr('Introduce\0163i un termen de c\0103utare de cel pu\0163in %0 caractere.')
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128682190797027369)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103 de valori pop-up: %0')
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128605971373027346)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'ro'
,p_message_text=>unistr('Introduce\0163i un termen de c\0103utare.')
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128552974222027330)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103 de valori')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128605774657027346)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost g\0103sit niciun rezultat.')
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128605630662027346)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'ro'
,p_message_text=>'Eliminare %0'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128702809519027375)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'ro'
,p_message_text=>unistr('Termen de c\0103utat')
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128728865324027383)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare')
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128555026259027331)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Necesit\0103 %0.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128567369709027334)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la tip\0103rirea raportului.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128578142618027338)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'ro'
,p_message_text=>unistr('Documentul nu a putut fi tip\0103rit cu serverul de tip\0103rire configurat.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128600842775027344)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la evaluarea parametrului %0, \00EEn timpul apel\0103rii %1. Pentru detalii, consulta\0163i jurnalul de erori.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128739526777027386)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'ro'
,p_message_text=>unistr('Se proceseaz\0103')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128598665520027344)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128599752682027344)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'ro'
,p_message_text=>unistr('Acest site web are func\0163ionalit\0103\0163i pentru aplica\0163ii. Pentru o experien\0163\0103 optim\0103, instala\0163i-l pe dispozitivul dvs.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128601089190027344)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnainte')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128602627334027345)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Instala\0163i aceast\0103 aplica\0163ie')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128587405171027340)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Dispozitivul sau browserul dvs. nu par s\0103 accepte instalarea Progressive Web Apps momentan.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128582545893027339)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'ro'
,p_message_text=>unistr('1. Ap\0103sa\0163i pictograma <strong>Partajare</strong>')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128582623429027339)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'ro'
,p_message_text=>unistr('2. Derula\0163i \00EEn jos \015Fi atinge\0163i <strong>Ad\0103ugare la ecranul Home</strong>')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128599091743027344)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'ro'
,p_message_text=>unistr('3. Atinge\0163i <strong style="color:#007AE1;">Ad\0103ugare</strong> pentru a confirma')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128598128658027343)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'ro'
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
'    <h1>Nu se poate stabili o conexiune</h1>',
unistr('    <p>Se pare c\0103 exist\0103 o problem\0103 de re\0163ea. Verifica\0163i conexiunea \015Fi \00EEncerca\0163i din nou.</p>'),
unistr('    <button type="button">Re\00EEncercare</button>'),
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128598003366027343)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Conectare nereu\015Fit\0103')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128644650844027357)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-au putut activa \00EEn\015Ftiin\0163\0103rile push pe acest dispozitiv.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128650164817027359)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Selec\0163ii rapide pentru %0')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128650050140027359)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Link pentru selec\0163ie rapid\0103')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128623873909027351)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'ro'
,p_message_text=>'Buton radio ascuns vizual'
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128567905077027335)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare pentru un singur r\00E2nd')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128750616842027389)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128695934132027373)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'ro'
,p_message_text=>'De o zi'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128773532970027396)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'ro'
,p_message_text=>unistr('Trimitere invita\0163ie')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128773326689027396)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Op\0163iuni')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128697781772027373)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare zilnic\0103 pentru toat\0103 ziua ')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128697514329027373)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare zilnic\0103 pentru datele cu ora ')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128741770362027387)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'ro'
,p_message_text=>'Zi'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128736718083027385)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>'Descriere'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128620277998027350)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'ro'
,p_message_text=>'CSV'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128620029990027350)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'ro'
,p_message_text=>'iCal'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128619969823027350)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'ro'
,p_message_text=>'PDF'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128620122186027350)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'ro'
,p_message_text=>'XML'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128619659063027350)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Data final\0103')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128619823626027350)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'ro'
,p_message_text=>'Nume eveniment'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128773496973027396)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Invita\0163ie')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128741810601027387)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128741578557027387)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Lun\0103')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128744134896027387)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnainte')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128758129815027392)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'ro'
,p_message_text=>unistr('F\0103r\0103 evenimente')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128773774694027396)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'ro'
,p_message_text=>unistr('Edita\0163i un eveniment existent.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128773674181027396)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'ro'
,p_message_text=>unistr('Trimite\0163i o invita\0163ie prin e-mail')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128744295893027387)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128751958532027390)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'ro'
,p_message_text=>'Trimitere e-mail'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128751747504027390)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'ro'
,p_message_text=>'Trimitere e-mail'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128774353554027397)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Completarea tuturor c\00E2mpurilor este obligatorie.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128774290312027396)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Trimitere invita\0163ie')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128773264661027396)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'ro'
,p_message_text=>'Subiect'
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128751821942027390)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'ro'
,p_message_text=>'Destinatar'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128619720628027350)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Data ini\0163ial\0103')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128749914791027389)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'ro'
,p_message_text=>'Formular pe %0'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128697308121027373)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'ro'
,p_message_text=>unistr('Or\0103')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128744351829027387)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Ast\0103zi')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128742315230027387)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128741619730027387)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('S\0103pt\0103m\00E2n\0103')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128697682583027373)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare s\0103pt\0103m\00E2nal\0103 pentru toat\0103 ziua')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128697467233027373)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare s\0103pt\0103m\00E2nal\0103 pentru datele cu ora')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128742287646027387)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'ro'
,p_message_text=>'An'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128741968786027387)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'ro'
,p_message_text=>'Coloane...'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128742004067027387)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcare mai multe...')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128671439021027366)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128612901395027348)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcare mai multe...')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128615298774027349)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare...')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128742138861027387)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcare mai multe...')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128744073497027387)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('ID-ul de regiune %0 nu a fost g\0103sit.')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128615179656027349)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu au fost g\0103site date')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128642687541027357)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a putut reseta pagina\0163ia regiunii.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128606358553027346)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la setarea pagina\0163iei regiunii.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128736105915027385)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'ro'
,p_message_text=>'Coloane...'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128590647080027341)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcarea cu \00EEnt\00E2rzieri nu este compatibil\0103 cu sloturile din %0, aceasta fiind o regiune individual\0103 (par\0163ial\0103). Dezactiva\0163i \00EEnc\0103rcarea cu \00EEnt\00E2rzieri pt. aceast\0103 regiune sau muta\0163i componentele din slot \00EEn alt\0103 regiune.')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128585958791027340)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Lipse\015Fte \015Fablonul pentru grup \00EEn componenta de \015Fablon pt. %0.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128580958126027338)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 este o singur\0103 regiune (par\0163ial\0103) \015Fi a returnat mai multe r\00E2nduri.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128743918305027387)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>'Tipul de regiune %0 nu este acceptat.'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128606245236027346)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Eroare la randarea regiunii "#COMPONENT_NAME#".'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128676943336027367)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('#COLUMN_HEADER# trebuie s\0103 aib\0103 o valoare.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128558521084027332)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Trebuie s\0103 specifica\0163i un aspect pt. raport.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128772898245027396)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'ro'
,p_message_text=>'%0, editor de text formatat'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128679052992027368)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'ro'
,p_message_text=>unistr('Cre\015Fterea de text formatat HTML dep\0103\015Fe\015Fte lungimea maxim\0103 a articolului (caractere efective %0, permise %1)')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128588476581027341)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'ro'
,p_message_text=>'Editor de text formatat read-only'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128588364401027341)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'ro'
,p_message_text=>'Editor de text formatat'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128588193558027340)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'ro'
,p_message_text=>'Aliniere'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128588201266027341)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'ro'
,p_message_text=>'Suplimentare'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128587997844027340)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'ro'
,p_message_text=>'Font'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128587895648027340)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'ro'
,p_message_text=>'Formatare'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128588008871027340)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'ro'
,p_message_text=>'Liste'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128741142970027386)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Etergere')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128733651262027384)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'ro'
,p_message_text=>'Duplicat'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128731988842027384)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloane afi\015Fate')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128731805599027384)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'ro'
,p_message_text=>'Excludere valori nule'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128741215717027386)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128695580993027373)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'ro'
,p_message_text=>unistr('Mutare \00EEn jos')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128695622358027373)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'ro'
,p_message_text=>unistr('Mutare \00EEn sus')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128731676121027384)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnainte')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128732267416027384)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Alte coloane'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128731762176027384)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128732048641027384)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2ndul %0')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128732151949027384)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2ndul %0 din %1')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128733704528027384)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'ro'
,p_message_text=>'Reactualizare'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128733815190027384)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'ro'
,p_message_text=>unistr('Anulare modific\0103ri')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128731583538027384)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'ro'
,p_message_text=>unistr('Set\0103ri')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128690744053027371)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'ro'
,p_message_text=>'De exemplu, %0'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128695075160027373)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'ro'
,p_message_text=>'Exemplu: %0'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128607701010027346)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'ro'
,p_message_text=>'1 rezultat'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128604820566027346)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'ro'
,p_message_text=>'%0 rezultate'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128656660450027361)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'ro'
,p_message_text=>'Paginare'
,p_is_js_message=>true
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128656797955027361)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'ro'
,p_message_text=>'Rezultate, %0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128552458704027330)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'ro'
,p_message_text=>'Reconectare'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128552333104027330)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Sesiunea dvs. a fost \00EEncheiat\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128552537287027330)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'ro'
,p_message_text=>'Extindere'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128552138890027330)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'ro'
,p_message_text=>unistr('Sesiunea dvs. se va \00EEncheia la %0. Dori\0163i s\0103 o extinde\0163i?')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128552264109027330)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'ro'
,p_message_text=>unistr('Sesiunea dvs. va \00EEnceta la %0 \015Fi nu poate fie extins\0103. Salva\0163i lucr\0103rile acum pentru a evita pierderea de date')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128751505294027390)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la procesarea codului de cur\0103\0163are pentru sesiunea bazei de date.')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128641248388027356)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Eroare la procesarea codului de configurare pentru sesiunea bazei de date.'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128611656702027348)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Sesiunea dvs. a fost \00EEncheiat\0103.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128750753892027389)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnchide\0163i acest dialog \015Fi ap\0103sa\0163i pe butonul de re\00EEnc\0103rcare al browserului pentru a ob\0163ine o nou\0103 sesiune.')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128769670558027395)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'ro'
,p_message_text=>unistr('<a href="%0">Conecta\0163i-v\0103</a> din nou pentru a crea o nou\0103 sesiune.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128653958498027360)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'ro'
,p_message_text=>unistr('Sesiune nevalid\0103')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128697058587027373)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-au putut activa roluri dinamice \00EEn sesiunea Real Application Security pentru utilizatorul "%0".')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128639171547027356)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>'ERR-99900 Nu s-a putut crea ID-ul de sesiune unic: %0'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128568249223027335)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>'Pentru elementul %0, nu este permis tipul de date CLOB pentru starea sesiunii.'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128587680033027340)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu este permis\0103 \00EEnlocuirea elementelor cu tipul de date CLOB pentru starea sesiunii.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128656465031027361)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103lcare a protec\0163iei pentru starea sesiunii: Acest lucru poate fi generat de modificarea manual\0103 a elementului de pagin\0103 protejat %0. Dac\0103 nu sunte\0163i sigur de sursa acestei erori, contacta\0163i administratorul aplica\0163iei pentru asisten\0163\0103.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128777607739027398)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103lcare a protec\0163iei pentru pagin\0103: acest lucru poate fi produs de trimiterea unei pagini ce nu terminase \00EEnc\0103rcarea sau prin modificarea manual\0103 a elementelor de pagin\0103 protejate. Pentru asisten\0163\0103 suplimentar\0103 contacta\0163i administratorul aplica\0163iei')
||'.'
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128776789098027397)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 con\0163ine unul dintre urm\0103toarele caractere nevalide &<>"/;,*|=% sau --')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128776852910027397)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 con\0163ine unul dintre urm\0103toarele caractere nevalide &<>"/;,*|=% sau -- sau o linie nou\0103.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128776552490027397)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 con\0163ine caractere speciale. Numai caracterele a-Z, 0-9 \015Fi spa\0163iile sunt permise.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128776600190027397)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 con\0163ine <, > sau ". Acestea sunt caractere nevalide.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128614024327027348)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost furnizat\0103 nicio sum\0103 de control pentru a afi\015Fa procesarea pentru o pagin\0103 ce necesit\0103 o sum\0103 de control atunci c\00E2nd una sau mai multe valori de cerere, golire memorie cache sau argument sunt trecute ca parametri.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128651384505027359)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103lcare a protec\0163iei pentru starea sesiunii: Acest lucru poate fi generat de modificarea manual\0103 a unei adrese de URL ce con\0163ine o sum\0103 de control sau prin utilizarea unui link cu o sum\0103 de control incorect\0103 sau lips\0103. Dac\0103 nu sunte\0163i sigur de surs')
||unistr('a acestei erori, contacta\0163i administratorul aplica\0163iei pentru asisten\0163\0103.')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128732959408027384)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'ro'
,p_message_text=>unistr('Seta\0163i modul Contrast ridicat la oprit')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128733030963027384)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'ro'
,p_message_text=>unistr('Seta\0163i modul Contrast ridicat la pornit')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128597419252027343)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Setarea de aplica\0163ie %0 nu poate fi actualizat\0103, deoarece exist\0103 un abonament la aceasta, din alt\0103 aplica\0163ie.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128647787149027358)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'ro'
,p_message_text=>unistr('Partea inferioar\0103')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128647986586027358)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'ro'
,p_message_text=>'Jos'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128648064178027358)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'ro'
,p_message_text=>'Mutare'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128648124386027358)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Mutare global\0103')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128648208640027358)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'ro'
,p_message_text=>'Eliminare'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128648356474027359)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'ro'
,p_message_text=>'Eliminare tot'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128648431771027359)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'ro'
,p_message_text=>'Resetare'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128647654684027358)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'ro'
,p_message_text=>unistr('Partea superioar\0103')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128647857747027358)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'ro'
,p_message_text=>'Sus'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128759427896027392)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'ro'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128760152661027392)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn %0d')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128759368192027392)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'ro'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128760293706027392)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn %0h')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128759168927027392)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'ro'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128760365219027392)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn %0m')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128759767661027392)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'ro'
,p_message_text=>'%0mo'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128759993230027392)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn %0mo')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128759227358027392)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'ro'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128760081906027392)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn %0s')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128759553157027392)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'ro'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128760448513027392)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn %0w')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128759675481027392)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'ro'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128759849476027392)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn %0y')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128560764828027332)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'ro'
,p_message_text=>'[Line]'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128561389053027333)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'ro'
,p_message_text=>'[Multiple Lines]'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128561077394027333)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'ro'
,p_message_text=>'[Multiple Points]'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128561560865027333)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'ro'
,p_message_text=>'[Multiple Polygons]'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128561617778027333)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'ro'
,p_message_text=>'[Geometry Object]'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128560681391027332)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'ro'
,p_message_text=>'[Point (%0,%1)]'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128560902259027332)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'ro'
,p_message_text=>'[Polygon]'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128560193254027332)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'ro'
,p_message_text=>unistr('Regiune restr\00E2ns\0103: %0')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128675229696027367)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('Restr\00E2ngere')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128559167672027332)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'ro'
,p_message_text=>unistr('Divizorul orientat pe orizontal\0103 nu poate fi mutat la dreapta sau la st\00E2nga')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128559371422027332)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'ro'
,p_message_text=>unistr('S-a atins dimensiunea maxim\0103, de %0 px')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128560375788027332)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'ro'
,p_message_text=>unistr('S-a atins dimensiunea minim\0103, de %0 px')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128560229962027332)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'ro'
,p_message_text=>unistr('Regiunea este restr\00E2ns\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128560089555027332)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'ro'
,p_message_text=>unistr('Regiunea este restabilit\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128559789972027332)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'ro'
,p_message_text=>'Redimensionat la %0 px'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128559952123027332)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'ro'
,p_message_text=>unistr('Regiune restabilit\0103: %0')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128675104513027367)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'ro'
,p_message_text=>'Restabilire'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128559282202027332)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'ro'
,p_message_text=>unistr('Divizorul orientat pe vertical\0103 nu poate fi mutat \00EEn sus sau \00EEn jos')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128724658809027382)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'ro'
,p_message_text=>'Eliminare evaluare'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128714586671027378)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu este \00EEn intervalul de evaluare valid \00EEntre 1 - %1')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128714613435027378)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu este un num\0103r')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128710702356027377)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'ro'
,p_message_text=>'Mesaj de succes'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128772596075027396)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnainte')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128772471571027396)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128682600303027369)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Sistemul de \00EEnregistr\0103ri pentru aceast\0103 sarcin\0103 nu a fost g\0103sit')
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128690983224027371)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Executarea ac\0163iunii de sarcin\0103 %0 a e\015Fuat - sarcina este setat\0103 \00EEn stare de eroare, verifica\0163i codul ac\0163iunii de sarcin\0103')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128571125996027336)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare comentariu: Neautorizat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128570462250027335)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcin\0103 asignat\0103 deja')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128563834915027333)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'ro'
,p_message_text=>'Asignat lui %0'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128570119188027335)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'ro'
,p_message_text=>unistr('Anulare sarcin\0103: Neautorizat\0103')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128585719755027340)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu se poate elimina responsabilul efectiv al acestei sarcini. Delega\0163i sarcina c\0103tre un alt participant \00EEnainte de a re\00EEncerca aceast\0103 opera\0163iune.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128569720309027335)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'ro'
,p_message_text=>unistr('Revendicare sarcin\0103: Neautorizat\0103')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128569898788027335)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'ro'
,p_message_text=>unistr('Finalizare sarcin\0103: Neautorizat\0103')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128569990124027335)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'ro'
,p_message_text=>unistr('Delegare sarcin\0103: Neautorizat\0103')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128568374897027335)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'ro'
,p_message_text=>unistr('Data limit\0103 a sarcinii nu poate fi \00EEn trecut.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128563647448027333)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'ro'
,p_message_text=>unistr('Data scadent\0103: %0')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128564025660027333)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iunea %1 pt. sarcin\0103 a e\015Fuat. Mesaj de eroare - %0')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128563744652027333)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'ro'
,p_message_text=>unistr('E\015Fuat\0103')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128563319804027333)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'ro'
,p_message_text=>unistr('A reu\015Fit')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128563508852027333)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iunea %1 a reu\015Fit, cu mesajul %0')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128566873693027334)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnainte de expirare')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128592474483027342)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'ro'
,p_message_text=>'Anulare'
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128591903267027342)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcin\0103 anulat\0103')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128592567023027342)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>'Participantul nu are permisiunea de a anula sarcina'
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128591836744027342)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'ro'
,p_message_text=>'Revendicare'
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128592286542027342)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcina este deja revendicat\0103 de un alt utilizator sau participantul nu are dreptul de a revendica aceast\0103 sarcin\0103')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128592052764027342)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcin\0103 revendicat\0103 de %0')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128693139693027372)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'ro'
,p_message_text=>'Finalizare'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128591660503027342)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcin\0103 finalizat\0103 cu rezultatul %0')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128592980793027342)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Fie sarcina nu este asignat\0103, fie participantul nu are permisiunea de a finaliza sarcina')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128553313175027330)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcin\0103 finalizat\0103, f\0103r\0103 rezultat')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128693238828027372)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'ro'
,p_message_text=>'Creare'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128586159783027340)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcin\0103 creat\0103 cu ID %0')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128693371166027372)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'ro'
,p_message_text=>'Delegare'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128591753637027342)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcin\0103 delegat\0103 la responsabilul poten\0163ial %0')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128592363493027342)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Participantul nu are dreptul sau noul participant nu este un responsabil poten\0163ial pentru aceast\0103 sarcin\0103')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128565418572027334)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'ro'
,p_message_text=>'Expirare'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128566501181027334)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcin\0103 expirat\0103.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128693485616027372)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'ro'
,p_message_text=>unistr('E\015Fec')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128562138555027333)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Fie sarcina nu este asignat\0103, fie participantul nu are permisiunea de a solicita informa\0163ii pentru sarcin\0103')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128562364568027333)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Fie nu au fost solicitate informa\0163ii pentru sarcin\0103, fie participantul nu are permisiunea de a trimite informa\0163ii pentru sarcin\0103.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128565906814027334)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Expirare sarcin\0103, deoarece s-a atins num\0103rul maxim de re\00EEnnoiri, adic\0103 %0.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128593206776027342)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcina nu este \00EEn starea corect\0103 sau participantul nu este un administrator de business pentru aceast\0103 sarcin\0103')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128593379703027342)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Opera\0163ia %0 este necunoscut\0103 sau nu este aplicabil\0103 pentru acest\0103 sarcin\0103')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128693526964027372)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'ro'
,p_message_text=>'Deblocare'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128679222492027368)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcina a fost deblocat\0103. Acum poate fi revendicat\0103 de alte persoane')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128572175387027336)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Lansarea sarcinii nu este permis\0103 - utilizatorul nu este responsabil de sarcin\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128589170375027341)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'ro'
,p_message_text=>'Eliminare responsabil'
,p_version_scn=>2693305
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128589351145027341)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Participantul %0 a fost eliminat din sarcin\0103')
,p_version_scn=>2693305
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128566746618027334)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'ro'
,p_message_text=>unistr('Re\00EEnnoire')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128565667180027334)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcina a fost re\00EEnnoit\0103 cu ID-ul %0, iar num\0103rul maxim de re\00EEnnoiri \00EEnainte de expirare este de %1.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128566620403027334)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcina cu ID-ul %0 a fost re\00EEnnoit\0103 cu ID-ul de sarcin\0103 %1')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128562646639027333)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'ro'
,p_message_text=>unistr('Solicitare informa\0163ii')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128562542479027333)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('S-a solicitat %0 pentru mai multe informa\0163ii: %1')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128560426225027332)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Setare ''Ini\0163iatorul poate finaliza'' la %0')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128562737054027333)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'ro'
,p_message_text=>unistr('Trimitere informa\0163ii')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128562428922027333)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Informa\0163iile solicitate au fost trimise c\0103tre %0: %1')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128693681491027372)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'ro'
,p_message_text=>'Actualizare comentariu'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128590119023027341)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare comentariu: %0')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128593043091027342)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>'Starea sarcinii nu permite comentarii'
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128600387092027344)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Seta\0163i data scadent\0103 a sarcinii la %0')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128558471356027332)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'ro'
,p_message_text=>unistr('Actualizare scadent\0103 pe')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128693786039027372)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'ro'
,p_message_text=>'Actualizare responsabil'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128591462762027342)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare responsabil poten\0163ial %0 la participan\0163ii la sarcin\0103')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128590560733027341)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'ro'
,p_message_text=>'Actualizare parametri'
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128693886626027372)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'ro'
,p_message_text=>'Actualizare prioritate'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128592162414027342)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Seta\0163i prioritatea sarcinii la %0')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128589487498027341)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('S-a actualizat parametrul "%0" din "%1" \00EEn "%2".')
,p_version_scn=>2693305
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128572962522027336)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcina a fost anulat\0103, deoarece a fost \00EEntrerupt\0103 instan\0163a corespondent\0103 a fluxului de lucru.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128570076854027335)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'ro'
,p_message_text=>unistr('Redirec\0163ionare sarcin\0103: Neautorizat\0103')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128563492423027333)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'ro'
,p_message_text=>unistr('Ini\0163iat de %0 %1')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128572351182027336)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('A survenit o eroare intern\0103 nea\015Fteptat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128570644810027335)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Opera\0163ia sarcinii nu este aplicabil\0103')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128596249941027343)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'ro'
,p_message_text=>unistr('Acest responsabil poten\0163ial nu exist\0103.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128571941070027336)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'ro'
,p_message_text=>unistr('Aprobat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128572033150027336)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Respins\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128553431824027330)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'ro'
,p_message_text=>unistr('Finalizarea sarcinii necesit\0103 un rezultat')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128553690296027330)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu este permis ca sarcina s\0103 aib\0103 un rezultat')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128589234591027341)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'ro'
,p_message_text=>'Nu se poate actualiza parametrul %0.'
,p_version_scn=>2693305
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128585596089027340)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'ro'
,p_message_text=>unistr('Participantul exist\0103 deja pt. aceast\0103 instan\0163\0103 a sarcinii.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128687091706027370)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'ro'
,p_message_text=>unistr('Urgent\0103')
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128564102426027333)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Urgent\0103')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128686925938027370)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'ro'
,p_message_text=>'Ridicat'
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128564202694027333)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Prioritate ridicat\0103')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128686809715027370)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'ro'
,p_message_text=>'Medie'
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128564382739027333)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>'Prioritate medie'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128686784724027370)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'ro'
,p_message_text=>'Redus'
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128564497170027334)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Prioritate sc\0103zut\0103')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128686666420027370)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'ro'
,p_message_text=>unistr('Minim\0103')
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128564504910027334)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Prioritate minim\0103')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128570226119027335)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'ro'
,p_message_text=>unistr('Setare prioritate sarcin\0103: Neautorizat\0103')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128571475857027336)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'ro'
,p_message_text=>unistr('Asignat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128571863263027336)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'ro'
,p_message_text=>unistr('Anulat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128571544301027336)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'ro'
,p_message_text=>unistr('Finalizat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128571715577027336)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'ro'
,p_message_text=>'Cu erori'
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128565238466027334)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'ro'
,p_message_text=>'Expirat'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128571674357027336)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('E\015Fuat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128561938141027333)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'ro'
,p_message_text=>unistr('S-au solicitat informa\0163ii')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128571398351027336)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'ro'
,p_message_text=>unistr('Neasignat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128593724430027342)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Crearea unei sarcini noi pentru defini\0163ia de sarcin\0103 %0 din aplica\0163ia %1 a e\015Fuat.'),
'SQLCODE: %2'))
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128593685557027342)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'ro'
,p_message_text=>unistr('O \00EEncercare de a crea o sarcin\0103 pentru defini\0163ia de sarcin\0103 %0 din aplica\0163ia %1 a e\015Fuat, deoarece defini\0163ia sarcinii nu con\0163ine niciun responsabil poten\0163ial - edita\0163i defini\0163ia sarcinii \015Fi ad\0103uga\0163i cel pu\0163in un participant de tipul responsabil poten\0163')
||'ial'
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128570934840027335)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Defini\0163ia sarcinii nu a fost g\0103sit\0103')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128570810158027335)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu au fost g\0103si\0163i participan\0163ii pentru sarcin\0103')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128572233540027336)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Mai mult de o sarcin\0103 pentru ID-ul de sarcin\0103 specificat - consulta\0163i administratorul bazei de date')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128571078281027335)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Sarcina nu a fost g\0103sit\0103')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128570766565027335)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Parametrul sarcinii nu a fost g\0103sit')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128607053583027346)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'ro'
,p_message_text=>unistr(' Ac\0163iune')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128606949810027346)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'ro'
,p_message_text=>'Aprobare'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128554377229027331)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Procedura %2 pt. regula de concediu a e\015Fuat la execu\0163ia pt. defini\0163ia de sarcin\0103 %0, din aplica\0163ia %1.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128554507381027331)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Participantul %1 a fost ad\0103ugat ca \00EEnlocuitor pt. participantul %0. Motivul - %2.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128758265746027392)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Bar\0103 de instrumente')
,p_is_js_message=>true
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128611727940027348)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Aplica\0163ie')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128772925134027396)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Extinde\0163i / restr\00E2nge\0163i navigarea')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128773094035027396)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Extinde\0163i / restr\00E2nge\0163i coloana lateral\0103')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128681469238027369)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Navigare principal\0103')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128582293828027339)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'ro'
,p_message_text=>'"%0" este un nume nevalid de substituent.'
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128689175193027371)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'ro'
,p_message_text=>'1 zi'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128688918588027371)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('1 or\0103')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128689296171027371)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'ro'
,p_message_text=>'%0 zile'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128689051508027371)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'ro'
,p_message_text=>'%0 ore'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128688850195027371)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'ro'
,p_message_text=>'%0 minute'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128689458321027371)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 s\0103pt\0103m\00E2ni')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128689353600027371)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('1 s\0103pt\0103m\00E2n\0103')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128587190775027340)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'ro'
,p_message_text=>'%0 elemente selectate'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128587326670027340)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Selectare element'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128587245326027340)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'ro'
,p_message_text=>'Selectare %0'
,p_is_js_message=>true
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128776004337027397)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnceput pagin\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128633634045027354)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'ro'
,p_message_text=>'Activat'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128602114213027345)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Eroare la procesarea cererii.'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128587793652027340)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Mesajul text %0 nu poate fi actualizat, deoarece exist\0103 un abonament la el, din alt\0103 aplica\0163ie.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128690892522027371)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>'Valoare obligatorie'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128607233229027346)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'ro'
,p_message_text=>'Nivel de antet %0, ascuns'
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128735621379027385)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'ro'
,p_message_text=>unistr('Aceast\0103 pagin\0103 con\0163ine modific\0103ri nesalvate.')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128597247039027343)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'ro'
,p_message_text=>'Navigator'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128596913345027343)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'ro'
,p_message_text=>unistr('M\0103rire')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128597961771027343)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'ro'
,p_message_text=>'Nivel de transfocare {0}%'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128597009598027343)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'ro'
,p_message_text=>unistr('Mic\015Forare')
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128597126462027343)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'ro'
,p_message_text=>'Resetare zoom'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128572694850027336)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'ro'
,p_message_text=>unistr('Diagrama fluxului de lucru nu este disponibil\0103 \00EEn acest moment.')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128572574359027336)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Diagram\0103 flux de lucru')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128574401616027336)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a %0 a fluxului de lucru se afl\0103 \00EEn acest moment \00EEn starea %1. Din acest motiv, opera\0163iunea nu este permis\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128577075266027337)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'ro'
,p_message_text=>unistr('Pentru activitatea %2, a fost finalizat\0103 instan\0163a %1 din fluxul de lucru %0')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128576878816027337)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'ro'
,p_message_text=>unistr('S-a creat noua instan\0163\0103 %1 a activit\0103\0163ii %2 din fluxul de lucru %0')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128568609743027335)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2ndul de date suplimentar asociat cu aceast\0103 instan\0163\0103 a activit\0103\0163ii din fluxul de lucru nu a fost g\0103sit')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128576930563027337)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'ro'
,p_message_text=>unistr('Pentru activitatea %2, a fost re\00EEncercat\0103 instan\0163a cu erori %1 din fluxul de lucru %0')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128558962287027332)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a de activitate %1 din fluxul de lucru %0 a fost \00EEntrerupt\0103')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128592757068027342)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a de activitate %1 din fluxul de lucru %0 a expirat \015Fi a fost \00EEntrerupt\0103.')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128577176451027337)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'ro'
,p_message_text=>unistr('Pentru activitatea %2, instan\0163a %1 din fluxul de lucru %0 este \00EEn starea \00CEn a\015Fteptare')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128558777692027332)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a %0 a fluxului de lucru a fost modificat\0103 \015Fi reluat\0103 la activitatea %1')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128576106633027337)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a \00EEn a\015Fteptare %1 a activit\0103\0163ii %2 din fluxul de lucru %0 s-a finalizat ')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128575961926027337)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Activitatea \00CEn a\015Fteptare %1 a fost setat\0103 la Cu erori, deoarece fluxul de lucru %0 era deja \00EEn starea Cu erori \00EEnainte s\0103 se fi finalizat activitatea')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128576047461027337)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'ro'
,p_message_text=>unistr('Activitatea \00CEn a\015Fteptare %1 a fost \00EEntrerupt\0103, deoarece fluxul de lucru %0 era deja \00EEn starea \00CEntrerupt \00EEnainte s\0103 se fi finalizat activitatea')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128559025332027332)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('E\015Fec la \00EEntreruperea activit\0103\0163ii %1 din fluxul de lucru %0, din cauza excep\0163iei - %2')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128574650785027337)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'ro'
,p_message_text=>unistr('Fluxul de lucru este ocupat \00EEn acest moment cu finalizarea unei opera\0163iuni precedente. \00CEncerca\0163i mai t\00E2rziu')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128590718441027341)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'ro'
,p_message_text=>'%0 finalizat'
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128573781669027336)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Fluxul de lucru %0 nu poate fi continuat, deoarece se afl\0103 \00EEn acest moment la activitatea %1, care nu este \00EEntr-o stare \00CEn a\015Fteptare')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128585624193027340)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu este un context de corelare valid pentru fluxul de lucru, pt. procesul care este executat de aceast\0103 activitate a fluxului de lucru. Contextul de corelare trebuie s\0103 fie reprezentat printr-un text delimitat prin caracterul dou\0103 puncte, care con')
||unistr('\0163ine APEX_APPL_WORKFLOW urmat de ID-ul instan\0163ei fluxului de lucru \015Fi de ID-ul instan\0163ei activit\0103\0163ii.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128576313448027337)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'ro'
,p_message_text=>unistr('S-a creat noua instan\0163\0103 %0 a fluxului de lucru %1, cu versiunea %2')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128568465915027335)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2ndul de date suplimentar asociat cu aceast\0103 instan\0163\0103 a fluxului de lucru nu a fost g\0103sit')
,p_version_scn=>2693297
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128590997469027341)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'ro'
,p_message_text=>unistr('Data scadent\0103: %0')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128576229560027337)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'ro'
,p_message_text=>unistr('Fluxul de lucru %0 s-a \00EEncheiat cu starea %1')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128573492693027336)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Tipul de date %1 pentru condi\0163iile care sunt comparate \00EEn activitatea de comutare a fluxului de lucru %0 nu sunt compatibile cu operatorul de condi\0163ie')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128563277723027333)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'ro'
,p_message_text=>unistr('Ini\0163iat de %0 %1')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128586009644027340)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'ro'
,p_message_text=>unistr('S-a creat noua instan\0163\0103 %0 a fluxului de lucru %1, versiunea %2 - invocat\0103 din instan\0163a %4 a activit\0103\0163ii, din instan\0163a %3 a fluxului de lucru')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128558813746027332)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Activitatea cu ID-ul static %1 nu este o activitate \00EEn fluxul de lucru %0. Verifica\0163i ID-urile statice ale activit\0103\0163ii \00EEn versiunea corespunz\0103toare a fluxului de lucru.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128584190462027339)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 este un parametru obligatoriu pt. acest flux de lucru \015Fi nu trebuie s\0103 fie NULL.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128576719597027337)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a %0 a fluxului de lucru a fost reluat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128576619453027337)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a %0 a fluxului de lucru a fost re\00EEncercat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128591095157027341)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 re\00EEncercare')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128591193547027341)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 re\00EEncerc\0103ri')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128590822064027341)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'ro'
,p_message_text=>'%0 pornit'
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128585072933027340)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'ro'
,p_message_text=>'Activ'
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128585200614027340)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'ro'
,p_message_text=>unistr('Finalizat\0103')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128585301983027340)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'ro'
,p_message_text=>'Cu erori'
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128585428096027340)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'ro'
,p_message_text=>'Suspendat'
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128585145952027340)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEntrerupt')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128600475109027344)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEn a\015Fteptare')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128576427483027337)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a %0 a fluxului de lucru a fost suspendat\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128582357641027339)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu se poate determina activitatea urm\0103toare pt. instan\0163a %0 a fluxului de lucru. Verifica\0163i \015Fi corecta\0163i condi\0163iile definite pt. activitatea de comutare curent\0103 \00EEnainte de a re\00EEncerca fluxul de lucru.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128576508209027337)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a %0 a fluxului de lucru a fost \00EEntrerupt\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128575666372027337)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'ro'
,p_message_text=>'Doar administratorul de business al fluxului de lucru %0 poate relua fluxul de lucru'
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128575794271027337)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'ro'
,p_message_text=>unistr('Fluxul de lucru %0 poate fi re\00EEncercat doar de c\0103tre un administrator de business \015Fi/sau de c\0103tre un responsabil')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128575256125027337)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a %0 a fluxului de lucru poate fi suspendat\0103 doar de c\0103tre un administrator de business al fluxului de lucru')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128575535775027337)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Doar responsabilii \015Fi administratorii de business ai instan\0163ei %0 a fluxului de lucru pot \00EEntrerupe fluxul de lucru')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128573910266027336)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Variabilele fluxului de lucru %0 pot fi actualizate doar de c\0103tre un administrator de business definit pt. fluxul de lucru')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128588544574027341)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a %0 a fluxului de lucru trebuie s\0103 aib\0103 starea Eroare sau Suspendat\0103 pentru ca variabilele sale s\0103 poat\0103 fi actualizate.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128580057848027338)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoarea variabilei %0 a fluxului de lucru a fost actualizat\0103 la %1')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128590292115027341)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'ro'
,p_message_text=>unistr('Fluxul de lucru %0 nu are nicio versiune activ\0103')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128590300924027341)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'ro'
,p_message_text=>unistr('Fluxul de lucru %0 nu are nicio versiune \00EEn dezvoltare')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128590451889027341)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Fluxul de lucru %0 nu are nicio versiune activ\0103 sau \00EEn dezvoltare')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128573312309027336)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost g\0103sit\0103 instan\0163a %1 a activit\0103\0163ii pentru instan\0163a %0 a fluxului de lucru')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128573123794027336)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Instan\0163a %0 a fluxului de lucru nu a fost g\0103sit\0103')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128608219487027347)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'ro'
,p_message_text=>unistr('Registrul de lucru nu are nicio foaie de calcul activ\0103.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128608133028027347)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'ro'
,p_message_text=>unistr('Registrul de lucru nu este ini\0163ializat.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128608094350027346)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('A survenit o eroare intern\0103 la crearea fi\015Fierului XLSX.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128610522704027347)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'ro'
,p_message_text=>'Foaie'
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128621182337027350)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'ro'
,p_message_text=>unistr('Numele de foaie de lucru "%0" este deja luat. \00CEncerca\0163i alt nume.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128749766739027389)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iuni')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128664703409027364)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'ro'
,p_message_text=>unistr('Meniul Ac\0163iuni')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128660467487027362)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare func\0163ie')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128660371465027362)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare coloan\0103 de grupare')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128697948687027373)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare coloan\0103 pivot')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128698075116027373)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Ad\0103ugare coloan\0103 r\00E2nd')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128632437576027354)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'ro'
,p_message_text=>'Agregare'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128670948137027365)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'ro'
,p_message_text=>'Agregare'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128651822408027360)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'ro'
,p_message_text=>'Medie'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128656127925027361)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103r')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128651911369027360)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'ro'
,p_message_text=>'Maxim'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128652109415027360)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'ro'
,p_message_text=>unistr('Median\0103')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128652041556027360)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'ro'
,p_message_text=>'Minim'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128651752259027360)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'ro'
,p_message_text=>unistr('Sum\0103 %0')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128652870898027360)
,p_name=>'APEXIR_ALL'
,p_message_language=>'ro'
,p_message_text=>'Toate'
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128631794454027354)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>'Toate coloanele'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128611828544027348)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('Toate r\00E2ndurile')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128746712930027388)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'ro'
,p_message_text=>unistr('Alternativ\0103')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128748346737027389)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'ro'
,p_message_text=>'Prestabilit alternativ: %0 '
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128645978714027358)
,p_name=>'APEXIR_AND'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Fi')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128680735506027368)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Raportul salvat nu a putut fi importat. Con\0163inutul este corupt.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128680881670027368)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'ro'
,p_message_text=>unistr('Raportul salvat nu a putut fi importat. Con\0163inutul este gol.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128633956907027354)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'ro'
,p_message_text=>'Aplicare'
,p_is_js_message=>true
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128627538168027352)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'ro'
,p_message_text=>unistr('Cresc\0103tor')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128649096524027359)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'ro'
,p_message_text=>'La data %0'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128748922733027389)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'ro'
,p_message_text=>'Medie %0'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128740519969027386)
,p_name=>'APEXIR_BAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Bar\0103')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128633283232027354)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEntre')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128626382975027352)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'ro'
,p_message_text=>'Culoare de fundal'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128628247637027353)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'ro'
,p_message_text=>'Albastru'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128662397359027363)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'ro'
,p_message_text=>unistr('Partea inferioar\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128593139517027342)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'ro'
,p_message_text=>unistr('Butoane de l\00E2ng\0103 bara de c\0103utare pentru %0')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128628821282027353)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'ro'
,p_message_text=>'Anulare'
,p_is_js_message=>true
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128635107351027355)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'ro'
,p_message_text=>'Categorie'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128626241488027352)
,p_name=>'APEXIR_CELL'
,p_message_language=>'ro'
,p_message_text=>unistr('Celul\0103')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128652757462027360)
,p_name=>'APEXIR_CHART'
,p_message_language=>'ro'
,p_message_text=>unistr('Diagram\0103')
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128663221658027363)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'ro'
,p_message_text=>unistr('Se ini\0163ializeaz\0103...')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128702959311027375)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>unistr('Eticheta diagramei trebuie s\0103 fie specificat\0103.')
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128715391548027379)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'ro'
,p_message_text=>unistr('Interogarea dvs. dep\0103\015Fe\015Fte num\0103rul maxim de %0 puncte de date per diagram\0103. Aplica\0163i un filtru pentru a reduce num\0103rul de \00EEnregistr\0103ri din interogarea dvs. de baz\0103.')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128714280551027378)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Num\0103rul maxim de r\00E2nduri pentru o diagram\0103 Pivot limiteaz\0103 num\0103rul de r\00E2nduri din interogarea de baz\0103, nu num\0103rul de r\00E2nduri afi\015Fate. '),
unistr('Interogarea dvs. de baz\0103 dep\0103\015Fe\015Fte num\0103rul maxim de r\00E2nduri de %0. Aplica\0163i un filtru pentru reducerea num\0103rului de \00EEnregistr\0103ri din interogarea de baz\0103.')))
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128631808402027354)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Tip diagram\0103')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128595725438027343)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare diagram\0103 pentru %0')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128710946797027377)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Toate op\0163iunile bifate')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128649452954027359)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'ro'
,p_message_text=>'Selectare format de raport'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128657295809027361)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'ro'
,p_message_text=>'golire'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128628783327027353)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128668510936027365)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>'Coloane'
,p_is_js_message=>true
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128635750200027355)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'ro'
,p_message_text=>unistr('Aliasuri coloan\0103')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128743371631027387)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'ro'
,p_message_text=>'Filtrare...'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128603548055027345)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'ro'
,p_message_text=>unistr('Antet coloan\0103')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128617642884027349)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iuni coloan\0103')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128617937961027350)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'ro'
,p_message_text=>unistr('Ac\0163iuni pentru coloana "%0"')
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128659339619027362)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'ro'
,p_message_text=>unistr('Meniu antet coloan\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128663023512027363)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'ro'
,p_message_text=>unistr('Informa\0163ii coloan\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128745612763027388)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Etichet\0103 coloan\0103')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128660722634027362)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'ro'
,p_message_text=>'Coloana %0'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128643607280027357)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'ro'
,p_message_text=>unistr('con\0163ine')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128644981223027357)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'ro'
,p_message_text=>unistr('nu con\0163ine')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128627245523027352)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'ro'
,p_message_text=>unistr('\00EEn')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128645198869027358)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'ro'
,p_message_text=>unistr('nu este \00EEn ultimele')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128654222482027360)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('nu este \00EEn urm\0103torul')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128645064804027358)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'ro'
,p_message_text=>unistr('este \00EEn ultimele')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128654117757027360)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('este \00EEn urm\0103torul')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128627198400027352)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>'nu este nul'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128627068469027352)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'ro'
,p_message_text=>'este nul'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128626848519027352)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'ro'
,p_message_text=>'la fel ca'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128627382418027352)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'ro'
,p_message_text=>unistr('nu este \00EEn')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128626902338027352)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'ro'
,p_message_text=>'nu este ca'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128643946946027357)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'ro'
,p_message_text=>unistr('Se potrive\015Fte cu expresia logic\0103')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128649376448027359)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'ro'
,p_message_text=>'Calcul'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128713922610027378)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'ro'
,p_message_text=>'Expresie de calcul'
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128668863893027365)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'ro'
,p_message_text=>unistr('Crea\0163i un calcul utiliz\00E2nd aliasurile de coloane.')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128668986980027365)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'ro'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128669061234027365)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'ro'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128669120069027365)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'ro'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128610074225027347)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'ro'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128653596745027360)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'ro'
,p_message_text=>'Compute'
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128661369184027362)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'ro'
,p_message_text=>unistr('Control de \00EEntrerupere')
,p_is_js_message=>true
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128664373131027363)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEntreruperi de control')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128750934098027389)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloane control de \00EEntrerupere')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128606710073027346)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rare elemente distincte')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128749435122027389)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rare distinct\0103')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128749396163027389)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103r %0')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128722374125027381)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'ro'
,p_message_text=>'Zilnic'
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128775632142027397)
,p_name=>'APEXIR_DATA'
,p_message_language=>'ro'
,p_message_text=>'Date'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128663164298027363)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'ro'
,p_message_text=>'Raportarea datelor de acum %0 minute.'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128596191140027343)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare de date pentru %0'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128632533737027354)
,p_name=>'APEXIR_DATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Dat\0103')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128667097805027364)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'ro'
,p_message_text=>'Prestabilit'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128746594740027388)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'ro'
,p_message_text=>'Tip de raport prestabilit'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128628925723027353)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Etergere')
,p_is_js_message=>true
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128632812359027354)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'ro'
,p_message_text=>unistr('Dori\0163i s\0103 \015Fterge\0163i aceste set\0103ri de raport?')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128733381823027384)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Etergere raport prestabilit')
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128661085733027362)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Etergere raport')
,p_is_js_message=>true
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128627668852027352)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'ro'
,p_message_text=>unistr('Descresc\0103tor')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128635278750027355)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>'Descriere'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128659232266027362)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare pentru un singur r\00E2nd')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128667590603027364)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Direc\0163ie %0')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128668455506027365)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'ro'
,p_message_text=>'Dezactivat'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128628435397027353)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fat')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128631693628027354)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloane afi\015Fate')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128667444285027364)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare \00EEn raport')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128662228332027363)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'ro'
,p_message_text=>'Jos'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128653616105027360)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'ro'
,p_message_text=>unistr('Desc\0103rcare')
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128667357313027364)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu se afi\015Feaz\0103')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128736688171027385)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'ro'
,p_message_text=>unistr('O eviden\0163iere cu aceea\015Fi condi\0163ie exist\0103 deja.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128751188608027389)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103 pivot dupliat\0103. Lista coloanei pivot trebuie s\0103 fie unic\0103.')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128751325894027390)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'ro'
,p_message_text=>'Editare'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128663323955027363)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'ro'
,p_message_text=>unistr('Editare set\0103ri diagram\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128669973124027365)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'ro'
,p_message_text=>unistr('Editare diagram\0103')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128633897097027354)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'ro'
,p_message_text=>unistr('Editare control de \00EEntrerupere')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128670325370027365)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'ro'
,p_message_text=>'Editare filtru'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128636895807027355)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'ro'
,p_message_text=>'Editare flashback'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128728153532027383)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'ro'
,p_message_text=>unistr('Editare grup dup\0103')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128670249579027365)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'ro'
,p_message_text=>unistr('Editare eviden\0163iere')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128698247194027374)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'ro'
,p_message_text=>'Editare pivot'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128657603039027361)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Editare raport'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128746828168027388)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'ro'
,p_message_text=>'E-mail'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128619013965027350)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'ro'
,p_message_text=>unistr('Adres\0103 de e-mail')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128747135931027388)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'ro'
,p_message_text=>'BCC'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128747386195027388)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'ro'
,p_message_text=>'Corp'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128747043714027388)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'ro'
,p_message_text=>'CC'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128747832028027389)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'ro'
,p_message_text=>unistr('Frecven\0163\0103')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128624295732027351)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'ro'
,p_message_text=>unistr('E-mailul nu a fost configurat pentru aceast\0103 aplica\0163ie. Contacta\0163i administratorul.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128721620821027381)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Adresa de e-mail trebuie s\0103 fie specificat\0103.')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128747404023027388)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'ro'
,p_message_text=>unistr('Consulta\0163i ata\015Famentul')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128747205474027388)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'ro'
,p_message_text=>'Subiect'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128722698944027381)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Subiectul de e-mail trebuie s\0103 fie specificat.')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128746981723027388)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'ro'
,p_message_text=>'Destinatar'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128626096134027352)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'ro'
,p_message_text=>'Activat'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128670125153027365)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'ro'
,p_message_text=>'Activare/dezactivare'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128669688342027365)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'ro'
,p_message_text=>'Eroare! %0'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128669238719027365)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'ro'
,p_message_text=>'Exemple'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128670033868027365)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'ro'
,p_message_text=>'Exemple:'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128631592196027354)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'ro'
,p_message_text=>'Excludere valori nule'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128670654108027365)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'ro'
,p_message_text=>unistr('Extindere/Restr\00E2ngere')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128668256905027365)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'ro'
,p_message_text=>'Expresie'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128653176655027360)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'ro'
,p_message_text=>'Filtru'
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128664232898027363)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'ro'
,p_message_text=>'Filtre'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128674929644027367)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'ro'
,p_message_text=>'Expresie pt. filtru'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128773127455027396)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'ro'
,p_message_text=>unistr('Expresia de filtrare este prea lung\0103.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128617867480027349)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'ro'
,p_message_text=>'Sugestii filtru'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128674899444027367)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'ro'
,p_message_text=>'Tip filtru'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128670818982027365)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'ro'
,p_message_text=>unistr('Selecta\0163i coloanele pentru c\0103utare')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128653460183027360)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'ro'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128668012794027365)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>unistr('O interogare flashback v\0103 permite s\0103 vizualiza\0163i datele a\015Fa cum existau la un moment anterior \00EEn timp.')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128722032708027381)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Durat\0103 flashback')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128723422885027381)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'ro'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128649299788027359)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'ro'
,p_message_text=>unistr('Masc\0103 de formatare %0')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128660981332027362)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Func\0163ie')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128668796595027365)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Func\0163ii %0')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128746415370027388)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'ro'
,p_message_text=>unistr('Func\0163ii / operatori')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128660695043027362)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'ro'
,p_message_text=>unistr('Func\0163ie %0')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128652988486027360)
,p_name=>'APEXIR_GO'
,p_message_language=>'ro'
,p_message_text=>'Start'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128626581692027352)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'ro'
,p_message_text=>'Verde'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128671577525027366)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>unistr('Grupare dup\0103 coloane')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128671657316027366)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Func\0163ii de grupare')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128606853022027346)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'ro'
,p_message_text=>unistr('Grupare dup\0103')
,p_is_js_message=>true
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128747567627027388)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Grupare dup\0103 coloana %0')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128703000922027375)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana pentru grupare trebuie s\0103 fie specificat\0103.')
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128714199046027378)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rul maxim de r\00E2nduri pentru o interogare de grupare limiteaz\0103 num\0103rul de r\00E2nduri din interogarea de baz\0103, nu num\0103rul de r\00E2nduri afi\015Fate. Interogarea dvs. de baz\0103 dep\0103\015Fe\015Fte num\0103rul maxim de r\00E2nduri de %0. Aplica\0163i un filtru pentru reducerea num\0103ru')
||unistr('lui de \00EEnregistr\0103ri din interogarea de baz\0103.')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128694387489027372)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'ro'
,p_message_text=>'Sortare grupare'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128751074131027389)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'ro'
,p_message_text=>'Ordine de sortare grupare'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128595911975027343)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare grupare pentru %0'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128631936144027354)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103 orizontal\0103')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128665918676027364)
,p_name=>'APEXIR_HELP'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103')
,p_is_js_message=>true
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128657767950027361)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Rapoartele interactive permit utilizatorilor finali s\0103 personalizeze rapoartele. Utilizatorii pot modifica macheta datelor raportate prin selectarea coloanelor, aplicarea filtrelor, eviden\0163iere \015Fi sortare. Utilizatorii pot \015Fi defini \00EEntreruperi, agre')
||unistr('g\0103ri, diagrame, grup\0103ri \015Fi \00EE\015Fi pot ad\0103uga propriile calcule. Utilizatorii pot \015Fi s\0103 configureze un abonament astfel \00EEnc\00E2t o versiune HTML a raportului le va fi trimis\0103 prin e-mail la intervalele stabilite. Utilizatorii pot crea multiple varia\0163ii ale ')
||unistr('unui raport \015Fi le pot salva ca rapoarte cu nume, pentru vizualizare public\0103 sau privat\0103. '),
'<p/>',
unistr('Sec\0163iunile urm\0103toare rezum\0103 modul \00EEn care pute\0163i personaliza un raport interactiv. Pentru a afla mai multe, consulta\0163i "Utilizare rapoarte interactive" din <i>Ghidul utilizatorului final Oracle APEX</i>.')))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128664842360027364)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'ro'
,p_message_text=>unistr('Meniul de ac\0163iuni apare \00EEn partea dreapt\0103 a butonului de Start din bara de c\0103utare. Utiliza\0163i acest meniu pentru a personaliza un raport interactiv.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128658520102027362)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Agreg\0103rile sunt calcule matematice efectuate pentru o coloan\0103. Agreg\0103rile se afi\015Feaz\0103 dup\0103 fiecare control de \00EEntrerupere \015Fi la finalul raportului din cadrul coloanei \00EEn care sunt definite. Op\0163iunile includ:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Agregarea</strong> v\0103 permite s\0103 selecta\0163i o'),
unistr('agregare definit\0103 anterior pentru editare.</li>'),
unistr('<li><strong>Func\0163ia</strong> este func\0163ia de efectuat (de exemplu, SUM, MIN).</li>'),
unistr('<li><strong>Coloana</strong> se utilizeaz\0103 pentru a selecta coloana la care se aplic\0103 func\0163ia matematic\0103. Se afi\015Feaz\0103'),
'numai coloanele numerice.</li>',
'</ul>'))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128658630665027362)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pute\0163i defini o diagram\0103 per raport salvat. Dup\0103'),
unistr('definire, pute\0163i comuta \00EEntre vizualiz\0103rile diagram\0103 \015Fi raport utiliz\00E2nd pictogramele de vizualizare din bara de c\0103utare.'),
unistr('Op\0163iunile includ:  '),
'<p>',
'</p><ul>',
unistr('<li><strong>Tipul de diagram\0103</strong> identific\0103 tipul de diagram\0103 de inclus.'),
unistr('Selecta\0163i \00EEntre bar\0103 orizontal\0103, bar\0103 vertical\0103, disc sau linie.</li>'),
unistr('<li><strong>Eticheta</strong> v\0103 permite s\0103 selecta\0163i coloana de utilizat ca etichet\0103.</li>'),
unistr('<li><strong>Titlul axei pentru etichet\0103</strong> este titlul afi\015Fat pe axa asociat\0103 coloanei selectate pentru '),
unistr('etichet\0103. Acest lucru nu este disponibil pentru diagrama disc.</li>'),
unistr('<li><strong>Valoarea</strong> v\0103 permite s\0103 selecta\0163i coloana de utilizat ca valoare. Dac\0103 func\0163ia'),
unistr('este de tip COUNT, nu trebuie s\0103 fie selectat\0103 o valoare.</li>'),
unistr('<li><strong>Titlul axei pentru valoare</strong> este titlul afi\015Fat pe axa asociat\0103 coloanei selectate pentru'),
'valoare. Acest lucru nu este disponibil pentru diagrama disc.</li>',
unistr('<li><strong>Func\0163ia</strong> este o func\0163ie op\0163ional\0103 de efectuat pe coloana selectat\0103 pentru valoare.</li>'),
unistr('<li><strong>Sortarea</strong> v\0103 permite s\0103 sorta\0163i setul de rezultate.</li></ul>')))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128657942414027361)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Face\0163i clic pe orice antet de coloan\0103 pentru a expune un meniu al antetului coloanei. Op\0163iunile includ:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Sortare ascendent\0103</strong>, pictograma sorteaz\0103 raportul dup\0103 coloan\0103 \00EEn ordine ascendent\0103.</li>'),
unistr('<li><strong>Sortare descendent\0103</strong> pictograma sorteaz\0103 raportul dup\0103 coloan\0103 \00EEn ordine descendent\0103.</li>'),
unistr('<li><strong>Ascundere coloan\0103</strong> ascunde coloana. Nu toate coloanele pot fi ascunse. Dac\0103 o coloan\0103 nu poate fi ascuns\0103, nu va exista o pictogram\0103 de ascundere a coloanei.</li>'),
unistr('<li><strong>\00CEntrerupere coloan\0103</strong> creeaz\0103 un grup de \00EEntrerupere pe coloan\0103. Acest lucru scoate coloana din raport ca o \00EEnregistrare principal\0103.</li>'),
unistr('<li><strong>Informa\0163ii coloan\0103</strong> afi\015Feaz\0103 text de asisten\0163\0103 despre coloan\0103, dac\0103 este disponibil.</li>'),
unistr('<li><strong>Zon\0103 text</strong> este utilizat pentru a introduce criterii de c\0103utare ce nu \0163in seama de litere mari/mici'),
'(nu sunt necesare caractere speciale). Introducerea unei valori reduce lista de',
unistr('valori din partea inferioar\0103 a meniului. Apoi pute\0163i selecta o valoare din'),
unistr('partea inferioar\0103 iar valoarea selectat\0103 va fi creat\0103 ca un filtru utiliz\00E2nd ''='''),
unistr('(de exemplu, <code>coloan\0103 = ''ABC''</code>). Alternativ, pute\0163i face clic pe pictograma Lantern\0103 \015Fi introduce\0163i o valoare de creat ca filtru cu modificatorul ''LIKE'''),
unistr('(de exemplu, <code>coloan\0103 LIKE ''%ABC%''</code>).</li>'),
unistr('<li><strong>Lista valorilor unice</strong> con\0163ine primele 500 valori'),
unistr('unice care satisfac criteriile de filtrare. C\00E2nd coloana este o dat\0103 se afi\015Feaz\0103'),
unistr('\00EEn schimb o list\0103 de intervale de dat\0103. Dac\0103 selecta\0163i o valoare, se va crea'),
unistr('un filtru utiliz\00E2nd ''='' (de exemplu, <code>coloana = ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128658489882027362)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('V\0103 permite s\0103 ad\0103uga\0163i coloane calculate \00EEn raport. Acestea pot fi calcule matematice (de exemplu, <code>NBR_HOURS/24</code>) sau func\0163ii Oracle'),
unistr('standard aplicate coloanelor existente. Unele sunt afi\015Fate ca exemple iar altele (cum ar fi <code>TO_DATE)</code> pot fi de asemenea utilizate). Op\0163iunile includ:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Calculul</strong> v\0103 permite s\0103 selecta\0163i un calcul definit anterior pentru editare.</li>'),
unistr('<li><strong>Antetul de coloan\0103</strong> este antetul de coloan\0103 pentru noua coloan\0103.</li>'),
unistr('<li><strong>Masca de formatare</strong> este o masc\0103 de formatare Oracle de aplicat pe coloan\0103 (de exemplu,S9999).</li>'),
unistr('<li><strong>Calculul</strong> este calculul de efectuat. \00CEn cadrul calculului, se face referire la coloane prin folosirea aliasurilor afi\015Fate.</li>'),
'</ul>',
unistr('<p>Sub calcul, coloanele din interogare sunt afi\015Fate cu'),
unistr('aliasurile lor asociate. F\0103c\00E2nd clic pe numele coloanei sau alias'),
unistr('le include \00EEn calcul. L\00E2ng\0103 coloane este o tastatur\0103 numeric\0103. Aceast\0103 tastatur\0103 numeric\0103 func\0163ioneaz\0103 ca'),
unistr('o scurt\0103tur\0103 pentru tastele cele mai utilizate. \00CEn partea dreapt\0103 extrem\0103 sunt Func\0163iile.</p>'),
unistr('<p>Exemplul urm\0103tor pentru calcul demonstreaz\0103 modul de afi\015Fare pentru compensarea total\0103:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
unistr('(unde A este ORGANIZATION, B este SALARY \015Fi C este COMMISSION)'),
''))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128664928423027364)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'ro'
,p_message_text=>unistr('Utilizat pentru crearea unui grup de \00EEntrerupere pe una sau mai multe coloane. Acesta extrage coloanele din raportul interactiv \015Fi le afi\015Feaz\0103 ca o \00EEnregistrare principal\0103.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128659150196027362)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'ro'
,p_message_text=>unistr('Pentru vizualizarea detaliilor pe c\00E2te un singur r\00E2nd o dat\0103, face\0163i clic pe pictograma de vizualizare pentru un singur r\00E2nd pentru r\00E2ndul pe care dori\0163i s\0103 \00EEl vizualiza\0163i. Dac\0103 este disponibil\0103 vizualizarea pentru un singur r\00E2nd poate fi vizualizare')
||unistr('a standard sau o pagin\0103 personalizat\0103 ce poate permite actualizarea.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128659027702027362)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'ro'
,p_message_text=>unistr('Permite desc\0103rcarea setului de rezultate curent. Formatele de desc\0103rcare sunt PDF, Excel, HTML \015Fi CSV. Op\0163iunile de desc\0103rcare difer\0103 \00EEn func\0163ie de formatul selectat. Toate formatele pot fi trimise \015Fi prin e-mail.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128658126815027362)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Concentreaz\0103 raportul prin ad\0103ugarea sau modificarea clauzei <code>WHERE</code> din interogare. Pute\0163i filtra dup\0103 o coloan\0103 sau dup\0103 un r\00E2nd. '),
unistr('<p>Dac\0103 filtra\0163i dup\0103 o coloan\0103, selecta\0163i o coloan\0103 (nu trebuie s\0103'),
unistr('fie una afi\015Fat\0103), selecta\0163i un operator Oracle standard (=, !=, nu este \00EEn, \00EEntre), \015Fi introduce\0163i o expresie cu care se va compara. Expresiile \0163in cont de literele mari \015Fi mici. Utiliza\0163i % ca un caracter special (de exemplu, <code>STATE_NAME'),
'like A%)</code>.</p>',
unistr('<p>Dac\0103 filtra\0163i dup\0103 r\00E2nd, pute\0163i crea clauze <code>WHERE</code> complexe utiliz\00E2nd'),
unistr('aliasuri de coloane \015Fi orice func\0163ii sau operatori Oracle (de exemplu, <code>G = ''VA'' sau G = ''CT''</code>, unde'),
'<code>G</code> este aliasul pentru <code>CUSTOMER_STATE</code>).</p>',
''))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128658713111027362)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('O interogare flashback v\0103 permite s\0103 vizualiza\0163i datele a\015Fa cum au existat la un punct anterior'),
unistr('\00EEn timp. Valoarea prestabilit\0103 de timp utilizat\0103 pentru este de 3 ore (sau 180'),
unistr('minute) dar valoarea efectiv\0103 va diferi pentru fiecare baz\0103 de date.')))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128723391549027381)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Formatul v\0103 permite s\0103 personaliza\0163i afi\015Farea raportului.'),
unistr('Formatul con\0163ine urm\0103torul submeniu:</p>'),
'<ul><li>Sortare</li>',
unistr('<li>Control de \00EEntrerupere</li>'),
unistr('<li>Eviden\0163iere</li>'),
'<li>Compute</li>',
'<li>Agregare</li>',
unistr('<li>Diagram\0103</li>'),
'<li>Grupare</li>',
'<li>Pivot</li>',
'</ul>',
''))
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128721532492027381)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pute\0163i defini o vizualizare grupare pentru un raport'),
unistr('salvat. Dup\0103 definire, pute\0163i comuta \00EEntre vizualiz\0103rile grupare \015Fi raport'),
unistr('utiliz\00E2nd pictogramele de vizualizare de pe bara de c\0103utare. Pentru crearea unei vizualiz\0103ri Grupare,'),
unistr('selecta\0163i: '),
'<p></p><ul>',
'<li>coloanele pe care se va grupa</li>',
unistr('<li>coloanele de agregat \00EEmpreun\0103 cu func\0163ia de efectuat (medie, sum\0103, num\0103rare etc.)</li>'),
'</ul>'))
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128658315765027362)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>V\0103 permite definirea unui filtru. R\00E2ndurile care satisfac criteriile de filtrare sunt afi\015Fate eviden\0163iate utiliz\00E2nd caracteristicile asociate cu filtrul. Op\0163iunile includ:</p>'),
'<ul>',
unistr('<li><strong>Numele</strong> este utilizat pentru afi\015Fare.</li>'),
unistr('<li><strong>Secven\0163a</strong> identific\0103 secven\0163a \00EEn care sunt evaluate regulile.</li>'),
unistr('<li><strong>Activat</strong> identific\0103 dac\0103 o regul\0103 este activat\0103 sau dezactivat\0103.</li>'),
unistr('<li><strong>Tipul de eviden\0163iere</strong> identific\0103 dac\0103 r\00E2ndul sau celula trebuie s\0103 fie'),
unistr('eviden\0163iat\0103. Dac\0103 se selecteaz\0103 Celul\0103, coloana la care se face referire \00EEn'),
unistr('condi\0163ia de eviden\0163iere este eviden\0163iat\0103.</li>'),
unistr('<li><strong>Culoarea de fundal</strong> este noua culoare pentru fundalul zonei eviden\0163iate.</li>'),
unistr('<li><strong>Culoarea de text</strong> este noua culoare pentru textul zonei eviden\0163iate.</li>'),
unistr('<li><strong>Condi\0163ia de eviden\0163iere</strong> define\015Fte condi\0163ia de filtrare.</li>'),
'</ul>',
''))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128551760384027330)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Pute\0163i defini o vizualizare Pivot pentru un raport salvat. Dup\0103 definire, pute\0163i comuta \00EEntre vizualiz\0103rile pivot \015Fi raport utiliz\00E2nd pictogramele de vizualizare de pe bara de c\0103utare. Pentru crearea unei vizualiz\0103ri Pivot, selecta\0163i: '),
'<p></p>',
'<ul>',
'<li>coloanele pe care se va pivota</li>',
unistr('<li>coloanele de afi\015Fat ca r\00E2nduri</li>'),
unistr('<li>coloanele de agregat \00EEmpreun\0103 cu func\0163ia de efectuat (medie, sum\0103, num\0103rare etc.)</li>'),
'</ul>'))
,p_version_scn=>2693296
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128669428336027365)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Dac\0103 personaliza\0163i un raport interactiv, set\0103rile raportului sunt'),
unistr('afi\015Fate sub bara de c\0103utare \015Fi deasupra raportului. Aceast\0103 zon\0103 poate fi restr\00E2ns\0103 \015Fi extins\0103 utiliz\00E2nd pictograma din st\00E2nga.'),
'<p>',
'Pentru fiecare setare de raport:',
'</p><ul>',
unistr('<li>Edita\0163i o setare f\0103c\00E2nd clic pe nume.</li>'),
unistr('<li>Dezactiva\0163i/activa\0163i o setare prin debifarea sau bifarea casetei de validare Dezactivare/activare. Utiliza\0163i acest control pentru a activa sau dezactiva temporar o setare.</li>'),
unistr('<li>Elimina\0163i o setare f\0103c\00E2nd clic pe pictograma Eliminare.</li>'),
'</ul>',
unistr('<p>Dac\0103 a\0163i creat o diagram\0103, grupare sau pivotare, pute\0163i comuta \00EEntre acestea'),
unistr('\015Fi raportul de baz\0103 utiliz\00E2nd vizualizarea raport, vizualizarea diagram\0103, vizualizarea grupare \015Fi vizualizarea pivotare'),
unistr('cu leg\0103turile prezentate \00EEn dreapta. Dac\0103 vizualiza\0163i diagrama, gruparea sau pivotarea'),
unistr('pute\0163i utiliza \015Fi leg\0103tura Editare pentru editarea set\0103rilor.</p>'),
''))
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128658995781027362)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'ro'
,p_message_text=>unistr('Reseteaz\0103 raportul \00EEnapoi la set\0103rile prestabilite, elimin\00E2nd orice personaliz\0103ri efectuate.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128723606179027381)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Seteaz\0103 num\0103rul de \00EEnregistr\0103ri de afi\015Fat pe pagin\0103.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128658823423027362)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Salveaz\0103 raportul personalizat pentru utilizare viitoare. Furnza\0163i un nume \015Fi o descriere op\0163ional\0103 \015Fi pute\0163i face raportul accesibil pentru public (mai exact, to\0163i utilizatorii pot accesa raportul prestabilit primar). Pute\0163i salva patru tipuri de')
||' rapoarte interactive:</p>',
'<ul>',
unistr('<li><strong>Prestabilit principal</strong> (numai dezvoltatori). Raportul prestabilit principal este raportul care este afi\015Fat ini\0163ial. Rapoartele prestabilite principale nu pot fi redenumite sau \015Fterse.</li>'),
unistr('<li><strong>Raport alternativ</strong> (numai dezvoltatori). Permite dezvoltatorilor s\0103 creeze multiple machete de raport. Numai dezvoltatorii pot s\0103 salveze, redenumeasc\0103 sau \015Fterge un raport alternativ.</li>'),
unistr('<li><strong>Raport public</strong> (utilizator final). Poate fi salvat, redenumit sau \015Fters de utilizatorul final care l-a creat. Al\0163i utilizatori pot vizualiza \015Fi salva macheta ca un alt raport.</li>'),
unistr('<li><strong>Raport privat</strong> (utilizator final). Numai utilizatorul final care a creat raportul poate s\0103 vizualizaze, salveze, redenumeasc\0103 sau \015Fterge raportul.</li>'),
'</ul>',
unistr('<p>Dac\0103 salva\0163i rapoartele personalizate, un selector de rapoarte este afi\015Fat \00EEn bara de c\0103utare din st\00E2ngs selectorului de r\00E2nduri (dac\0103 este activat\0103 aceast\0103 caracteristic\0103).</p>'),
''))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128657846221027361)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEn partea superioar\0103 a fiec\0103rei pagini de raport este o regiune de c\0103utare. Aceast\0103 regiune (sau bara de c\0103utare) asigur\0103 urm\0103toarele caracteristici:')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128724279129027381)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'ro'
,p_message_text=>unistr('<li><strong>Meniul de ac\0163iuni</strong> v\0103 permite s\0103 personaliza\0163i un raport. Consulta\0163i sec\0163iunile urm\0103toare.</li>')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128723777453027381)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'ro'
,p_message_text=>unistr('<li><strong>Pictograma selectare coloane</strong> v\0103 permite s\0103 identifica\0163i ce coloane s\0103 c\0103uta\0163i (sau toate).</li>')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128724083137027381)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'ro'
,p_message_text=>unistr('<li><strong>Rapoartele</strong> afi\015Feaz\0103 rapoartele prestabilit alternativ \015Fi privat sau public salvat.</li>')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128723931183027381)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('<li><strong>R\00E2ndurile</strong> seteaz\0103 num\0103rul de \00EEnregistr\0103ri de afi\015Fat pe pagin\0103.</li>')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128723899859027381)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>Zona de text</strong> v\0103 permite s\0103 introduce\0163i criteriile de c\0103utare ce nu \0163in cont de litere mari/mici (caracterele speciale sunt implicite).</li>'),
unistr('<li><strong>Butonul Start</strong> execut\0103 c\0103utarea. Atingerea tastei centrale va executa c\0103utarea atunci c\00E2nd cursorul este \00EEn zona textului de c\0103utare.</li>')))
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128724168401027381)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'ro'
,p_message_text=>unistr('<li><strong>Pictogramele de vizualizare</strong> comut\0103 \00EEntre vizualiz\0103rile pictogram\0103, raport, detaliu, diagram\0103, grupare \015Fi pivot pentru raport dac\0103 sunt definite.</li>')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128658044214027361)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>unistr('Utilizat pentru modificarea coloanelor afi\015Fate. Coloanele din dreapta sunt afi\015Fate. Coloanele din st\00E2nga sunt ascunse. Pute\0163i reorganiza coloanele afi\015Fate utiliz\00E2nd s\0103ge\0163ile din partea dreapt\0103 extrem\0103. Coloanele calculate au prefixul <strong>**</stro')
||'ng>.'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128658215393027362)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilizat pentru modificarea coloanelor pe care se sorteaz\0103 \015Fi determin\0103 dac\0103'),
unistr('se sorteaz\0103 \00EEn ordine ascendent\0103 sau descendent\0103. Pute\0163i specifica \015Fi modul de tratare pentru'),
unistr('<code>NULLs</code>. Setarea prestabilit\0103 afi\015Feaz\0103 \00EEntotdeauna valorile <code>NULLs</code> ultimele sau le afi\015Feaz\0103 \00EEntotdeauna primele. Sortarea rezultat\0103 se afi\015Feaz\0103 \00EEn dreapta'),
'anteturilor coloanelor din raport.</p>'))
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128721358628027380)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'ro'
,p_message_text=>unistr('C\00E2nd ad\0103uga\0163i un abonament, introduce\0163i o adres\0103 de e-mail (sau mai multe, separate prin virgule), subiectul e-mailului, frecven\0163a, precum \015Fi data ini\0163ial\0103 \015Fi cea final\0103. E-mailurile care rezult\0103 includ versiunea exportat\0103 (\00EEn format PDF, Excel, HTML')
||unistr(' sau CSV) a raportului interactiv ce con\0163ine datele curente, cu set\0103rile de raport care erau aplicate c\00E2nd a fost ad\0103ugat abonamentul.')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128662931236027363)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Ascundere coloan\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128653356141027360)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'ro'
,p_message_text=>unistr('Eviden\0163iere')
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128664454124027363)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'ro'
,p_message_text=>unistr('Eviden\0163ieri')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128634675296027354)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'ro'
,p_message_text=>unistr('Eviden\0163iere celul\0103, %0 din %1')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128669513464027365)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'ro'
,p_message_text=>unistr('Condi\0163ie de eviden\0163iere')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128634546105027354)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'ro'
,p_message_text=>unistr('Eviden\0163iere r\00E2nd, %0 din %1')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128721936941027381)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Stil eviden\0163iere')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128626128250027352)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Eviden\0163iere tip')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128740733618027386)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'ro'
,p_message_text=>'Orizontal'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128769702518027395)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'ro'
,p_message_text=>unistr('1 setare inactiv\0103')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128769828261027395)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 set\0103ri inactive')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128659596811027362)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 raport interactiv')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128670500873027365)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'ro'
,p_message_text=>'Nevalid'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128663965138027363)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Expresie de calcul nevalid\0103. %0')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128619517392027350)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Data final\0103 trebuie s\0103 fie ulterioar\0103 datei ini\0163iale.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128678789626027368)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'ro'
,p_message_text=>unistr('Expresie de filtrare nevalid\0103. %0')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128748586568027389)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'ro'
,p_message_text=>unistr('Interogare filtru nevalid\0103')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128769983421027395)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'ro'
,p_message_text=>unistr('1 setare nevalid\0103')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128770002456027395)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 set\0103ri nevalide')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128722155678027381)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'ro'
,p_message_text=>unistr('(\00EEn minute)')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128739177326027386)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 este \00EEn ultimul %1')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128739388661027386)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 este \00EEn urm\0103torul %1')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128739209548027386)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu este \00EEn ultimul %1')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128739492301027386)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 nu este \00EEn urm\0103torul %1')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128668695446027365)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'ro'
,p_message_text=>unistr('Tastatur\0103 numeric\0103')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128632369448027354)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Etichet\0103 %0')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128662567400027363)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Titlul axei pentru etichet\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128654883390027361)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'ro'
,p_message_text=>'Ultima zi'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128655097221027361)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('Ultima or\0103')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128654509779027360)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Ultima lun\0103')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128654678787027360)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('Ultima s\0103pt\0103m\00E2n\0103')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128654700186027360)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'ro'
,p_message_text=>'Ultimele %0 zile'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128654973306027361)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'ro'
,p_message_text=>'Ultimele %0 ore'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128654344237027360)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'ro'
,p_message_text=>'Ultimii %0 ani'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128654433005027360)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'ro'
,p_message_text=>'Ultimul an'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128632290936027354)
,p_name=>'APEXIR_LINE'
,p_message_language=>'ro'
,p_message_text=>'Linie'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128629091149027353)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'ro'
,p_message_text=>unistr('Linie cu zon\0103')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128748402310027389)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'ro'
,p_message_text=>'Mapare'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128663453969027363)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'ro'
,p_message_text=>unistr('Interogarea este estimat\0103 c\0103 va dep\0103\015Fi resursele maxim permise. Modifica\0163i set\0103rile raportului \015Fi \00EEncerca\0163i din nou.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128644896142027357)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rul maxim de r\00E2nduri pentru acest raport este %0 r\00E2nduri. Aplica\0163i un filtru pentru a reduce num\0103rul de \00EEnregistr\0103ri din interogarea dvs.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128749012866027389)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'ro'
,p_message_text=>'Maxim %0'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128749228309027389)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'ro'
,p_message_text=>unistr('Median\0103 %0')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128591531585027342)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>'Mesaj'
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128649166058027359)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'ro'
,p_message_text=>'Acum %0 minute'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128749171108027389)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'ro'
,p_message_text=>'Minim %0'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128748143648027389)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Lun\0103')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128722587461027381)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'ro'
,p_message_text=>'Lunar'
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128661788077027363)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'ro'
,p_message_text=>'Mutare'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128661641350027363)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Mutare global\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128774830265027397)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('ID-ul static pentru regiune trebuie s\0103 fie specificat deoarece pagina con\0163ine multiple rapoarte inactive.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128627765161027352)
,p_name=>'APEXIR_NAME'
,p_message_language=>'ro'
,p_message_text=>'Nume'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128657407892027361)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Agregare nou\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128770641413027395)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Categorie nou\0103')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128657513045027361)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'ro'
,p_message_text=>'Calcul nou'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128652261372027360)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnainte')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128655323762027361)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Ziua urm\0103toare')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128655134641027361)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('Ora urm\0103toare')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128655667368027361)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Luna urm\0103toare')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128655518982027361)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('S\0103pt\0103m\00E2na urm\0103toare')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128655478025027361)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'ro'
,p_message_text=>unistr('Urm\0103toarele %0 zile')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128655227869027361)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'ro'
,p_message_text=>unistr('Urm\0103toarele %0 ore')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128655843087027361)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'ro'
,p_message_text=>unistr('Urm\0103torii %0 ani')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128655784227027361)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Anul urm\0103tor')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128628098158027352)
,p_name=>'APEXIR_NO'
,p_message_language=>'ro'
,p_message_text=>'Nu'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128670770226027365)
,p_name=>'APEXIR_NONE'
,p_message_language=>'ro'
,p_message_text=>unistr('- F\0103r\0103 -')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128721719423027381)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu este o adres\0103 de e-mail valid\0103.')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128593883540027342)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu au fost selectate coloane de afi\015Fat. Utiliza\0163i <strong>Coloane</strong> din meniul Ac\0163iuni pentru a face coloanele vizibile.')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128667212404027364)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'ro'
,p_message_text=>unistr('Valorile nule \00EEntotdeauna primele')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128667155840027364)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'ro'
,p_message_text=>unistr('Valorile nule \00EEntotdeauna ultimele')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128667651862027364)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'ro'
,p_message_text=>'Sortare valori nule %0'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128664093905027363)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'ro'
,p_message_text=>unistr('Timpul de flashback trebuie s\0103 fie numeric.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128663629003027363)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'ro'
,p_message_text=>unistr('Secven\0163a trebuie s\0103 fie numeric\0103.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128668121922027365)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'ro'
,p_message_text=>'Operator'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128626632753027352)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'ro'
,p_message_text=>'Portocaliu'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128740697747027386)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'ro'
,p_message_text=>'Orientare'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128628594327027353)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'ro'
,p_message_text=>'Altele'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128594744089027343)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'ro'
,p_message_text=>'Paginare pentru %0'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128608772076027347)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Orientare pagin\0103')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128609468331027347)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'ro'
,p_message_text=>'Peisaj'
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128609549256027347)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'ro'
,p_message_text=>'Portret'
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128608642523027347)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'ro'
,p_message_text=>unistr('Dimensiune pagin\0103')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128609266540027347)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'ro'
,p_message_text=>'A3'
,p_version_scn=>2693309
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128609127835027347)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'ro'
,p_message_text=>'A4'
,p_version_scn=>2693309
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128609356745027347)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'ro'
,p_message_text=>'Personalizat'
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128608977298027347)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'ro'
,p_message_text=>'Legal'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128608876191027347)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'ro'
,p_message_text=>unistr('Format pagin\0103 Letter')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128609078079027347)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'ro'
,p_message_text=>'Tabloid'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128749536961027389)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'ro'
,p_message_text=>unistr('Procent din num\0103rul total %0 (%)')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128748739516027389)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'ro'
,p_message_text=>unistr('Procent din suma total\0103 %0 (%)')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128747753884027388)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'ro'
,p_message_text=>unistr('Procent din num\0103rul total')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128747606746027388)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'ro'
,p_message_text=>unistr('Procent din suma total\0103')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128632131034027354)
,p_name=>'APEXIR_PIE'
,p_message_language=>'ro'
,p_message_text=>'Disc'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128697816721027373)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'ro'
,p_message_text=>'Pivot'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128699368187027374)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>unistr('Agregarea trebuie s\0103 fie specificat\0103.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128699586018027374)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu pute\0163i agrega pe o coloan\0103 selectat\0103 ca o coloan\0103 r\00E2nd.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128698704005027374)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>'Coloane pivot'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128698561078027374)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103 pivot %0')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128699182640027374)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana pivot trebuie s\0103 fie specificat\0103.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128551644121027330)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rul maxim de r\00E2nduri pentru o interogare Pivot limiteaz\0103 num\0103rul de r\00E2nduri din interogarea de baz\0103, nu num\0103rul de r\00E2nduri afi\015Fate. Interogarea dvs. de baz\0103 dep\0103\015Fe\015Fte num\0103rul maxim de r\00E2nduri de %0. Aplica\0163i un filtru pentru reducerea num\0103rului d')
||unistr('e \00EEnregistr\0103ri din interogarea de baz\0103.')
,p_version_scn=>2693296
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128699068813027374)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'ro'
,p_message_text=>'Sortare pivot'
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128665022848027364)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana de pivotare con\0163ine prea multe valori distincte - pivotul SQL nu poate fi generat.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128596034266027343)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare pivot pentru %0'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128721865541027381)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'ro'
,p_message_text=>'Previzualizare'
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128652382444027360)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128746693928027388)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'ro'
,p_message_text=>'Principal'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128722893213027381)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Raport principal'
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128608544620027347)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'ro'
,p_message_text=>'Includere etichete de accesibilitate'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128569347266027335)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'ro'
,p_message_text=>'Golire text formatat'
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128677719151027367)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'ro'
,p_message_text=>'Privat'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128632749620027354)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'ro'
,p_message_text=>'Public'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128628352663027353)
,p_name=>'APEXIR_RED'
,p_message_language=>'ro'
,p_message_text=>unistr('Ro\015Fu')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128774733863027397)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('ID-ul static %0 pentru regiune nu exist\0103.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128661877177027363)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'ro'
,p_message_text=>'Eliminare'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128661922068027363)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'ro'
,p_message_text=>'Eliminare tot'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128770186525027395)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'ro'
,p_message_text=>unistr('Eliminare diagram\0103')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128661486612027363)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'ro'
,p_message_text=>unistr('Eliminare control de \00EEntrerupere')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128661157620027362)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'ro'
,p_message_text=>'Eliminare filtru'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128661298928027362)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'ro'
,p_message_text=>'Eliminare flashback'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128770213875027395)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'ro'
,p_message_text=>'Eliminare grupare'
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128661509334027363)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'ro'
,p_message_text=>unistr('Eliminare eviden\0163iere')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128770366062027395)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'ro'
,p_message_text=>'Eliminare pivot'
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128751455759027390)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Eliminare raport'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128733252068027384)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Redenumire raport prestabilit'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128671024908027365)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Redenumire raport'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128652674288027360)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Raport'
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128749615337027389)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'ro'
,p_message_text=>'Rapoarte'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128624863838027352)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Raportul interactiv salvat cu aliasul %0 nu exist\0103.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128678057317027368)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Raportul nu exist\0103.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128624942007027352)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Raportul interactiv salvat cu ID-ul %0 nu exist\0103.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128669345104027365)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'ro'
,p_message_text=>unistr('Set\0103ri raport')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128593581802027342)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'ro'
,p_message_text=>unistr('Set\0103ri de raportare pentru %0')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128649632410027359)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare raport'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128653886384027360)
,p_name=>'APEXIR_RESET'
,p_message_language=>'ro'
,p_message_text=>'Resetare'
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128632993006027354)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'ro'
,p_message_text=>unistr('Restabilire raport la set\0103rile prestabilite.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128628134075027353)
,p_name=>'APEXIR_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2nd')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128745723907027388)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu pute\0163i utiliza ROWID ca o coloan\0103 de cheie primar\0103 pentru o surs\0103 de date REST.')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128660570763027362)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2nduri')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128723508061027381)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2nduri pe pagin\0103')
,p_is_js_message=>true
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128698871453027374)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloane r\00E2nd')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128698610873027374)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103 r\00E2nd %0')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128699246935027374)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana r\00E2nd trebuie s\0103 fie specificat\0103.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128699469564027374)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana r\00E2nd trebuie s\0103 fie diferit\0103 de coloana pivot.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128675061246027367)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'ro'
,p_message_text=>unistr('Filtru de r\00E2nd')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128649757215027359)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2ndul %0 din %1')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128654067355027360)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'ro'
,p_message_text=>unistr('Textul r\00E2ndului con\0163ine')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128627432903027352)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'ro'
,p_message_text=>'Salvare'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128664674921027363)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Raport salvat'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128664542386027363)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'ro'
,p_message_text=>'Raport salvat = "%0"'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128666722089027364)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'ro'
,p_message_text=>unistr('Set\0103rile raportului curent vor fi utilizate ca valori prestabilite pentru to\0163i utilizatorii.')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128733110343027384)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Salvare raport prestabilit'
,p_is_js_message=>true
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128653709451027360)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Salvare raport'
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128770531469027395)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'ro'
,p_message_text=>'Salvare raport *'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128724542623027381)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128659431012027362)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Bar\0103 de c\0103utare')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128592857016027342)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'ro'
,p_message_text=>unistr('Bar\0103 de c\0103utare pentru %0')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128770416000027395)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare: %0')
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128730087611027383)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'ro'
,p_message_text=>unistr('Raport de c\0103utare')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128714080881027378)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>'Coloane selectate'
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128629136878027353)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('- Selectare coloan\0103 -')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128653065017027360)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>'Selectare coloane'
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128632625821027354)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('- Selectare func\0163ie -')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128660202125027362)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('- Selectare coloan\0103 de grupare -')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128698348079027374)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('- Selectare coloan\0103 pivot -')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128748631812027389)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare r\00E2nd')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128698419675027374)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('- Selectare coloan\0103 r\00E2nd -')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128579903461027338)
,p_name=>'APEXIR_SEND'
,p_message_language=>'ro'
,p_message_text=>'Trimitere'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128602431572027345)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'ro'
,p_message_text=>'Trimitere ca e-mail'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128627802645027352)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'ro'
,p_message_text=>unistr('Secven\0163\0103')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128653216852027360)
,p_name=>'APEXIR_SORT'
,p_message_language=>'ro'
,p_message_text=>'Sortare'
,p_is_js_message=>true
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128662745325027363)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'ro'
,p_message_text=>unistr('Sortare ascendent\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128662859619027363)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'ro'
,p_message_text=>unistr('Sortare descendent\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128750859456027389)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'ro'
,p_message_text=>'Ordine de sortare'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128657181432027361)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'ro'
,p_message_text=>unistr('spa\0163iu')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128668361518027365)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'ro'
,p_message_text=>'Stare %0'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128722248448027381)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'ro'
,p_message_text=>'Abonament'
,p_is_js_message=>true
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128748018296027389)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'ro'
,p_message_text=>unistr('Termin\00E2nd cu')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128567068626027334)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'ro'
,p_message_text=>unistr('Omitere dac\0103 nu se g\0103sesc date')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128747993090027389)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEncep\00E2nd de la')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128748899234027389)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'ro'
,p_message_text=>'Suma %0'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128739735069027386)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'ro'
,p_message_text=>'%0, raport = %1, vizualizare = %2'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128626797750027352)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'ro'
,p_message_text=>'Culoare text'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128645495865027358)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'ro'
,p_message_text=>'zile'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128645381239027358)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'ro'
,p_message_text=>'ore'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128645286675027358)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'ro'
,p_message_text=>'minute'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128645643829027358)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'ro'
,p_message_text=>'luni'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128645520615027358)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('s\0103pt\0103m\00E2ni')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128645755667027358)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'ro'
,p_message_text=>'ani'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128751241009027390)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'ro'
,p_message_text=>'Comutare'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128662074620027363)
,p_name=>'APEXIR_TOP'
,p_message_language=>'ro'
,p_message_text=>unistr('Partea superioar\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128744757141027388)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103 f\0103r\0103 grupare')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128663583744027363)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'ro'
,p_message_text=>unistr('Numele eviden\0163iat trebuie s\0103 fie unic.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128631404952027354)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'ro'
,p_message_text=>'Tip de date neacceptat'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128662199402027363)
,p_name=>'APEXIR_UP'
,p_message_language=>'ro'
,p_message_text=>'Sus'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128663791081027363)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'ro'
,p_message_text=>unistr('Introduce\0163i o culoare valid\0103.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128663892447027363)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'ro'
,p_message_text=>unistr('Introduce\0163i o masc\0103 de formatare valid\0103.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128628672096027353)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'ro'
,p_message_text=>'Valoare'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128662613063027363)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'ro'
,p_message_text=>'Titlul axei pentru valoare'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128670421176027365)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>'Valoare obligatorie'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128632016730027354)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103 vertical\0103')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128740820185027386)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'ro'
,p_message_text=>'Vertical'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128669769083027365)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare diagram\0103')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128728357215027383)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare detalii'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128772676832027396)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Raportul nu are vizualizarea %0 definit\0103.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128728465923027383)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare grupare'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128728286145027383)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare pictograme'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128698133063027374)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare pivot'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128669817032027365)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare raport'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128722429566027381)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'ro'
,p_message_text=>unistr('S\0103pt\0103m\00E2nal')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128652554275027360)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Raport de lucru'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128750237169027389)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'ro'
,p_message_text=>'%0 zile'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128750199698027389)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'ro'
,p_message_text=>'%0 ore'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128750055170027389)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'ro'
,p_message_text=>'%0 minute'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128750458538027389)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'ro'
,p_message_text=>'%0 luni'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128750357010027389)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 s\0103pt\0103m\00E2ni')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128750570998027389)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'ro'
,p_message_text=>'%0 ani'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128748294234027389)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'ro'
,p_message_text=>'An'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128626470010027352)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'ro'
,p_message_text=>'Galben'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128627953260027352)
,p_name=>'APEXIR_YES'
,p_message_language=>'ro'
,p_message_text=>'Da'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128662420785027363)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 con\0163ine < sau > acestea fiind caractere nevalide.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128686324575027370)
,p_name=>'APEX_REGION'
,p_message_language=>'ro'
,p_message_text=>'Regiune'
,p_version_scn=>2693324
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128577454026027337)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('Fi\015Fierul ZIP nu a putut fi extras.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128577329425027337)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Semn\0103tura tip final de director central nu a fost g\0103sit\0103. Acest fi\015Fier nu este un fi\015Fier ZIP.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128608426314027347)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'ro'
,p_message_text=>unistr('Precondi\0163ie API \00EEnc\0103lcat\0103')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128630541691027353)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu se poate prelua valoarea pentru setarea aplica\0163iei %0 deoarece op\0163iunea de generare asociat\0103 este dezactivat\0103.')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128630461227027353)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu se poate seta valoarea pentru setarea aplica\0163iei %0 deoarece op\0163iunea de generare asociat\0103 este dezactivat\0103.')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128743098869027387)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoarea %0 pentru setarea aplica\0163iei este nevalid\0103')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128742954814027387)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'ro'
,p_message_text=>unistr('Setarea cerut\0103 a aplica\0163iei %0 nu este definit\0103')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128743126338027387)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'ro'
,p_message_text=>unistr('Setarea aplica\0163iei %0 nu poate fi setat\0103 la o valoare nul\0103')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128617025938027349)
,p_name=>'BACK'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128599442262027344)
,p_name=>'BUILDER'
,p_message_language=>'ro'
,p_message_text=>'Generator'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128673000306027366)
,p_name=>'BUTTON LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Etichet\0103 buton')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128596333408027343)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'ro'
,p_message_text=>'Clase CSS butoane'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128634810202027355)
,p_name=>'BUTTON_ID'
,p_message_language=>'ro'
,p_message_text=>unistr('ID-ul butonului generat va fi fie ID-ul static al butonului dac\0103 este definit, iar dac\0103 nu este definit, va fi un ID generat intern cu formatul ''B'' || [Internal Button ID]')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128568800493027335)
,p_name=>'CANDLESTICK'
,p_message_language=>'ro'
,p_message_text=>unistr('Lum\00E2nare')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128682819569027369)
,p_name=>'CENTER'
,p_message_language=>'ro'
,p_message_text=>'Centru'
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128629468163027353)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'ro'
,p_message_text=>'Solicitare %0'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128619401162027350)
,p_name=>'CHECK$'
,p_message_language=>'ro'
,p_message_text=>unistr('Selector r\00E2nd')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128744891121027388)
,p_name=>'CHECKED'
,p_message_language=>'ro'
,p_message_text=>'bifat'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128721257294027380)
,p_name=>'COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128678854081027368)
,p_name=>'COMMENTS'
,p_message_language=>'ro'
,p_message_text=>'Comentarii'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128659865473027362)
,p_name=>'CONTINUE'
,p_message_language=>'ro'
,p_message_text=>'Continuare'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128617355382027349)
,p_name=>'COPYRIGHT'
,p_message_language=>'ro'
,p_message_text=>unistr('Copyright &copy; 1999, %0, Oracle \015Fi/sau afilia\0163ii s\0103i.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128665592508027364)
,p_name=>'COUNT'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103r')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128672545188027366)
,p_name=>'CREATE'
,p_message_language=>'ro'
,p_message_text=>'Creare'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128727935080027382)
,p_name=>'CREATED'
,p_message_language=>'ro'
,p_message_text=>'Creat'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128728027197027382)
,p_name=>'CREATED_BY'
,p_message_language=>'ro'
,p_message_text=>'Creat de'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128648974906027359)
,p_name=>'CREATED_ON'
,p_message_language=>'ro'
,p_message_text=>unistr('Data cre\0103rii')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128660014595027362)
,p_name=>'CUSTOM'
,p_message_language=>'ro'
,p_message_text=>'Personalizat'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128671275624027365)
,p_name=>'CUSTOMIZE'
,p_message_language=>'ro'
,p_message_text=>'Personalizare'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128673249547027366)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'ro'
,p_message_text=>unistr('Resetare preferin\0163e pagin\0103 pentru utilizatorul %0.')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128673316541027366)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'ro'
,p_message_text=>unistr('Preferin\0163ele au fost modificate pentru utilizatorul %0.')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128673197113027366)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'ro'
,p_message_text=>unistr('Resetare preferin\0163e pagin\0103 pentru utilizatorul %0.')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128634222398027354)
,p_name=>'DAILY'
,p_message_language=>'ro'
,p_message_text=>'Zilnic'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128597649039027343)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Fi\015Fierul \00EEnc\0103rcat este nevalid sau are o extensie gre\015Fit\0103.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128629692995027353)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'ro'
,p_message_text=>'Selectorul XML sau JSON utilizat este nevalid.'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128574730898027337)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'ro'
,p_message_text=>unistr('Profilul de date \015Fi fi\015Fierul \00EEnc\0103rcat nu con\0163in nicio coloan\0103 de tabel destina\0163ie.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128688625731027371)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu au fost g\0103site date \00EEn fi\015Fierul \00EEnc\0103rcat.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128688707536027371)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu au fost g\0103site date \00EEn foaia de calcul "%0".')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128594542814027342)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Fi\015Fierul specificat nu este un fi\015Fier XLSX.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128560567815027332)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcarea datelor a fost finalizat\0103: %0 r\00E2nduri procesate.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128562869539027333)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcarea datelor a fost finalizat\0103: %0 r\00E2nduri procesate cu 1 eroare.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128563116890027333)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcarea datelor a fost finalizat\0103: %0 r\00E2nduri procesate cu %1 erori.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128562905657027333)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcarea datelor a fost finalizat\0103: 1 r\00E2nd procesat.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128577255797027337)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcarea datelor a fost finalizat\0103: 1 r\00E2nd procesat cu erori.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128563056414027333)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rcarea datelor a fost finalizat\0103: 1 r\00E2nd procesat f\0103r\0103 erori.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128695732675027373)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103 destina\0163ie')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128602915578027345)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu \00EEnc\0103rca\0163i')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128603083044027345)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('Se preproceseaz\0103 eroarea')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128695819790027373)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloan\0103 surs\0103')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128696663510027373)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'ro'
,p_message_text=>unistr('Format dat\0103 / num\0103r')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128602782472027345)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'ro'
,p_message_text=>unistr('Inserare r\00E2nd')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128758866554027392)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('E\015Fec la preluarea valorii func\0163iei de c\0103utare.')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128728537398027383)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'ro'
,p_message_text=>'Mapare date / tabel'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128696701934027373)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2nd')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128603151656027345)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Secven\0163\0103: ac\0163iune')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128690468822027371)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('Regula de transformare a e\015Fuat')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128602807850027345)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Actualizare r\00E2nd')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128665120719027364)
,p_name=>'DATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Dat\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128638004801027355)
,p_name=>'DAY'
,p_message_language=>'ro'
,p_message_text=>'zi'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128638193902027355)
,p_name=>'DAYS'
,p_message_language=>'ro'
,p_message_text=>'zile'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128678506721027368)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'ro'
,p_message_text=>unistr('Remedierea erorilor nu este activat\0103 pentru aceast\0103 aplica\0163ie.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128730293448027383)
,p_name=>'DEFAULT'
,p_message_language=>'ro'
,p_message_text=>'Prestabilit'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128638837963027356)
,p_name=>'DELETE'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Ftergere')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128614415154027348)
,p_name=>'DELETE_MSG'
,p_message_language=>'ro'
,p_message_text=>unistr('Dori\0163i s\0103 efectua\0163i aceast\0103 ac\0163iune de \015Ftergere?')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128594028631027342)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'ro'
,p_message_text=>'Suprascrieri sesiune'
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128594960835027343)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'ro'
,p_message_text=>'Activare suprascrieri sesiune'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128595865901027343)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'ro'
,p_message_text=>unistr('A survenit o eroare la \00EEnc\0103rcarea suprascrierilor de sesiune.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128595610740027343)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'ro'
,p_message_text=>'A survenit o eroare la salvarea suprascrierilor de sesiune.'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128595574210027343)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'ro'
,p_message_text=>unistr('Suprascrieri sesiune salvate. \00CEnchide\0163i acest dialog pentru a vedea modific\0103rile.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128568727317027335)
,p_name=>'DIAL_PCT'
,p_message_language=>'ro'
,p_message_text=>'Cadran (procent)'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128609709907027347)
,p_name=>'DOWNLOAD'
,p_message_language=>'ro'
,p_message_text=>unistr('Desc\0103rcare')
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128729335385027383)
,p_name=>'DUP_USER'
,p_message_language=>'ro'
,p_message_text=>unistr('Nume de utilizator duplicat \00EEn cadrul listei.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128618168675027350)
,p_name=>'EDIT'
,p_message_language=>'ro'
,p_message_text=>'Editare'
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128629353930027353)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Adresa de e-mail "%0" nu a fost g\0103sit\0103.')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128612047942027348)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'ro'
,p_message_text=>'Acest e-mail este trimis de %0.'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128729583316027383)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'ro'
,p_message_text=>unistr('Adresa de e-mail este prea lung\0103. Limita este de 240 de caractere.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128659752762027362)
,p_name=>'ERROR'
,p_message_language=>'ro'
,p_message_text=>'Eroare'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128690578956027371)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a putut seta valoarea sursei articolului paginii pentru regiunea de reactualizare par\0163ial\0103 a paginii')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128651063218027359)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'ro'
,p_message_text=>'Creat de'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128612397119027348)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Parol\0103 expirat\0103')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128604793144027346)
,p_name=>'FILE_EMPTY'
,p_message_language=>'ro'
,p_message_text=>unistr('Fi\015Fierul este gol.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128694566258027372)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Dimensiunea fi\015Fierului \00EEnc\0103rcat a fost peste %0 MB. \00CEnc\0103rca\0163i un fi\015Fier mai mic.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128614683158027349)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Autentificarea utilizatorului a e\015Fuat \015Fi unul sau mai multe fi\015Fiere nu au fost \00EEnc\0103rcate.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128614711331027349)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Aceast\0103 instan\0163\0103 nu permite utilizatorilor neautentifica\0163i s\0103 \00EEncarce fi\015Fiere.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128694685868027372)
,p_name=>'FILTERS'
,p_message_language=>'ro'
,p_message_text=>'Filtre'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128672678989027366)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'ro'
,p_message_text=>'A survenit 1 eroare'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128671877909027366)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Au survenit %0 erori'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128617217572027349)
,p_name=>'FORM_OF'
,p_message_language=>'ro'
,p_message_text=>'%0 din %1'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128656228728027361)
,p_name=>'GO'
,p_message_language=>'ro'
,p_message_text=>'Start'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128758419599027392)
,p_name=>'HELP'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128599596465027344)
,p_name=>'HOME'
,p_message_language=>'ro'
,p_message_text=>'Home'
,p_is_js_message=>true
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128637864455027355)
,p_name=>'HOUR'
,p_message_language=>'ro'
,p_message_text=>unistr('or\0103')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128637997538027355)
,p_name=>'HOURS'
,p_message_language=>'ro'
,p_message_text=>'ore'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128619389622027350)
,p_name=>'ICON'
,p_message_language=>'ro'
,p_message_text=>unistr('Pictogram\0103 %0')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128596660939027343)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'ro'
,p_message_text=>unistr('Asisten\0163\0103 pentru decuparea pictogramei')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128597861498027343)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Glisa\0163i pictograma \015Fi utiliza\0163i sliderul de zoom pentru a o repozi\0163iona \00EEn cadru.</p>'),
'',
unistr('<p>La \00EEnc\0103rcarea unei pictograme noi aceasta va fi redimensionat\0103 pentru coresponden\0163\0103 cu trei formate: favicon, pictograma mic\0103 \015Fi mare.</p>'),
'',
unistr('<p>La selectarea instrumentului de decupare pentru pictograme, sunt disponibile urm\0103toarele scurt\0103turi din taste:</p>'),
'<ul>',
unistr('    <li>S\0103geat\0103 st\00E2nga: Mutare imagine la st\00E2nga*</li>'),
unistr('    <li>S\0103geat\0103 sus: Mutare imagine \00EEn sus*</li>'),
unistr('    <li>S\0103geat\0103 dreapta: Mutare imagine la dreapta*</li>'),
unistr('    <li>S\0103geat\0103 jos: Mutare imagine \00EEn jos*</li>'),
unistr('    <li>I: M\0103rire</li>'),
unistr('    <li>O: Mic\015Forare</li>'),
unistr('    <li>L: Rotire spre st\00E2nga</li>'),
'    <li>R: Rotire spre dreapta</li>',
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*\0162ine\0163i ap\0103sat Shift pentru mutare mai rapid\0103</em></p>')))
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128603396944027345)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Glisa\0163i pentru repozi\0163ionarea pictogramei')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128603436781027345)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Muta\0163i sliderul pentru ajustarea nivelului de zoom')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128596495177027343)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Pictogram\0103 editare aplica\0163ie')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128596796259027343)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'ro'
,p_message_text=>'Eroare la salvarea pictogramei'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128679131418027368)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'ro'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> Aceast\0103 aplica\0163ie utilizeaz\0103 pictograme mo\015Ftenite. \00CEnc\0103rcarea unei noi pictograme va \00EEnlocui toate pictogramele mo\015Ftenite.</p>')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128597372461027343)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnc\0103rca\0163i o pictogram\0103 nou\0103')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128673570303027366)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'ro'
,p_message_text=>unistr('Acredit\0103ri de conectare nevalide')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128774697832027397)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoare nevalid\0103 pentru parametrul: %0')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128667889840027364)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'ro'
,p_message_text=>unistr('Ca set\0103ri prestabilite pentru raport')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128667945633027364)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'ro'
,p_message_text=>'Ca raport denumit'
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128649887849027359)
,p_name=>'IR_ERROR'
,p_message_language=>'ro'
,p_message_text=>'%0 eroare. %1'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128649511492027359)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Nu s-a putut calcula navigarea formularului. %0'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128625156452027352)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Raportul interactiv nu a fost g\0103sit.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128624558072027351)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Regiunea de raportare interactiv\0103 nu exist\0103 \00EEn aplica\0163ia %0, pagina %1 \015Fi regiunea %2.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128667759256027364)
,p_name=>'IR_STAR'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fat numai pentru dezvoltatori')
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128655901515027361)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Interogarea raportului necesit\0103 o cheie unic\0103 pentru identificarea fiec\0103rui r\00E2nd. Cheia furnizat\0103 nu poate fi utilizat\0103 pentru aceast\0103 interogare. Defini\0163i o coloan\0103 pentru cheia unic\0103. %0')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128656008639027361)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'ro'
,p_message_text=>unistr('Interogarea raportului necesit\0103 o cheie unic\0103 pentru identificarea fiec\0103rui r\00E2nd. Cheia furnizat\0103 nu poate fi utilizat\0103 pentru aceast\0103 interogare. Edita\0163i atributele raportului pentru a defini o coloan\0103 de cheie unic\0103. %0')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128696921540027373)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare fi\015Fier')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128696870691027373)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'ro'
,p_message_text=>unistr('Glisa\0163i \015Fi plasa\0163i fi\015Fierul aici sau')
,p_is_js_message=>true
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128617545200027349)
,p_name=>'ITEMS'
,p_message_language=>'ro'
,p_message_text=>'Articole'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128651237936027359)
,p_name=>'ITEM_VALUE'
,p_message_language=>'ro'
,p_message_text=>'Valoare element'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128665880181027364)
,p_name=>'LABEL'
,p_message_language=>'ro'
,p_message_text=>unistr('Etichet\0103')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128678493739027368)
,p_name=>'LANGUAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Limb\0103')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128638552199027356)
,p_name=>'LAST'
,p_message_language=>'ro'
,p_message_text=>'ultimul'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128614542284027348)
,p_name=>'LENGTH'
,p_message_language=>'ro'
,p_message_text=>'Lungime'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128672810302027366)
,p_name=>'LOGIN'
,p_message_language=>'ro'
,p_message_text=>'Conectare'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128714452750027378)
,p_name=>'MANAGE'
,p_message_language=>'ro'
,p_message_text=>'Administrare'
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128777574478027398)
,p_name=>'MAXIMIZE'
,p_message_language=>'ro'
,p_message_text=>'Maximizare'
,p_is_js_message=>true
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128637690730027355)
,p_name=>'MINUTE'
,p_message_language=>'ro'
,p_message_text=>'minut'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128637744229027355)
,p_name=>'MINUTES'
,p_message_language=>'ro'
,p_message_text=>'minute'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128729736340027383)
,p_name=>'MISSING_AT'
,p_message_language=>'ro'
,p_message_text=>unistr('Lipse\015Fte "@" \00EEn adres de e-mail.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128729963353027383)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'ro'
,p_message_text=>unistr('Avertisment: Nu a fost definit niciun \015Fablon de pagin\0103 de dialog pentru pagina de dialog %0 din aplica\0163ia %1.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128729688662027383)
,p_name=>'MISSING_DOT'
,p_message_language=>'ro'
,p_message_text=>unistr('Lipse\015Fte "." \00EEn domeniul adresei de e-mail.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128675910295027367)
,p_name=>'MODULE'
,p_message_language=>'ro'
,p_message_text=>'Modul'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128630183454027353)
,p_name=>'MONTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Lun\0103')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128634031117027354)
,p_name=>'MONTHLY'
,p_message_language=>'ro'
,p_message_text=>'Lunar'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128630285511027353)
,p_name=>'MONTHS'
,p_message_language=>'ro'
,p_message_text=>'luni'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128665421619027364)
,p_name=>'MOVE'
,p_message_language=>'ro'
,p_message_text=>'Mutare'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128736230380027385)
,p_name=>'MOVE_FROM'
,p_message_language=>'ro'
,p_message_text=>'Mutare de la'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128736341462027385)
,p_name=>'MOVE_TO'
,p_message_language=>'ro'
,p_message_text=>unistr('Mutare \00EEn')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128652428967027360)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare \00EEn opera\0163ia de \015Ftergere pentru mai multe r\00E2nduri: r\00E2nd= %0, %1, %2')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128651427085027359)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'ro'
,p_message_text=>'Utilizatorul nu poate fi public'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128600098806027344)
,p_name=>'NAME'
,p_message_language=>'ro'
,p_message_text=>'Nume'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128665687190027364)
,p_name=>'NEW'
,p_message_language=>'ro'
,p_message_text=>'Nou'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128629906604027353)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('V\0103 pute\0163i conecta la %0 acces\00E2nd:')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128630077760027353)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEn\015Ftiin\0163are pentru cont %0 nou')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128758620695027392)
,p_name=>'NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnainte')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128675879180027367)
,p_name=>'NO'
,p_message_language=>'ro'
,p_message_text=>'Nu'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128772734468027396)
,p_name=>'NOBODY'
,p_message_language=>'ro'
,p_message_text=>'nimeni'
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128638989594027356)
,p_name=>'NOT'
,p_message_language=>'ro'
,p_message_text=>'Non'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128681838942027369)
,p_name=>'NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>'Nu este nul'
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128651567546027360)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'ro'
,p_message_text=>'Diferit de %0'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128671381194027365)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('nu au fost g\0103site date')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128681367030027368)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost g\0103sit niciun raport actualizabil. Opera\0163iunile de actualizare \015Fi \015Ftergere pe multiple r\00E2nduri pot fi efectuate numai pe formulare tabelare de tipul ''Raport actualizabil''.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128682291379027369)
,p_name=>'OK'
,p_message_language=>'ro'
,p_message_text=>'OK'
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128677530834027367)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'ro'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128776471805027397)
,p_name=>'ORA_06550'
,p_message_language=>'ro'
,p_message_text=>'ORA-06550: linia %0, coloana %1'
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128727347243027382)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'ro'
,p_message_text=>unistr('Utiliza\0163i un browser web perimat. Pentru o list\0103 de browsere acceptate, consulta\0163i ghidul de instalare Oracle APEX.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128622345854027351)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'ro'
,p_message_text=>unistr('A fost cerut un set de r\00E2nduri nevalid, datele surs\0103 ale raportului au fost modificate.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128644360897027357)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Trebuie specificat un num\0103r de pagin\0103 valid, de exemplu p?n=1234.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128648580740027359)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnainte')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128648618223027359)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'ro'
,p_message_text=>unistr('Set urm\0103tor')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128648768014027359)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128648848206027359)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'ro'
,p_message_text=>'Set precedent'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128758546028027392)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'ro'
,p_message_text=>'Selectare paginare'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128688570893027371)
,p_name=>'PASSWORD'
,p_message_language=>'ro'
,p_message_text=>unistr('Parol\0103')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128629248666027353)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola dvs. pentru %0 a fost schimbat\0103.')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128616964735027349)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola nu se conformeaz\0103 regulilor privind complexitatea parolei de pe acest site.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128616042786027349)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Noua parol\0103 trebuie s\0103 difere de parola veche cu cel pu\0163in %0 caractere.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128616626691027349)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola nu trebuie s\0103 con\0163in\0103 numele de utilizator.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128616829271027349)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola con\0163ine un cuv\00E2nt simplu interzis.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128616726622027349)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola nu trebuie s\0103 con\0163in\0103 numele spa\0163iului de lucru.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128615995856027349)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola trebuie s\0103 con\0163in\0103 cel pu\0163in %0 caractere.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128616129473027349)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola trebuie s\0103 con\0163in\0103 cel pu\0163in un caracter alfabetic (%0).')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128616531184027349)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola trebuie s\0103 con\0163in\0103 cel pu\0163in un caracter alfabetic minuscul\0103.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128616246943027349)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola trebuie s\0103 con\0163in\0103 cel pu\0163in o cifr\0103 (0123456789).')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128616380836027349)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola trebuie s\0103 con\0163in\0103 cel pu\0163in un caracter de punctua\0163ie (%0).')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128616442007027349)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola trebuie s\0103 con\0163in\0103 cel pu\0163in un caracter alfabetic majuscul\0103.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128629719956027353)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEn\015Ftiin\0163are despre resetarea parolei')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128614886105027349)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Parola nu poate fi utilizat\0103 deoarece a fost utilizat\0103 \00EEn ultimele %0 zile.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128611533126027348)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Grafic cu procentaje'
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128703141097027375)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'ro'
,p_message_text=>'Articole'
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128703209702027375)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'ro'
,p_message_text=>'Articol'
,p_version_scn=>2693327
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128677333983027367)
,p_name=>'PERCENT'
,p_message_language=>'ro'
,p_message_text=>'Procent'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128646651442027358)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'ro'
,p_message_text=>unistr('Contacta\0163i administratorul.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128758760853027392)
,p_name=>'PREVIOUS'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnapoi')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128695314303027373)
,p_name=>'PRINT'
,p_message_language=>'ro'
,p_message_text=>unistr('Tip\0103rire')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128676188173027367)
,p_name=>'PRIVILEGES'
,p_message_language=>'ro'
,p_message_text=>'Privilegii'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128644702399027357)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'ro'
,p_message_text=>unistr('Referin\0163e regiune')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128665764200027364)
,p_name=>'REPORT'
,p_message_language=>'ro'
,p_message_text=>'Raport'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128676070730027367)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'ro'
,p_message_text=>unistr('Perioad\0103 de raportare')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128758970262027392)
,p_name=>'REPORT_LABEL'
,p_message_language=>'ro'
,p_message_text=>'Raport: %0'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128676705342027367)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'ro'
,p_message_text=>'Total raport'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128622436347027351)
,p_name=>'RESET'
,p_message_language=>'ro'
,p_message_text=>'Resetare paginare'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128651170411027359)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'ro'
,p_message_text=>'Resetare paginare'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128681211874027368)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'ro'
,p_message_text=>unistr('Resetare parol\0103')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128657017898027361)
,p_name=>'RESTORE'
,p_message_language=>'ro'
,p_message_text=>'Restabilire'
,p_is_js_message=>true
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128690630916027371)
,p_name=>'RESULTS'
,p_message_language=>'ro'
,p_message_text=>'Rezultate'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128682385624027369)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Revenire la aplica\0163ie.')
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128682757880027369)
,p_name=>'RIGHT'
,p_message_language=>'ro'
,p_message_text=>'Dreapta'
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128714774322027379)
,p_name=>'ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2ndul %0')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128665392025027364)
,p_name=>'ROW_COUNT'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103r de r\00E2nduri')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128555193740027331)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'ro'
,p_message_text=>'Consultare Oracle'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128555478836027331)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnchidere Consultare Oracle')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128555764203027331)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103 de \00EEn\015Ftiin\0163\0103ri')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128555305476027331)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Deschide\0163i Consultare Oracle')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128555628085027331)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'ro'
,p_message_text=>unistr('Hart\0103 produse')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128555586876027331)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103 de sugestii')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128556497004027331)
,p_name=>'RW_CLEAR'
,p_message_language=>'ro'
,p_message_text=>'Golire'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128556340869027331)
,p_name=>'RW_CLOSE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnchidere')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128556150905027331)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'ro'
,p_message_text=>'Vizualizare mai multe'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128556539822027331)
,p_name=>'RW_GO_TO'
,p_message_language=>'ro'
,p_message_text=>unistr('Accesa\0163i')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128555997088027331)
,p_name=>'RW_GP_STEP'
,p_message_language=>'ro'
,p_message_text=>'Etapa'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128556080782027331)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'ro'
,p_message_text=>'din'
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128555803221027331)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'ro'
,p_message_text=>unistr('Comuta\0163i afi\015Farea etapelor')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128554934877027331)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'ro'
,p_message_text=>unistr('Ascundere parol\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128556207129027331)
,p_name=>'RW_OPEN'
,p_message_language=>'ro'
,p_message_text=>'Deschidere'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128554764074027331)
,p_name=>'RW_ORACLE'
,p_message_language=>'ro'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128554879873027331)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare parol\0103')
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128556635027027331)
,p_name=>'RW_START'
,p_message_language=>'ro'
,p_message_text=>'Start'
,p_is_js_message=>true
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128681705552027369)
,p_name=>'SAVE'
,p_message_language=>'ro'
,p_message_text=>'Salvare'
,p_version_scn=>2693323
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128677922784027367)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'ro'
,p_message_text=>'Prestabilit alternativ'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128678301174027368)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'ro'
,p_message_text=>'Descriere'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128677850577027367)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'ro'
,p_message_text=>'Prestabilit principal'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128678613872027368)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'ro'
,p_message_text=>unistr('Mai mult de %0 r\00E2nduri disponibile. Cre\015Fte\0163i selectorul r\00E2ndurilor pentru a vedea mai multe r\00E2nduri.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128746087325027388)
,p_name=>'SEARCH'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128637546024027355)
,p_name=>'SECONDS'
,p_message_language=>'ro'
,p_message_text=>'secunde'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128677437138027367)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'ro'
,p_message_text=>unistr('Consulta\0163i ata\015Famentul')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128738011481027386)
,p_name=>'SELECT_ROW'
,p_message_language=>'ro'
,p_message_text=>unistr('Selectare r\00E2nd')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128677197628027367)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'ro'
,p_message_text=>unistr('Seta\0163i modul Cititor ecran ca dezactivat')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128677254462027367)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'ro'
,p_message_text=>unistr('Seta\0163i modul Cititor ecran ca activat')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128673436130027366)
,p_name=>'SHOW'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128739844984027386)
,p_name=>'SHOW_ALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare tot')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128764663849027394)
,p_name=>'SIGN_IN'
,p_message_language=>'ro'
,p_message_text=>'Conectare'
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128715549170027379)
,p_name=>'SIGN_OUT'
,p_message_language=>'ro'
,p_message_text=>'Deconectare'
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128666391760027364)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'ro'
,p_message_text=>'Acum %0 zile'
,p_is_js_message=>true
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128673904067027366)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>'Peste %0 zile'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128666294980027364)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'ro'
,p_message_text=>'Acum %0 ore'
,p_is_js_message=>true
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128673810761027366)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>'Peste %0 ore'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128666163312027364)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'ro'
,p_message_text=>'Acum %0 minute'
,p_is_js_message=>true
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128673702655027366)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>'Peste %0 minute'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128666550114027364)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'ro'
,p_message_text=>'Acum %0 luni'
,p_is_js_message=>true
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128674174801027366)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>'Peste %0 luni'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128674377177027366)
,p_name=>'SINCE_NOW'
,p_message_language=>'ro'
,p_message_text=>'Acum'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128666003349027364)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'ro'
,p_message_text=>'Acum %0 secunde'
,p_is_js_message=>true
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128673617696027366)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>'Peste %0 secunde'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128666432497027364)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'ro'
,p_message_text=>unistr('Acum %0 s\0103pt\0103m\00E2ni')
,p_is_js_message=>true
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128674005636027366)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>unistr('Peste %0 s\0103pt\0103m\00E2ni')
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128666616708027364)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'ro'
,p_message_text=>'Acum %0 ani'
,p_is_js_message=>true
,p_version_scn=>2693319
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128674221936027366)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'ro'
,p_message_text=>'Peste %0 ani'
,p_is_js_message=>true
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128660136199027362)
,p_name=>'STANDARD'
,p_message_language=>'ro'
,p_message_text=>'Standard'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128677050829027367)
,p_name=>'START_DATE'
,p_message_language=>'ro'
,p_message_text=>unistr('Data ini\0163ial\0103')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128612221605027348)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'ro'
,p_message_text=>unistr('Primi\0163i acest e-mail de la abonamentul de raportare interactiv\0103 creat de %0.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128773840111027396)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'ro'
,p_message_text=>'Abonamente'
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128723289757027381)
,p_name=>'TAB'
,p_message_language=>'ro'
,p_message_text=>unistr('Fil\0103')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128637495830027355)
,p_name=>'TITLE'
,p_message_language=>'ro'
,p_message_text=>'Titlu'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128617100502027349)
,p_name=>'TODAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Ast\0103zi')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128676684435027367)
,p_name=>'TOTAL'
,p_message_language=>'ro'
,p_message_text=>'Total'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128618476308027350)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'ro'
,p_message_text=>'Se pot selecta maxim %0 coloane.'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128574240469027336)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Restr\00E2ngere tot')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128574810374027337)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'ro'
,p_message_text=>unistr('Restr\00E2ngere toate de mai jos')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128573872407027336)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'ro'
,p_message_text=>'Extindere tot'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128574594413027336)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'ro'
,p_message_text=>'Expandare toate de mai jos'
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128575020739027337)
,p_name=>'TREE.REPARENT'
,p_message_language=>'ro'
,p_message_text=>unistr('Restabilire p\0103rinte')
,p_is_js_message=>true
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128697117637027373)
,p_name=>'TREES'
,p_message_language=>'ro'
,p_message_text=>'Arbori'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128739933015027386)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'ro'
,p_message_text=>'Obligatoriu'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128660851748027362)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'ro'
,p_message_text=>'Neautorizat'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128711088744027377)
,p_name=>'UNAVAILABLE'
,p_message_language=>'ro'
,p_message_text=>'Indisponibil'
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128674716260027366)
,p_name=>'UNKNOWN'
,p_message_language=>'ro'
,p_message_text=>'Necunoscut'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128613183877027348)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('A survenit o eroare de autentificare nerecunoscut\0103.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128615324768027349)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'ro'
,p_message_text=>unistr('Dac\0103 nu mai dori\0163i s\0103 primi\0163i e-mailuri, face\0163i clic pe <a href="%0">Dezabonare</a> pentru administrarea abonamentului.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128612181683027348)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'ro'
,p_message_text=>unistr('Dac\0103 nu mai dori\0163i s\0103 primi\0163i aceste e-mailuri, accesa\0163i urm\0103toarea adres\0103 URL pentru administrarea abonamentului:')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128651647499027360)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'ro'
,p_message_text=>'Tip de date neacceptat'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128638785860027356)
,p_name=>'UPDATE'
,p_message_language=>'ro'
,p_message_text=>'actualizare'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128637380844027355)
,p_name=>'UPDATED'
,p_message_language=>'ro'
,p_message_text=>'Actualizat'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128580529240027338)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'ro'
,p_message_text=>unistr('Upgradare \00EEn curs')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128580867093027338)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'ro'
,p_message_text=>unistr('Oracle APEX este upgradat \00EEn acest moment la o nou\0103 versiune. De obicei, acest proces dureaz\0103 maximum 3 minute.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128644167121027357)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'ro'
,p_message_text=>unistr('Adresa URL solicitat\0103 a fost interzis\0103. Contacta\0163i administratorul.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128665269765027364)
,p_name=>'USER'
,p_message_language=>'ro'
,p_message_text=>'Utilizator'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128688471686027371)
,p_name=>'USERNAME'
,p_message_language=>'ro'
,p_message_text=>'Nume de utilizator'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128729879193027383)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'ro'
,p_message_text=>'Numele de utilizator este prea lung. Limita este de %0 de caractere.'
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128672342330027366)
,p_name=>'USERS'
,p_message_language=>'ro'
,p_message_text=>'utilizatori'
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128729478128027383)
,p_name=>'USER_EXISTS'
,p_message_language=>'ro'
,p_message_text=>unistr('Numele de utilizator exist\0103 deja.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128743266854027387)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'ro'
,p_message_text=>'Imagine de profil pentru utilizatorul %0'
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128605180716027346)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'ro'
,p_message_text=>'Automatizare - %0'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128603687011027345)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'ro'
,p_message_text=>'Pagina %0 - %1 '
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128606524569027346)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'ro'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128606627910027346)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'ro'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128605523133027346)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'ro'
,p_message_text=>unistr('C\0103utare configura\0163ie - %0')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128605487700027346)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103 de valori dinamic\0103 partajat\0103 - %0')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128605207639027346)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'ro'
,p_message_text=>unistr('Defini\0163ie sarcin\0103 - %0')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128603729968027345)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'ro'
,p_message_text=>'Flux de lucru - %0 '
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128625825295027352)
,p_name=>'VALID'
,p_message_language=>'ro'
,p_message_text=>'Valid'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128617420718027349)
,p_name=>'VALIDATIONS'
,p_message_language=>'ro'
,p_message_text=>unistr('Valid\0103ri')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128678119137027368)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoarea trebuie specificat\0103')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128724421746027381)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'ro'
,p_message_text=>unistr('Trebuie s\0103 fie specificat\0103 valoarea pentru %0')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128647045817027358)
,p_name=>'VERTICAL'
,p_message_language=>'ro'
,p_message_text=>'vertical'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128638626308027356)
,p_name=>'VIEW'
,p_message_language=>'ro'
,p_message_text=>'vizualizare'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128672430632027366)
,p_name=>'VIEWS'
,p_message_language=>'ro'
,p_message_text=>unistr('vizualiz\0103ri')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128678956744027368)
,p_name=>'VIEW_ALL'
,p_message_language=>'ro'
,p_message_text=>unistr('Vizualizare global\0103')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128618810688027350)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'ro'
,p_message_text=>'Link ascuns vizual'
,p_is_js_message=>true
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128659624997027362)
,p_name=>'WARNING'
,p_message_language=>'ro'
,p_message_text=>'Avertisment'
,p_is_js_message=>true
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128638277609027356)
,p_name=>'WEEK'
,p_message_language=>'ro'
,p_message_text=>unistr('s\0103pt\0103m\00E2n\0103')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128634109191027354)
,p_name=>'WEEKLY'
,p_message_language=>'ro'
,p_message_text=>unistr('S\0103pt\0103m\00E2nal')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128638392439027356)
,p_name=>'WEEKS'
,p_message_language=>'ro'
,p_message_text=>unistr('s\0103pt\0103m\00E2ni')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128678296842027368)
,p_name=>'WELCOME_USER'
,p_message_language=>'ro'
,p_message_text=>'Bun venit: %0'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128676429863027367)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'ro'
,p_message_text=>unistr('A fost g\0103sit\0103 o valoare nevalid\0103, verifica\0163i datele introduse.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128676560660027367)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('A fost g\0103sit\0103 o valoare nevalid\0103, verifica\0163i datele introduse.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128614347700027348)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'ro'
,p_message_text=>unistr('A fost g\0103sit\0103 o valoare de dat\0103 nevalid\0103, verifica\0163i formatul datei.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128676332364027367)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'ro'
,p_message_text=>unistr('A fost g\0103sit\0103 o valoare numeric\0103 nevalid\0103, verifica\0163i formatul num\0103rului.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128625419049027352)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'ro'
,p_message_text=>unistr('S-a g\0103sit o valoare nevalid\0103 pentru marcajul temporal, verifica\0163i formatul marcajului temporal.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128649952101027359)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a putut lega "%0". Utiliza\0163i ghilimele duble pentru articolele multi byte sau verifica\0163i lungimea articolului pentru a fi de 30 de bytes sau mai mic\0103. Utiliza\0163i sintaxa v() pentru referin\0163\0103 la articolele cu lungime mai mare de 30 de bytes.')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128639710578027356)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'ro'
,p_message_text=>'Acces interzis de verificarea de securitate %0'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128642243597027357)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Aplica\0163ia nu este disponibil\0103')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128640682007027356)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Aplica\0163ia nu a fost g\0103sit\0103.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128640718120027356)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('aplica\0163ie=%0 spa\0163iu de lucru=%1')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128641156217027356)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Accesul la aceast\0103 aplica\0163ie este restric\0163ionat, re\00EEncerca\0163i mai t\00E2rziu.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128641054140027356)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'ro'
,p_message_text=>unistr('Accesul la aceast\0103 aplica\0163ie este restric\0163ionat la dezvoltatori, re\00EEncerca\0163i mai t\00E2rziu.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128640284232027356)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-7744 Nu s-a putut procesa adresa URL de retur pentru Ramur\0103 la func\0163ie.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128640126131027356)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-7744 Nu s-a putut procesa pagina de retur pentru Ramur\0103 la func\0163ie.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128640484397027356)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-1430 Procesul Apel pentru afi\015Fare din pagin\0103 nu este acceptat: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128641511466027356)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-1018 Eroare la golirea memoriei cache pentru etap\0103.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128639956087027356)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'ro'
,p_message_text=>'ERR-1005 Tip de calcul necunoscut.'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128640872713027356)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-1201 ID-ul sesiunii nu este setat pentru autentificarea personalizat\0103.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128640940806027356)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'ro'
,p_message_text=>'pagina=%0'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128640578204027356)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-7620 Nu s-a putut determina spa\0163iul de lucru pentru aplica\0163ie (%0).')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128621022284027350)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'ro'
,p_message_text=>'Editare'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128639632598027356)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-1802 Nu s-a putut g\0103si ID-ul de articol "%0"')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128639382937027356)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-1002 Nu s-a putut g\0103si ID-ul de articol pentru articolul "%0" din aplica\0163ia "%1".')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128639454729027356)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare nea\015Fteptat\0103, nu s-a putut g\0103si numele articolului la nivel de aplica\0163ie sau pagin\0103.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128639867256027356)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Sunte\0163i deja pe prima pagin\0103 a datelor.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128656363006027361)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'ro'
,p_message_text=>unistr('ID-ul articolului (%0) nu este un articol definit pe pagina curent\0103.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128613932087027348)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'ro'
,p_message_text=>unistr('Articolul nu poate fi setat prin trecerea argumentelor c\0103tre aplica\0163ie.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128614255285027348)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'ro'
,p_message_text=>unistr('(Nu a fost furnizat\0103 nicio sum\0103 de control)')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128613752131027348)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'ro'
,p_message_text=>unistr('Articolul poate fi setat c\00E2nd este \00EEnso\0163it de o sum\0103 de control "semn de carte la nivel de utilizator".')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128613666353027348)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'ro'
,p_message_text=>unistr('Articolul poate fi setat c\00E2nd este \00EEnso\0163it de o sum\0103 de control "semn de carte la nivel de aplica\0163ie".')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128613880302027348)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'ro'
,p_message_text=>unistr('Articolul poate fi setat c\00E2nd este \00EEnso\0163it de o sum\0103 de control "sesiune".')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128613598268027348)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Articolul nu are nicio protec\0163ie.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128641610950027357)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu este disponibil\0103 nicio pagin\0103 de asisten\0163\0103.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128629569891027353)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'ro'
,p_message_text=>unistr('Spa\0163iul de lucru %0 nu are privilegii pentru interpretare ca schema %1.')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128640085454027356)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-1010 Limita de acceptare a proces\0103rilor pentru recursie a fost dep\0103\015Fit\0103 pentru Ramur\0103 la pagin\0103. %0')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128596516949027343)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Pagina nu este disponibil\0103, nu pute\0163i rula un tipar de pagini.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128614163213027348)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'ro'
,p_message_text=>unistr('Aceast\0103 pagin\0103 nu poate fi invocat\0103 utiliz\00E2nd o adres\0103 URL sau utiliz\00E2nd o func\0163ie GET sau POST pentru afi\015Farea procedurii, trebuie s\0103 fie apelat\0103 utiliz\00E2nd un tip de ramur\0103 "ramificare la pagin\0103".')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128698953759027374)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la \00EEncercarea salv\0103rii unei valori non-numerice \00EEn articolul %0.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128631223734027353)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'ro'
,p_message_text=>unistr('Schema de interpretare a aplica\0163iei "%0" nu exist\0103 \00EEn baza de date.')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128631320318027353)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'ro'
,p_message_text=>unistr('Conturile din spa\0163iul de lucru INTERNAL pot fi utilizate numai pentru accesarea &PRODUCT_NAME. <a href="%0">Servicii de administrare</a>.')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128639246090027356)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-1029 Nu s-au putut stoca informa\0163iile sesiunii. sesiune=%0 articol=%1')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128642361417027357)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a putut opri urm\0103rirea: %0')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128639567841027356)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare nea\015Fteptat\0103')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128650385872027359)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare \00EEn update_substitution_cache: %0')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128642444827027357)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Aplica\0163ia \015Fi pagina trebuie s\0103 fie furnizate pentru vizualizarea asisten\0163ei.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128664112233027363)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Automatizarea nu a fost g\0103sit\0103.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128599625557027344)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Eroare interogare de automatizare: %0'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128643516218027357)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'ro'
,p_message_text=>'S-au eliminat %0 sesiuni.'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128584855802027340)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a putut executa codul %0! Nu este acceptat de baza de date sau nu este activat de parametrul de instan\0163\0103 MLE_LANGUAGES.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128582469202027339)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Motorul \00EEn mai multe limbi nu este disponibil \00EEn aceast\0103 versiune de baz\0103 de date!')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128621666496027351)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>unistr('Matricea pentru colec\0163ia aplica\0163iei nu trebuie s\0103 fie nul\0103')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128621459391027351)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rul de atribut %0 pentru membrul specificat este nevalid. Num\0103rul de atribut trebuie s\0103 fie \00EEntre 1 \015Fi %1')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128621983364027351)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'ro'
,p_message_text=>unistr('Colec\0163ia aplica\0163iei exist\0103')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128621704886027351)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'ro'
,p_message_text=>unistr('Numele colec\0163iei nu poate fi nul')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128621831139027351)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Numele colec\0163iei nu poate fi mai lung de 255 de caractere')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128621238768027350)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Colec\0163ia aplica\0163iei %0 nu exist\0103')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128622030820027351)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'ro'
,p_message_text=>unistr('Cursorul nu este \00EEnc\0103 deschis')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128621357092027351)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Secven\0163a membru %0 nu exist\0103 \00EEn colec\0163ia aplica\0163iei %1'),
''))
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128621528466027351)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'ro'
,p_message_text=>unistr('Secven\0163a membru %0 nu exist\0103 \00EEn colec\0163ia aplica\0163iei "%1"')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128574326601027336)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'ro'
,p_message_text=>'Algoritmul %0 nu este acceptat pentru ECDSA.'
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128574000046027336)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'ro'
,p_message_text=>unistr('Curba eliptic\0103 %0 nu este acceptat\0103.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128699799682027374)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Func\0163ia criptografic\0103 "%0" nu este acceptat\0103 \00EEn acest sistem.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128752080040027390)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Accesibilitatea a fost testat\0103')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128643080904027357)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEnchidere')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128643166141027357)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'ro'
,p_message_text=>unistr('Op\0163iuni de personalizare pentru pagin\0103')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128643238596027357)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'ro'
,p_message_text=>'Prestabilit'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128643355433027357)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fat')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128643426619027357)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'ro'
,p_message_text=>'Ascuns'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128642851668027357)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'ro'
,p_message_text=>unistr('Bifa\0163i regiunile pe care dori\0163i s\0103 le include\0163i \00EEn aceast\0103 pagin\0103. Este posibil ca regiunile bifate s\0103 nu fie afi\015Fate dac\0103 nu sunte\0163i \00EEn contextul de aplica\0163ie corect sau dac\0103 nu ave\0163i privilegiile adecvate.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128642912717027357)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'ro'
,p_message_text=>unistr('Aceast\0103 pagin\0103 nu poate fi personalizat\0103.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128752388597027390)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'ro'
,p_message_text=>unistr('Pute\0163i personaliza aspectul acestei aplica\0163ii prin modificarea stilului temei. Selecta\0163i un stil de tem\0103 din lista de mai jos \015Fi face\0163i clic pe Aplicare modific\0103ri.')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128753170564027390)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'ro'
,p_message_text=>unistr('Afi\015Fare regiune')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128752279327027390)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Utilizare stil prestabilit aplica\0163ie')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128752157212027390)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'ro'
,p_message_text=>'Aspect '
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128696306672027373)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Indexul de coloane utilizat ca referin\0163\0103 \00EEn agregarea %0 nu exist\0103.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128589015678027341)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>unistr('Pentru formatul %0, nu este permis\0103 ad\0103ugarea exportului de date.')
,p_version_scn=>2693302
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128552094902027330)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>'Rezultatul CLOB nu este acceptat pentru formatul %0.'
,p_version_scn=>2693296
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128696068219027373)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'ro'
,p_message_text=>unistr('\00CEntreruperea de coloan\0103 trebuie s\0103 fie la \00EEnceputul matricei de coloane.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128696134641027373)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Indexul grupului de coloane utilizat ca referin\0163\0103 \00EEn %0 nu exist\0103.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128603286368027345)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'ro'
,p_message_text=>'Export'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128610488623027347)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'ro'
,p_message_text=>unistr('Formatul de exportare trebuie s\0103 fie XML utiliz\00E2nd ORDS ca server de tip\0103rire.')
,p_version_scn=>2693311
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128696413448027373)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Indexul de coloane utilizat ca referin\0163\0103 \00EEn eviden\0163ierea %0 nu exist\0103.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128599888196027344)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'ro'
,p_message_text=>'Format de exportare nevalid: %0'
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128696225145027373)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Indexul grupului p\0103rinte utilizat ca referin\0163\0103 \00EEn %0 nu exist\0103.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128721408823027381)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana %1 a tabelului %0 este o coloan\0103 de identitate "GENERATED ALWAYS". Verifica\0163i ca nicio coloan\0103 surs\0103 s\0103 nu fie mapat\0103 la coloana %1 din dialogul de configurare.')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128633078691027354)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'ro'
,p_message_text=>'Intervalul de confirmare specificat este prea mic.'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128633147029027354)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost furnizat\0103 nicio coloan\0103 pentru \00EEnc\0103rcarea datelor.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128634472962027354)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost g\0103sit\0103 nicio coloan\0103 pentru selectorul de r\00E2nduri "%0". \00CEncerca\0163i detectarea automat\0103 sau examina\0163i structura JSON.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128643819546027357)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost g\0103sit\0103 nicio foaie de calcul \00EEn fi\015Fierul XLSX.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128588932288027341)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'ro'
,p_message_text=>unistr('Num\0103rul de niveluri de ierarhie pt. care s-a solicitat descoperirea (%0) dep\0103\015Fe\015Fte valoarea maxim\0103 permis\0103, adic\0103 %1.')
,p_version_scn=>2693302
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128643757521027357)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'ro'
,p_message_text=>unistr('Foaia de calcul specificat\0103 nu exist\0103 \00EEn fi\015Fierul XLSX.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128622129198027351)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'ro'
,p_message_text=>unistr('Versiunea curent\0103 a datelor din baza de date s-a schimbat de c\00E2nd utilizatorul a ini\0163iat procesul de actualizare.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128625019156027352)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'ro'
,p_message_text=>'Eroare la actualizarea coloanelor raportului: %0'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128735590743027385)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'ro'
,p_message_text=>'Nu se poate converti %0 la SDO_GEOMETRY.'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128672069463027366)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana %0 care are tipul de date %1 nu poate fi convertit\0103 la VARCHAR2!')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128679481222027368)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana "%0" specificat\0103 pentru atributul "%1" nu a fost g\0103sit\0103 \00EEn sursa de date!')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128615515089027349)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'ro'
,p_message_text=>'Filtrul de tipul %0 nu este acceptat pentru coloane multi-valoare.'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128739072666027386)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'ro'
,p_message_text=>unistr('Filtru "\00EEntre" nevalid.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128594686236027342)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a g\0103sit nicio valoare %2 \00EEn coloana %0, r\00E2ndul nr. %1.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128591322260027341)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana %0 sau r\00E2ndul nr. %1 nu exist\0103.')
,p_version_scn=>2693306
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128577912812027337)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Tipul de list\0103 de valori specificat este nevalid.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128577872722027337)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Tip de interogare nevalid. Tipul de interogare trebuie s\0103 fie Tabel, interogare SQL query sau func\0163ie PL/SQL ce returneaz\0103 interogarea SQL.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128672151899027366)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('E\015Fec la interpretarea interog\0103rii SQL!'),
'%0'))
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128679504225027368)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Pozi\0163ia specificat\0103 a coloanei %0 pentru atributul "%1" nu a fost g\0103sit\0103 \00EEn instruc\0163iunea SQL!')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128569591691027335)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'ro'
,p_message_text=>unistr('Prea multe articole utilizate \00EEn filtrul cu valori multiple.')
,p_version_scn=>2693299
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128679325454027368)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost specificat\0103 nicio coloan\0103 pentru atributul "%0".')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128577782358027337)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Corpul func\0163iei PL/SQL nu a returnat o valoare.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128695147021027373)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'ro'
,p_message_text=>unistr('Sursa de date REST nu con\0163ine o opera\0163ie pentru tratarea ac\0163iunii DML cerute.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128736862878027385)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>'Filtrele pt. intervale sunt acceptate doar pt. date de tip NUMBER, DATE sau TIMESTAMP.'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128557779002027332)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Cererea a e\015Fuat cu %0')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128561211688027333)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'ro'
,p_message_text=>unistr('Conversia GeoJSON la SDO_GEOMETRY (coloana %0) nu este disponibil\0103 \00EEn aceast\0103 baz\0103 de date.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128564618665027334)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'ro'
,p_message_text=>unistr('Conversia SDO_GEOMETRY (coloana %0) nu este acceptat\0103 pentru sursele de date XML.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128588778945027341)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'ro'
,p_message_text=>'Caracterul %0 nu este acceptat ca un separator de valori multiple.'
,p_version_scn=>2693302
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128736932590027385)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Aceast\0103 func\0163ie nu poate fi utilizat\0103 \00EEntr-un context de interogare.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128564735332027334)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Nepotrivire tipuri de date pentru coloan\0103.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128598298524027344)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'ro'
,p_message_text=>unistr('Aceast\0103 surs\0103 de date nu permite modificarea mai multor r\00E2nduri.')
,p_version_scn=>2693307
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128577680786027337)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'ro'
,p_message_text=>unistr('Limitele interne de legare ORDS OUT au fost dep\0103\015Fite. Reduce\0163i num\0103rul de r\00E2nduri DML.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128680341920027368)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('R\0103spunsul JSON de la serverul la distan\0163\0103 nu poate fi interpretat: '),
'%0'))
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128577517610027337)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Tip de context necunoscut sau gre\015Fit.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128601603674027345)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'ro'
,p_message_text=>'Componente neacceptate pt. exportul lizibil: %0'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128699692197027374)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Acest tip de fi\015Fier nu este acceptat de interpretor.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128650431871027359)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'ro'
,p_message_text=>'Acces neautorizat (wwv_flow_api.set_credentials not set).'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128625379830027352)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'ro'
,p_message_text=>unistr('Spa\0163iul de lucru nu a fost creat deoarece exist\0103 deja.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128625218250027352)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'ro'
,p_message_text=>unistr('Grupul de utilizatori nu a fost creat deoarece exist\0103 deja.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128636631595027355)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'ro'
,p_message_text=>unistr('Nume de utilizator duplicat g\0103sit pentru %0.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128636753910027355)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la \00EEnc\0103rcarea utilizatorilor. E\015Fec la utilizatorul %0.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128647544976027358)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'ro'
,p_message_text=>unistr('Ar fi \00EEnc\0103rcat %0 utilizatori.')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128647348255027358)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'ro'
,p_message_text=>unistr('Parol\0103')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128647457419027358)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'ro'
,p_message_text=>'Privilegii'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128647170662027358)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'ro'
,p_message_text=>'Nume de utilizator'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128727576533027382)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la randarea articolului de pagin\0103 #COMPONENT_NAME#.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128642553432027357)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu se poate afi\015Fa articolul paginii deoarece formularul HTML nu a fost \00EEnc\0103 deschis.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128600948358027344)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'ro'
,p_message_text=>'Eroare la calcularea valorii prestabilite a articolului pentru articolul paginii #COMPONENT_NAME#.'
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128641835138027357)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'ro'
,p_message_text=>'Eroare la post calcularea articolului pentru articolul paginii #COMPONENT_NAME#.'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128641764920027357)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la calcularea valorii surs\0103 a articolului pentru articolul paginii #COMPONENT_NAME#.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128618566217027350)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'ro'
,p_message_text=>'Acces neautorizat.'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128568000753027335)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoarea %0 pentru %1 nu este o matrice JSON valid\0103.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128642010360027357)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'ro'
,p_message_text=>'Script-ul Java nu este acceptat.'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128642122284027357)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'ro'
,p_message_text=>unistr('List\0103')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128642734191027357)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a putut ini\0163ializa interogarea.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128650700856027359)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Actualizarea %0 nu este acceptat\0103.')
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128644281992027357)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'ro'
,p_message_text=>'ID articol nevalid: %0 '
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128671989978027366)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu exist\0103 asisten\0163\0103 pentru acest articol.')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128633748583027354)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('Generarea interog\0103rii diagramei a e\015Fuat. Verifica\0163i set\0103rile de mapare pentru surs\0103 \015Fi coloan\0103.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128635059520027355)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoare nevalid\0103 pentru parametrul p_mail_id: %0')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128671711981027366)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu se pot utiliza valorile "C\0103tre" sau "R\0103spuns c\0103tre" ca adres\0103 "De la", deoarece acestea con\0163in multiple adrese de e-mail.')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128756649873027391)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'ro'
,p_message_text=>unistr('A\0163i dep\0103\015Fit num\0103rul maxim de mesaje de e-mail per spa\0163iu de lucru. Contacta\0163i administratorul.')
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128613237009027348)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'ro'
,p_message_text=>unistr('Aceast\0103 procedur\0103 trebuie s\0103 fie invocat\0103 dintr-o sesiune de aplica\0163ie.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128634997421027355)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'ro'
,p_message_text=>unistr('A fost furnizat\0103 o valoare nul\0103 pentru parametrul %0.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128693027226027372)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('\015Eablonul de e-mail "%0" nu a fost g\0103sit \00EEn aplica\0163ia %1.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128769589319027395)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Parametrul instan\0163ei SMTP_HOST_ADDRESS trebuie setat pentru trimiterea e-mailurilor.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128634377405027354)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Trebuie s\0103 asigura\0163i un destinatar pentru mesaj pentru a trimite e-mailul.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128759001209027392)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'ro'
,p_message_text=>'Nu s-a putut stabili conexiunea SMTP cu serverul de e-mail configurat.'
,p_version_scn=>2693333
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128734330668027384)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'ro'
,p_message_text=>'Apel Ajax nevalid!'
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128618233151027350)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost definit\0103 nicio func\0163ie Ajax pentru plug-inul %0')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128724805439027382)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost definit\0103 nicio func\0163ie de executare pentru plug-inul %0')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128618336003027350)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost definit\0103 nicio func\0163ie de randare pentru plug-inul %0')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128735292227027385)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Plug-inul "%0" pentru sursa de date REST nu con\0163ine o func\0163ie "Func\0163ionalit\0103\0163i".')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128735177400027385)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Plug-inul "%0" pentru sursa de date REST nu con\0163ine o func\0163ie DML.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128735315770027385)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Plug-inul "%0" pentru sursa de date REST nu con\0163ine o func\0163ie de executare.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128735444918027385)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'ro'
,p_message_text=>unistr('Plug-inul "%0" pentru sursa de date REST nu con\0163ine o func\0163ie de preluare.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128615790211027349)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare \00EEn codul PLSQL generat\0103 \00EEn timpul proces\0103rii pentru plug-in.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128624353475027351)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoarea trebuie specificat\0103.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128657389900027361)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'ro'
,p_message_text=>'Tipul de date %0 nu poate fi convertit la VARCHAR2!'
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128745576769027388)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana "%0" specificat\0103 pentru atributul "%1" nu a fost g\0103sit\0103 \00EEn instruc\0163iunea SQL!')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128572831950027336)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoarea %0 pentru %1 nu este o matrice JSON valid\0103.')
,p_version_scn=>2693300
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128722795304027381)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'ro'
,p_message_text=>unistr('O interogare list\0103 de valori (LOV) sau o list\0103 de valori denumit\0103 trebuie s\0103 fie specificat\0103 pentru %0.')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128724379333027381)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'ro'
,p_message_text=>unistr('A fost selectat un num\0103r gre\015Fit de coloane \00EEn interogarea SQL list\0103 de valori pentru %0. Consulta\0163i exemplele pentru instruc\0163iunile valide.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128745349464027388)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu a fost specificat\0103 nicio coloan\0103 pentru atributul "%0".')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128774508487027397)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'ro'
,p_message_text=>unistr('Valoarea introdus\0103 %0 pentru atributul "%1" nu este numeric\0103.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128727809832027382)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('%0 are tipul de date gre\015Fit \00EEn instruc\0163iunea SQL. Coloana# %1 este %2 dar se a\015Ftepta %3.')
,p_version_scn=>2693329
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128745481192027388)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana "%0" specificat\0103 pentru atributul "%1" are tipul de date %2 dar trebuia s\0103 aib\0103 %3.')
,p_version_scn=>2693332
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128614916696027349)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a putut g\0103si macheta de rapoarte.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128602540941027345)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'ro'
,p_message_text=>unistr('S-a dep\0103\015Fit limita de execu\0163ii \00EEn fundal pentru %0.')
,p_version_scn=>2693308
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128552806612027330)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'ro'
,p_message_text=>unistr('Deja este \00EEn curs de rulare o alt\0103 execu\0163ie a %0.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128552756876027330)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'ro'
,p_message_text=>unistr('Deja este \00EEn curs de rulare o alt\0103 execu\0163ie a %0 pentru contextul %1.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128567764795027334)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'ro'
,p_message_text=>unistr('Fi\015Fierele \00EEnc\0103rcate nu sunt vizibile \00EEn sesiunea de lucru pentru execu\0163ia %0.')
,p_version_scn=>2693297
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128680297773027368)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'ro'
,p_message_text=>unistr('Caracteristica de sum\0103 Compute nu poate fi utilizat\0103 pentru rapoartele bazate pe o surs\0103 de date REST.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128641938026027357)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('ERR-2904 Nu s-a putut seta valoarea scurt\0103turii.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128646926837027358)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare: Tip de scurt\0103tur\0103 necunoscut.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128584680656027339)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'ro'
,p_message_text=>unistr('Interogarea de c\0103utare este prea lung\0103.')
,p_version_scn=>2693301
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128636023778027355)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'ro'
,p_message_text=>unistr('Nu s-a putut prelua authentication_scheme \00EEn aplica\0163ia %0.')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128644002942027357)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'ro'
,p_message_text=>'Nu s-a putut prelua componenta %0.'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128714330696027378)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'ro'
,p_message_text=>unistr('ID-ul de tenant exist\0103 deja pentru sesiunea curent\0103.')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128647260781027358)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'ro'
,p_message_text=>'E-mail'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128774006345027396)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'ro'
,p_message_text=>unistr('Autentificare e\015Fuat\0103.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128674614534027366)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'ro'
,p_message_text=>unistr('Unul sau mai multe module cookie setate \00EEn apex_util.g_request_cookies con\0163in o valoare nevalid\0103.')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128656537567027361)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'ro'
,p_message_text=>unistr('R\0103spunsul de la registrul UDDI a fost nevalid.')
,p_version_scn=>2693318
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128615829072027349)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'ro'
,p_message_text=>unistr('Adresa URL furnizat\0103 nu a returnat un document WSDL valid.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128618633648027350)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'ro'
,p_message_text=>unistr('Documentul WSDL con\0163ine multiple leg\0103turi SOAP. &PRODUCT_NAME. accept\0103 doar WSDL-uri cu o singur\0103 leg\0103tur\0103 SOAP. Face\0163i clic pe Creare referin\0163\0103 serviciu web manual pentru a continua crearea unei referin\0163e pentru acest serviciu.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128694262154027372)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'ro'
,p_message_text=>unistr('R\0103spunsul de la serviciu nu a fost XML.')
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128773952753027396)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'ro'
,p_message_text=>'Tokenul de acces OAuth nu este disponibil sau a expirat.'
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128738422956027386)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'ro'
,p_message_text=>unistr('A\0163i dep\0103\015Fit num\0103rul maxim de cereri serviciu web per spa\0163iu de lucru. Contacta\0163i administratorul.')
,p_version_scn=>2693331
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128774199971027396)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'ro'
,p_message_text=>unistr('Serverul a r\0103spuns cu un tip de token OAuth neacceptat.')
,p_version_scn=>2693334
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128618054194027350)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'ro'
,p_message_text=>unistr('Documentul WSDL nu a con\0163inut o legare pentru SOAP, aceasta fiind obligatorie pentru ad\0103ugarea referin\0163ei.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128613421347027348)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'ro'
,p_message_text=>unistr('Acest WSDL necesit\0103 acredit\0103ri de autentificare. Introduce\0163i numele de utilizator \015Fi parola mai jos.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128624419622027351)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'ro'
,p_message_text=>unistr('Documentul WSDL nu a putut fi \00EEn\0163eles de motorul de randare. Face\0163i clic pe Creare referin\0163\0103 serviciu web manual pentru a continua crearea unei referin\0163e pentru acest serviciu.')
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128697298214027373)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'ro'
,p_message_text=>'Nu s-a putut procesa actualizarea.'
,p_version_scn=>2693325
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128723006301027381)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloanele de retur \015Fi afi\015Fare pentru lista de valori sunt identice!')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128722917076027381)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Lista de valori nu are o coloan\0103 de retur.')
,p_version_scn=>2693328
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128650639979027359)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'ro'
,p_message_text=>'Eroare la preluarea valorii coloanei: %0'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128675552519027367)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'ro'
,p_message_text=>unistr('Datele curente \00EEn format tabelar sunt prea vechi; datele surs\0103 au fost modificate.<br/> Face\0163i clic <strong><a href="%0">aici</a></strong> pentru a abandona modific\0103rile \015Fi a re\00EEnc\0103rca datele din baza de date.')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128630723583027353)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la determinarea \015Firului de paginare')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128630693967027353)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Nu se pot determina anteturile interog\0103rii:'),
'%0'))
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128630878116027353)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'ro'
,p_message_text=>unistr('Eroare la efectuarea \00EEnlocuirilor pentru notele de subsol ale raportului')
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128630926073027353)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('E\015Fec la interpretarea interog\0103rii SQL:'),
'%0',
'%1'))
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128637005057027355)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'ro'
,p_message_text=>unistr('R\00E2ndul minim solicitat: %0, r\00E2nduri g\0103site dar neafi\015Fate: %1')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128633429593027354)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana de interogare #%0 (%1) este nevalid\0103, coloanele care utilizeaz\0103 HTML necesit\0103 nume de alias')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128650507753027359)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'ro'
,p_message_text=>'Eroare la preluarea anteturilor de interogare: %0'
,p_version_scn=>2693316
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128631085488027353)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Raport de eroare:',
'%0'))
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128671104096027365)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'ro'
,p_message_text=>unistr('Sorta\0163i dup\0103 aceast\0103 coloan\0103')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128633547602027354)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'ro'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Interogarea nu poate fi interpretat\0103, verifica\0163i sintaxa pentru interogare.'),
'(%0)',
'</p>'))
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128675643552027367)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'ro'
,p_message_text=>unistr('Acest formular con\0163ine modific\0103ri nesalvate. Ap\0103sa\0163i "OK" pentru a continua f\0103r\0103 salvarea modific\0103rilor. ')
,p_version_scn=>2693320
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128680110376027368)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'ro'
,p_message_text=>unistr('Schema de paginare a raportului (%0) nu este acceptat\0103 cu sursa de date selectat\0103.')
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128633386228027354)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'ro'
,p_message_text=>unistr('Coloana de interogare #%0 (%1) este nevalid\0103, utiliza\0163i aliasul de coloan\0103')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128637108177027355)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'ro'
,p_message_text=>unistr('r\00E2ndurile %0 - %1 din mai mult de %2')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128677696815027367)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'ro'
,p_message_text=>'%0 - %1 din mai mult de %2'
,p_version_scn=>2693321
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128636953109027355)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'ro'
,p_message_text=>unistr('r\00E2ndurile %0 - %1 din %2')
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128617708042027349)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'ro'
,p_message_text=>'%0 - %1 din %2'
,p_version_scn=>2693312
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128631161738027353)
,p_name=>'Y'
,p_message_language=>'ro'
,p_message_text=>'D'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128638448752027356)
,p_name=>'YEAR'
,p_message_language=>'ro'
,p_message_text=>'an'
,p_version_scn=>2693315
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128630325215027353)
,p_name=>'YEARS'
,p_message_language=>'ro'
,p_message_text=>'ani'
,p_version_scn=>2693313
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128675740257027367)
,p_name=>'YES'
,p_message_language=>'ro'
,p_message_text=>'Da'
,p_version_scn=>2693320
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
 p_id=>wwv_flow_imp.id(109678305570583962.4543)
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
 p_id=>1.4543
,p_name=>'Mesaje'
,p_alias=>'MESSAGES'
,p_step_title=>'Mesaje'
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
