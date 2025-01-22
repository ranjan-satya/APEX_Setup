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
,p_default_application_id=>4471
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4471 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4471
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131491433347029976')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'es'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4471)
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
 p_id=>wwv_flow_imp.id(4471)
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
 p_id=>wwv_flow_imp.id(728504220438374.4471)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4471)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4471)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4471)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4471)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4471)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4471)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4471)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4471)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4471)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4471)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4471)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4471)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4471)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4471)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4471)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4471)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.es'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4471)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4471)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4471)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4471)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4471)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4471)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4471)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.es'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4471)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4471)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4471)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4471)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4471)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4471)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4471)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.es'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4471)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4471)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4471)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4471)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4471)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4471)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4471)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4471)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4471)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4471)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4471)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4471)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4471)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4471)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4471)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4471)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4471)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4471)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4471)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.es'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4471)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4471)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4471)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4471)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4471)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4471)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4471)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4471)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4471)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4471)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4471)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4471)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4471)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4471)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4471)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4471)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4471)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.es'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4471)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4471)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4471)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4471)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4471)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4471)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4471)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4471)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4471)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4471)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4471)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4471)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4471)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4471)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4471)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4471)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4471)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.es'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4471)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4471)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4471)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4471)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4471)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4471)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4471)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4471)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4471)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4471)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4471)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4471)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4471)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4471)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4471)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.es'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4471)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4471)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4471)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4471)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4471)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4471)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4471)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4471)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4471)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4471)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4471)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4471)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4471)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4471)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4471)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4471)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4471)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4471)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4471)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4471)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4471)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4471)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4471)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4471)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4471)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4471)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4471)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4471)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4471)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4471)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4471)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4471)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4471)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4471)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4471)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4471)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4471)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4471)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4471)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4471)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4471)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4471)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4471)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4471)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4471)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4471)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4471)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4471)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4471)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4471)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4471)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4471)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4471)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4471)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4471)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4471)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4471)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4471)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4471)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4471)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4471)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4471)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4471)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4471)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4471)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4471)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4471)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4471)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4471)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4471)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4471)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4471)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4471)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4471)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4471)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4471)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4471)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4471)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4471)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4471)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4471)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4471)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4471)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4471)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4471)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4471)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4471)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4471)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4471)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4471)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4471)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4471)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4471)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4471)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4471)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4471)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4471)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4471)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4471)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4471)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4471)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4471)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4471)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4471)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4471)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4471)
,p_page_name=>'winlov'
,p_page_title=>unistr('Cuadro de di\00E1logo de b\00FAsqueda')
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
,p_find_button_text=>'Buscar'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Cerrar'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>'Siguiente &gt;'
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>'&lt; Anterior'
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>'<div class="a-PopupLOV-pagination">Filas #FIRST_ROW# - #LAST_ROW#</div>'
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
 p_id=>wwv_flow_imp.id(649611609668764506.4471)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4471)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4471)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4471)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4471)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4471)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4471)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4471)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4471)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4471)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4471)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4471)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4471)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4471)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4471)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4471)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4471)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4471)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4471)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4471)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4471)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4471)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4471)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4471)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4471)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4471)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4471)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4471)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4471)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4471)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4471)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4471)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4471)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4471)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4471)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4471)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4471)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4471)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4471)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4471)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4471)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4471)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4471)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4471)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4471)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4471)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4471)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4471)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4471)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4471)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4471)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4471)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4471)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4471)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4471)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4471)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4471)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4471)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4471)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4471)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4471)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4471)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4471)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4471)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4471)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4471)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4471)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4471)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4471)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4471)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4471)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4471)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4471)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4471)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4471)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4471)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4471)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4471)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4471)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4471)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4471)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4471)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4471)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4471)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4471)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4471)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4471)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4471)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4471)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4471)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4471)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4471)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4471)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4471)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4471)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4471)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4471)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4471)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4471)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4471)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4471)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4471)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4471)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4471)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4471)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4471)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4471)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4471)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4471)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4471)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4471)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4471)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4471)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4471)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4471)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4471)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4471)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4471)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4471)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4471)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4471)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4471)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4471)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4471)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4471)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4471)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4471)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4471)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4471)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4471)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4471)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4471)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4471)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4471)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4471)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4471)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4471)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4471)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4471)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4471)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4471)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4471)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4471)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4471)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4471)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4471)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4471)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4471)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4471)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4471)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4471)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4471)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4471)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4471)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4471)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4471)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4471)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4471)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4471)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4471)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4471)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4471)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4471)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4471)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4471)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4471)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4471)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4471)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4471)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4471)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4471)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4471)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4471)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4471)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4471)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4471)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4471)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4471)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4471)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4471)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4471)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4471)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4471)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4471)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4471)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4471)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4471)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4471)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4471)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4471)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4471)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4471)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4471)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4471)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4471)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4471)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4471)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4471)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4471)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4471)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4471)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4471)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4471)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4471)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4471)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4471)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4471)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4471)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4471)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4471)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4471)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4471)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4471)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4471)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4471)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4471)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4471)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4471)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4471)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4471)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4471)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4471)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4471)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4471)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4471)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4471)
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
 p_id=>wwv_flow_imp.id(125008114315026180)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'es'
,p_message_text=>'Columna %0'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124992798799026176)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'es'
,p_message_text=>'Administrador'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124992629013026176)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'es'
,p_message_text=>'Nombre de usuario'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125055372179026195)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'es'
,p_message_text=>'Acceso denegado'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125012296127026182)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'es'
,p_message_text=>'Se ha creado la cuenta %0.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124995499928026177)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'es'
,p_message_text=>unistr('La cuenta est\00E1 bloqueada.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124979973330026172)
,p_name=>'AM_PM'
,p_message_language=>'es'
,p_message_text=>'AM / PM'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124962750853026167)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'es'
,p_message_text=>unistr('enlace de acci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124962670398026167)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'es'
,p_message_text=>unistr('enlace de di\00E1logo')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125127041348026216)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'es'
,p_message_text=>'Conmutar %0'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125134887814026219)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'es'
,p_message_text=>'(Activo)'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124939608364026160)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'es'
,p_message_text=>'Chat borrado'
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124939503551026160)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'es'
,p_message_text=>'Borrar chat'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124936192419026159)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'es'
,p_message_text=>'Aceptar'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124936229945026159)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'es'
,p_message_text=>'Denegar'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124935957467026159)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'es'
,p_message_text=>unistr('Historial de conversaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124939388875026160)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'es'
,p_message_text=>'Copiado'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124939457306026160)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'es'
,p_message_text=>'Copiado en el portapapeles'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124939105932026160)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'es'
,p_message_text=>'Copiar'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124939248709026160)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'es'
,p_message_text=>'Copiar en el portapapeles'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124936643945026159)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'es'
,p_message_text=>'Asistente'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124937008661026159)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'es'
,p_message_text=>'La IA se ha desactivado en el nivel de espacio de trabajo o instancia.'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124976387069026171)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado el servicio de IA generativa con el ID o ID est\00E1tico proporcionado.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124975021441026170)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error de autenticaci\00F3n o acceso prohibido (HTTP-%1) para la URL %0. Compruebe la configuraci\00F3n del servicio de IA generativa %2.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124954808593026164)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'es'
,p_message_text=>'Fallo de solicitud HTTP al servicio de IA generativa en %0 con HTTP-%1: %2'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124979227727026172)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error de solicitud HTTP del servicio de IA generativa para el plugin %0 en el modo %1. Compruebe la configuraci\00F3n del servicio de IA generativa.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124942021700026161)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'es'
,p_message_text=>'Ejemplos'
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124940498607026160)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'es'
,p_message_text=>'Asistente'
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124941831791026161)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124940307863026160)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'es'
,p_message_text=>'Usted'
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124971037643026169)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>'OCI Generative AI actualmente no soporta la experiencia de chat con varios mensajes.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124950960298026163)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la petici\00F3n de datos %0 para la aplicaci\00F3n %1. Compruebe si el creador de aplicaciones est\00E1 disponible en la instancia.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124956067871026165)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'es'
,p_message_text=>'No se ha podido procesar la respuesta para el servicio de IA %0, respuesta %1'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124962287384026167)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Enviar mensaje'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124950586854026163)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'es'
,p_message_text=>'Error en el servicio de IA de backend %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124936347143026159)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'es'
,p_message_text=>'Mensaje'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124936453199026159)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'es'
,p_message_text=>unistr('Escriba su mensaje aqu\00ED')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124939766462026160)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'es'
,p_message_text=>'Avatar de usuario'
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124939881095026160)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'es'
,p_message_text=>'Utilizar'
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124936579324026159)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Tiene un mensaje sin enviar. \00BFEst\00E1 seguro?')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125105534721026210)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'es'
,p_message_text=>'La llamada Ajax ha devuelto el error de servidor %0 para %1.'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125032642092026188)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'es'
,p_message_text=>unistr('El alias de aplicaci\00F3n "%0" no se puede convertir en un identificador de aplicaci\00F3n \00FAnico.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125021407344026184)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-1816: Error inesperado al convertir el alias de aplicaci\00F3n p_flow_alias_or_id (%0).')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125118893049026214)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('El total de control de la aplicaci\00F3n ofrece un m\00E9todo sencillo para saber si la misma aplicaci\00F3n est\00E1 desplegada en distintos espacios de trabajo. Puede comparar la suma de control para detectar si hay alguna coincidencia. ')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125005428174026180)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la funci\00F3n de autenticaci\00F3n.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124987422479026174)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la funci\00F3n de autenticaci\00F3n.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125159302722026226)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'es'
,p_message_text=>unistr('El nombre de inquilino %0 devuelto por Oracle Cloud Identity Management no est\00E1 autorizado para el dominio %1.<br/><a href="&LOGOUT_URL.">Vuelva a conectarse</a> y especifique un nombre de inquilino autorizado o cambie la URL.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124983582205026173)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'es'
,p_message_text=>'La cuenta "%0" no tiene los privilegios de desarrollo necesarios (DB_DEVELOPER o DB_ADMINISTRATOR)<br/>para el espacio de trabajo "%1". <a href="&LOGOUT_URL.">Vuelva a conectarse</a> una vez que se hayan proporcionado los privilegios.'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124980151449026172)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'es'
,p_message_text=>unistr('El nombre de inquilino devuelto por Oracle Cloud Identity Management no est\00E1 autorizado para el espacio de trabajo actual.<br/><a href="&LOGOUT_URL.">Vuelva a conectarse</a> y especifique un nombre de inquilino autorizado.')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124983639892026173)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'es'
,p_message_text=>unistr('Por motivos de seguridad, no est\00E1 permitida la ejecuci\00F3n de aplicaciones de este espacio de trabajo a trav\00E9s del dominio de la URL.')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125005187315026180)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'es'
,p_message_text=>'Pida al DBA que ejecute $OH/rdbms/admin/catldap.sql.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125005004538026180)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'es'
,p_message_text=>unistr('El paquete SYS.DBMS_LDAP no existe o no es v\00E1lido.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125004981711026179)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la funci\00F3n de edici\00F3n del usuario LDAP.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125005211523026180)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la autenticaci\00F3n de LDAP.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125006002015026180)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'es'
,p_message_text=>'Error en el argumento p_flow_page para el procedimiento login_page.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125005677976026180)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'es'
,p_message_text=>unistr('p_session no v\00E1lido en wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125056936215026195)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'es'
,p_message_text=>'Argumento con formato incorrecto en wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125005778045026180)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha transferido un nombre de usuario nulo al procedimiento de conexi\00F3n.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124992568868026176)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'es'
,p_message_text=>'Espere <span id="apex_login_throttle_sec">%0</span> segundos para volver a conectarse.'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124993848784026176)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('El intento de conexi\00F3n se ha bloqueado.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125054630724026194)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado la autenticaci\00F3n "%0"')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124994368148026176)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'es'
,p_message_text=>'El identificador de grupo de seguridad es nulo.'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125005536888026180)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al ejecutar el proceso de autenticaci\00F3n posterior.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125005373776026180)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la autenticaci\00F3n previa.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125007038844026180)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Abra la URL en el mismo explorador en el que haya iniciado la solicitud de restablecimiento de la contrase\00F1a. Si hace clic en Restablecer URL de contrase\00F1a y se le redirige'),
unistr('a la p\00E1gina de conexi\00F3n, vuelva a iniciar Restablecer contrase\00F1a y deje el'),
'explorador abierto.'))
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125156870963026225)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'es'
,p_message_text=>unistr('Restablecer URL de Contrase\00F1a')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124983864918026173)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'es'
,p_message_text=>'El grupo de consumidores %0 del gestor de recursos no se ha otorgado a %1'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124983983115026173)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'es'
,p_message_text=>'Utilice DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP para otorgar el privilegio que falta.'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125018549895026184)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la funci\00F3n de protecci\00F3n de sesi\00F3n.')
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125018618258026184)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la funci\00F3n de verificaci\00F3n de sesi\00F3n.')
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125018842942026184)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'es'
,p_message_text=>'Pida al administrador de %0 que configure el motor para Oracle Application Server Single Sign-On.'
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125029289356026187)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'es'
,p_message_text=>unistr('SSO ha devuelto un token %0 en %1 no v\00E1lido.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125005995869026180)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'es'
,p_message_text=>unistr('Edite el esquema de autenticaci\00F3n y agregue el nombre de la aplicaci\00F3n.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125028943903026187)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'es'
,p_message_text=>unistr('Llamada no v\00E1lida del procedimiento %0:')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125029134697026187)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'es'
,p_message_text=>unistr('Sesi\00F3n de aplicaci\00F3n no v\00E1lida en el token urlc: %0')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125028706724026187)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'es'
,p_message_text=>unistr('Error en portal_sso_redirect: falta la informaci\00F3n de registro de la aplicaci\00F3n: %0')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125018743576026184)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'es'
,p_message_text=>unistr('El paquete WWSEC_SSO_ENABLER_PRIVATE no existe o no es v\00E1lido.')
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125005882539026180)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado el nombre de la aplicaci\00F3n asociada registrado en el esquema de autenticaci\00F3n.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125028898178026187)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'es'
,p_message_text=>unistr('Registre esta aplicaci\00F3n como se describe en la gu\00EDa de instalaci\00F3n.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125018992817026184)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la autenticaci\00F3n de SSO.')
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125132283098026218)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'es'
,p_message_text=>'URL no autorizada: %0'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125018325987026183)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la autenticaci\00F3n.')
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124983799354026173)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'es'
,p_message_text=>unistr('El espacio de trabajo "%0" est\00E1 inactivo. P\00F3ngase en contacto con el administrador.')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124984471314026173)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'es'
,p_message_text=>'%0'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124993564541026176)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'es'
,p_message_text=>unistr('Acceso denegado por la comprobaci\00F3n de seguridad de la aplicaci\00F3n')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124993667572026176)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Acceso denegado por la comprobaci\00F3n de seguridad de la p\00E1gina')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124993716819026176)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar la autorizaci\00F3n.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125062830768026197)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'es'
,p_message_text=>'Creado con %0 mediante %1'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125062989127026197)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'es'
,p_message_text=>'amor'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125122781293026215)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Descripci\00F3n del evento')
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125122511107026215)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'es'
,p_message_text=>unistr('Fecha de finalizaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125122857994026215)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'es'
,p_message_text=>'ID del evento'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125122446321026215)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'es'
,p_message_text=>'Fecha de inicio'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125122686576026215)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('T\00EDtulo del Evento')
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124965214202026167)
,p_name=>'APEX.CARD'
,p_message_language=>'es'
,p_message_text=>'Tarjeta'
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124965401446026167)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'es'
,p_message_text=>unistr('Acci\00F3n de tarjeta')
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125006142194026180)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'es'
,p_message_text=>'Casilla de control visualmente oculta'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125008059185026180)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'es'
,p_message_text=>'Error de contenido del total de control'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125007954976026180)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'es'
,p_message_text=>'Error de formato del total de control'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125077821879026201)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'es'
,p_message_text=>'Copiado en el portapapeles.'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125077352522026201)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'es'
,p_message_text=>unistr('Este explorador no soporta la copia de botones y men\00FAs. Utilice Ctrl+C o Comando+C.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125063582583026197)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'es'
,p_message_text=>'Cerrar'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124941993698026161)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'es'
,p_message_text=>unistr('El contenido del editor de c\00F3digo supera la longitud m\00E1xima del elemento (real: %0, permitida: %1 caracteres)')
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125122086374026215)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'es'
,p_message_text=>'Contraste'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125116508611026213)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'es'
,p_message_text=>'Actual'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125116415770026213)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'es'
,p_message_text=>'Inicial'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125120604344026214)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# debe ser un color v\00E1lido. Ejemplo: %0')
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124983084513026173)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'es'
,p_message_text=>unistr('M\00E1s colores')
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124983131695026173)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'es'
,p_message_text=>'Abrir selector de color'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124940253050026160)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'es'
,p_message_text=>'Control deslizante horizontal para alfa. Utilice las teclas de flecha para desplazarse.'
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124939991520026160)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'es'
,p_message_text=>'Control deslizante de cuatro direcciones para espectro de color. Utilice las teclas de flecha para desplazarse.'
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124940092140026160)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'es'
,p_message_text=>'Control deslizante vertical para matiz. Utilice las teclas de flecha para desplazarse.'
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125116386684026213)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'es'
,p_message_text=>'Seleccionar un color'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125116643896026213)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'es'
,p_message_text=>'Cambiar formato de color'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125154535064026225)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'es'
,p_message_text=>'Lista de valores'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125154630183026225)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'es'
,p_message_text=>'Abrir lista para: %0'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125134955339026219)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'es'
,p_message_text=>'(Completado)'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125023818160026185)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'es'
,p_message_text=>unistr('P\00F3ngase en contacto con el administrador de la aplicaci\00F3n.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125039361832026190)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('P\00F3ngase en contacto con el administrador de la aplicaci\00F3n.'),
unistr('Hay m\00E1s detalles sobre este incidente disponibles mediante el ID de depuraci\00F3n "%0".')))
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125120968755026214)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'es'
,p_message_text=>'Corrija los errores antes de guardar.'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124966217911026168)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'es'
,p_message_text=>'%0. Pulse Retroceso para suprimir.'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125064445334026197)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'es'
,p_message_text=>'%0 coincidencias encontradas'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124946347004026162)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'es'
,p_message_text=>'1 coincidencia encontrada'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125064386058026197)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'es'
,p_message_text=>'No se han encontrado coincidencias'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124940799612026160)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'es'
,p_message_text=>'Otros'
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124940683287026160)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'es'
,p_message_text=>'%0 valores seleccionados'
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125135463569026219)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'es'
,p_message_text=>'Progreso actual'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125121346904026215)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>'El archivo especificado en el elemento %0 no existe en APEX_APPLICATION_TEMP_FILES.'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125109871222026211)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'es'
,p_message_text=>unistr('La versi\00F3n actual de los datos de la base de datos ha cambiado desde que el usuario inici\00F3 el proceso de actualizaci\00F3n.')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125078961982026202)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'es'
,p_message_text=>'No Cargar'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125125240614026216)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'es'
,p_message_text=>'Error de preprocesamiento'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125125039921026216)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'es'
,p_message_text=>'Insertar Fila'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125138646047026220)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'es'
,p_message_text=>unistr('Secuencia: Acci\00F3n')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125125142486026216)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'es'
,p_message_text=>'Actualizar fila'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124953660615026164)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'es'
,p_message_text=>'Acciones'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124981226148026172)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'es'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124967366714026168)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'es'
,p_message_text=>unistr('%0 debe ser un selector de fecha o una fecha v\00E1lida, por ejemplo %1.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125076529883026201)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'es'
,p_message_text=>'Borrar'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124984776176026173)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'es'
,p_message_text=>'Hecho'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124995735638026177)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>unistr('%0 tiene partes no soportadas en la m\00E1scara de formato: %1')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124980915032026172)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'es'
,p_message_text=>'Hora'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125064893267026198)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'es'
,p_message_text=>'Calendario emergente: %0'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124980716543026172)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'es'
,p_message_text=>'Semana'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124980879550026172)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'es'
,p_message_text=>'Semana'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124981194430026172)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'es'
,p_message_text=>'Minutos'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124981300425026172)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'es'
,p_message_text=>'Mes'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124981744628026172)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'es'
,p_message_text=>'Mes Siguiente'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124951391329026163)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'es'
,p_message_text=>'Ventana emergente de %0'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124981651855026172)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'es'
,p_message_text=>'Mes Anterior'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125074194467026200)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'es'
,p_message_text=>'Selector de fecha de solo lectura'
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124982533177026173)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'es'
,p_message_text=>'Seleccionar fecha'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124951422917026163)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Fecha y Hora'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124948668392026163)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccionar D\00EDa')
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124952043916026164)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccionar mes y a\00F1o')
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124948863146026163)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Hora'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124949353998026163)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'es'
,p_message_text=>'Hoy'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124966949409026168)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# debe ser una fecha v\00E1lida, por ejemplo: %0.')
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124966604887026168)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'es'
,p_message_text=>'#LABEL# debe estar entre %0 y %1.'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124966775017026168)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'es'
,p_message_text=>'#LABEL# debe ser igual o posterior a %0.'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124966868142026168)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'es'
,p_message_text=>'#LABEL# debe ser igual o anterior a %0.'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124958251337026165)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'es'
,p_message_text=>unistr('Edici\00F3n visualmente oculta')
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124981558116026172)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('A\00F1o')
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125068561235026199)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# es posterior a la fecha m\00E1xima especificada %0.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125068961911026199)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'es'
,p_message_text=>'#LABEL# no coincide con el formato %0.'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125068476212026199)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# es anterior a la fecha m\00EDnima especificada %0.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125068675574026199)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# no se encuentra en el rango v\00E1lido de %0 a %1.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125068876408026199)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# no est\00E1 en el rango v\00E1lido de a\00F1o de %0 y %1.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124960612100026166)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'es'
,p_message_text=>'Se ha producido un error interno al procesar la solicitud de DBMS_CLOUD.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125121236311026215)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'es'
,p_message_text=>'Cancelar'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125147103373026222)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'es'
,p_message_text=>'Cerrar'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125008362036026181)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'es'
,p_message_text=>unistr('Confirmaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125149104725026223)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'es'
,p_message_text=>'Ayuda'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125121083190026215)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'es'
,p_message_text=>'Aceptar'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125121159024026215)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'es'
,p_message_text=>'Guardar'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124988898814026175)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('T\00EDtulo de cuadro de di\00E1logo')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125028523093026187)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('T\00EDtulo del cuadro de di\00E1logo visualmente oculto')
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124949685581026163)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'es'
,p_message_text=>unistr('Funci\00F3n predefinida de generador de documentos de Oracle')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124960456638026166)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'es'
,p_message_text=>'Error al imprimir un documento.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124937675713026159)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'es'
,p_message_text=>'%s no soporta %1 como salida.'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124949520410026163)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error "%0" al llamar a la funci\00F3n predefinida de generador de documentos de Oracle:')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124941027852026160)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Se necesita una plantilla.'
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124966416075026168)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'es'
,p_message_text=>'Error durante la descarga de archivos.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124966361000026168)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se han encontrado datos que se puedan descargar.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124969902098026169)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'es'
,p_message_text=>unistr('Esta funci\00F3n no est\00E1 disponible en los entornos solo en tiempo de ejecuci\00F3n.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125022734275026185)
,p_name=>'APEX.ERROR'
,p_message_language=>'es'
,p_message_text=>'Error'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124982663061026173)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'es'
,p_message_text=>'Se ha producido el siguiente error al ejecutar la llamada de manejo de error: %0'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124995278963026177)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha producido un error al pintar la p\00E1gina de error: %0')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124984381360026173)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'es'
,p_message_text=>'Error interno'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125134098039026218)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('P\00F3ngase en contacto con el administrador.'),
unistr('Hay m\00E1s detalles sobre este incidente disponibles mediante el ID de depuraci\00F3n "%0".')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125128657725026217)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'es'
,p_message_text=>unistr('La base de datos est\00E1 abierta para el acceso de solo lectura.')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125158767675026226)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'es'
,p_message_text=>unistr('ORA-28353: Fallo al abrir la cartera. No se puede acceder actualmente a los datos de la aplicaci\00F3n.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125128779733026217)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'es'
,p_message_text=>unistr('Esta p\00E1gina no est\00E1 disponible')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124987332568026174)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'es'
,p_message_text=>unistr('Informaci\00F3n t\00E9cnica (solo disponible para desarrolladores)')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125093250309026206)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'es'
,p_message_text=>'Mensaje de error'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125107149664026210)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'es'
,p_message_text=>'Formato esperado: %0'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125072060908026200)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'es'
,p_message_text=>unistr('El usuario ya est\00E1 en la lista de control de acceso')
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125071983293026200)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'es'
,p_message_text=>unistr('Confirme la adici\00F3n de los siguientes %0 usuarios a la lista de control de acceso de <strong>%1</strong>.')
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125072403793026200)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'es'
,p_message_text=>'Existe un usuario duplicado'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125072163499026200)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'es'
,p_message_text=>unistr('Falta el s\00EDmbolo arroba (@) en la direcci\00F3n de correo electr\00F3nico')
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125072210943026200)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'es'
,p_message_text=>unistr('Falta "." en la direcci\00F3n de correo electr\00F3nico')
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125072392771026200)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'es'
,p_message_text=>'El nombre de usuario es demasiado largo'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125072681159026200)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'es'
,p_message_text=>unistr('Solo se permite el acceso a la aplicaci\00F3n a los usuarios definidos en la lista de control de acceso de la aplicaci\00F3n')
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125072789587026200)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'es'
,p_message_text=>unistr('Valor de configuraci\00F3n de control de acceso no esperado: %0')
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125072542803026200)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'es'
,p_message_text=>unistr('Todos los usuarios autenticados pueden acceder a esta aplicaci\00F3n')
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125117028183026213)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'es'
,p_message_text=>'Desactivado'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125116931624026213)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'es'
,p_message_text=>'Activado'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125117210209026213)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'es'
,p_message_text=>'%0: desactivado'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125117165246026213)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'es'
,p_message_text=>'%0: activado'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124965759038026168)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>'No soportado'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125026978721026186)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'es'
,p_message_text=>'Desactivado'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125026855214026186)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'es'
,p_message_text=>'Activado'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125116826488026213)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'es'
,p_message_text=>'sin identificar'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124957365533026165)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'es'
,p_message_text=>unistr('%0\00A0bytes')
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124957806035026165)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'es'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124957577346026165)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'es'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124957708020026165)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'es'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125110006676026211)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'es'
,p_message_text=>'Descargar'
,p_is_js_message=>true
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124963168389026167)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'es'
,p_message_text=>'Opciones'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124962827066026167)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'es'
,p_message_text=>'Filtro'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124963051991026167)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'es'
,p_message_text=>'Ocultar faceta'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124987736073026174)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'es'
,p_message_text=>'Agregar filtro'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125064036478026197)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'es'
,p_message_text=>'Filtro aplicado %0'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124988435867026175)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'es'
,p_message_text=>'Aplicar'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125107670422026210)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'es'
,p_message_text=>'Aplicar'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124988572606026175)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'es'
,p_message_text=>'Cancelar'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124972351482026170)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'es'
,p_message_text=>unistr('Gr\00E1fico de barras')
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125120352942026214)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'es'
,p_message_text=>'Otros'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124972499810026170)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'es'
,p_message_text=>unistr('Gr\00E1fico circular')
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125118961272026214)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Gr\00E1fico')
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124972187961026170)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'es'
,p_message_text=>'Recuento'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125108142830026211)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'es'
,p_message_text=>'Borrar'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125108232168026211)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'es'
,p_message_text=>'Borrar todo'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125108306308026211)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'es'
,p_message_text=>'Borrar %0'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125124873314026216)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'es'
,p_message_text=>unistr('La columna %1, a la que hace referencia la faceta %0, no est\00E1 disponible o autorizada.')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124935595350026159)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'es'
,p_message_text=>'Seleccione los filtros que desee mostrar'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125062060621026197)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'es'
,p_message_text=>'%0 resultados'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125062163168026197)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'es'
,p_message_text=>'%0 seleccionados'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125064988148026198)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'es'
,p_message_text=>'Filtros Actuales'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124940585703026160)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'es'
,p_message_text=>unistr('Para realizar la b\00FAsqueda por facetas se necesita un origen de datos en el nivel de la regi\00F3n.')
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124944252778026161)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'es'
,p_message_text=>'Lista de filtros'
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125123304145026215)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'es'
,p_message_text=>unistr('L\00EDmite de valor distinto (%0) superado para la faceta %1.')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125109646301026211)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'La faceta %0 no se soporta en columnas DATE o TIMESTAMP.'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125107763201026210)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'es'
,p_message_text=>'Filtrar %0'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124982308036026173)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'es'
,p_message_text=>'%0 (Filtro aplicado)'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125107890992026211)
,p_name=>'APEX.FS.GO'
,p_message_language=>'es'
,p_message_text=>'Ir'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124977834482026171)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'es'
,p_message_text=>'contiene %0'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125109260862026211)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'es'
,p_message_text=>'igual que %0'
,p_is_js_message=>true
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124977574397026171)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'es'
,p_message_text=>'mayor que %0'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124977615932026171)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'es'
,p_message_text=>'mayor o igual que %0'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124977240903026171)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'es'
,p_message_text=>'menor que %0'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124977489705026171)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'es'
,p_message_text=>'menor o igual que %0'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124976712217026171)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'es'
,p_message_text=>'no contiene %0'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124962579895026167)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'es'
,p_message_text=>'no es igual que %0'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124976824514026171)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'es'
,p_message_text=>'no empieza por %0'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124977724267026171)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'es'
,p_message_text=>'empieza por %0'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124975895439026171)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'es'
,p_message_text=>unistr('Selecci\00F3n de faceta')
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124951695292026163)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'es'
,p_message_text=>unistr('El prefijo de filtro "%0" no es v\00E1lido para la faceta "%1".')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124950088291026163)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'es'
,p_message_text=>'Falta el prefijo de filtro para la faceta "%0".'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124984252484026173)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'es'
,p_message_text=>'Operador'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124966165584026168)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'es'
,p_message_text=>'contiene'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124965175404026167)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'es'
,p_message_text=>'igual que'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124965846089026168)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'es'
,p_message_text=>'mayor que'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124965910215026168)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'es'
,p_message_text=>'mayor o igual que'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124965545295026167)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'es'
,p_message_text=>'menor que'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124965644280026168)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'es'
,p_message_text=>'menor o igual que'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124976650374026171)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'es'
,p_message_text=>'no contiene'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124965342522026167)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'es'
,p_message_text=>'no es igual que'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124976523359026171)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'es'
,p_message_text=>'no empieza por'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124966053140026168)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'es'
,p_message_text=>'empieza por'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124984694215026173)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'es'
,p_message_text=>unistr('El tipo de dato %0 (%1) no est\00E1 soportado por la faceta del campo de entrada.')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124951520239026163)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'es'
,p_message_text=>unistr('El filtro "%0" no est\00E1 soportado para la faceta "%1" (tipo de datos %2).')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124984148654026173)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'es'
,p_message_text=>'Valor'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125109429987026211)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'es'
,p_message_text=>unistr('No se han proporcionado columnas de b\00FAsqueda para la faceta %0')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124935613351026159)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'es'
,p_message_text=>unistr('M\00E1s filtros')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125062298992026197)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'es'
,p_message_text=>'Inicio de rango'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125108986798026211)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'es'
,p_message_text=>'De %0 a %1'
,p_is_js_message=>true
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125109079529026211)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'es'
,p_message_text=>'Por encima de %0'
,p_is_js_message=>true
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125109118212026211)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'es'
,p_message_text=>'Por debajo de %0'
,p_is_js_message=>true
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125062360864026197)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'es'
,p_message_text=>unistr('Finalizaci\00F3n del Rango')
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125126940053026216)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'es'
,p_message_text=>unistr('Elemento de lista de valores n.\00BA %2 ("%1") para la faceta de rango %0 no es v\00E1lido (falta el separador "|").')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125109389271026211)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>'La entrada manual para la faceta de rango %0 no se soporta actualmente, ya que la columna es DATE o TIMESTAMP.'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125108637462026211)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'es'
,p_message_text=>'hasta'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124972208201026170)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'es'
,p_message_text=>unistr('Eliminar Gr\00E1fico')
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125058635225026196)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'es'
,p_message_text=>'Restablecer'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125108033187026211)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'es'
,p_message_text=>'Buscar'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125107964087026211)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'es'
,p_message_text=>'Buscar...'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125108818574026211)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'es'
,p_message_text=>'- Seleccionar -'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124972042533026170)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'es'
,p_message_text=>unistr('Mostrar gr\00E1fico')
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125108428636026211)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'es'
,p_message_text=>'Mostrar menos'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125108579693026211)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'es'
,p_message_text=>'Mostrar todo'
,p_is_js_message=>true
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125108708733026211)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('%0 estrellas y m\00E1s')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125063930289026197)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'es'
,p_message_text=>'Filtrar sugerencias'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125109519503026211)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'La faceta de campo de texto %0 solo se soporta actualmente para las columnas NUMBER.'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124935005999026159)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'es'
,p_message_text=>'Recuento Total de Filas'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125124942489026216)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'es'
,p_message_text=>unistr('El tipo de dato %0 (%1) no se soporta en la b\00FAsqueda de faceta.')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125055175520026195)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'es'
,p_message_text=>'Cabecera visualmente oculta'
,p_is_js_message=>true
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125117414084026213)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'es'
,p_message_text=>'Ir al error'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125073498490026200)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'es'
,p_message_text=>'Agregado.'
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125001333312026178)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'es'
,p_message_text=>'Cabecera en blanco'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125082734899026203)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'es'
,p_message_text=>unistr('Reducir Divisi\00F3n de Control')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125073502444026200)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'es'
,p_message_text=>unistr('Divisi\00F3n de control.')
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125082692309026203)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'es'
,p_message_text=>unistr('Ampliar Divisi\00F3n de Control')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125082470100026203)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'es'
,p_message_text=>'%0 filas suprimidas'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125151575124026224)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'es'
,p_message_text=>'Identidad duplicada'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124944466940026161)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'es'
,p_message_text=>unistr('Entrando en modo de edici\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125070322353026199)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'es'
,p_message_text=>'Primero'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124943286253026161)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'es'
,p_message_text=>unistr('Ocultar di\00E1logo')
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124942265564026161)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'es'
,p_message_text=>'Contenido de celda de desbordamiento flotante'
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124943593958026161)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'es'
,p_message_text=>'Mostrar desbordamiento de contenido'
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125017777905026183)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'es'
,p_message_text=>unistr('Pie de p\00E1gina de cuadr\00EDcula')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125073790947026200)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'es'
,p_message_text=>'Cabecera de grupo'
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125073685678026200)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'es'
,p_message_text=>'Cabecera.'
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125070415167026199)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimo')
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124944605873026161)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'es'
,p_message_text=>unistr('Saliendo del modo de edici\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124969300891026169)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'es'
,p_message_text=>'Cargar todo'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125092236948026206)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'es'
,p_message_text=>unistr('Mostrar m\00E1s')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125070167641026199)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'es'
,p_message_text=>'Siguiente'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125073808601026200)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'es'
,p_message_text=>unistr('Filas de p\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124982986477026173)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'es'
,p_message_text=>unistr('P\00E1gina %0')
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125070556581026199)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'es'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125070677914026199)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'es'
,p_message_text=>'%0 - %1 de %2'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125127528244026216)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'es'
,p_message_text=>unistr('Selecci\00F3n de P\00E1ginas')
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125018067730026183)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'es'
,p_message_text=>unistr('Paginaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125070242090026199)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'es'
,p_message_text=>'Anterior'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124968267308026168)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'es'
,p_message_text=>'Muestra de rango'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125001605544026179)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'es'
,p_message_text=>unistr('Selecci\00F3n de fila')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125151316955026224)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'es'
,p_message_text=>'Agregado'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125151474303026224)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'es'
,p_message_text=>'Cambiado'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125159721387026226)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'es'
,p_message_text=>unistr('Secuencia de fila de cuadr\00EDcula %0, columna %1.')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125159827220026226)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'es'
,p_message_text=>unistr('Secuencia de fila de cuadr\00EDcula %0.')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125151224325026224)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'es'
,p_message_text=>'Suprimido'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125074055100026200)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'es'
,p_message_text=>'Cabecera de fila'
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125001530876026178)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'es'
,p_message_text=>unistr('Selecci\00F3n de Fila')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124969447106026169)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'es'
,p_message_text=>'%0 %1 seleccionado'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125069566510026199)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'es'
,p_message_text=>'%0 celdas seleccionadas'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125070771943026199)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'es'
,p_message_text=>'%0 filas seleccionadas'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125112878940026212)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'es'
,p_message_text=>'Seleccionar todo'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125006398969026180)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'es'
,p_message_text=>'Seleccionar todas las filas'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125082534143026203)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'es'
,p_message_text=>unistr('P\00E1gina %0')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125073918570026200)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Fila'
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125074284345026200)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'es'
,p_message_text=>'Orden ascendente %0'
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125074341986026200)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'es'
,p_message_text=>'Orden descendente %0'
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125069631081026199)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'es'
,p_message_text=>'Orden ascendente'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125069922360026199)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'es'
,p_message_text=>'Orden Ascendente %0'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125069764800026199)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'es'
,p_message_text=>'Orden descendente'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125070009595026199)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'es'
,p_message_text=>'Orden Descendente %0'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125069808170026199)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'es'
,p_message_text=>'No ordenar'
,p_is_js_message=>true
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124935493515026159)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'es'
,p_message_text=>unistr('Opciones de ordenaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125017886342026183)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'es'
,p_message_text=>'Iconos de estado'
,p_is_js_message=>true
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125017948753026183)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'es'
,p_message_text=>unistr('Estado de cuadr\00EDcula')
,p_is_js_message=>true
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124947743290026162)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'es'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124947483373026162)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'es'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125082384217026203)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'es'
,p_message_text=>'Total %0'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125001198840026178)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'es'
,p_message_text=>'Se ha producido un error en la solicitud de HTTP para "%0".'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125002723590026179)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'es'
,p_message_text=>'Columna %0'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125002933518026179)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'es'
,p_message_text=>'Columna %0 y fila %1'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125003235733026179)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'es'
,p_message_text=>unistr('Ya est\00E1 en la primera columna. Columna %0 y fila %1')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125003135030026179)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'es'
,p_message_text=>unistr('Ya est\00E1 en la primera fila. Columna %0 y fila %1')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125148736901026223)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'es'
,p_message_text=>'Presentado en %0 columnas y %1 filas'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125003358470026179)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'es'
,p_message_text=>unistr('Ya est\00E1 en la \00FAltima columna. Columna %0 y fila %1')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125003090180026179)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'es'
,p_message_text=>unistr('Ya est\00E1 en la \00FAltima fila. Columna %0 y fila %1')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125082226115026203)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'es'
,p_message_text=>'Presentado en %0 filas'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125002818403026179)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'es'
,p_message_text=>'Fila %0'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125159571116026226)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('Cuadr\00EDcula Interactiva %0')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125066694807026198)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'es'
,p_message_text=>'Acciones'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125067664754026198)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'es'
,p_message_text=>'Agregar'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125067583484026198)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'es'
,p_message_text=>'Agregar fila'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125153182111026224)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'es'
,p_message_text=>'Agregado'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125138775813026220)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'es'
,p_message_text=>unistr('Agregaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125140427209026220)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'es'
,p_message_text=>'Todo'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125098071322026208)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Todas las Columnas de Texto'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125099238669026208)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'es'
,p_message_text=>'Alternativo'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125100361592026208)
,p_name=>'APEX.IG.AND'
,p_message_language=>'es'
,p_message_text=>'y'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125119734534026214)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'es'
,p_message_text=>'Recuento de los Valores Distintos Aprox.'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125154174177026224)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'es'
,p_message_text=>'Recuento aproximado general de valores distintos'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125137386498026219)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'es'
,p_message_text=>unistr('\00C1rea')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125139252864026220)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'es'
,p_message_text=>'Ascendente'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125099393292026208)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'es'
,p_message_text=>unistr('Autorizaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125153224282026224)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'es'
,p_message_text=>unistr('Autom\00E1tico')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125120137161026214)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'es'
,p_message_text=>'Media'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125153821139026224)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'es'
,p_message_text=>'Media general'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125136861863026219)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('T\00EDtulo de Eje de Etiqueta')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125137066644026219)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'es'
,p_message_text=>'Posiciones Decimales'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125136956426026219)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('T\00EDtulo de Eje de Valor')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125143099347026221)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'es'
,p_message_text=>'Color de Fondo'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125137444131026219)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'es'
,p_message_text=>'Barra'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125094644740026207)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'es'
,p_message_text=>'entre'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125144282368026221)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'es'
,p_message_text=>'Ambos'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125137589064026219)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'es'
,p_message_text=>'Burbujas'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125067813408026198)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'es'
,p_message_text=>'Cancelar'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125100291970026208)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'es'
,p_message_text=>unistr('Sensible a may\00FAsculas/min\00FAsculas')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125154785011026225)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'es'
,p_message_text=>unistr('(Sensible a may\00FAsculas/min\00FAsculas)')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125126055032026216)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'es'
,p_message_text=>'Se han guardado los cambios'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125068267413026199)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'es'
,p_message_text=>'Cambiar Vista'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125101352138026209)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'es'
,p_message_text=>unistr('Gr\00E1fico')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125097853594026208)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'es'
,p_message_text=>unistr('La consulta supera el m\00E1ximo de %0 puntos de datos por gr\00E1fico. Aplique un filtro para reducir el n\00FAmero de registros de la consulta base.')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125066560757026198)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'es'
,p_message_text=>'Vista de Diagrama'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125074924576026201)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'es'
,p_message_text=>'Borrar'
,p_is_js_message=>true
,p_version_scn=>2692619
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125136384147026219)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Cerrar'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125143266106026221)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'es'
,p_message_text=>'Colores'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125120501489026214)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'es'
,p_message_text=>'Vista previa'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125099614604026208)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'es'
,p_message_text=>'Columna'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125066771149026198)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Columnas'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125028633920026187)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'es'
,p_message_text=>'Acciones de columna'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125028482828026187)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'es'
,p_message_text=>'Acciones para la columna "%0"'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125145087486026222)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'es'
,p_message_text=>'Objetivo de la columna'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125099778604026208)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'es'
,p_message_text=>'Complejo'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125066984455026198)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'es'
,p_message_text=>'Calcular'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125095269789026207)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'es'
,p_message_text=>'contiene'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125101581106026209)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'es'
,p_message_text=>unistr('Divisi\00F3n de Control')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125074718916026201)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'es'
,p_message_text=>'Copiar en el portapapeles'
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125074802998026201)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'es'
,p_message_text=>'Copiar hacia abajo'
,p_is_js_message=>true
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125119500648026214)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'es'
,p_message_text=>'Recuento'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125119603532026214)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'es'
,p_message_text=>'Recuento de los Valores Distintos'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125154023940026224)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'es'
,p_message_text=>'Recuento general de valores distintos'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125153910311026224)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'es'
,p_message_text=>'Recuento General'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125151694481026224)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'es'
,p_message_text=>'Crear %0'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125098278171026208)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'es'
,p_message_text=>'Datos'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125144861413026222)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'es'
,p_message_text=>'Tipo de datos'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125144401876026221)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'es'
,p_message_text=>'Fecha'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125125865890026216)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'es'
,p_message_text=>unistr('Valor de fecha no v\00E1lido')
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125095915316026207)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('d\00EDas')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125098953323026208)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'es'
,p_message_text=>'Valores por defecto'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125098761782026208)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'es'
,p_message_text=>'Tipo por Defecto'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125067762650026198)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'es'
,p_message_text=>'Suprimir'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125145973261026222)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'es'
,p_message_text=>unistr('\00BFSeguro que desea suprimir este informe?')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125103355526026209)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'es'
,p_message_text=>'Suprimir fila'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125102183419026209)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'es'
,p_message_text=>'Suprimir filas'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125139375490026220)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'es'
,p_message_text=>'Descendente'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125101097300026208)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'es'
,p_message_text=>'Detalle'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125066271296026198)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'es'
,p_message_text=>'Vista de Detalles'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125128344478026217)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'es'
,p_message_text=>unistr('Direcci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125100745355026208)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'es'
,p_message_text=>'Desactivado'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125095352636026207)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'es'
,p_message_text=>'no contiene'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125095552678026207)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'es'
,p_message_text=>'no empieza por'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125137615717026219)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'es'
,p_message_text=>'Anillo'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125101794151026209)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'es'
,p_message_text=>'Descargar'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124992033224026176)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'es'
,p_message_text=>unistr('S\00F3lo Datos')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125146963102026222)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Formato'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125007190078026180)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'es'
,p_message_text=>unistr('El formato de descarga %0 no est\00E1 activado.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125140025037026220)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'es'
,p_message_text=>unistr('Agregaci\00F3n duplicada')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125140171501026220)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'es'
,p_message_text=>unistr('Divisi\00F3n de Control Duplicada')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125103229125026209)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'es'
,p_message_text=>'Duplicar Fila'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125102031261026209)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'es'
,p_message_text=>'Filas Duplicadas'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125067324836026198)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'es'
,p_message_text=>'Editar'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125139137878026220)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'es'
,p_message_text=>unistr('Editar Gr\00E1fico')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125019648621026184)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'es'
,p_message_text=>'Editar %0'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125150525030026223)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'es'
,p_message_text=>'Editar Grupo por'
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125057712844026195)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en modo de edici\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125033398278026188)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Cuadr\00EDcula en modo de edici\00F3n, deje de pulsar para cambiar al modo de vista')
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125146547432026222)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'es'
,p_message_text=>'Copia oculta (Cco)'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125146774706026222)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'es'
,p_message_text=>'Mensaje'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125146464193026222)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'es'
,p_message_text=>'Copia (Cc)'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125146166792026222)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'es'
,p_message_text=>unistr('Correo electr\00F3nico enviado.')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125146606689026222)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'es'
,p_message_text=>'Asunto'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125146359125026222)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'es'
,p_message_text=>'Destinatario (para)'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125100449356026208)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'es'
,p_message_text=>'Activado'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125093601267026206)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'es'
,p_message_text=>'igual que'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125100533540026208)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'es'
,p_message_text=>unistr('Expresi\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125145547887026222)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'es'
,p_message_text=>'Tipo'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125112740464026212)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'es'
,p_message_text=>'Archivo preparado. Iniciando descarga.'
,p_is_js_message=>true
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125075030369026201)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'es'
,p_message_text=>'Rellenar'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125077284211026201)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('Rellenar selecci\00F3n con')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125077166617026201)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Rellenar selecci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125066839279026198)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'es'
,p_message_text=>'Filtro'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125099800003026208)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'es'
,p_message_text=>'Filtros'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125153512839026224)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'es'
,p_message_text=>'Filtrar...'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125139545826026220)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'es'
,p_message_text=>'Primero'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125067007055026198)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'es'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125098336462026208)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'es'
,p_message_text=>'Formato'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125144183733026221)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'es'
,p_message_text=>unistr('M\00E1scara de Formato')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125145848688026222)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'es'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125145700866026222)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'es'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125056864274026195)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'es'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124990781233026175)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'es'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125102971933026209)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'es'
,p_message_text=>'Congelar'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125100612124026208)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'es'
,p_message_text=>'Funciones y Operadores'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125137794228026220)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'es'
,p_message_text=>'Embudo'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125119443447026214)
,p_name=>'APEX.IG.GO'
,p_message_language=>'es'
,p_message_text=>'Ir'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125094256732026207)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'es'
,p_message_text=>'mayor que'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125094374989026207)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'es'
,p_message_text=>'mayor o igual que'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125100925567026208)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'es'
,p_message_text=>unistr('Cuadr\00EDcula')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125066088833026198)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'es'
,p_message_text=>unistr('Vista de cuadr\00EDcula')
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125140351152026220)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'es'
,p_message_text=>'Grupo'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125101132904026209)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'es'
,p_message_text=>'Agrupar por'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125066343486026198)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'es'
,p_message_text=>'Vista Agrupar por'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125144762754026222)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'es'
,p_message_text=>unistr('Tipo de Condici\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125143693172026221)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'es'
,p_message_text=>'Cabecera'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125143830805026221)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'es'
,p_message_text=>unistr('Alineaci\00F3n de Cabecera')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125153487669026224)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'es'
,p_message_text=>'Ayuda'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125148971305026223)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Puede insertar, actualizar y suprimir datos directamente en esta cuadr\00EDcula interactiva.</p>'),
'',
unistr('<p>Inserte una nueva fila haciendo clic en el bot\00F3n Agregar Fila.</p>'),
'',
unistr('<p>Edite datos existentes haciendo doble clic en una celda espec\00EDfica. Para un trabajo de edici\00F3n mayor, haga clic en Editar para acceder al modo de edici\00F3n. En el modo de edici\00F3n, puede hacer un solo clic o utilizar el teclado para editar celdas esp')
||unistr('ec\00EDficas.</p>'),
'',
unistr('<p>Utilice el men\00FA Cambiar para duplicar y suprimir filas. Para activar el men\00FA Cambiar, utilice las casillas de control para seleccionar una o m\00E1s filas.</p>'),
'',
unistr('<p>Duplique una fila seleccionada haciendo clic en el men\00FA Cambiar y seleccionando Filas duplicadas. Suprima una fila seleccionada haciendo clic en el men\00FA Cambiar y seleccionando Suprimir fila.</p>')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125151063890026223)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'es'
,p_message_text=>unistr('Funciones de edici\00F3n')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125151162365026224)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Una cuadr\00EDcula interactiva presenta un juego de datos en un informe personalizable en el que se pueden realizar b\00FAsquedas. Puede realizar diversas operaciones para limitar los registros que se devuelven y cambiar la forma en la que se muestran los')
||' datos.</p>',
'',
unistr('<p>Utilice el campo Buscar para filtrar los registros devueltos. Haga clic en Acciones para acceder a diversas opciones para modificar el dise\00F1o del informe, o utilizar los men\00FAs de Cabecera de Columna en las columnas mostradas.</p>'),
'',
unistr('<p>Utilice Configuraci\00F3n de Informe para guardar sus personalizaciones en un informe. Tambi\00E9n puede descargar los datos del informe en un archivo externo o enviarse a los datos por correo electr\00F3nico a s\00ED mismo o a otros usuarios.</p>'),
'',
unistr('<p>Para obtener m\00E1s informaci\00F3n, consulte "Uso de cuadr\00EDculas interactivas" en <em>Oracle APEX End User''s Guide</em>.')))
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125150892965026223)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'es'
,p_message_text=>unistr('Descripci\00F3n general')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125148822321026223)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Puede personalizar la cuadr\00EDcula interactiva para mostrar datos en diversos niveles diferentes utilizando las funciones incorporadas.</p>'),
'',
unistr('<p>Utilice los men\00FAs de Cabecera de Columna del men\00FA Acciones para determinar qu\00E9 columnas se deben mostrar, en qu\00E9 secuencia y congelar columnas. Tambi\00E9n puede definir varios filtros de datos y ordenar los datos devueltos.</p>'),
'',
unistr('<p>Utilice el bot\00F3n Ver (junto al campo Buscar) para acceder a otras vistas de datos que puede haber definido el desarrollador de aplicaciones. Tambi\00E9n puede crear un gr\00E1fico o ver un gr\00E1fico existente.</p>  '),
'',
unistr('<p><em>Nota: Haga clic en <strong>Ayuda</strong> en los cuadros de di\00E1logo de la cuadr\00EDcula interactiva para obtener informaci\00F3n m\00E1s detallada sobre la funci\00F3n seleccionada.</em></p>')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125150992655026223)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'es'
,p_message_text=>'Funciones de informes'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125101980079026209)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Ayuda de Cuadr\00EDcula Interactiva')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125147711517026222)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para agregar columnas. Los valores agregados se muestran en la parte inferior de los datos o, si se definen divisiones de control, en la parte inferior de cada divisi\00F3n.</p>'),
'',
unistr('<p><strong>Lista de agregaci\00F3n</strong><br>'),
unistr('La lista de agregaci\00F3n muestra agregaciones definidas. Desactive una agregaci\00F3n existente anulando su selecci\00F3n.<br>'),
unistr('Haga clic en Agregar ( &plus; ) para crear una nueva agregaci\00F3n, o en Suprimir ( &minus; ) para eliminar una agregaci\00F3n existente.</p>'),
'',
unistr('<p><strong>Configuraci\00F3n de agregaci\00F3n</strong><br>'),
unistr('Utilice el formulario de la derecha para definir la agregaci\00F3n.<br>'),
unistr('Seleccione el nombre de columna y el tipo de agregaci\00F3n.<br>'),
unistr('De manera opcional, puede introducir una pista para la agregaci\00F3n.<br>'),
unistr('Si ha definido una divisi\00F3n de control, al seleccionar <strong>Mostrar Valor General</strong> se muestra el valor de media general, total o similar en la parte inferior de los datos.</p>'),
'',
unistr('<p><em>Nota: Acceda al cuadro de di\00E1logo Agregaci\00F3n en el men\00FA Acciones o haciendo clic en la cabecera de columna y suma ( &sum; ).</em></p>')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125149918139026223)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Ayuda de agregaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125148427453026223)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para definir un gr\00E1fico que se muestre como una vista de datos independiente.<br>'),
unistr('Seleccione un tipo de gr\00E1fico y sus atributos.</p>'),
unistr('<p><strong>Atributos de gr\00E1fico</strong><br>'),
unistr('Los atributos de gr\00E1fico disponibles var\00EDan en funci\00F3n del tipo de gr\00E1fico.</p>'),
'<p>',
'<ul>',
'  <li>Seleccione la columna que contiene el valor para el atributo:',
'    <ul>',
'      <li>Etiqueta: texto para cada punto de datos.</li>',
unistr('      <li>Valor: datos que se trazar\00E1n.</li>'),
unistr('      <li>Series: para definir su consulta din\00E1mica de varias series.</li>'),
'      <li>Apertura: precio de apertura de valores diario (solo valores).</li>',
'      <li>Cierre: precio de cierre de valores diario (solo valores).</li>',
'      <li>Alto: valor alto (solo rango y valores).</li>',
'      <li>Bajo: valor bajo (solo rango y valores)</li>',
'      <li>Volumen: volumen de valores diario (solo valores).</li>',
'      <li>Destino: valor de destino (solo embudo).</li>',
unistr('      <li>X: valor de eje X (solo burbuja y dispersi\00F3n).</li>'),
unistr('      <li>Y: valor de eje Y (solo burbuja y dispersi\00F3n).</li>'),
'      <li>Z: ancho de barra o radio de burbuja (solo barra, burbuja y rango).</li>',
'    </ul>',
'  </li>',
unistr('  <li>Orientaci\00F3n: vertical u horizontal.</li>'),
unistr('  <li>Agregaci\00F3n: seleccione c\00F3mo agregar los valores del gr\00E1fico.</li>'),
unistr('  <li>Pila: especifique si los elementos de datos est\00E1n apilados.</li>'),
'  <li>Ordenar por: ordene por etiqueta o valores.',
'    <ul>',
unistr('      <li>Direcci\00F3n: ordene por valores ascendentes o descendentes.</li>'),
unistr('      <li>Nulos: especifique c\00F3mo ordenar registros con valores nulos con respecto a registros con valores no nulos.</li>'),
'    </ul>',
'  </li>',
'  <li>Posiciones decimales</li>',
unistr('  <li>T\00EDtulo de eje de etiqueta</li>'),
unistr('  <li>T\00EDtulo de eje de valor</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125150303551026223)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Ayuda de gr\00E1fico')
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125147462123026222)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para seleccionar qu\00E9 columnas se muestran y en qu\00E9 orden.</p>'),
'',
unistr('<p>Para ocultar una columna, anule su selecci\00F3n.<br>'),
'Para reordenar columnas, haga clic en Mover Arriba ( &uarr; ) o Mover Abajo ( &darr; ).<br>',
'Utilice el selector desplegable para mostrar Todas las columnas, Columnas mostradas o Columnas no mostradas.</p>',
'',
unistr('<p>Tambi\00E9n puede utilizar el formulario para especificar el ancho m\00EDnimo de una columna en p\00EDxeles.</p>'),
'',
unistr('<p><em>Nota: Tambi\00E9n puede reordenar columnas mostradas haciendo clic en el manejador de arrastre (al inicio de la cabecera de columna) y arrastrando la columna a la izquierda o la derecha. Cambie el ancho de las columnas mostradas seleccionando el s')
||unistr('eparador de columna, entre cabeceras, y movi\00E9ndolo hacia la izquierda o la derecha.</em></p>')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125150230977026223)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'es'
,p_message_text=>'Ayuda de Columnas'
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125147894216026222)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para definir columnas adicionales basadas en los c\00E1lculos matem\00E1ticos y funcionales realizados en columnas existentes.</p>'),
'',
unistr('<p><strong>Lista de c\00E1lculo</strong><br>'),
unistr('La lista de c\00E1lculo muestra c\00E1lculos definidos. Desactive un c\00E1lculo existente anulando su selecci\00F3n.<br>'),
unistr('Haga clic en Agregar ( &plus; ) para agregar un nuevo c\00E1lculo, o en Suprimir ( &minus; ) para eliminar un c\00E1lculo existente.</p>'),
'',
unistr('<p><strong>Configuraci\00F3n de c\00E1lculo</strong><br>'),
unistr('Utilice el formulario para definir el c\00E1lculo.<br>'),
unistr('Introduzca los detalles de la columna, como la cabecera y la etiqueta, y seleccione la configuraci\00F3n de alineaci\00F3n.<br> '),
unistr('Utilice el \00E1rea de texto Expresi\00F3n para introducir las columnas y las funciones asociadas para el c\00E1lculo.<br>'),
unistr('Seleccione el tipo de datos adecuado y, de forma opcional, una m\00E1scara de formato para la nueva columna.</p>')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125149808439026223)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Ayuda de c\00E1lculo')
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125148168220026223)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para definir una divisi\00F3n de control en una o m\00E1s columnas.</p>'),
'',
'<p><strong>Lista de divisiones de control</strong><br>',
unistr('La lista de divisiones de control muestra divisiones de control definidas. Desactive una columna de divisi\00F3n de control existente anulando su selecci\00F3n.<br>'),
unistr('Haga clic en Agregar ( &plus; ) para incluir una nueva columna en la divisi\00F3n de control, o en Suprimir ( &minus; ) para eliminar una columna existente de la divisi\00F3n de control.<br>'),
unistr('Para reordenar columnas, haga clic en Mover Arriba ( &uarr; ) o Mover Abajo ( &darr; ) para mover la columna seleccionada arriba y abajo en relaci\00F3n con otras columnas.</p>'),
'',
unistr('<p><strong>Configuraci\00F3n de divisi\00F3n de control</strong><br>'),
unistr('Utilice este formulario para definir la columna de divisi\00F3n de control.<br>'),
unistr('Seleccione una columna de divisi\00F3n de control, la direcci\00F3n de ordenaci\00F3n y el modo de ordenar las columnas nulas (columnas sin valor).</p>'),
'',
unistr('<p><em>Nota: Al visualizar la cuadr\00EDcula interactiva, puede definir una divisi\00F3n de control haciendo clic en una cabecera de columna y seleccionando el icono de divisi\00F3n de control.</em></p>')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125149581861026223)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Ayuda de Divisi\00F3n de Control')
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125148333825026223)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para descargar todas las filas actuales en un archivo externo. El archivo contendr\00E1 solo las columnas mostradas actualmente, con cualquier filtro y ordenaci\00F3n que se haya aplicado a los datos.</p>'),
'',
'<p>Seleccione el formato de archivo y haga clic en Descargar.<br>',
unistr('Nota: CSV no incluir\00E1 formato de texto, tal como agregaciones y divisiones de control.</p>'),
'',
unistr('<p>Para enviar un archivo por correo electr\00F3nico, seleccione Enviar como correo electr\00F3nico e introduzca los detalles del correo en cuesti\00F3n (destinatario, asunto y mensaje).</p>')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125149344889026223)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'es'
,p_message_text=>'Ayuda de descarga'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125147584516026222)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para configurar filtros de datos que limiten las filas devueltas.</p>'),
'',
'<p><strong>Lista de Filtros</strong><br>',
unistr('La lista de filtros muestra filtros definidos. Desactive un filtro existente anulando su selecci\00F3n.<br>'),
'Haga clic en Agregar ( &plus; ) para crear un nuevo filtro, o en Suprimir ( &minus; ) para eliminar un filtro existente.</p>',
'',
'<p><strong>Valores de Filtro</strong><br>',
'Utilice el formulario para definir las propiedades del filtro.<br>',
'Seleccione el tipo de filtro adecuado:<br>',
unistr('&nbsp;&nbsp;&nbsp;Fila: filtra por un t\00E9rmino en cualquier columna que se pueda filtrar.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Columna: filtra una columna espec\00EDfica con un valor y un operador espec\00EDfico.<br>'),
'',
unistr('<p><em>Nota: Al visualizar la cuadr\00EDcula interactiva, puede definir los filtros de fila escribiendo directamente en el campo Buscar. Haga clic en Seleccionar Columnas a Buscar para limitar la b\00FAsqueda a una columna espec\00EDfica. Tambi\00E9n puede abrir un ')
||unistr('men\00FA Cabecera de Columna y seleccionar un valor para crear un filtro de columna.</em></p>')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125150146737026223)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'es'
,p_message_text=>'Ayuda de filtro'
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125147930075026222)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para ver los datos tal como exist\00EDan en un punto en el tiempo anterior.</p>'),
unistr('<p>Introduzca el n\00FAmero de minutos en el pasado para ejecutar la consulta de flashback.</p>')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125149737291026223)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'es'
,p_message_text=>'Ayuda de flashback'
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125150477702026223)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'es'
,p_message_text=>'Ayuda de Agrupar por'
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125148049314026223)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para resaltar las filas o columnas de datos en funci\00F3n de la condici\00F3n introducida.</p>'),
'',
'<p><strong>Lista de resaltados</strong><br>',
unistr('La lista de resaltados muestra resaltados definidos. Desactive un resaltado existente anulando su selecci\00F3n.<br>'),
'Haga clic en Agregar ( &plus; ) para crear un nuevo resaltado, o en Suprimir ( &minus; ) para eliminar un resaltado existente.</p>',
'',
unistr('<p><strong>Configuraci\00F3n de resaltado</strong><br>'),
'Utilice el formulario para definir las propiedades de resaltado.<br>',
unistr('Introduzca el nombre, seleccione Fila o Columna y seleccione los c\00F3digos de color HTML para al fondo y el texto.<br>'),
unistr('Seleccione el <strong>tipo de condici\00F3n</strong> adecuado para resaltar datos espec\00EDficos:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Fila: se resalta el t\00E9rmino en cualquier columna.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Columna: se resalta dentro de una columna espec\00EDfica en funci\00F3n de un valor y operador especificados.</p>')))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125149659265026223)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'es'
,p_message_text=>'Ayuda de resaltado'
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125148277399026223)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para guardar los cambios que ha realizado en el dise\00F1o de cuadr\00EDcula actual y la configuraci\00F3n.<br>'),
unistr('Los desarrolladores de aplicaciones pueden definir varios dise\00F1os de informes alternativos. Siempre que sea posible, tanto usted como los otros usuarios finales pueden guardar un informe como P\00FAblico, de modo que pueda estar disponible para todos los')
||unistr(' usuarios de la cuadr\00EDcula. Tambi\00E9n puede guardar un informe como Privado para que solo usted pueda verlo.</p>'),
'<p>Seleccione uno de los tipos disponibles e introduzca un nombre para el informe guardado.</p>'))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125149481082026223)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Ayuda de informe',
''))
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125147647897026222)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Utilice este cuadro de di\00E1logo para definir el orden de visualizaci\00F3n.</p>'),
'',
'<p><strong>Ordenar Lista</strong><br>',
unistr('El cuadro de di\00E1logo Ordenar muestra una lista de reglas de ordenaci\00F3n configuradas.<br>'),
unistr('Haga clic en Agregar ( &plus; ) para crear una columna de ordenaci\00F3n, o en Suprimir ( &minus; ) para eliminar una columna de ordenaci\00F3n.<br>'),
unistr('Haga clic en Mover Arriba ( &uarr; ) y Mover Abajo ( &darr; ) para mover la columna de ordenaci\00F3n seleccionada arriba y abajo en relaci\00F3n a las otras columnas de ordenaci\00F3n.</p>'),
'',
unistr('<p><strong>Valores de Ordenaci\00F3n</strong><br>'),
unistr('Seleccione una columna de ordenaci\00F3n, la direcci\00F3n de ordenaci\00F3n y el modo de ordenar las columnas nulas (columnas sin valor).</p>'),
'',
'<p><em>Nota: Los datos se pueden ordenar por columnas que no se muestran; sin embargo, no todas las columnas pueden ordenarse.</em><br>',
unistr('<em>Las columnas mostradas pueden ordenarse pulsando las flechas arriba (ascendentes) o abajo (descendentes) al final de las cabeceras de columna. Para agregar una columna posterior a una ordenaci\00F3n existente, mantenga pulsada la tecla May\00FAs y haga c')
||'lic en la flecha arriba o abajo.</em></p>'))
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125150027189026223)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Ayuda de ordenaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125149272553026223)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Ayuda de suscripci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125102807621026209)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'es'
,p_message_text=>'Ocultar'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125067288856026198)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'es'
,p_message_text=>'Resaltar'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125136478775026219)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Alto'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125137218647026219)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'es'
,p_message_text=>'Horizontal'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125095885021026207)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'es'
,p_message_text=>'horas'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125100860929026208)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'es'
,p_message_text=>'Icono'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125066185059026198)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'es'
,p_message_text=>'Vista de Icono'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125094023942026206)
,p_name=>'APEX.IG.IN'
,p_message_language=>'es'
,p_message_text=>'en'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125102469699026209)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'es'
,p_message_text=>'Valor inactivo'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125102583853026209)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'es'
,p_message_text=>'Valores inactivos'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125110116346026211)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha producido un error interno al procesar la solicitud de cuadr\00EDcula interactiva.')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124998061625026177)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'es'
,p_message_text=>'El tipo de filtro de columna "%0" no es compatible con la columna "%1".'
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125149006205026223)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'es'
,p_message_text=>unistr('Formato de Fecha No V\00E1lido')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125123871746026215)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'es'
,p_message_text=>unistr('La cuadr\00EDcula interactiva no soporta la definici\00F3n de filtros en la columna %0.')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125123780664026215)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no es un tipo de filtro v\00E1lido para definir un filtro de cuadr\00EDcula interactiva.')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125004632155026179)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'es'
,p_message_text=>unistr('Formato num\00E9rico no v\00E1lido')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125151747825026224)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'es'
,p_message_text=>unistr('Valor no v\00E1lido')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125151837850026224)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'es'
,p_message_text=>unistr('Valores no v\00E1lidos')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125142984422026221)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'es'
,p_message_text=>'Ordenar por se ha definido en %0, pero no se ha seleccionado ninguna columna para %0.'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125140243012026220)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'es'
,p_message_text=>unistr('Valor no v\00E1lido')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125135336402026219)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'es'
,p_message_text=>'No Mostrado'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125094826915026207)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'es'
,p_message_text=>unistr('en los \00FAltimos')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125095049145026207)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'es'
,p_message_text=>'en siguiente(s)'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125093962617026206)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'es'
,p_message_text=>unistr('no est\00E1 vac\00EDo')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125093873018026206)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'es'
,p_message_text=>unistr('est\00E1 vac\00EDo')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125143739779026221)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'es'
,p_message_text=>'Etiqueta'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125135724371026219)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Etiqueta'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125139655421026220)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimo')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125084172049026204)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimo D\00EDa')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125084381378026204)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltima Hora')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125084843488026204)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimo minuto')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125083845634026204)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'es'
,p_message_text=>'Mes pasado'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125083940941026204)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'es'
,p_message_text=>'Semana pasada'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125084009121026204)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimos %0 D\00EDas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125084213970026204)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimas %0 Horas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125084912951026204)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimos %0 Minutos')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125084719499026204)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimos %0 Meses')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125084696715026204)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimas %0 semanas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125083692010026203)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimos %0 A\00F1os')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125083758563026203)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('A\00F1o pasado')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125143927332026221)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'es'
,p_message_text=>unistr('Alineaci\00F3n de Celda')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125144079561026221)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'es'
,p_message_text=>'Usar Grupos para'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125094441617026207)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'es'
,p_message_text=>'menor que'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125094598724026207)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'es'
,p_message_text=>'menor o igual que'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125137871951026220)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'es'
,p_message_text=>unistr('L\00EDnea')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125137930062026220)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'es'
,p_message_text=>unistr('L\00EDnea con \00C1rea')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125144364662026221)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'es'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125136589661026219)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Bajo'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125146853186026222)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'es'
,p_message_text=>unistr('Si introduce varias direcciones, sep\00E1relas con comas')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125095629297026207)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'es'
,p_message_text=>unistr('coincide con expresi\00F3n regular')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125120077297026214)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'es'
,p_message_text=>unistr('M\00E1ximo')
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125154389334026224)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'es'
,p_message_text=>unistr('M\00E1ximo general')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125120258016026214)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'es'
,p_message_text=>'Mediana'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125154472777026224)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'es'
,p_message_text=>'Mediana general'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125119920142026214)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'es'
,p_message_text=>unistr('M\00EDnimo')
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125095796958026207)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'es'
,p_message_text=>'minutos'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125120760392026214)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'es'
,p_message_text=>'minutos'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125154272528026224)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'es'
,p_message_text=>unistr('M\00EDnimo general')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125096139343026207)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'es'
,p_message_text=>'meses'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125102710490026209)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('Los datos contienen m\00E1s de %0 filas que exceden el m\00E1ximo permitido. Aplique los filtros adicionales para ver los resultados.')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125128507322026217)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'es'
,p_message_text=>unistr('Se debe especificar el ID est\00E1tico de regi\00F3n, ya que la p\00E1gina contiene varias cuadr\00EDculas interactivas.')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125098817750026208)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'es'
,p_message_text=>'Nombre'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125099016436026208)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'es'
,p_message_text=>'Informe con nombre'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125083009969026203)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'es'
,p_message_text=>unistr('D\00EDa Siguiente')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125082868048026203)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'es'
,p_message_text=>'Hora Siguiente'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125085071001026204)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'es'
,p_message_text=>unistr('Pr\00F3ximo minuto')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125083367952026203)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'es'
,p_message_text=>'Mes Siguiente'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125083294973026203)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'es'
,p_message_text=>'Semana siguiente'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125083189641026203)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('Siguientes %0 D\00EDas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125082947200026203)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'es'
,p_message_text=>'Siguientes %0 Horas'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125085149745026204)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'es'
,p_message_text=>unistr('Pr\00F3ximos %0 minutos')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125084494345026204)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'es'
,p_message_text=>unistr('Pr\00F3ximos %0 meses')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125084573541026204)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'es'
,p_message_text=>unistr('Pr\00F3ximas %0 semanas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125083508877026203)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('Siguientes %0 A\00F1os')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125083450073026203)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('A\00F1o siguiente')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125094725990026207)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'es'
,p_message_text=>'no entre'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125093752187026206)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'es'
,p_message_text=>'no es igual que'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125158597839026226)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('La regi\00F3n con el identificador %0 no es una regi\00F3n de cuadr\00EDcula interactiva o no existe en la aplicaci\00F3n %1.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125094157520026207)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'es'
,p_message_text=>'no en'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125094905963026207)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'es'
,p_message_text=>unistr('no en los \00FAltimos')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125095191246026207)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'es'
,p_message_text=>unistr('no en los pr\00F3ximos')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125102609474026209)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado ning\00FAn dato')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125139428013026220)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'es'
,p_message_text=>'Valores nulos'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125144554356026222)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'es'
,p_message_text=>unistr('Num\00E9rico')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125139788192026220)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'es'
,p_message_text=>'Desactivado'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125139818201026220)
,p_name=>'APEX.IG.ON'
,p_message_language=>'es'
,p_message_text=>'Activado'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125092972736026206)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'es'
,p_message_text=>'Hace 1 minuto'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125147375022026222)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'es'
,p_message_text=>'Abrir Selector de Color: %0'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125136251257026219)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Abrir'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125099998854026208)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'es'
,p_message_text=>'Operador'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125135685600026219)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'es'
,p_message_text=>unistr('Orientaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125138099400026220)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'es'
,p_message_text=>unistr('Gr\00E1fico circular')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125101252775026209)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'es'
,p_message_text=>unistr('Din\00E1mica')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125066438304026198)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'es'
,p_message_text=>unistr('Vista din\00E1mica')
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125147204660026222)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'es'
,p_message_text=>'Separar valores con "%0"'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125138149324026220)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'es'
,p_message_text=>'Polar'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125143492666026221)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'es'
,p_message_text=>'Centro'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125143506801026221)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'es'
,p_message_text=>'Fin'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125143353008026221)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'es'
,p_message_text=>'Inicio'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125099141721026208)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'es'
,p_message_text=>'Principal'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125099452486026208)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'es'
,p_message_text=>'Por Defecto Primario'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125115935317026213)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'es'
,p_message_text=>'Informe Primario'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124989507569026175)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'es'
,p_message_text=>'Incluir etiquetas de accesibilidad'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124986951927026174)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'es'
,p_message_text=>'Horizontal'
,p_is_js_message=>true
,p_version_scn=>2692600
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124987038003026174)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'es'
,p_message_text=>'Vertical'
,p_is_js_message=>true
,p_version_scn=>2692600
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124986849639026174)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'es'
,p_message_text=>unistr('Orientaci\00F3n de p\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2692600
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124986736276026174)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'es'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2692600
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124986620425026174)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'es'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2692600
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124989736724026175)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'es'
,p_message_text=>'Personalizado'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124986431137026174)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'es'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2692600
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124986387567026174)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'es'
,p_message_text=>'Carta'
,p_is_js_message=>true
,p_version_scn=>2692600
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124986511333026174)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'es'
,p_message_text=>'Tabloide'
,p_is_js_message=>true
,p_version_scn=>2692600
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124986227625026174)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'es'
,p_message_text=>unistr('Tama\00F1o de la P\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2692600
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124951893241026164)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'es'
,p_message_text=>'Borrar texto enriquecido'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125138255260026220)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'es'
,p_message_text=>'Radial'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125138312863026220)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'es'
,p_message_text=>'Rango'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125148508533026223)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'es'
,p_message_text=>'Refrescar'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125103490519026209)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'es'
,p_message_text=>'Refrescar fila'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125102212292026209)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'es'
,p_message_text=>'Refrescar filas'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125107451372026210)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('La regi\00F3n de cuadr\00EDcula interactiva no existe en la aplicaci\00F3n %0, p\00E1gina %1 y regi\00F3n %2.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125067902033026198)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'es'
,p_message_text=>'Eliminar %0'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125098506969026208)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'es'
,p_message_text=>'Informe'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125157705407026226)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'es'
,p_message_text=>'Informe suprimido'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125157456593026225)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'es'
,p_message_text=>'Se ha guardado el informe alternativo para todos los usuarios'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125157344536026225)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'es'
,p_message_text=>'Se ha guardado el informe por defecto para todos los usuarios'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125157629476026225)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'es'
,p_message_text=>'Informe privado guardado'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125157572657026225)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha guardado el informe p\00FAblico para todos los usuarios')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125107532184026210)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('La cuadr\00EDcula interactiva guardada con el nombre %0 no existe.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125092836879026206)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'es'
,p_message_text=>unistr('Datos de cuadr\00EDcula de hace %0 minutos')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125092792695026206)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'es'
,p_message_text=>unistr('Datos de cuadr\00EDcula de hace 1 minuto')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125028263807026186)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('El informe de cuadr\00EDcula interactiva no existe.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125150786610026223)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'es'
,p_message_text=>'Informe - Editar'
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125107343581026210)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('La cuadr\00EDcula interactiva guardada con el ID %0 no existe.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125150662567026223)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'es'
,p_message_text=>'Informe - Guardar como'
,p_is_js_message=>true
,p_version_scn=>2692629
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125068047072026198)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'es'
,p_message_text=>unistr('Valores de Cuadr\00EDcula')
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125158645822026226)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('La cuadr\00EDcula interactiva guardada con el identificador est\00E1tico %0 no existe.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125153637762026224)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'es'
,p_message_text=>'Vista de Informe'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125067138011026198)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'es'
,p_message_text=>'Restablecer'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125103589758026209)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'es'
,p_message_text=>'Revertir Cambios'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125102324236026209)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'es'
,p_message_text=>'Revertir filas'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125099518502026208)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'es'
,p_message_text=>'Fila'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125098427888026208)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Filas por P\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125158223698026226)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'es'
,p_message_text=>'Acciones de Fila'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125159491004026226)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'es'
,p_message_text=>'Acciones para la fila %0'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125067467884026198)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'es'
,p_message_text=>'Guardar'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125112583822026212)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'es'
,p_message_text=>'guardado'
,p_is_js_message=>true
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125017180872026183)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'es'
,p_message_text=>'Informe guardado: %0'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125065630217026198)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'es'
,p_message_text=>'Informes Guardados'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125065775371026198)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'es'
,p_message_text=>'Por defecto'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125039289226026190)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'es'
,p_message_text=>'Ya existe un informe guardado que se llama %0. Introduzca un nuevo nombre.'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125065885516026198)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'es'
,p_message_text=>'Privado'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125065980664026198)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'es'
,p_message_text=>unistr('P\00FAblico')
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125153333271026224)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'es'
,p_message_text=>'Guardar como'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125101662007026209)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'es'
,p_message_text=>unistr('Guardar Configuraci\00F3n de Informe')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125138410356026220)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'es'
,p_message_text=>unistr('Dispersi\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125065550033026198)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'es'
,p_message_text=>'Buscar'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125145624408026222)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Buscar: Todas las columnas de texto'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125065438494026198)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'es'
,p_message_text=>'Buscar: %0'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125144967407026222)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'es'
,p_message_text=>'Buscar: Texto completo'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125092694409026206)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'es'
,p_message_text=>'Buscar ''%0'''
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125135008624026219)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'es'
,p_message_text=>'- Seleccionar -'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125075102839026201)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'es'
,p_message_text=>unistr('Selecci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125128203703026217)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccione 1 fila en la regi\00F3n principal')
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125065396673026198)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Columnas a Buscar'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125157924907026226)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'es'
,p_message_text=>unistr('Acciones de selecci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125075324949026201)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'es'
,p_message_text=>unistr('Selecci\00F3n de celdas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125075213238026201)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'es'
,p_message_text=>unistr('Selecci\00F3n de Fila')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125146210868026222)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'es'
,p_message_text=>unistr('Enviar como Correo Electr\00F3nico')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125138852426026220)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Serie'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125063023003026197)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'es'
,p_message_text=>'Mostrar'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125118240963026214)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'es'
,p_message_text=>'Mostrar Valor General'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125103157608026209)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'es'
,p_message_text=>'Vista de Una Sola Fila'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125101484561026209)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'es'
,p_message_text=>'Ordenar'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125138929259026220)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'es'
,p_message_text=>'Ordenar por'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125158396460026226)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'es'
,p_message_text=>unistr('Solo se puede definir una ordenaci\00F3n por columna.')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125158155382026226)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'es'
,p_message_text=>'Cambiar'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125139918709026220)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'es'
,p_message_text=>'Pila'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125095447181026207)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'es'
,p_message_text=>'empieza por'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125138588102026220)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'es'
,p_message_text=>'Valores'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125057867364026195)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Expandir anchos de columna'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125101879712026209)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Suscripci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125119869305026214)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'es'
,p_message_text=>'Suma'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125159683053026226)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'es'
,p_message_text=>unistr('Cuadr\00EDcula interactiva. Informe: %0, vista: %1.')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125153766056026224)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'es'
,p_message_text=>'Suma general'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125136767090026219)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Destino'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125143169625026221)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'es'
,p_message_text=>'Color del texto'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125068106638026198)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'es'
,p_message_text=>'Conmutar'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124950210556026163)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'es'
,p_message_text=>unistr('Cuadr\00EDcula')
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125118166113026214)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'es'
,p_message_text=>'Pista'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125098681786026208)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'es'
,p_message_text=>'Tipo'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125103035332026209)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'es'
,p_message_text=>'Descongelar'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125100175982026208)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'es'
,p_message_text=>'Unidad'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125146007183026222)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'es'
,p_message_text=>unistr('Hay cambios sin guardar. \00BFDesea continuar?')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125100085301026208)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'es'
,p_message_text=>'Valor'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125135820055026219)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Valor'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125140745864026220)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Se necesita un valor.'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125125920867026216)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'es'
,p_message_text=>'Valor (no se puede cambiar la zona horaria)'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125144617872026222)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'es'
,p_message_text=>'Texto'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125137109432026219)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'es'
,p_message_text=>'Vertical'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125098132999026208)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'es'
,p_message_text=>'Ver'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125033284907026188)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Cuadr\00EDcula en modo de vista, pulse para editar')
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125135185114026219)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'es'
,p_message_text=>'Mostrado'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125136698984026219)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Volumen'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125096083021026207)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'es'
,p_message_text=>'semanas'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125135269797026219)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'es'
,p_message_text=>unistr('Ancho de Columna M\00EDnimo (P\00EDxel)')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125087246135026205)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'es'
,p_message_text=>'%0 entre %1 y %2'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125086994062026204)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'es'
,p_message_text=>'%0 contiene %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125087025536026204)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'es'
,p_message_text=>'%0 no contiene %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125062447454026197)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'es'
,p_message_text=>'%0 no empieza por %1'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125085725002026204)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'es'
,p_message_text=>'%0 igual que %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125085910205026204)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'es'
,p_message_text=>'%0 mayor que %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125086083607026204)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'es'
,p_message_text=>'%0 mayor o igual que %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125086747519026204)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'es'
,p_message_text=>'%0 en %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125087918319026205)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en los \00FAltimos %1 d\00EDas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125087743973026205)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en las \00FAltimas %1 horas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125087597027026205)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en los \00FAltimos %1 minutos')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125088305949026205)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en los \00FAltimos %1 meses')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125088114947026205)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en las \00FAltimas %1 semanas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125088518374026205)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en los \00FAltimos %1 a\00F1os')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125087823154026205)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en el \00FAltimo d\00EDa')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125087637609026205)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en la \00FAltima hora')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125087426759026205)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en el \00FAltimo minuto')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125088257080026205)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en el \00FAltimo mes')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125088087838026205)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en la \00FAltima semana')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125088496680026205)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en el \00FAltimo a\00F1o')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125090333121026205)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en los pr\00F3ximos %1 d\00EDas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125090174416026205)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en las pr\00F3ximas %1 horas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125089988019026205)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en los pr\00F3ximos %1 minutos')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125090737907026206)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en los pr\00F3ximos %1 meses')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125090580748026205)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en las pr\00F3ximas %1 semanas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125090957268026206)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en los pr\00F3ximos %1 a\00F1os')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125090238673026205)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en el pr\00F3ximo d\00EDa')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125090020417026205)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en la pr\00F3xima hora')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125089819092026205)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en el pr\00F3ximo minuto')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125090634995026205)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en el pr\00F3ximo mes')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125090424087026205)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en la pr\00F3xima semana')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125090818239026206)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 en el pr\00F3ximo a\00F1o')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125086461897026204)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no est\00E1 vac\00EDo')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125086340745026204)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'es'
,p_message_text=>unistr('%0 est\00E1 vac\00EDo')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125086198355026204)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'es'
,p_message_text=>'%0 menor que %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125086213955026204)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'es'
,p_message_text=>'%0 menor o igual que %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125086546791026204)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'es'
,p_message_text=>'%0 igual que %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125087194418026204)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'es'
,p_message_text=>unistr('%0 coincide con la expresi\00F3n regular %1')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125093071786026206)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'es'
,p_message_text=>'Hace %0 minutos'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125087347605026205)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'es'
,p_message_text=>'%0 no entre %1 y %2'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125085882345026204)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'es'
,p_message_text=>'%0 distinto de %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125086848909026204)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'es'
,p_message_text=>'%0 no en %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125089119286026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en los \00FAltimos %1 d\00EDas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125088991878026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en las \00FAltimas %1 horas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125088772985026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en los \00FAltimos %1 minutos')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125089506624026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en los \00FAltimos %1 meses')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125089393645026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en las \00FAltimas %1 semanas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125089742959026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en los \00FAltimos %1 a\00F1os')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125089098814026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en el \00FAltimo d\00EDa')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125088808754026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en la \00FAltima hora')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125088643345026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en el \00FAltimo minuto')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125089415769026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en el \00FAltimo mes')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125089221806026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en la \00FAltima semana')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125089676748026205)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en el \00FAltimo a\00F1o')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125091556265026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en los pr\00F3ximos %1 d\00EDas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125091388074026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en las pr\00F3ximas %1 horas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125091198025026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en los pr\00F3ximos %1 minutos')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125091982989026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en los pr\00F3ximos %1 meses ')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125091705815026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en las pr\00F3ximas %1 semanas')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125092120306026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en los pr\00F3ximos %1 a\00F1os')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125091422800026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en el pr\00F3ximo d\00EDa')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125091232230026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en la pr\00F3xima hora')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125091087289026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en el pr\00F3ximo minuto')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125091839422026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en el pr\00F3ximo mes')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125091687485026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en la pr\00F3xima semana')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125092044013026206)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no en el pr\00F3ximo a\00F1o')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125086623770026204)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'es'
,p_message_text=>'%0 no igual que %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125093501200026206)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'es'
,p_message_text=>'%0 empieza por %1'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125135970467026219)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'es'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125096263634026207)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('a\00F1os')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125136014470026219)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125136118272026219)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125145131300026222)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'es'
,p_message_text=>'Lunes, 12 de enero, 2016'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125145243629026222)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'es'
,p_message_text=>'Enero'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125145304017026222)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'es'
,p_message_text=>'Hace 16 horas'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125145445152026222)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'es'
,p_message_text=>'en 16 h'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124963494604026167)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'es'
,p_message_text=>'Aplicar'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124955465201026165)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Arrastre su imagen y utilice la gu\00EDa de desplazamiento de zoom para cambiar su posici\00F3n en el marco.</p>'),
'',
unistr('<p>Al utilizar la herramienta de recorte de im\00E1genes, dispondr\00E1 de los siguientes m\00E9todos abreviados de teclado:</p>'),
'<ul>',
'    <li>Flecha izquierda: para mover la imagen hacia la izquierda*</li>',
'    <li>Flecha arriba: para mover la imagen hacia arriba*</li>',
'    <li>Flecha derecha: para mover la imagen hacia la derecha*</li>',
'    <li>Flecha abajo: para mover la imagen hacia abajo*</li>',
'    <li>I: para acercar</li>',
'    <li>O: para alejar</li>',
'    <li>L: para rotar a la izquierda</li>',
'    <li>R: para rotar a la derecha</li>',
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Mantenga pulsado May\00FAs para mover m\00E1s r\00E1pido la imagen</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124955653081026165)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Ayuda de recorte de im\00E1genes')
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124963531044026167)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'es'
,p_message_text=>'Restablecer'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124955909366026165)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'es'
,p_message_text=>'Recortar imagen'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124963611802026167)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('Mueva la gu\00EDa de desplazamiento para ajustar el nivel de zoom')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124993230960026176)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'es'
,p_message_text=>unistr('Tipo de archivo no v\00E1lido. Los tipos de archivo soportados son %0.')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125127654593026216)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'es'
,p_message_text=>'Examinar'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125127383823026216)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Archivo'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125127496386026216)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Archivos'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124993031270026176)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'es'
,p_message_text=>'Arrastrar y Soltar'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124993497707026176)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'es'
,p_message_text=>'Arrastrar y soltar archivos'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124994897613026176)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccione un archivo o suelte uno aqu\00ED.')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124994900931026176)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccione o suelte archivos aqu\00ED.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124995083341026177)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccione un archivo o suelte uno aqu\00ED.')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124995185291026177)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccione o suelte archivos aqu\00ED.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124993373077026176)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'es'
,p_message_text=>'%0 archivos'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124993142078026176)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'es'
,p_message_text=>unistr('El archivo es demasiado grande. El tama\00F1o m\00E1ximo de archivo es %0.')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124973627561026170)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>unistr('Las cargas de varios archivos no est\00E1n soportadas.')
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124956516559026165)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'es'
,p_message_text=>'Eliminar'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124962090999026166)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'es'
,p_message_text=>unistr('La direcci\00F3n es obligatoria.')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124960922183026166)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'es'
,p_message_text=>'Ciudad'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124961343930026166)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'es'
,p_message_text=>unistr('C\00F3digo de Pa\00EDs')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124961060867026166)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'es'
,p_message_text=>unistr('N\00FAmero de Casa')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124961940776026166)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'es'
,p_message_text=>'Latitud'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124961895056026166)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'es'
,p_message_text=>'Longitud'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124961768610026166)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'es'
,p_message_text=>'Mostrar en Mapa'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124961488795026166)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'es'
,p_message_text=>unistr('Puntuaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124961164826026166)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'es'
,p_message_text=>unistr('C\00F3digo Postal')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124961277253026166)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'es'
,p_message_text=>'Estado'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124960854530026166)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'es'
,p_message_text=>'Calle'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124960728700026166)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Resultados de geocodificaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124992267319026176)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'es'
,p_message_text=>unistr('Con geocodificaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124992304022026176)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'es'
,p_message_text=>'Sin geocodificar'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124961697664026166)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'es'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124961514269026166)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado ninguna direcci\00F3n.')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124962109677026167)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'es'
,p_message_text=>'%0 es obligatorio.'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125068329284026199)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'es'
,p_message_text=>'Se requiere %0 o %1.'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125157844260026226)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'es'
,p_message_text=>'Ver texto de ayuda para %0.'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124963823001026167)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'es'
,p_message_text=>'Seleccionar imagen'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124963937904026167)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccionar im\00E1genes')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124963744725026167)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'es'
,p_message_text=>'Descargar'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124964046673026167)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'es'
,p_message_text=>'Arrastrar y Soltar'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124964147618026167)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'es'
,p_message_text=>unistr('Arrastrar y soltar im\00E1genes')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124964256074026167)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccione una imagen o suelte una aqu\00ED.')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124964356165026167)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccione o suelte im\00E1genes aqu\00ED.')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124964404927026167)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccione una imagen o suelte una aqu\00ED.')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124964519146026167)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccione o suelte im\00E1genes aqu\00ED.')
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125049256925026193)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'es'
,p_message_text=>'Activado'
,p_is_js_message=>true
,p_version_scn=>2692613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125049334616026193)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'es'
,p_message_text=>'Desactivado'
,p_is_js_message=>true
,p_version_scn=>2692613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125076897153026201)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'es'
,p_message_text=>unistr('Cuadro combinado de solo lectura vac\00EDo')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125074631339026201)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'es'
,p_message_text=>unistr('Recuadro de lista de solo lectura vac\00EDo')
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125074429864026200)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'es'
,p_message_text=>'Cuadro combinado de solo lectura'
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125074582985026200)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'es'
,p_message_text=>'Recuadro de lista de solo lectura'
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124990274475026175)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# no se encuentra en el rango v\00E1lido de %0 a %1.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124990374107026175)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# no es un m\00FAltiplo de %0.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125077620382026201)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'es'
,p_message_text=>'Conmutador de solo lectura'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125018279045026183)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'es'
,p_message_text=>unistr('Edici\00F3n de solo lectura con un enlace')
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124989892178026175)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'es'
,p_message_text=>'#LABEL# debe coincidir con los valores %0 y %1.'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124990030396026175)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'es'
,p_message_text=>'No'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125076391445026201)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'es'
,p_message_text=>'Desactivado'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125076409570026201)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'es'
,p_message_text=>'Activado'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124989932692026175)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('S\00ED')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124997832133026177)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'es'
,p_message_text=>'Selector de idioma'
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124934211028026158)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'es'
,p_message_text=>'Agregar Entrada'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125111081810026212)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'es'
,p_message_text=>'Agregar'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125111123639026212)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'es'
,p_message_text=>'Eliminar'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124934356742026158)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'es'
,p_message_text=>'Entradas seleccionadas'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125114832716026213)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'es'
,p_message_text=>'Avanzado'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125115181292026213)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'es'
,p_message_text=>'Cancelar'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125114937646026213)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'es'
,p_message_text=>unistr('Com\00FAn')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125115218735026213)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'es'
,p_message_text=>'Opciones de Plantilla Activas'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125115829380026213)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'es'
,p_message_text=>unistr('Las opciones de plantilla no est\00E1n disponibles porque este componente no est\00E1 representado en la p\00E1gina.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125114734278026213)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado ninguna opci\00F3n de plantilla.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125115078324026213)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'es'
,p_message_text=>'Guardar'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124968802040026168)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'es'
,p_message_text=>unistr('Borrar c\00EDrculo')
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124971233582026169)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'es'
,p_message_text=>unistr('Estilos personalizados no es un JSON v\00E1lido.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124969198458026169)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'es'
,p_message_text=>'Herramienta Distancia'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124968983888026169)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'es'
,p_message_text=>'Dibujar circulo'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124948770558026163)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'es'
,p_message_text=>unistr('Ubicaci\00F3n actual')
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124955128966026164)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'es'
,p_message_text=>unistr('Las coordenadas de la posici\00F3n inicial no son v\00E1lidas.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124944172889026161)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'es'
,p_message_text=>unistr('La posici\00F3n inicial debe ser una geometr\00EDa de puntos.')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124952761581026164)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'es'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124947939706026162)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'es'
,p_message_text=>'Capa'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125118363928026214)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'es'
,p_message_text=>'Capa: %0'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124967105912026168)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'es'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124936821918026159)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'es'
,p_message_text=>'Mensajes'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124952986035026164)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'es'
,p_message_text=>'millas'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125117362843026213)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('Los datos contienen m\00E1s de %0 filas que superan el m\00E1ximo permitido.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124947232837026162)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'es'
,p_message_text=>'&copy; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Condiciones</a> de Oracle Corporation 2022 &nbsp;&nbsp; Datos de mapas &copy; 2021 HERE'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124943881052026161)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'es'
,p_message_text=>unistr('El tipo de dato SDO_GEOMETRY no est\00E1 disponible en esta base de datos.')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124947393873026162)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'es'
,p_message_text=>'<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; Contribuyentes de OpenStreetMap</a>'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124971943327026169)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'es'
,p_message_text=>'<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; Contribuyentes de OpenStreetMap</a>'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124948118483026162)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'es'
,p_message_text=>'Puntos'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125118428508026214)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'es'
,p_message_text=>'%0 puntos'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124969049587026169)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'es'
,p_message_text=>unistr('Zoom con rect\00E1ngulo')
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124968718799026168)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Eliminar'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124948528434026163)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'es'
,p_message_text=>'Restablecer rumbo a norte'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125063360974026197)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'es'
,p_message_text=>'Conmutar a modo 2D'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125063461374026197)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'es'
,p_message_text=>'Conmutar a modo 3D'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124968615082026168)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'es'
,p_message_text=>'Conmutar aviso de copyright'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124969211721026169)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'es'
,p_message_text=>'Distancia Total'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124948273882026163)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'es'
,p_message_text=>'Acercar'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124948475475026163)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'es'
,p_message_text=>'Alejar'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125112913593026212)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'es'
,p_message_text=>'Negrita'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125113859436026212)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'es'
,p_message_text=>'Imagen'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125113460530026212)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'es'
,p_message_text=>unistr('C\00F3digo en l\00EDnea')
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125126160327026216)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'es'
,p_message_text=>'Insertar imagen'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125126224736026216)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'es'
,p_message_text=>'Insertar Enlace'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125113033319026212)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'es'
,p_message_text=>'Cursiva'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125126883727026216)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'es'
,p_message_text=>'Enlace'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125113793927026212)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'es'
,p_message_text=>'Lista'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125113675961026212)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'es'
,p_message_text=>'Lista Ordenada'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125113188837026212)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'es'
,p_message_text=>'Vista previa'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125113259025026212)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'es'
,p_message_text=>'Nada que mostrar en la vista previa'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125113347583026212)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'es'
,p_message_text=>'Tachado'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125113524497026212)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'es'
,p_message_text=>'Lista Desordenada'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125092472137026206)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'es'
,p_message_text=>'actual'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125148646861026223)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('M\00E1s...')
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125092309353026206)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'es'
,p_message_text=>'Cargando'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125006565544026180)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'es'
,p_message_text=>unistr('Dividir bot\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125006448466026180)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'es'
,p_message_text=>unistr('Dividir men\00FA')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125123478774026215)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'es'
,p_message_text=>unistr('Mensaje de Notificaci\00F3n')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124947535140026162)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado %0'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125097402973026207)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# debe ser un n\00FAmero menor o igual que %0.')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125097563254026207)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# debe ser un n\00FAmero v\00E1lido.')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125097689179026208)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# no coincide con el formato num\00E9rico %0 (Ejemplo: %1).')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125097389702026207)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# debe ser un n\00FAmero mayor o igual que %0.')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125097225570026207)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# debe ser un n\00FAmero entre %0 y %1.')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125092566302026206)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'es'
,p_message_text=>'se abre en una nueva ventana'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125042372811026191)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'es'
,p_message_text=>unistr('Esta p\00E1gina ya se ha ejecutado y no se puede volver a ejecutar.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125023782226026185)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado la aplicaci\00F3n "%0" p\00E1gina "%1".')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125059276649026196)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'es'
,p_message_text=>unistr('#LABEL# debe tener alg\00FAn valor.')
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124949969204026163)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'es'
,p_message_text=>unistr('Ocultar contrase\00F1a')
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124949829308026163)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'es'
,p_message_text=>unistr('Mostrar Contrase\00F1a')
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124997432403026177)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'es'
,p_message_text=>'Buscar'
,p_is_js_message=>true
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125111496223026212)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'es'
,p_message_text=>'Cerrar'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125111345565026212)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'es'
,p_message_text=>'Buscar %0'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125111695558026212)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'es'
,p_message_text=>'Siguiente'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125111568381026212)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'es'
,p_message_text=>'Anterior'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124988215469026174)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'es'
,p_message_text=>unistr('Introduzca un t\00E9rmino de b\00FAsqueda con al menos %0 caracteres.')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125064543955026197)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'es'
,p_message_text=>'Lista de Valores Emergente: %0'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124988322513026175)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'es'
,p_message_text=>unistr('Introduzca un t\00E9rmino de b\00FAsqueda.')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124935380496026159)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'es'
,p_message_text=>'Lista de valores'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124988148544026174)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado ning\00FAn resultado.')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124988053022026174)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'es'
,p_message_text=>'Eliminar %0'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125085297960026204)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'es'
,p_message_text=>unistr('T\00E9rmino de B\00FAsqueda')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125111236505026212)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'es'
,p_message_text=>'Buscar'
,p_is_js_message=>true
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124937423084026159)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Necesita %0.'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124949787507026163)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error durante la impresi\00F3n del informe.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124960541784026166)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido imprimir el documento utilizando el servidor de impresi\00F3n configurado.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124983204175026173)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al evaluar el par\00E1metro %0 al llamar a %1. Consulte el log de errores para m\00E1s informaci\00F3n.')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125121983219026215)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'es'
,p_message_text=>'Procesamiento'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124981036396026172)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'es'
,p_message_text=>unistr('Atr\00E1s')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124982116945026173)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'es'
,p_message_text=>unistr('Este sitio web tiene funcionalidad de aplicaci\00F3n. Inst\00E1lela en su dispositivo para disfrutar de la mejor experiencia.')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124983410180026173)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'es'
,p_message_text=>'Siguiente'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124985085361026173)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Instalar esta aplicaci\00F3n')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124969894791026169)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'es'
,p_message_text=>unistr('Parece que su dispositivo o navegador no soporta la instalaci\00F3n de aplicaciones web progresivas ahora mismo.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124964984057026167)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'es'
,p_message_text=>'1. Toque el icono <strong>Compartir</strong>'
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124965088632026167)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'es'
,p_message_text=>unistr('2. Despl\00E1cese hacia abajo y toque <strong>Agregar a pantalla inicial</strong>')
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124981417625026172)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'es'
,p_message_text=>'3. Toque <strong style="color:#007AE1;">Agregar</strong> para confirmar'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124980559983026172)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'es'
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
'    <h1>No se puede conectar</h1>',
unistr('    <p>Parece que hay un problema en la red. Compruebe la conexi\00F3n y vuelva a intentarlo.</p>'),
'    <button type="button">Reintentar</button>',
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124980493171026172)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'es'
,p_message_text=>'No se puede conectar'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125027015377026186)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'es'
,p_message_text=>'Este dispositivo no ha podido activar las notificaciones push.'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125032532050026188)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'es'
,p_message_text=>'Listas de valores para %0'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125032420815026188)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'es'
,p_message_text=>'Enlace de Lista de Valores'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125006238413026180)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'es'
,p_message_text=>unistr('Bot\00F3n de radio visualmente oculto')
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124950382541026163)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'es'
,p_message_text=>'Vista de Una Sola Fila'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125133064576026218)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'es'
,p_message_text=>'Agregar'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125078397916026202)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'es'
,p_message_text=>unistr('Todo el D\00EDa')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125155958114026225)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'es'
,p_message_text=>unistr('Enviar Invitaci\00F3n')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125155773934026225)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'es'
,p_message_text=>'Opciones'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125080140536026202)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'es'
,p_message_text=>unistr('Vista diaria de todos los d\00EDas ')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125079961345026202)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'es'
,p_message_text=>'Vista diaria de los datos con hora '
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125124127534026215)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'es'
,p_message_text=>unistr('D\00EDa')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125119116603026214)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Descripci\00F3n')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125002658861026179)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'es'
,p_message_text=>'CSV'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125002485333026179)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'es'
,p_message_text=>'iCal'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125002348542026179)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'es'
,p_message_text=>'PDF'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125002547075026179)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'es'
,p_message_text=>'XML'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125002003294026179)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'es'
,p_message_text=>unistr('Fecha de finalizaci\00F3n')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125002203118026179)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'es'
,p_message_text=>'Nombre de evento'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125155845162026225)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'es'
,p_message_text=>unistr('Invitaci\00F3n')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125124271777026215)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'es'
,p_message_text=>'Lista'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125123952312026215)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'es'
,p_message_text=>'Mes'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125126539648026216)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'es'
,p_message_text=>'Siguiente'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125140551858026220)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'es'
,p_message_text=>'Sin Eventos'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125156136631026225)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'es'
,p_message_text=>'Editar Evento Existente.'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125156082491026225)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'es'
,p_message_text=>unistr('Enviando invitaci\00F3n a trav\00E9s de correo electr\00F3nico.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125126690265026216)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'es'
,p_message_text=>'Anterior'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125134399307026218)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'es'
,p_message_text=>unistr('Enviar correo electr\00F3nico')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125134131084026218)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'es'
,p_message_text=>unistr('Enviar correo electr\00F3nico')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125156748690026225)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Todos los campos son necesarios.'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125156677337026225)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Enviar Invitaci\00F3n')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125155638629026225)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'es'
,p_message_text=>'Asunto'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125134208416026218)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'es'
,p_message_text=>'Para'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125002104130026179)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'es'
,p_message_text=>'Fecha de inicio'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125132386066026218)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'es'
,p_message_text=>'Pantalla Basada en %0'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125079765627026202)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'es'
,p_message_text=>unistr('Per\00EDodo')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125126797403026216)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'es'
,p_message_text=>'Hoy'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125124755321026216)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'es'
,p_message_text=>'Ver'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125124070356026215)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'es'
,p_message_text=>'Semana'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125080015197026202)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'es'
,p_message_text=>unistr('Vista semanal de todos los d\00EDas')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125079833641026202)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'es'
,p_message_text=>'Vista semanal de los datos con hora'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125124673158026216)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('A\00F1o')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125124377381026215)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Columnas...'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125124488465026216)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'es'
,p_message_text=>unistr('Cargar M\00E1s...')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125053828079026194)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'es'
,p_message_text=>unistr('Atr\00E1s')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124995332203026177)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'es'
,p_message_text=>unistr('Cargar M\00E1s...')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124997660639026177)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'es'
,p_message_text=>'Buscar...'
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125124555391026216)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'es'
,p_message_text=>unistr('Cargar M\00E1s...')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125126429332026216)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado el ID de regi\00F3n %0.')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124997554374026177)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado ning\00FAn dato')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125025073273026185)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido restablecer la paginaci\00F3n de regi\00F3n.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124988719166026175)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al definir la paginaci\00F3n de la regi\00F3n.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125118540073026214)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Columnas...'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124973013950026170)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'es'
,p_message_text=>unistr('La carga lenta no es compatible con los espacios en %0, que es una regi\00F3n \00FAnica (parcial). Debe desactivar la carga lenta para esta regi\00F3n, o bien mover los componentes de espacio a una regi\00F3n diferente.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124968375103026168)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'es'
,p_message_text=>'Falta la plantilla de grupo en el componente de plantilla para %0.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124963375295026167)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 es una regi\00F3n \00FAnica (parcial) y ha devuelto varias filas.')
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125126313101026216)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>unistr('El tipo de regi\00F3n %0 no est\00E1 soportado.')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124988610989026175)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error en la presentaci\00F3n de la regi\00F3n "#COMPONENT_NAME#".')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125059370704026196)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'es'
,p_message_text=>unistr('#COLUMN_HEADER# debe tener alg\00FAn valor.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124940906901026160)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'es'
,p_message_text=>unistr('Debe especificar un dise\00F1o de informe.')
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125155240345026225)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'es'
,p_message_text=>'%0, editor de texto enriquecido'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125061423582026196)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'es'
,p_message_text=>unistr('El marcador HTML de texto enriquecido supera la longitud m\00E1xima del elemento (real: %0, permitida: %1 caracteres)')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124970874583026169)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'es'
,p_message_text=>'Editor de texto enriquecido de solo lectura'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124970742462026169)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'es'
,p_message_text=>'Editor de Texto Enriquecido'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124970549847026169)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'es'
,p_message_text=>unistr('Alineaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124970657680026169)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'es'
,p_message_text=>'Extras'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124970338866026169)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'es'
,p_message_text=>'Fuente'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124970244175026169)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'es'
,p_message_text=>'Formato'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124970424669026169)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'es'
,p_message_text=>'Listas'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125123569862026215)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'es'
,p_message_text=>'Suprimir'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125116068215026213)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'es'
,p_message_text=>'Duplicar'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125114333239026213)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'es'
,p_message_text=>'Columnas Mostradas'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125114267571026212)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'es'
,p_message_text=>'Excluir Valores Nulos'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125123658139026215)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'es'
,p_message_text=>'Agregar'
,p_is_js_message=>true
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125077978484026202)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'es'
,p_message_text=>'Mover abajo'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125078072384026202)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'es'
,p_message_text=>'Mover arriba'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125114097738026212)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'es'
,p_message_text=>'Siguiente'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125114689853026213)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'es'
,p_message_text=>'Otras Columnas'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125114134737026212)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'es'
,p_message_text=>'Anterior'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125114406457026213)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'es'
,p_message_text=>'Fila %0'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125114570555026213)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'es'
,p_message_text=>'Fila %0 de %1'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125116181870026213)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'es'
,p_message_text=>'Refrescar'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125116286767026213)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'es'
,p_message_text=>'Revertir Cambios'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125113925968026212)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'es'
,p_message_text=>unistr('Configuraci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125073192338026200)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'es'
,p_message_text=>'Por ejemplo, %0'
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125077442315026201)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'es'
,p_message_text=>'Ejemplo: %0'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124990184578026175)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'es'
,p_message_text=>'1 resultado'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124987220554026174)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'es'
,p_message_text=>'%0 resultados'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125039034236026190)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'es'
,p_message_text=>unistr('Paginaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125039160904026190)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'es'
,p_message_text=>'Resultados, %0 a %1'
,p_is_js_message=>true
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124934813686026159)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'es'
,p_message_text=>'Volver a conectarse'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124934798230026159)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'es'
,p_message_text=>unistr('La sesi\00F3n ha finalizado')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124934963013026159)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'es'
,p_message_text=>'Ampliar'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124934537010026158)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'es'
,p_message_text=>unistr('La sesi\00F3n finalizar\00E1 a las %0. \00BFDesea ampliarla?')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124934625508026159)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'es'
,p_message_text=>unistr('La sesi\00F3n finalizar\00E1 a las %0 y no se puede ampliar. Guarde los trabajos ahora para evitar que se pierdan los datos')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125133962283026218)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar el c\00F3digo de limpieza de la sesi\00F3n de base de datos.')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125023632525026185)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al procesar el c\00F3digo de configuraci\00F3n de la sesi\00F3n de base de datos.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124994067589026176)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'es'
,p_message_text=>unistr('La sesi\00F3n ha finalizado.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125133171869026218)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'es'
,p_message_text=>unistr('Cierre este cuadro de di\00E1logo y pulse el bot\00F3n de recarga del explorador para obtener una nueva sesi\00F3n.')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125152068247026224)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'es'
,p_message_text=>unistr('Vuelva a <a href="%0">conectarse</a> para crear una nueva sesi\00F3n.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125036354893026189)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'es'
,p_message_text=>unistr('Sesi\00F3n no V\00E1lida')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125079480835026202)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido activar ning\00FAn rol din\00E1mico en la sesi\00F3n de Real Application Security para el usuario "%0".')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125021537344026184)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-99900: No se ha podido crear un identificador de sesi\00F3n \00FAnico: %0')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124950699622026163)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>unistr('El tipo de datos CLOB de estado de sesi\00F3n no est\00E1 permitido para el elemento %0.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124970013695026169)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>unistr('La sustituci\00F3n de elementos con el tipo de datos CLOB de estado de sesi\00F3n no est\00E1 soportada.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125038803556026190)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'es'
,p_message_text=>unistr('Violaci\00F3n de la protecci\00F3n del estado de la sesi\00F3n: puede ser debida a una modificaci\00F3n manual del elemento de p\00E1gina protegido %0. En caso de duda sobre el motivo de este error, p\00F3ngase en contacto con el administrador de la aplicaci\00F3n para recibir ')
||'ayuda.'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125160076862026226)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'es'
,p_message_text=>unistr('Violaci\00F3n de la protecci\00F3n de la p\00E1gina: puede ser debida al env\00EDo de una p\00E1gina que a\00FAn no se hab\00EDa terminado de cargar o a una modificaci\00F3n manual de los elementos de p\00E1gina protegidos. Para obtener ayuda, p\00F3ngase en contacto con el administrador d')
||unistr('e la aplicaci\00F3n.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125159116379026226)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 contiene uno de los siguientes caracteres no v\00E1lidos &<>"/;,*|=% o --')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125159255925026226)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'es'
,p_message_text=>unistr('%0 contiene uno de los siguientes caracteres no v\00E1lidos &<>"/;,*|=% o -- o una nueva l\00EDnea.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125158904476026226)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'es'
,p_message_text=>unistr('%0 contiene caracteres especiales. S\00F3lo est\00E1n permitidos los caracteres a-Z, 0-9 y espacios.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125159098639026226)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'es'
,p_message_text=>unistr('%0 contiene <, > o " que son caracteres no v\00E1lidos.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124996416866026177)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha proporcionado ning\00FAn total de control para el procesamiento de presentaci\00F3n de una p\00E1gina que requiere un total de control cuando se transfieren como par\00E1metros uno o m\00E1s valores de argumento, limpieza de cach\00E9 o solicitud.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125033714891026188)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'es'
,p_message_text=>unistr('Violaci\00F3n de la protecci\00F3n del estado de la sesi\00F3n: Puede ser debida a una modificaci\00F3n manual de una direcci\00F3n URL que contenga un total de control, que se haya utilizado un enlace con un total de control incorrecto o que no tenga ning\00FAn total de co')
||unistr('ntrol. En caso de duda sobre el motivo de este error, p\00F3ngase en contacto con el administrador de la aplicaci\00F3n para recibir ayuda.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125115390261026213)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'es'
,p_message_text=>'Desactivar Modo de Alto Contraste'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125115433537026213)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'es'
,p_message_text=>'Activar Modo de Alto Contraste'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124979872675026172)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('El valor de aplicaci\00F3n %0 no se puede actualizar porque est\00E1 suscrito a otra aplicaci\00F3n.')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125030186165026187)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'es'
,p_message_text=>'Inferior'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125030367884026187)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'es'
,p_message_text=>'Abajo'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125030491827026187)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'es'
,p_message_text=>'Mover'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125030513551026187)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'es'
,p_message_text=>'Mover Todo'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125030600046026187)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'es'
,p_message_text=>'Eliminar'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125030723249026187)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'es'
,p_message_text=>'Eliminar todo'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125030859157026187)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'es'
,p_message_text=>'Restablecer'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125030000857026187)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'es'
,p_message_text=>'Superior'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125030242348026187)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'es'
,p_message_text=>'Arriba'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125141827919026221)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'es'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125142526231026221)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'en %0d'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125141761414026221)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'es'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125142688556026221)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'en %0h'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125141541656026221)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'es'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125142751093026221)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'en %0m'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125142120852026221)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'es'
,p_message_text=>'%0mo'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125142373210026221)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'en %0mo'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125141620993026221)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'es'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125142441351026221)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'en %0s'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125141996591026221)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'es'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125142803286026221)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'en %0w'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125142032541026221)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'es'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125142299963026221)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'en %0y'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124943116581026161)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'es'
,p_message_text=>unistr('[L\00EDnea]')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124943763187026161)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'es'
,p_message_text=>unistr('[Varias l\00EDneas]')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124943404218026161)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'es'
,p_message_text=>'[Varios puntos]'
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124943934823026161)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'es'
,p_message_text=>unistr('[Varios pol\00EDgonos]')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124944064751026161)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'es'
,p_message_text=>unistr('[Objeto de geometr\00EDa]')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124943092315026161)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'es'
,p_message_text=>'[Punto (%0,%1)]'
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124943371431026161)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'es'
,p_message_text=>unistr('[Pol\00EDgono]')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124942552020026161)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'es'
,p_message_text=>unistr('Regi\00F3n reducida: %0')
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125057605220026195)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'es'
,p_message_text=>'Reducir'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124941588966026161)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'es'
,p_message_text=>unistr('El divisor con orientaci\00F3n horizontal no se puede mover a la izquierda ni a la derecha')
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124941706837026161)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha alcanzado el tama\00F1o m\00E1ximo de %0\00A0px')
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124942760027026161)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha alcanzado el tama\00F1o m\00EDnimo de %0\00A0px')
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124942688203026161)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'es'
,p_message_text=>unistr('La regi\00F3n se ha reducido')
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124942402160026161)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'es'
,p_message_text=>unistr('La regi\00F3n se ha restaurado')
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124942129780026161)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'es'
,p_message_text=>unistr('Tama\00F1o cambiado a %0\00A0px')
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124942339287026161)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'es'
,p_message_text=>unistr('Regi\00F3n restaurada: %0')
,p_is_js_message=>true
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125057593081026195)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'es'
,p_message_text=>'Restaurar'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124941677055026161)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'es'
,p_message_text=>unistr('El divisor con orientaci\00F3n vertical no se puede mover hacia arriba ni hacia abajo')
,p_is_js_message=>true
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125107027092026210)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'es'
,p_message_text=>unistr('Borrar calificaci\00F3n')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125096968066026207)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no est\00E1 en el rango v\00E1lido de de calificaci\00F3n de 1 - %1')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125097015280026207)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no es num\00E9rico')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125093167972026206)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'es'
,p_message_text=>'Mensaje Correcto'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125154911413026225)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'es'
,p_message_text=>'Siguiente'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125154848227026225)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'es'
,p_message_text=>'Anterior'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125065086116026198)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado el sistema de registros asociados a esta instancia de tarea'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125073373068026200)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Fallo en la ejecuci\00F3n de la acci\00F3n de tarea %0. La tarea se ha definido en un estado con errores. Compruebe el c\00F3digo de acci\00F3n de la tarea')
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124953524280026164)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'es'
,p_message_text=>unistr('Adici\00F3n de comentario: no autorizada')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124952851596026164)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'es'
,p_message_text=>unistr('La tarea ya est\00E1 asignada')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124946255785026162)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'es'
,p_message_text=>'Asignada a %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124952536968026164)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'es'
,p_message_text=>unistr('Cancelaci\00F3n de tarea: no autorizada')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124968106380026168)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'es'
,p_message_text=>unistr('No se puede eliminar al propietario actual de esta tarea. Delegue la tarea a otro participante antes de reintentar esta operaci\00F3n.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124952130281026164)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'es'
,p_message_text=>unistr('Reclamaci\00F3n de tarea: no autorizada')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124952248400026164)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'es'
,p_message_text=>unistr('Finalizaci\00F3n de tarea: no autorizada')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124952343988026164)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'es'
,p_message_text=>unistr('Delegaci\00F3n de tarea: no autorizada')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124950778851026163)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'es'
,p_message_text=>'La fecha de vencimiento de la tarea no puede estar en el pasado.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124946092188026162)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'es'
,p_message_text=>'Vencimiento: %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124946404217026162)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Fallo en la acci\00F3n de tarea %1. Mensaje de error - %0')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124946186875026162)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'es'
,p_message_text=>'Con fallos'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124945728716026162)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'es'
,p_message_text=>'Correcto'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124945936786026162)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Acci\00F3n %1 correcta con el mensaje %0')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124949285918026163)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'es'
,p_message_text=>'Antes de la caducidad'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124974836357026170)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'es'
,p_message_text=>'Cancelar'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124974323016026170)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Tarea cancelada'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124974923408026170)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>'El participante no tiene permiso para cancelar la tarea'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124974210311026170)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'es'
,p_message_text=>'Reclamar'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124974610711026170)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'es'
,p_message_text=>unistr('La tarea ya ha sido reclamada por otro usuario o el participante no est\00E1 autorizado para reclamarla')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124974407232026170)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Tarea reclamada por %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125075568088026201)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'es'
,p_message_text=>'Completar'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124974004957026170)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Tarea completada con resultado %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124975335124026171)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>unistr('La tarea no est\00E1 asignada o el participante no tiene permiso para completarla')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124935724398026159)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'es'
,p_message_text=>'Tarea completada sin resultado'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125075641813026201)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'es'
,p_message_text=>'Crear'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124968590302026168)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Tarea creada con ID %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125075735880026201)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'es'
,p_message_text=>'Delegar'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124974151845026170)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Tarea delegada al responsable potencial %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124974761254026170)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>'El participante no tiene derecho o el nuevo participante no es un responsable potencial de esta tarea'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124947843283026162)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'es'
,p_message_text=>'Caducar'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124948974616026163)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'La tarea ha caducado.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125075889794026201)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'es'
,p_message_text=>'Error'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124944551588026161)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>unistr('La tarea no est\00E1 asignada o el participante no tiene permiso para solicitar informaci\00F3n')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124944753686026162)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha solicitado informaci\00F3n para la tarea o el participante no tiene permiso para enviar la informaci\00F3n.')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124948389228026163)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Caducar tarea porque se ha alcanzado el recuento m\00E1ximo de renovaciones %0.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124975647779026171)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'es'
,p_message_text=>'La tarea no tiene el estado correcto o el participante no es un administrador de negocio de esta tarea'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124975789766026171)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'es'
,p_message_text=>unistr('La operaci\00F3n %0 es desconocida o no aplicable para esta tarea')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125075907535026201)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'es'
,p_message_text=>'Liberar'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125061695775026197)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Tarea liberada; ahora pueden reclamarla otras personas'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124954569571026164)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>unistr('No se permite la liberaci\00F3n de tarea: el usuario no es el responsable de la tarea')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124971557489026169)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'es'
,p_message_text=>'Eliminar Propietario'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124971795149026169)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Participante %0 eliminado de la tarea'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124949116995026163)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'es'
,p_message_text=>'Renovar'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124948077577026162)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha renovado la tarea con el ID %0, el n\00FAmero m\00E1ximo de renovaciones restantes antes de que caduque es %1.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124949052083026163)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'El ID de tarea %0 se ha renovado con el ID de tarea %1'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124945002106026162)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'es'
,p_message_text=>unistr('Solicitar informaci\00F3n')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124944966023026162)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha solicitado m\00E1s informaci\00F3n a %0: %1')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124942813293026161)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Definir El iniciador puede completar en %0'
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124945198583026162)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'es'
,p_message_text=>unistr('Enviar informaci\00F3n')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124944854558026162)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha enviado la informaci\00F3n solicitada a %0: %1')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125076086746026201)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'es'
,p_message_text=>'Actualizar comentario'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124972556835026170)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Agregar comentario: %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124975435348026171)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>'El estado de la tarea no permite comentarios'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124982794969026173)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Establecer fecha de vencimiento de tarea como %0'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124940828704026160)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'es'
,p_message_text=>'Actualizar vencimiento'
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125076163611026201)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'es'
,p_message_text=>'Actualizar responsable'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124973854457026170)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Agregar responsable potencial %0 a los participantes de la tarea'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124972961914026170)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'es'
,p_message_text=>unistr('Actualizar par\00E1metros')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125076219472026201)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'es'
,p_message_text=>'Actualizar Prioridad'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124974502202026170)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Definir prioridad de tarea en %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124971855256026169)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha actualizado el par\00E1metro "%0" de "%1" a "%2".')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124955308731026165)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'La tarea se ha cancelado porque la instancia de flujo de trabajo correspondiente se ha terminado.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124952458691026164)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'es'
,p_message_text=>unistr('Reenv\00EDo de tarea: no autorizado')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124945893982026162)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'es'
,p_message_text=>'Iniciada por %0 %1'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124954754833026164)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'es'
,p_message_text=>'Se ha producido un error interno inesperado'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124953056003026164)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'es'
,p_message_text=>unistr('Operaci\00F3n de tarea no aplicable')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124978600486026172)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'es'
,p_message_text=>'Esta persona responsable potencial no existe.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124954364972026164)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'es'
,p_message_text=>'Aprobada'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124954496524026164)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'es'
,p_message_text=>'Rechazada'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124935860682026159)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'es'
,p_message_text=>unistr('La finalizaci\00F3n de la tarea necesita un resultado')
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124936035795026159)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>'La tarea no tiene permiso para tener un resultado'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124971647887026169)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'es'
,p_message_text=>unistr('No se puede actualizar el par\00E1metro %0.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124967929847026168)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'es'
,p_message_text=>'El participante ya existe para esta instancia de tarea.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125069430568026199)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'es'
,p_message_text=>'Urgente'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124946558641026162)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>'Urgente'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125069369760026199)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'es'
,p_message_text=>'Alto'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124946624871026162)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>'Prioridad alta'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125069288070026199)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'es'
,p_message_text=>'Medio'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124946761218026162)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>'Prioridad Media'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125069116753026199)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'es'
,p_message_text=>'Bajo'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124946845696026162)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>'Prioridad baja'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125069001794026199)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'es'
,p_message_text=>'Muy baja'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124946972517026162)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Prioridad m\00E1s baja')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124952651562026164)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'es'
,p_message_text=>unistr('Definici\00F3n de prioridad de tarea: no autorizada')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124953898462026164)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'es'
,p_message_text=>'Asignada'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124954202686026164)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'es'
,p_message_text=>'Cancelada'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124953980071026164)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'es'
,p_message_text=>'Completada'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124954139611026164)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'es'
,p_message_text=>'Con errores'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124947693947026162)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'es'
,p_message_text=>'Ha caducado'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124954041162026164)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'es'
,p_message_text=>'Con fallos'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124944305556026161)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'es'
,p_message_text=>unistr('Informaci\00F3n solicitada')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124953702815026164)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'es'
,p_message_text=>'Sin asignar'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124976190693026171)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Fallo al crear una nueva tarea para la definici\00F3n de tarea %0 en la aplicaci\00F3n %1.'),
'SQLCODE: %2'))
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124976052808026171)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha producido un error al intentar crear una tarea para la definici\00F3n de tarea %0 en la aplicaci\00F3n %1 porque la definici\00F3n de tarea no contiene ning\00FAn responsable potencial. Edite la definici\00F3n de tarea y agregue al menos un participante de tipo re')
||'sponsable potencial'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124953317662026164)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado la definici\00F3n de tarea')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124953243736026164)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se han encontrado los participantes para la tarea'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124954616160026164)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'es'
,p_message_text=>unistr('Hay m\00E1s de una tarea para el id de tarea proporcionado: compru\00E9belo con el administrador de base de datos')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124953426425026164)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado la tarea'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124953154559026164)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado el par\00E1metro de tarea')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124989439582026175)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'es'
,p_message_text=>unistr('Acci\00F3n')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124989307765026175)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'es'
,p_message_text=>unistr('Aprobaci\00F3n')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124936703845026159)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('El procedimiento de regla de vacaciones %2 no ha ejecutado la definici\00F3n de tarea %0 en la aplicaci\00F3n %1.')
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124936990359026159)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'El participante %1 se ha agregado como sustituto para el participante %0 . Motivo: %2 .'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125140620462026220)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'es'
,p_message_text=>'Barra de herramientas'
,p_is_js_message=>true
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124994175608026176)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'es'
,p_message_text=>unistr('Aplicaci\00F3n')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125155377396026225)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('Ampliar / contraer navegaci\00F3n')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125155423078026225)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'es'
,p_message_text=>'Ampliar / contraer columna lateral'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125063834622026197)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('Navegaci\00F3n principal')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124964674399026167)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'es'
,p_message_text=>unistr('"%0" es un nombre de marcador de posici\00F3n no v\00E1lido.')
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125071520206026200)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'es'
,p_message_text=>unistr('1 d\00EDa')
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125071334379026199)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'es'
,p_message_text=>'1 hora'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125071639934026200)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 d\00EDas')
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125071431921026199)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'es'
,p_message_text=>'%0 horas'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125071251117026199)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'es'
,p_message_text=>'%0 minutos'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125071895516026200)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'es'
,p_message_text=>'%0 semanas'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125071744240026200)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'es'
,p_message_text=>'1 semana'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124969526308026169)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'es'
,p_message_text=>'%0 elementos seleccionados'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124969729122026169)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Elemento'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124969645165026169)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'es'
,p_message_text=>'Seleccionar %0'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125158469366026226)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'es'
,p_message_text=>unistr('Inicio de la p\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125016088851026183)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'es'
,p_message_text=>'Activado'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124984552990026173)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>'Error al procesar la solicitud.'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124970103474026169)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('El mensaje de texto %0 no se puede actualizar porque est\00E1 suscrito a otra aplicaci\00F3n.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125073217011026200)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Valor Necesario'
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124989622803026175)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'es'
,p_message_text=>'Nivel de cabecera %0, oculto'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125118056762026214)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'es'
,p_message_text=>unistr('Esta p\00E1gina tiene cambios no guardados.')
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124979619161026172)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'es'
,p_message_text=>'Navegador'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124979328511026172)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'es'
,p_message_text=>'Acercar'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124980391420026172)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'es'
,p_message_text=>unistr('Nivel de zoom {0}\00A0%')
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124979413954026172)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'es'
,p_message_text=>'Alejar'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124979596912026172)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'es'
,p_message_text=>'Restablecer Zoom'
,p_is_js_message=>true
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124955058259026164)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'es'
,p_message_text=>'No se puede acceder al diagrama de flujo de trabajo en este momento.'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124954961225026164)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'es'
,p_message_text=>'Diagrama de flujo de trabajo'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124956824178026165)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>unistr('La instancia de flujo de trabajo %0 se encuentra actualmente en estado %1. Por tanto, la operaci\00F3n no est\00E1 permitida')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124959421978026166)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'es'
,p_message_text=>'Se ha completado la instancia %1 de la actividad %2 en el flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124959225641026166)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'es'
,p_message_text=>'Se ha creado la nueva instancia %1 de la actividad %2 en el flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124951097981026163)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado la fila de datos adicional asociada a esta instancia de actividad de flujo de trabajo'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124959351994026166)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'es'
,p_message_text=>'Se ha reintentado la instancia con fallos %1 de la actividad %2 en el flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124941304402026161)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'es'
,p_message_text=>'Se ha terminado la instancia de actividad %1 en el flujo de trabajo %0'
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124975139566026170)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'es'
,p_message_text=>'Se ha producido un timeout de la instancia de actividad %1 en el flujo de trabajo %0 y se ha terminado.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124959514706026166)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'es'
,p_message_text=>unistr('La instancia %1 de la actividad %2 en el flujo de trabajo %0 est\00E1 en estado En espera')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124941170658026160)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'es'
,p_message_text=>'Se ha alterado y reanudado la instancia de flujo de trabajo %0 en la actividad %1'
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124958583353026165)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'es'
,p_message_text=>'La instancia en espera %1 de la actividad %2 en el flujo de trabajo %0 se ha completado correctamente'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124958373346026165)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'es'
,p_message_text=>unistr('La actividad en espera %1 ten\00EDa el estado Con fallos porque el flujo de trabajo %0 ya estaba en estado Con fallos antes de que se completara la actividad')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124958428332026165)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'es'
,p_message_text=>'Se ha terminado la actividad en espera %1 porque el flujo de trabajo %0 ya estaba en estado Terminado antes de que se completara la actividad'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124941485280026161)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha producido un fallo en la terminaci\00F3n de la actividad %1 en el flujo de trabajo %0 debido a la excepci\00F3n %2')
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124957045495026165)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'es'
,p_message_text=>unistr('El flujo de trabajo est\00E1 ocupado completando una operaci\00F3n anterior en este momento. Int\00E9ntelo m\00E1s tarde.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124973139198026170)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'es'
,p_message_text=>'Completado %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124956179124026165)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>unistr('El flujo de trabajo %0 no se puede continuar porque se encuentra actualmente en la actividad %1, la cual no est\00E1 en estado En espera')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124968084576026168)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no es un contexto de correlaci\00F3n de flujo de trabajo v\00E1lido para el proceso que est\00E1 ejecutando esta actividad de flujo de trabajo. El contexto de correlaci\00F3n debe ser texto delimitado por dos puntos que contenga APEX_APPL_WORKFLOW seguido del ID ')
||'de instancia de flujo de trabajo y el ID de instancia de actividad.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124958789618026166)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha creado la nueva instancia %0 del flujo de trabajo %1, versi\00F3n %2')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124950897497026163)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado la fila de datos adicional asociada a esta instancia de flujo de trabajo'
,p_version_scn=>2692595
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124973322289026170)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'es'
,p_message_text=>'Vencido %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124958648005026166)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'es'
,p_message_text=>'El flujo de trabajo %0 ha finalizado con el estado %1'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124955842166026165)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'es'
,p_message_text=>unistr('El tipo de datos %1 para las condiciones que se est\00E1n comparando en la actividad de cambio del flujo de trabajo %0 no es compatible con el operador de condici\00F3n')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124945686044026162)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'es'
,p_message_text=>'Iniciada por %0 %1'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124968425529026168)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha creado la nueva instancia %0 del flujo de trabajo %1, versi\00F3n %2; se ha llamado desde la instancia de actividad %4 de la instancia de flujo de trabajo %3')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124941265764026160)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('La actividad con el ID est\00E1tico %1 no es una actividad del flujo de trabajo %0. Compruebe los ID est\00E1ticos de la actividad de la versi\00F3n del flujo de trabajo correspondiente.')
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124966578414026168)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'es'
,p_message_text=>unistr('%0 es un par\00E1metro necesario para este flujo de trabajo y no debe ser NULL.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124959145317026166)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'es'
,p_message_text=>'Se ha reanudado la instancia de flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124959042478026166)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'es'
,p_message_text=>'Se ha reintentado la instancia de flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124973445200026170)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'es'
,p_message_text=>'%0 reintento'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124973568456026170)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'es'
,p_message_text=>'%0 reintentos'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124973221063026170)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'es'
,p_message_text=>'Iniciado %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124967418120026168)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'es'
,p_message_text=>'Activo'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124967622045026168)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'es'
,p_message_text=>'Completada'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124967702012026168)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'es'
,p_message_text=>'Con fallos'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124967889892026168)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'es'
,p_message_text=>'Suspendido'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124967545389026168)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'es'
,p_message_text=>'Terminado'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124982840121026173)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'es'
,p_message_text=>'En espera'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124958852096026166)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'es'
,p_message_text=>'Se ha suspendido la instancia de flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124964701322026167)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido determinar la siguiente actividad para la instancia de flujo de trabajo %0. Compru\00E9belo y corrija las condiciones definidas para la actividad actual de conmutaci\00F3n antes de reintentar el flujo de trabajo.')
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124958915600026166)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'es'
,p_message_text=>'Se ha terminado la instancia de flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124958070625026165)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'es'
,p_message_text=>'Solo el administrador de negocio del flujo de trabajo %0 puede reanudar el flujo de trabajo'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124958143751026165)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'es'
,p_message_text=>'Solo un administrador de negocio o propietario puede reintentar el flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124957660953026165)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'es'
,p_message_text=>'Solo un administrador de negocio del flujo de trabajo puede suspender la instancia de flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124957990281026165)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'es'
,p_message_text=>'Solo los propietarios y administradores de negocio de la instancia de flujo de trabajo %0 pueden terminar el flujo de trabajo'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124956333721026165)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'es'
,p_message_text=>'Solo un administrador de negocio definido por el flujo de trabajo puede actualizar las variables del flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124970906095026169)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'es'
,p_message_text=>'La instancia de flujo de trabajo %0 debe tener el estado Con fallos o Suspendida para poder actualizar las variables.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124962468449026167)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'es'
,p_message_text=>'El valor de la variable de flujo de trabajo %0 se ha actualizado a %1'
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124972629632026170)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'es'
,p_message_text=>unistr('El flujo de trabajo %0 no tiene ninguna versi\00F3n Activa')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124972714729026170)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'es'
,p_message_text=>unistr('El flujo de trabajo %0 no tiene ninguna versi\00F3n En desarrollo')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124972815035026170)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('El flujo de trabajo %0 no tiene ninguna versi\00F3n Activa o En desarrollo')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124955785253026165)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado la instancia de actividad %1 para la instancia de flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124955502987026165)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado la instancia de flujo de trabajo %0'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124990671217026175)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'es'
,p_message_text=>'El libro de trabajo no tiene ninguna hoja de trabajo activa.'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124990594851026175)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'es'
,p_message_text=>'No se ha inicializado el libro de trabajo.'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124990471837026175)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'es'
,p_message_text=>'Se ha producido un error interno al crear el archivo XLSX.'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124992905020026176)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'es'
,p_message_text=>'Hoja'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125003557337026179)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'es'
,p_message_text=>'El nombre de hoja de trabajo "%0" ya existe. Pruebe uno diferente.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125132195773026218)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'es'
,p_message_text=>'Acciones'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125047100978026192)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'es'
,p_message_text=>unistr('Men\00FA de Acciones')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125042832632026191)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('Agregar funci\00F3n')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125042722756026191)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Agregar Grupo por Columna'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125080300207026202)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'es'
,p_message_text=>unistr('Agregar Columna Din\00E1mica')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125080439247026202)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Agregar Columna de Filas'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125014828108026182)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'es'
,p_message_text=>'Agregado'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125053300965026194)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'es'
,p_message_text=>unistr('Agregaci\00F3n')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125034235019026188)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'es'
,p_message_text=>'Media'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125038567826026190)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'es'
,p_message_text=>'Recuento'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125034300410026188)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'es'
,p_message_text=>unistr('M\00E1ximo')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125034550711026188)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'es'
,p_message_text=>'Mediana'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125034456485026188)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'es'
,p_message_text=>unistr('M\00EDnimo')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125034146007026188)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'es'
,p_message_text=>'Suma %0'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125035289576026189)
,p_name=>'APEXIR_ALL'
,p_message_language=>'es'
,p_message_text=>'Todo'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125014128212026182)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Todas las Columnas'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124994295497026176)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'es'
,p_message_text=>'Todas las Filas'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125129162579026217)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'es'
,p_message_text=>'Alternativo'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125130789517026217)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'es'
,p_message_text=>'Valor por defecto alternativo: %0 '
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125028335116026186)
,p_name=>'APEXIR_AND'
,p_message_language=>'es'
,p_message_text=>'y'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125063176202026197)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido importar el informe guardado. El contenido est\00E1 da\00F1ado.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125063284860026197)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido importar el informe guardado. El contenido est\00E1 vac\00EDo.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125016321017026183)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'es'
,p_message_text=>'Aplicar'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125009979042026181)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'es'
,p_message_text=>'Ascendente'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125031444643026187)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'es'
,p_message_text=>'Hace %0'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125131300774026218)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'es'
,p_message_text=>'Media %0'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125122929394026215)
,p_name=>'APEXIR_BAR'
,p_message_language=>'es'
,p_message_text=>'Barra'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125015683792026183)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'es'
,p_message_text=>'entre'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125008712685026181)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'es'
,p_message_text=>'Color de Fondo'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125010653084026181)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'es'
,p_message_text=>'azul'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125044722126026191)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'es'
,p_message_text=>'Inferior'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124975588328026171)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'es'
,p_message_text=>unistr('Botones junto a la barra de b\00FAsqueda de %0')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125011205061026181)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'es'
,p_message_text=>'Cancelar'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125017550702026183)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'es'
,p_message_text=>unistr('Categor\00EDa')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125008612919026181)
,p_name=>'APEXIR_CELL'
,p_message_language=>'es'
,p_message_text=>'Celda'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125035124725026189)
,p_name=>'APEXIR_CHART'
,p_message_language=>'es'
,p_message_text=>unistr('Gr\00E1fico')
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125045670956026192)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'es'
,p_message_text=>'Inicializando...'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125085319527026204)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'es'
,p_message_text=>unistr('Se debe especificar la etiqueta de gr\00E1fico.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125097766068026208)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'es'
,p_message_text=>unistr('La consulta supera el m\00E1ximo de %0 puntos de datos por gr\00E1fico. Aplique un filtro para reducir el n\00FAmero de registros de la consulta base.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125096601554026207)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'es'
,p_message_text=>unistr('El recuento m\00E1ximo de filas para una consulta de Gr\00E1fico limita el n\00FAmero de filas de la consulta base, no el n\00FAmero de filas que se muestran. La consulta base supera el recuento m\00E1ximo de filas de %0. Aplique un filtro para reducir el n\00FAmero de regi')
||'stros en la consulta base.'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125014228957026182)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'es'
,p_message_text=>unistr('Tipo de gr\00E1fico')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124978152916026171)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'es'
,p_message_text=>unistr('Vista de gr\00E1fico de %0')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125093356297026206)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'es'
,p_message_text=>'Activar todo'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125031800019026188)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'es'
,p_message_text=>'Seleccionar formato de informe'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125039699284026190)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'es'
,p_message_text=>'borrar'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125011173084026181)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Columna'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125050996852026193)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Columnas'
,p_is_js_message=>true
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125018129149026183)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'es'
,p_message_text=>'Alias de Columna'
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125125796022026216)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'es'
,p_message_text=>'Filtrar...'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124985959068026174)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'es'
,p_message_text=>'Cabecera de columna'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125000021546026178)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'es'
,p_message_text=>'Acciones de columna'
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125000366528026178)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'es'
,p_message_text=>'Acciones para la columna "%0"'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125041757698026191)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'es'
,p_message_text=>unistr('Men\00FA de Cabecera de Columna')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125045432253026192)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'es'
,p_message_text=>unistr('Informaci\00F3n de la Columna')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125128063604026217)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'es'
,p_message_text=>'Etiqueta de Columna'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125043111088026191)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'es'
,p_message_text=>'Columna %0'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125026014674026186)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'es'
,p_message_text=>'contiene'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125027329786026186)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'es'
,p_message_text=>'no contiene'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125009697499026181)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'es'
,p_message_text=>'en'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125027519011026186)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'es'
,p_message_text=>unistr('no en \00FAltimos(as)')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125036682558026189)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'es'
,p_message_text=>'no en siguientes'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125027453963026186)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'es'
,p_message_text=>unistr('en \00FAltimos(as)')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125036550546026189)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'es'
,p_message_text=>'en siguientes'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125009588944026181)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'es'
,p_message_text=>'no es nulo'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125009401344026181)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'es'
,p_message_text=>'es nulo'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125009208533026181)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'es'
,p_message_text=>'igual que'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125009784893026181)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'es'
,p_message_text=>'no en'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125009396393026181)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'es'
,p_message_text=>'no igual que'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125026396746026186)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'es'
,p_message_text=>unistr('coincide con expresi\00F3n regular')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125031721848026187)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'es'
,p_message_text=>unistr('C\00E1lculo')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125096314661026207)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'es'
,p_message_text=>unistr('Expresi\00F3n de c\00E1lculo')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125051273720026193)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'es'
,p_message_text=>unistr('Cree un c\00E1lculo utilizando los alias de columna.')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125051331466026193)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'es'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125051486174026193)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'es'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125051589120026193)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'es'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124992458127026176)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'es'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125035902257026189)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'es'
,p_message_text=>'Calcular'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125043745721026191)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'es'
,p_message_text=>unistr('Divisi\00F3n de Control')
,p_is_js_message=>true
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125046766294026192)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'es'
,p_message_text=>'Divisiones de Control'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125133372235026218)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'es'
,p_message_text=>unistr('Columnas de Divisi\00F3n de Control')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124989196899026175)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'es'
,p_message_text=>'Recuento de los Valores Distintos'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125131892795026218)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'es'
,p_message_text=>'Recuento de los Valores Distintos'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125131791136026218)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'es'
,p_message_text=>'Recuento %0'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125104797027026210)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'es'
,p_message_text=>'Diariamente'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125158097660026226)
,p_name=>'APEXIR_DATA'
,p_message_language=>'es'
,p_message_text=>'Datos'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125045582721026192)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'es'
,p_message_text=>'Informar de datos de hace %0 minutos.'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124978589618026171)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'es'
,p_message_text=>'Vista de datos de %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125014926019026182)
,p_name=>'APEXIR_DATE'
,p_message_language=>'es'
,p_message_text=>'Fecha'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125049422248026193)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'es'
,p_message_text=>'Por defecto'
,p_version_scn=>2692613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125128913260026217)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'es'
,p_message_text=>'Tipo de Informe por Defecto'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125011377848026181)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'es'
,p_message_text=>'Suprimir'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125015254561026183)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'es'
,p_message_text=>unistr('\00BFDesea suprimir estos valores del informe?')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125115784047026213)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'es'
,p_message_text=>'Suprimir Informe por Defecto'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125043417579026191)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'es'
,p_message_text=>'Suprimir Informe'
,p_is_js_message=>true
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125010003408026181)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'es'
,p_message_text=>'Descendente'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125017604852026183)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Descripci\00F3n')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125041628926026190)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'es'
,p_message_text=>'Vista de Una Sola Fila'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125049977495026193)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'es'
,p_message_text=>unistr('Direcci\00F3n %0')
,p_version_scn=>2692613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125050857951026193)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'es'
,p_message_text=>'Desactivado'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125010868995026181)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'es'
,p_message_text=>'Mostrado'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125014044376026182)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Columnas Mostradas'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125049813667026193)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'es'
,p_message_text=>'Mostrar en Informe'
,p_version_scn=>2692613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125044659363026191)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'es'
,p_message_text=>'Abajo'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125036045032026189)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'es'
,p_message_text=>'Descargar'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125049796017026193)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'es'
,p_message_text=>'No Mostrar'
,p_version_scn=>2692613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125119007921026214)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'es'
,p_message_text=>unistr('Ya existe un resaltado con la misma condici\00F3n.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125133582778026218)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'es'
,p_message_text=>unistr('Columna din\00E1mica duplicada. La lista de columna din\00E1mica debe ser \00FAnica.')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125133732311026218)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'es'
,p_message_text=>'Editar'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125045760037026192)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'es'
,p_message_text=>unistr('Editar Valores de Gr\00E1fico')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125052318201026194)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'es'
,p_message_text=>unistr('Editar Gr\00E1fico')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125016273084026183)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'es'
,p_message_text=>unistr('Editar divisi\00F3n de control')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125052794003026194)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'es'
,p_message_text=>'Editar filtro'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125019264387026184)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'es'
,p_message_text=>'Editar Flashback'
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125110592335026211)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'es'
,p_message_text=>'Editar Grupo por'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125052689743026194)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'es'
,p_message_text=>'Editar resaltado'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125080605533026202)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'es'
,p_message_text=>unistr('Editar din\00E1mica')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125040007859026190)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'es'
,p_message_text=>'Editar Informe'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125129292944026217)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'es'
,p_message_text=>unistr('Correo electr\00F3nico')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125001439516026178)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'es'
,p_message_text=>unistr('Direcci\00F3n de correo electr\00F3nico')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125129595879026217)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'es'
,p_message_text=>'Cco'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125129704199026217)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'es'
,p_message_text=>'Cuerpo'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125129478417026217)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'es'
,p_message_text=>'Cc'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125130219197026217)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'es'
,p_message_text=>'Frecuencia'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125006665599026180)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'es'
,p_message_text=>unistr('El correo electr\00F3nico no se ha configurado para esta aplicaci\00F3n. P\00F3ngase en contacto con el administrador.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125104029837026209)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'es'
,p_message_text=>unistr('Se debe especificar la direcci\00F3n de correo electr\00F3nico.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125129822714026217)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'es'
,p_message_text=>'Consulte adjuntos'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125129637076026217)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'es'
,p_message_text=>'Asunto'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125105041270026210)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'es'
,p_message_text=>unistr('Se debe especificar el asunto del correo electr\00F3nico.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125129345173026217)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'es'
,p_message_text=>'Para'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125008444753026181)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'es'
,p_message_text=>'Activado'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125052520114026194)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'es'
,p_message_text=>'Activar/Desactivar'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125052015329026194)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'es'
,p_message_text=>'Error: %0'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125051612686026193)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'es'
,p_message_text=>'Ejemplos'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125052454426026194)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'es'
,p_message_text=>'Ejemplos:'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125013941178026182)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'es'
,p_message_text=>'Excluir Valores Nulos'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125053001636026194)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'es'
,p_message_text=>'Ampliar/Reducir'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125050658725026193)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'es'
,p_message_text=>unistr('Expresi\00F3n')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125035566752026189)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'es'
,p_message_text=>'Filtro'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125046634117026192)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'es'
,p_message_text=>'Filtros'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125057367597026195)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'es'
,p_message_text=>unistr('Expresi\00F3n de Filtro')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125155504162026225)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'es'
,p_message_text=>unistr('La expresi\00F3n de filtro es demasiado larga.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125000202712026178)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'es'
,p_message_text=>'Filtrar sugerencias'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125057237020026195)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'es'
,p_message_text=>'Tipo de filtro'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125053241715026194)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Columnas a Buscar'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125035827213026189)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'es'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125050453527026193)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Las consultas de flashback permiten visualizar los datos tal como exist\00EDan en un punto en el tiempo anterior.')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125104492017026210)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('Duraci\00F3n de flashback')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125105841516026210)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'es'
,p_message_text=>'Formato'
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125031657903026187)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'es'
,p_message_text=>unistr('M\00E1scara de Formato %0')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125043356272026191)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('Funci\00F3n')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125051127650026193)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'es'
,p_message_text=>'Funciones %0'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125128821252026217)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'es'
,p_message_text=>'Funciones/Operadores'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125043027520026191)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'es'
,p_message_text=>unistr('Funci\00F3n %0')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125035395625026189)
,p_name=>'APEXIR_GO'
,p_message_language=>'es'
,p_message_text=>'Ir'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125008949324026181)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'es'
,p_message_text=>'verde'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125053955537026194)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Agrupar por Columnas'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125054022169026194)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'es'
,p_message_text=>'Funciones Group By'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124989247294026175)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'es'
,p_message_text=>'Agrupar por'
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125129985256026217)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Agrupar por Columna %0'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125085437498026204)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'es'
,p_message_text=>'Se debe especificar la columna Agrupar por.'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125096567955026207)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'es'
,p_message_text=>unistr('El recuento m\00E1ximo de filas para una consulta de Agrupar por limita el n\00FAmero de filas de la consulta base, no el n\00FAmero de filas que se muestran. La consulta base supera el recuento m\00E1ximo de filas de %0. Aplique un filtro para reducir el n\00FAmero de ')
||'registros en la consulta base.'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125076732743026201)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'es'
,p_message_text=>unistr('Agrupar por Ordenaci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125133434313026218)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'es'
,p_message_text=>unistr('Agrupar por Orden de Clasificaci\00F3n')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124978336895026171)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'es'
,p_message_text=>'Vista Agrupar por de %0'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125014312283026182)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'es'
,p_message_text=>'Columna horizontal'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125048353067026192)
,p_name=>'APEXIR_HELP'
,p_message_language=>'es'
,p_message_text=>'Ayuda'
,p_is_js_message=>true
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125040145058026190)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Los informes interactivos permiten que los usuarios finales personalicen los informes. Los usuarios pueden modificar el dise\00F1o de los datos del informe seleccionando columnas, aplicando filtros, resaltando y ordenando. Tambi\00E9n pueden definir saltos d')
||unistr('e l\00EDnea, agregaciones, gr\00E1ficos, organizaciones por grupos y sus propios c\00E1lculos. Asimismo, se puede configurar una suscripci\00F3n para que env\00EDe por correo electr\00F3nico el informe en versi\00F3n HTML con intervalos de tiempo designados. Los usuarios pueden')
||unistr(' crear m\00FAltiples variaciones del informe y guardarlas como informes con nombre, para visualizaci\00F3n p\00FAblica o privada. '),
'<p/>',
unistr('Las secciones siguientes ofrecen un resumen de los modos de personalizar un informe interactivo. Para obtener m\00E1s informaci\00F3n, consulte la secci\00F3n sobre el uso de informes interactivos en <i>Oracle APEX End User''s Guide</i>.')))
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125047245357026192)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'es'
,p_message_text=>unistr('El men\00FA Acciones aparece a la derecha del bot\00F3n Ir en la barra de b\00FAsqueda. Utilice este men\00FA para personalizar un informe interactivo.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125040956464026190)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Las agregaciones son c\00E1lculos matem\00E1ticos que se realizan en una columna. Las agregaciones se muestran detr\00E1s de cada divisi\00F3n de control y, al final del informe, dentro de la columna en la que est\00E1n definidos. Las opciones incluyen:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Agregaci\00F3n</strong> permite seleccionar una agregaci\00F3n definida previamente para editarla.</li>'),
unistr('<li><strong>Funci\00F3n</strong> es la funci\00F3n que se debe ejecutar (por ejemplo, SUM, MIN).</li>'),
unistr('<li><strong>Columna</strong> se utiliza para seleccionar la columna a la que se aplica la funci\00F3n matem\00E1tica. S\00F3lo se muestran las columnas num\00E9ricas.</li></ul>')))
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125041048774026190)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Puede definir un gr\00E1fico por informe guardado. Despu\00E9s '),
unistr('de definirlo, puede cambiar entre las vistas de gr\00E1fico y de informe mediante los iconos de visualizaci\00F3n de la barra de b\00FAsqueda.'),
'Las opciones son: ',
'<p>',
'</p><ul>',
unistr('<li><strong>Tipo de Gr\00E1fico</strong> identifica el tipo de gr\00E1fico que se debe incluir.'),
unistr('Seleccione un gr\00E1fico de barras horizontales, de barras verticales, de tarta o de l\00EDneas.</li>'),
'<li><strong>Etiqueta</strong> permite seleccionar la columna que se debe utilizar como etiqueta.</li>',
unistr('<li><strong>T\00EDtulo del Eje para Etiqueta</strong> es el t\00EDtulo que se mostrar\00E1 en el eje asociado a la columna seleccionada como'),
unistr('etiqueta. No est\00E1 disponible para gr\00E1ficos de tarta.</li>'),
unistr('<li><strong>Valor</strong> permite seleccionar la columna que se debe utilizar como valor. Si la funci\00F3n'),
unistr('es COUNT, no se tiene que seleccionar ning\00FAn valor.</li>'),
unistr('<li><strong>T\00EDtulo del Eje para Valor</strong> es el t\00EDtulo que se mostrar\00E1 en el eje asociado a la columna seleccionada'),
unistr('como valor. No est\00E1 disponible para gr\00E1ficos de tarta.</li>'),
unistr('<li><strong>Funci\00F3n</strong> es una funci\00F3n opcional que se debe realizar en la columna seleccionada como valor.</li>'),
'<li><strong>Ordenar</strong> permite ordenar el juego de resultados.</li></ul>'))
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125040325608026190)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Al hacer clic en cualquier cabecera de columna, se muestra un men\00FA de cabecera de columna con las siguientes opciones:'),
'<p></p>',
'<ul>',
unistr('<li>El icono <strong>Orden ascendente</strong> ordena el informe seg\00FAn la columna en orden ascendente.</li>'),
unistr('<li>El icono <strong>Orden descendente</strong> ordena el informe seg\00FAn la columna en orden descendente.</li>'),
unistr('<li><strong>Ocultar columna</strong> oculta la columna. No todas las columnas se pueden ocultar. Si una columna no se puede ocultar, no habr\00E1 ning\00FAn icono Ocultar columna.</li>'),
unistr('<li><strong>Columna divisoria</strong> crea un grupo de divisi\00F3n en la columna. De esta forma se extrae la columna del informe como registro maestro.</li>'),
unistr('<li><strong>Informaci\00F3n de la columna</strong> muestra texto de ayuda sobre la columna si est\00E1 disponible.</li>'),
unistr('<li><strong>\00C1rea de texto</strong> se utiliza para introducir criterios de b\00FAsqueda que no sean sensibles a may\00FAsculas/min\00FAsculas'),
'(no se necesitan comodines). Al introducir un valor, se reduce la lista de',
unistr('valores de la parte inferior del men\00FA. A continuaci\00F3n, puede seleccionar'),
'un valor de la parte inferior para que se cree como filtro con ''=''',
unistr('(por ejemplo, <code>column = ''ABC''</code>). Tambi\00E9n puede hacer clic en el icono Linterna e introducir un valor para que se cree como filtro con el modificador ''LIKE'''),
'(por ejemplo, <code>column LIKE ''%ABC%''</code>).</li>',
unistr('<li><strong>Lista de valores \00FAnicos</strong> contiene los 500 primeros valores'),
unistr('\00FAnicos que cumplen los criterios de filtro. Si la columna es una fecha, aparece una'),
unistr('lista de rangos de fechas. Si selecciona un valor, se crear\00E1 un filtro con'),
'''='' (por ejemplo, <code>column = ''ABC''</code>).</li>',
'</ul>'))
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125040871946026190)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Permite agregar columnas calculadas al informe. Pueden ser c\00E1lculos matem\00E1ticos (por ejemplo, <code>NBR_HOURS/24</code>) o funciones est\00E1ndar de Oracle'),
unistr('aplicadas a columnas existentes. Algunas se muestran como ejemplo, pero tambi\00E9n se pueden utilizar otras (como <code>TO_DATE)</code>). Las opciones incluyen:'),
'<p></p>',
'<ul>',
unistr('<li><strong>C\00E1lculo</strong> permite seleccionar un c\00E1lculo definido previamente para editarlo.</li>'),
'<li><strong>Cabecera de columna</strong> es la cabecera para la nueva columna.</li>',
unistr('<li><strong>M\00E1scara de formato</strong> es una m\00E1scara de formato de Oracle que se debe aplicar a la columna (por ejemplo, S9999).</li>'),
unistr('<li><strong>C\00E1lculo</strong> es el c\00E1lculo que se debe realizar. Dentro del c\00E1lculo, se hace referencia a las columnas mediante los alias mostrados.</li>'),
'</ul>',
unistr('<p>Debajo del c\00E1lculo, las columnas de la consulta se muestran con'),
'sus alias asociados. Al hacer clic en el nombre o el alias de una columna,',
unistr('estos se incluyen en el c\00E1lculo. Junto a las columnas hay un teclado que funciona como'),
unistr('m\00E9todo abreviado para las teclas que m\00E1s se utilizan. En el extremo de la derecha est\00E1n las funciones.</p>'),
unistr('<p>El siguiente es un ejemplo de c\00E1lculo para mostrar la remuneraci\00F3n total:</p>'),
'<pre>CASE WHEN A = ''VENTAS'' THEN B + C ELSE B END</pre>',
unistr('(donde A es ORGANIZACI\00D3N, B es SALARIO y C es COMISI\00D3N)'),
''))
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125047383212026192)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'es'
,p_message_text=>'Se utiliza para crear un grupo divisorio en una o varias columnas. Obtiene las columnas del informe interactivo y las muestra como un registro maestro.'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125041545417026190)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'es'
,p_message_text=>unistr('Para visualizar los detalles de una sola fila cada vez, haga clic en el icono de vista de una sola fila correspondiente a la fila que desea visualizar. Si est\00E1 disponible, la vista de una sola fila siempre estar\00E1 en la primera columna. Seg\00FAn la perso')
||unistr('nalizaci\00F3n del informe interactivo, la vista de una sola fila puede ser la vista est\00E1ndar o una p\00E1gina personalizada que se puede actualizar.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125041481414026190)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'es'
,p_message_text=>unistr('Permite descargar el juego de resultados actual. Los formatos de descarga son PDF, Excel, HTML y CSV. Las opciones de descarga son diferentes en funci\00F3n del formato seleccionado. Todos los formatos se pueden enviar como correo electr\00F3nico.')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125040558431026190)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Delimita el informe mediante la adici\00F3n o modificaci\00F3n de la cl\00E1usula WHERE de la consulta. Puede filtrar por columna o por fila.'),
'<p/>',
unistr('Si filtra por columna, seleccione primero una columna (no tiene que ser la mostrada), seleccione un operador est\00E1ndar de Oracle (=, !=, no en, entre) y, a continuaci\00F3n, introduzca una expresi\00F3n con la que realizar la comparaci\00F3n. Las expresiones son ')
||unistr('sensibles a may\00FAsculas/min\00FAsculas. Utilice % como comod\00EDn (por ejemplo, <code>STATE_NAME'),
'like A%)</code>.</p>',
unistr('<p>Si filtra por fila, puede crear cl\00E1usulas WHERE complejas con alias de columna y cualquier funci\00F3n u operador de Oracle (por ejemplo, <code>G = ''VA'' o G = ''CT''</code>, donde <code>G</code> es el alias de CUSTOMER_STATE).</p>'),
''))
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125041188064026190)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'es'
,p_message_text=>unistr('Las consultas de flashback permiten visualizar los datos tal como exist\00EDan en un punto en el tiempo anterior. El tiempo por defecto en el que se puede realizar la operaci\00F3n de flashback es 3 horas (o 180 minutos) aunque el tiempo real es diferente se')
||unistr('g\00FAn la base de datos.')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125105785731026210)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>El men\00FA Formato permite personalizar la visualizaci\00F3n del informe.'),
unistr('Contiene los siguientes submen\00FAs:</p>'),
'<ul><li>Ordenar</li>',
unistr('<li>Divisi\00F3n de Control</li>'),
'<li>Resaltar</li>',
'<li>Calcular</li>',
'<li>Agregar</li>',
unistr('<li>Gr\00E1fico</li>'),
'<li>Agrupar por</li>',
'<li>Girar</li>',
'</ul>',
''))
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125103948867026209)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Puede definir una vista Agrupar por, por informe guardado.',
unistr('Una vez se ha definido, puede cambiar entre las vistas de agrupaci\00F3n e informe'),
unistr('mediante los iconos de vista que se encuentran en la barra de b\00FAsqueda. Para crear una vista Agrupar por,'),
'seleccione:',
'<p></p><ul>',
unistr('<li>las columnas en las que realizar la agrupaci\00F3n</li>,'),
unistr('<li>las columnas para agregar, junto con la funci\00F3n que se va a realizar (media, suma, recuento, etc.)</li>'),
'</ul>'))
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125040755860026190)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Permite definir un filtro. Las filas que cumplen los criterios de filtro se resaltan seg\00FAn las caracter\00EDsticas asociadas al filtro. Las opciones incluyen:</p>'),
'<ul>',
unistr('<li><strong>Nombre</strong> s\00F3lo se utiliza para la visualizaci\00F3n.</li>'),
unistr('<li><strong>Secuencia</strong> identifica la secuencia en la que se evaluar\00E1n las reglas.</li>'),
unistr('<li><strong>Activado</strong> identifica si la regla est\00E1 activada o desactivada.</li>'),
unistr('<li><strong>Tipo de Resaltado</strong> identifica si la fila o la celda debe estar resaltada. Si se selecciona Celda, se resalta la columna a la que se hace referencia en Condici\00F3n para Resaltar.</li>'),
unistr('<li><strong>Color de Fondo</strong> es el nuevo color para el fondo del \00E1rea resaltada.</li>'),
unistr('<li><strong>Color del Texto</strong> es el nuevo color para el texto del \00E1rea resaltada.</li>'),
unistr('<li><strong>Condici\00F3n para Resaltar</strong> define la condici\00F3n del filtro.</li></ul>')))
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124934174406026158)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Puede definir una vista din\00E1mica por informe guardado. Una vez definidas, puede cambiar entre las vistas din\00E1micas y de informe utilizando los iconos de vista que se encuentran en la barra de b\00FAsqueda. Para crear una vista din\00E1mica, se seleccionan: '),
'<p></p>',
'<ul>',
'<li>las columnas sobre las que girar</li>',
'<li>las columnas que mostrar como filas</li>',
unistr('<li>las columnas que agregar junto con la funci\00F3n que se va a realizar (media, suma, recuento, etc.)</li>'),
'</ul>'))
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125051863868026194)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Si personaliza un informe interactivo, la configuraci\00F3n del informe se mostrar\00E1'),
unistr('debajo de la barra de b\00FAsqueda y encima del informe. Esta \00E1rea se puede reducir y ampliar mediante el icono de la izquierda.'),
'<p>',
unistr('En cada configuraci\00F3n de informe, puede hacer lo siguiente:'),
'</p><ul>',
'<li>Editar un valor haciendo clic en el nombre.</li>',
'<li>Desactivar/activar un valor marcando o anulando la marca de la casilla de control Activar/Desactivar. Se utiliza para desactivar y activar temporalmente el valor.</li>',
'<li>Eliminar un valor haciendo clic en el icono Eliminar.</li>',
'</ul>',
unistr('<p>Si ha creado un gr\00E1fico, una ordenaci\00F3n por grupos o elemento din\00E1mico, puede cambiar entre ellos'),
unistr('y el informe base con los enlaces Vista de Informe, Vista de Gr\00E1fico, Vista Agrupar por y Vista Din\00E1mica por'),
unistr('que se muestran a la derecha. Si est\00E1 visualizando el gr\00E1fico, la ordenaci\00F3n por grupos o elemento din\00E1mico, tambi\00E9n'),
unistr('puede utilizar el enlace Editar para editar la configuraci\00F3n.</p>'),
''))
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125041362508026190)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'es'
,p_message_text=>'Restablece los valores por defecto del informe eliminando todas las personalizaciones realizadas.'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125106098364026210)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Define el n\00FAmero de registros que se mostrar\00E1n por p\00E1gina.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125041212244026190)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Guarda el informe personalizado para su uso en el futuro. Se proporcionan un nombre y una descripci\00F3n opcional y el p\00FAblico (es decir, todos los usuarios con acceso al informe principal por defecto) podr\00E1 acceder al informe. Puede guardar cuatro t')
||'ipos de informe interactivo:</p>',
'<ul>',
unistr('<li><strong>Principal por Defecto</strong> (s\00F3lo desarrolladores). El informe principal por defecto es el primero que se muestra. No se puede cambiar el nombre de estos informes ni se pueden suprimir.</li>'),
unistr('<li><strong>Informe Alternativo</strong> (s\00F3lo desarrolladores). Permite a los desarrolladores crear varios dise\00F1os de informe. S\00F3lo los desarrolladores pueden guardar, cambiar el nombre o suprimir un informe alternativo.</li>'),
unistr('<li><strong>Informe P\00FAblico</strong> (usuario final). El usuario final que lo cre\00F3 puede guardarlo, suprimirlo o cambiarle el nombre. Los dem\00E1s usuarios pueden visualizarlo y guardar el dise\00F1o como otro informe.</li>'),
unistr('<li><strong>Informe Privado</strong> (usuario final). S\00F3lo el usuario que cre\00F3 el informe puede visualizarlo, guardarlo, suprimirlo o cambiarle el nombre.</li>'),
'</ul>',
unistr('<p>Si guarda informes personalizados, se muestra un selector de informes en la barra de b\00FAsqueda a la izquierda del selector de filas (si est\00E1 activada esta funci\00F3n).</p>'),
''))
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125040280095026190)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'es'
,p_message_text=>unistr('En la parte superior de cada p\00E1gina de informe se encuentra una regi\00F3n de b\00FAsqueda. Esta regi\00F3n (o barra de herramientas) proporciona las siguientes funciones:')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125106683754026210)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'es'
,p_message_text=>unistr('<li>El <strong>men\00FA Acciones</strong> permite actualizar un informe. Consulte las siguientes secciones.</li>')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125106103173026210)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'es'
,p_message_text=>unistr('<li>El icono <strong>Seleccionar Columnas</strong> permite identificar en qu\00E9 columnas buscar (o si desea hacerlo en todas).</li>')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125106489594026210)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'es'
,p_message_text=>unistr('<li><strong>Informes</strong> muestra informes privados o p\00FAblicos por defecto o guardados de forma alterna.</li>')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125106396712026210)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'es'
,p_message_text=>unistr('<li><strong>Filas</strong> define el n\00FAmero de registros que se mostrar\00E1n en cada p\00E1gina.</li>')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125106258488026210)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li>El <strong>\00E1rea de texto</strong> permite utilizar criterios de b\00FAsqueda que no sean sensibles a may\00FAsculas/min\00FAsculas (se permite el uso de comodines).</li>'),
unistr('<li>El <strong>bot\00F3n Ir</strong> ejecuta la b\00FAsqueda. Al pulsar la tecla Intro, tambi\00E9n se ejecutar\00E1 la b\00FAsqueda si el cursor est\00E1 en el \00E1rea de texto de b\00FAsqueda.</li>')))
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125106515068026210)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'es'
,p_message_text=>unistr('<li><strong>Iconos de Visualizaci\00F3n</strong> cambia entre la vista de icono, informe, detallada, gr\00E1fico, agrupar por y din\00E1mica del informe si se han definido.</li>')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125040458525026190)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'es'
,p_message_text=>unistr('Se utiliza para modificar las columnas mostradas. Se muestran las columnas de la derecha. Las columnas de la izquierda permanecen ocultas. Puede volver a ordenar las columnas mostradas mediante las flechas que hay m\00E1s a la derecha. Las columnas calcu')
||'ladas tienen el prefijo <strong>**</strong>.'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125040659139026190)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'es'
,p_message_text=>unistr('<p>Se utiliza para cambiar las columnas por las que se ordena y determina si ordenar en sentido ascendente o descendente. Tambi\00E9n puede especificar c\00F3mo se manejan los <code>valores nulos</code>: el valor por defecto, mostrarlos siempre al final o mo')
||unistr('strarlos siempre al principio. La ordenaci\00F3n resultante se muestra a la derecha de las cabeceras de columna del informe.</p>')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125103786948026209)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Al agregar una suscripci\00F3n, proporciona una direcci\00F3n (o varias separadas por comas) y el asunto del correo electr\00F3nico, la frecuencia y las fechas de inicio y fin. Los correos electr\00F3nicos resultantes incluyen una versi\00F3n exportada (PDF, Excel, HTML')
||unistr(' o CSV) del informe interactivo que contiene los datos actuales utilizando la configuraci\00F3n de informe que exist\00EDa al agregar la suscripci\00F3n.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125045378726026192)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Ocultar Columna'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125035707326026189)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'es'
,p_message_text=>'Resaltar'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125046808173026192)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'es'
,p_message_text=>'Resaltados'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125017020000026183)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'es'
,p_message_text=>'Resaltar celda, %0 en %1'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125051914627026194)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'es'
,p_message_text=>unistr('Condici\00F3n para resaltar')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125016991282026183)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'es'
,p_message_text=>'Resaltar fila, %0 en %1'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125104385892026209)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'es'
,p_message_text=>'Estilo de resaltado'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125008581786026181)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'es'
,p_message_text=>'Tipo de resaltado'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125123164391026215)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'es'
,p_message_text=>'Horizontal'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125152111525026224)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'es'
,p_message_text=>'1 valor inactivo'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125152245087026224)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'es'
,p_message_text=>'%0 valores inactivos'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125041985580026191)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'es'
,p_message_text=>'Ayuda de Informe Interactivo'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125052927709026194)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'es'
,p_message_text=>unistr('No v\00E1lido')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125046328348026192)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'es'
,p_message_text=>unistr('Expresi\00F3n de c\00E1lculo no v\00E1lida. %0')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125001931682026179)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'es'
,p_message_text=>unistr('La fecha de finalizaci\00F3n debe ser posterior a la fecha de inicio.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125061122507026196)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'es'
,p_message_text=>unistr('Expresi\00F3n de filtro no v\00E1lida. %0')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125130952898026217)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'es'
,p_message_text=>unistr('Consulta de filtro no v\00E1lida')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125152316130026224)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'es'
,p_message_text=>unistr('1 valor no v\00E1lido')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125152497874026224)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 valores no v\00E1lidos')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125104546659026210)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'es'
,p_message_text=>'(en minutos)'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125121560660026215)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'es'
,p_message_text=>unistr('%0 est\00E1 en el \00FAltimo %1')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125121782309026215)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'es'
,p_message_text=>unistr('%0 est\00E1 en el siguiente %1')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125121623623026215)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no est\00E1 en el \00FAltimo %1')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125121896292026215)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'es'
,p_message_text=>unistr('%0 no est\00E1 en el siguiente %1')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125051023333026193)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'es'
,p_message_text=>'Teclado'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125014757865026182)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'es'
,p_message_text=>'Etiqueta %0'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125044989145026191)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('T\00EDtulo del Eje para Etiqueta')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125037209199026189)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimo D\00EDa')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125037491600026189)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltima Hora')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125036902850026189)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'es'
,p_message_text=>'Mes pasado'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125037021348026189)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'es'
,p_message_text=>'Semana pasada'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125037191240026189)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimos %0 D\00EDas')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125037385397026189)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimas %0 Horas')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125036700408026189)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('\00DAltimos %0 A\00F1os')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125036898869026189)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('A\00F1o pasado')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125014679473026182)
,p_name=>'APEXIR_LINE'
,p_message_language=>'es'
,p_message_text=>unistr('L\00EDnea')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125011498610026181)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'es'
,p_message_text=>unistr('L\00EDnea con \00C1rea')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125130849763026217)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'es'
,p_message_text=>'Asignar'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125045811574026192)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'es'
,p_message_text=>unistr('Se estima que la consulta supera el m\00E1ximo de recursos permitidos. Modifique los valores del informe y vuelva a intentarlo.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125027240627026186)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'es'
,p_message_text=>unistr('El recuento m\00E1ximo de filas de este informe es %0 filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125131453494026218)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'es'
,p_message_text=>unistr('M\00E1ximo %0')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125131674984026218)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'es'
,p_message_text=>'Mediana %0'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124973935049026170)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'es'
,p_message_text=>'Mensaje'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125031519209026187)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'es'
,p_message_text=>'Hace %0 minutos'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125131574628026218)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'es'
,p_message_text=>unistr('M\00EDnimo %0')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125130556857026217)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'es'
,p_message_text=>'Mes'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125104999034026210)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'es'
,p_message_text=>'Mensualmente'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125044180720026191)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'es'
,p_message_text=>'Mover'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125044044968026191)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'es'
,p_message_text=>'Mover Todo'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125157219347026225)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'es'
,p_message_text=>unistr('Se debe especificar el identificador est\00E1tico de regi\00F3n, ya que la p\00E1gina contiene varios informes interactivos.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125010137613026181)
,p_name=>'APEXIR_NAME'
,p_message_language=>'es'
,p_message_text=>'Nombre'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125039862104026190)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'es'
,p_message_text=>unistr('Nueva agregaci\00F3n')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125153041434026224)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('Nueva Categor\00EDa')
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125039993757026190)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'es'
,p_message_text=>unistr('Nuevo c\00E1lculo')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125034690607026188)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'es'
,p_message_text=>'Siguiente'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125037782437026189)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'es'
,p_message_text=>unistr('D\00EDa Siguiente')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125037537253026189)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'es'
,p_message_text=>'Hora Siguiente'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125038055961026189)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'es'
,p_message_text=>'Mes Siguiente'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125037908448026189)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'es'
,p_message_text=>'Semana siguiente'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125037812198026189)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('Siguientes %0 D\00EDas')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125037677655026189)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'es'
,p_message_text=>'Siguientes %0 Horas'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125038233839026189)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('Siguientes %0 A\00F1os')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125038168651026189)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('A\00F1o siguiente')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125010408081026181)
,p_name=>'APEXIR_NO'
,p_message_language=>'es'
,p_message_text=>'No'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125053123504026194)
,p_name=>'APEXIR_NONE'
,p_message_language=>'es'
,p_message_text=>'- Ninguno -'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125104126515026209)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'es'
,p_message_text=>unistr('Direcci\00F3n de correo electr\00F3nico no v\00E1lida.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124976210500026171)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha seleccionado ninguna columna para mostrar. Utilice <strong>Columnas</strong> en el men\00FA de acciones para que las columnas sean visibles.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125049682093026193)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'es'
,p_message_text=>'Valores Nulos Siempre al Principio'
,p_version_scn=>2692613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125049586951026193)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'es'
,p_message_text=>'Valores Nulos Siempre al Final'
,p_version_scn=>2692613
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125050071104026193)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'es'
,p_message_text=>unistr('Ordenaci\00F3n de Valores Nulos %0')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125046404021026192)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'es'
,p_message_text=>unistr('El tiempo de flashback debe ser un valor num\00E9rico.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125046010255026192)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'es'
,p_message_text=>unistr('La secuencia debe ser num\00E9rica.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125050562841026193)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'es'
,p_message_text=>'Operador'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125009085511026181)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'es'
,p_message_text=>'naranja'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125123086640026215)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'es'
,p_message_text=>unistr('Orientaci\00F3n')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125010990772026181)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'es'
,p_message_text=>'Otro'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124977115476026171)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'es'
,p_message_text=>unistr('Paginaci\00F3n de %0')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124991188044026175)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'es'
,p_message_text=>unistr('Orientaci\00F3n de p\00E1gina')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124991843831026176)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'es'
,p_message_text=>'Horizontal'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124991998947026176)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'es'
,p_message_text=>'Vertical'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124991039761026175)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'es'
,p_message_text=>unistr('Tama\00F1o de la P\00E1gina')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124991677004026175)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'es'
,p_message_text=>'A3'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124991500690026175)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'es'
,p_message_text=>'A4'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124991715014026176)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'es'
,p_message_text=>'Personalizado'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124991396434026175)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'es'
,p_message_text=>'Legal'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124991208927026175)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'es'
,p_message_text=>'Carta'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124991426492026175)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'es'
,p_message_text=>'Tabloide'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125131900537026218)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'es'
,p_message_text=>'Porcentaje de Recuento Total %0 (%)'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125131172442026217)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'es'
,p_message_text=>'Porcentaje de Suma Total %0 (%)'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125130199685026217)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'es'
,p_message_text=>'Porcentaje de Recuento Total'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125130086787026217)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'es'
,p_message_text=>'Porcentaje de Suma Total'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125014559250026182)
,p_name=>'APEXIR_PIE'
,p_message_language=>'es'
,p_message_text=>unistr('Gr\00E1fico circular')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125080214755026202)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'es'
,p_message_text=>unistr('Din\00E1mica')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125081760719026203)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'es'
,p_message_text=>'Se debe especificar el agregado.'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125081973924026203)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'es'
,p_message_text=>'No puede agregar en una columna que se ha seleccionado como columna de fila.'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125081112377026203)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'es'
,p_message_text=>unistr('Columnas din\00E1micas')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125080918416026203)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'es'
,p_message_text=>unistr('Columna din\00E1mica %0')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125081589751026203)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'es'
,p_message_text=>unistr('Se debe especificar la columna din\00E1mica.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124934092660026158)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'es'
,p_message_text=>unistr('El recuento m\00E1ximo de filas para una consulta din\00E1mica limita el n\00FAmero de filas de la consulta base, no el n\00FAmero de filas que se muestran. La consulta base supera el recuento m\00E1ximo de filas de %0. Aplique un filtro para reducir el n\00FAmero de regist')
||'ros en la consulta base.'
,p_version_scn=>2692591
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125081445522026203)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'es'
,p_message_text=>unistr('Ordenaci\00F3n din\00E1mica')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125047419499026192)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'es'
,p_message_text=>unistr('La columna din\00E1mica contiene demasiados valores diferentes. No se puede generar el SQL din\00E1mico.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124978434618026171)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'es'
,p_message_text=>unistr('Vista din\00E1mica de %0')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125104282782026209)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'es'
,p_message_text=>'Vista previa'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125034797829026188)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'es'
,p_message_text=>'Anterior'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125129035987026217)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'es'
,p_message_text=>'Principal'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125105252910026210)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'es'
,p_message_text=>'Informe Primario'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124990921864026175)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'es'
,p_message_text=>'Incluir etiquetas de accesibilidad'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124951746539026164)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'es'
,p_message_text=>'Borrar texto enriquecido'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125060120020026196)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'es'
,p_message_text=>'Privado'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125015131407026183)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'es'
,p_message_text=>unistr('P\00FAblico')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125010775558026181)
,p_name=>'APEXIR_RED'
,p_message_language=>'es'
,p_message_text=>'rojo'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125157169339026225)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('No existe el identificador est\00E1tico de regi\00F3n %0.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125044235976026191)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'es'
,p_message_text=>'Eliminar'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125044373392026191)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'es'
,p_message_text=>'Eliminar todo'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125152585720026224)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'es'
,p_message_text=>unistr('Eliminar Gr\00E1fico')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125043888008026191)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'es'
,p_message_text=>unistr('Eliminar Divisi\00F3n de Control')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125043595251026191)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'es'
,p_message_text=>'Eliminar filtro'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125043678739026191)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'es'
,p_message_text=>'Eliminar flashback'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125152687031026224)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'es'
,p_message_text=>'Eliminar Grupo por'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125043998706026191)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'es'
,p_message_text=>'Eliminar resaltado'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125152790377026224)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'es'
,p_message_text=>unistr('Eliminar din\00E1mica')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125133854481026218)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'es'
,p_message_text=>'Eliminar Informe'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125115644264026213)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'es'
,p_message_text=>'Cambiar Nombre de Informe por Defecto'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125053447912026194)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'es'
,p_message_text=>'Cambiar nombre del informe'
,p_is_js_message=>true
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125035060946026188)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'es'
,p_message_text=>'Informe'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125132084046026218)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'es'
,p_message_text=>'Informes'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125007277216026180)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>'El informe interactivo guardado con el alias %0 no existe.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125060424441026196)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>'El informe no existe.'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125007382204026180)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>'El informe interactivo guardado con el ID %0 no existe.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125051773182026194)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'es'
,p_message_text=>'Valores de informe'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124975954598026171)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'es'
,p_message_text=>unistr('Configuraci\00F3n de informe de %0')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125032079507026188)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'es'
,p_message_text=>'Vista de Informe'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125036293541026189)
,p_name=>'APEXIR_RESET'
,p_message_language=>'es'
,p_message_text=>'Restablecer'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125015379931026183)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'es'
,p_message_text=>'Restaure los valores por defecto del informe.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125010511974026181)
,p_name=>'APEXIR_ROW'
,p_message_language=>'es'
,p_message_text=>'Fila'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125128150065026217)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'es'
,p_message_text=>'No puede utilizar ROWID como columna de clave principal para un origen de datos REST.'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125042911944026191)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'es'
,p_message_text=>'Filas'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125105978867026210)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Filas por P\00E1gina')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125081273600026203)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Columnas de fila'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125081048455026203)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'es'
,p_message_text=>'Columna de fila %0'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125081635950026203)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'es'
,p_message_text=>'Se debe especificar la columna de fila.'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125081840305026203)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'es'
,p_message_text=>unistr('La columna de fila debe ser diferente a la columna din\00E1mica.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125057414797026195)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'es'
,p_message_text=>'Filtro de fila'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125032192872026188)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'es'
,p_message_text=>'Fila %0 de %1'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125036489863026189)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'es'
,p_message_text=>'El texto de la fila contiene'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125009881988026181)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'es'
,p_message_text=>'Guardar'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125047070296026192)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'es'
,p_message_text=>'Informe Guardado'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125046974288026192)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'es'
,p_message_text=>'Informe Guardado = "%0"'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125049194693026193)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'es'
,p_message_text=>unistr('Los valores de informe actuales se utilizar\00E1n como valores por defecto para todos los usuarios.')
,p_version_scn=>2692612
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125115566239026213)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'es'
,p_message_text=>'Guardar Informe por Defecto'
,p_is_js_message=>true
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125036109315026189)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'es'
,p_message_text=>'Guardar Informe'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125152951390026224)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'es'
,p_message_text=>'Guardar Informe *'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125106991598026210)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'es'
,p_message_text=>'Buscar'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125041827470026191)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'es'
,p_message_text=>unistr('Barra de b\00FAsqueda')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124975247880026171)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'es'
,p_message_text=>unistr('Barra de b\00FAsqueda de %0')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125152844535026224)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Buscar: %0'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125112474529026212)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'es'
,p_message_text=>'Buscar Informe'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125096417328026207)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Columnas seleccionadas'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125011549498026181)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'es'
,p_message_text=>'- Seleccionar Columna -'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125035457642026189)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'Seleccionar columnas'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125015090322026182)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('- Seleccionar Funci\00F3n -')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125042610647026191)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'es'
,p_message_text=>'- Seleccionar Grupo por Columna -'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125080720772026202)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'es'
,p_message_text=>unistr('- Seleccionar Columna Din\00E1mica -')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125131070037026217)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Fila'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125080811361026202)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'es'
,p_message_text=>'- Seleccionar Columna de Fila -'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124962346180026167)
,p_name=>'APEXIR_SEND'
,p_message_language=>'es'
,p_message_text=>'Enviar'
,p_is_js_message=>true
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124984895467026173)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'es'
,p_message_text=>unistr('Enviar como Correo Electr\00F3nico')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125010218336026181)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'es'
,p_message_text=>'Secuencia'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125035662201026189)
,p_name=>'APEXIR_SORT'
,p_message_language=>'es'
,p_message_text=>'Ordenar'
,p_is_js_message=>true
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125045115358026192)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'es'
,p_message_text=>'Orden ascendente'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125045288188026192)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'es'
,p_message_text=>'Orden descendente'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125133225570026218)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'es'
,p_message_text=>unistr('Ordenaci\00F3n')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125039593509026190)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'es'
,p_message_text=>'espacio'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125050744030026193)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'es'
,p_message_text=>'Estado %0'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125104632334026210)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Suscripci\00F3n')
,p_is_js_message=>true
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125130443493026217)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'es'
,p_message_text=>'Final'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124949420606026163)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'es'
,p_message_text=>'Omitir si no se encuentran datos'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125130368945026217)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'es'
,p_message_text=>'Inicio'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125131224425026217)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'es'
,p_message_text=>'Suma %0'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125122123485026215)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'es'
,p_message_text=>'%0, Informe = %1, Vista = %2'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125009128381026181)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'es'
,p_message_text=>'Color del texto'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125027888401026186)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('d\00EDas')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125027751653026186)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'es'
,p_message_text=>'horas'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125027601829026186)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'es'
,p_message_text=>'minutos'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125028053275026186)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'es'
,p_message_text=>'meses'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125027988968026186)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'es'
,p_message_text=>'semanas'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125028130377026186)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('a\00F1os')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125133622887026218)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'es'
,p_message_text=>'Conmutar'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125044477088026191)
,p_name=>'APEXIR_TOP'
,p_message_language=>'es'
,p_message_text=>'Superior'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125127189004026216)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'es'
,p_message_text=>unistr('Columna sin agrupaci\00F3n')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125045944332026192)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'es'
,p_message_text=>unistr('El nombre del resaltado debe ser \00FAnico.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125013810160026182)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'es'
,p_message_text=>'tipo de dato no soportado'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125044596719026191)
,p_name=>'APEXIR_UP'
,p_message_language=>'es'
,p_message_text=>'Arriba'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125046107330026192)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'es'
,p_message_text=>unistr('Introduzca un color v\00E1lido.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125046295691026192)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'es'
,p_message_text=>unistr('Introduzca una m\00E1scara de formato v\00E1lida.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125011063165026181)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'es'
,p_message_text=>'Valor'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125045043538026191)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('T\00EDtulo del Eje para Valor')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125052862631026194)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Valor Necesario'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125014476678026182)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'es'
,p_message_text=>'Columna vertical'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125123269624026215)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'es'
,p_message_text=>'Vertical'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125052168454026194)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'es'
,p_message_text=>unistr('Ver gr\00E1fico')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125110702762026211)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'es'
,p_message_text=>'Ver Detalle'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125155010176026225)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>'El informe no tiene la vista %0 definida.'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125110842069026211)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'es'
,p_message_text=>'Ver Grupo por'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125110642486026211)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'es'
,p_message_text=>'Ver iconos'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125080564008026202)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'es'
,p_message_text=>unistr('Ver din\00E1mica')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125052284869026194)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'es'
,p_message_text=>'Ver Informe'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125104822846026210)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'es'
,p_message_text=>'Semanalmente'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125034962385026188)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'es'
,p_message_text=>'Informe de trabajo'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125132645373026218)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 d\00EDas')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125132521461026218)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'es'
,p_message_text=>'%0 horas'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125132400140026218)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'es'
,p_message_text=>'%0 minutos'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125132853474026218)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'es'
,p_message_text=>'%0 meses'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125132735332026218)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'es'
,p_message_text=>'%0 semanas'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125132982596026218)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('%0 a\00F1os')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125130677567026217)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('A\00F1o')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125008882886026181)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'es'
,p_message_text=>'amarillo'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125010382480026181)
,p_name=>'APEXIR_YES'
,p_message_language=>'es'
,p_message_text=>unistr('S\00ED')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125044870073026191)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'es'
,p_message_text=>unistr('%0 contiene < o >, que no son caracteres v\00E1lidos.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125068794739026199)
,p_name=>'APEX_REGION'
,p_message_language=>'es'
,p_message_text=>unistr('Regi\00F3n')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124959826599026166)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'es'
,p_message_text=>'No se ha podido extraer el archivo ZIP.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124959716657026166)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado la firma de final del directorio central. Este archivo no es un archivo ZIP.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124990869606026175)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'es'
,p_message_text=>unistr('Condici\00F3n previa de API violada')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125012912057026182)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'es'
,p_message_text=>unistr('No se puede obtener el valor para el valor de aplicaci\00F3n %0 porque la opci\00F3n de creaci\00F3n asociada est\00E1 desactivada.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125012829888026182)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'es'
,p_message_text=>unistr('No se puede definir el valor para el valor de aplicaci\00F3n %0 porque la opci\00F3n de creaci\00F3n asociada est\00E1 desactivada.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125125473821026216)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'es'
,p_message_text=>unistr('El valor %0 de configuraci\00F3n de la aplicaci\00F3n no es v\00E1lido')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125125339136026216)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'es'
,p_message_text=>unistr('El valor %0 de aplicaci\00F3n solicitado no est\00E1 definido')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125125505234026216)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'es'
,p_message_text=>unistr('El valor de aplicaci\00F3n %0 no se puede definir en un valor nulo')
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124999452920026178)
,p_name=>'BACK'
,p_message_language=>'es'
,p_message_text=>unistr('Atr\00E1s')
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124981822381026173)
,p_name=>'BUILDER'
,p_message_language=>'es'
,p_message_text=>'Creador'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125055474707026195)
,p_name=>'BUTTON LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('Etiqueta de Bot\00F3n')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124978756195026172)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'es'
,p_message_text=>unistr('Clases CSS de Bot\00F3n')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125017270604026183)
,p_name=>'BUTTON_ID'
,p_message_language=>'es'
,p_message_text=>unistr('El identificador de bot\00F3n generado ser\00E1 el identificador est\00E1tico del bot\00F3n, si se ha definido, o de lo contrario ser\00E1 un identificador generado de forma interna con el formato ''B'' || [Identificador de Bot\00F3n Interno]')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124951227014026163)
,p_name=>'CANDLESTICK'
,p_message_language=>'es'
,p_message_text=>'Vela'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125065282788026198)
,p_name=>'CENTER'
,p_message_language=>'es'
,p_message_text=>'Centro'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125011892812026182)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'es'
,p_message_text=>'Solicitud de %0'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125001889204026179)
,p_name=>'CHECK$'
,p_message_language=>'es'
,p_message_text=>'selector de filas'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125127212307026216)
,p_name=>'CHECKED'
,p_message_language=>'es'
,p_message_text=>'activado'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125103691864026209)
,p_name=>'COLUMN'
,p_message_language=>'es'
,p_message_text=>'Columna'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125061238661026196)
,p_name=>'COMMENTS'
,p_message_language=>'es'
,p_message_text=>'Comentarios'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125042260716026191)
,p_name=>'CONTINUE'
,p_message_language=>'es'
,p_message_text=>'Continuar'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124999731278026178)
,p_name=>'COPYRIGHT'
,p_message_language=>'es'
,p_message_text=>'Copyright &copy; 1999, %0, Oracle y/o sus filiales.'
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125047989716026192)
,p_name=>'COUNT'
,p_message_language=>'es'
,p_message_text=>'Recuento'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125054941621026194)
,p_name=>'CREATE'
,p_message_language=>'es'
,p_message_text=>'Crear'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125110388339026211)
,p_name=>'CREATED'
,p_message_language=>'es'
,p_message_text=>unistr('Fecha de creaci\00F3n')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125110480434026211)
,p_name=>'CREATED_BY'
,p_message_language=>'es'
,p_message_text=>'Creado por'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125031386130026187)
,p_name=>'CREATED_ON'
,p_message_language=>'es'
,p_message_text=>unistr('Fecha de creaci\00F3n')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125042484503026191)
,p_name=>'CUSTOM'
,p_message_language=>'es'
,p_message_text=>'Personalizado'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125053678289026194)
,p_name=>'CUSTOMIZE'
,p_message_language=>'es'
,p_message_text=>'Personalizar'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125055681601026195)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'es'
,p_message_text=>unistr('Restablecimiento de las preferencias de p\00E1gina para el usuario %0.')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125055731665026195)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'es'
,p_message_text=>'Las preferencias han cambiado para el usuario %0.'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125055558914026195)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'es'
,p_message_text=>unistr('Restablecimiento de las preferencias de p\00E1gina para el usuario %0.')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125016604790026183)
,p_name=>'DAILY'
,p_message_language=>'es'
,p_message_text=>'Diariamente'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124980069268026172)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'es'
,p_message_text=>unistr('El archivo cargado no es v\00E1lido o tiene una extensi\00F3n incorrecta.')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125012000405026182)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'es'
,p_message_text=>unistr('Se han utilizado selectores XML o JSON no v\00E1lidos.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124957139164026165)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'es'
,p_message_text=>'El perfil de datos y el archivo cargado no contiene ninguna columna de tabla de destino.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125071037363026199)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'es'
,p_message_text=>'No se han encontrado datos en el archivo cargado.'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125071161183026199)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'es'
,p_message_text=>'No se han encontrado datos en la hoja de trabajo "%0".'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124976978613026171)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'es'
,p_message_text=>'El archivo especificado no es un archivo XLSX.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124942909377026161)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'es'
,p_message_text=>'La carga de datos ha finalizado: %0 filas procesadas.'
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124945279376026162)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'es'
,p_message_text=>'La carga de datos ha finalizado: %0 filas procesadas con 1 error.'
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124945592425026162)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'es'
,p_message_text=>'La carga de datos ha finalizado: %0 filas procesadas con %1 errores.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124945360997026162)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'es'
,p_message_text=>'La carga de datos ha finalizado: 1 fila procesada.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124959677740026166)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'es'
,p_message_text=>'La carga de datos ha finalizado: 1 fila procesada con error.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124945418545026162)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'es'
,p_message_text=>'La carga de datos ha finalizado: 1 fila procesada sin error.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125078149846026202)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'es'
,p_message_text=>'Columna de Destino'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124985316332026174)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'es'
,p_message_text=>'No Cargar'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124985454267026174)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'es'
,p_message_text=>'Error de preprocesamiento'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125078230998026202)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'es'
,p_message_text=>'Columna de origen'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125079098822026202)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'es'
,p_message_text=>unistr('Formato de Fecha/N\00FAmero')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124985127007026174)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'es'
,p_message_text=>'Insertar Fila'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125141212695026221)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'es'
,p_message_text=>'Fallo al recuperar el valor de consulta.'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125110967642026211)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'es'
,p_message_text=>unistr('Asignaci\00F3n de Datos/Tabla')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125079135334026202)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'es'
,p_message_text=>'Fila'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124985515874026174)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'es'
,p_message_text=>unistr('Secuencia: Acci\00F3n')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125072884318026200)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'es'
,p_message_text=>unistr('Fallo de la regla de transformaci\00F3n')
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124985203141026174)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'es'
,p_message_text=>'Actualizar fila'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125047567034026192)
,p_name=>'DATE'
,p_message_language=>'es'
,p_message_text=>'Fecha'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125020468185026184)
,p_name=>'DAY'
,p_message_language=>'es'
,p_message_text=>unistr('d\00EDa')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125020547151026184)
,p_name=>'DAYS'
,p_message_language=>'es'
,p_message_text=>unistr('d\00EDas')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125060969339026196)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'es'
,p_message_text=>unistr('La depuraci\00F3n no est\00E1 activada para esta aplicaci\00F3n.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125112609785026212)
,p_name=>'DEFAULT'
,p_message_language=>'es'
,p_message_text=>'Por defecto'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125021224228026184)
,p_name=>'DELETE'
,p_message_language=>'es'
,p_message_text=>'suprimir'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124996891130026177)
,p_name=>'DELETE_MSG'
,p_message_language=>'es'
,p_message_text=>unistr('\00BFDesea realizar esta acci\00F3n de supresi\00F3n?')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124976403081026171)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'es'
,p_message_text=>unistr('Sustituciones de sesi\00F3n')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124977350358026171)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'es'
,p_message_text=>unistr('Activar sustituciones de sesi\00F3n')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124978270524026171)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha producido un error al cargar las sustituciones de sesi\00F3n.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124978091539026171)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha producido un error al guardar las sustituciones de sesi\00F3n.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124977904471026171)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'es'
,p_message_text=>unistr('Sustituciones de sesi\00F3n guardadas. Cierre este di\00E1logo para ver los cambios.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124951197563026163)
,p_name=>'DIAL_PCT'
,p_message_language=>'es'
,p_message_text=>'Dial (Porcentaje)'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124992116938026176)
,p_name=>'DOWNLOAD'
,p_message_language=>'es'
,p_message_text=>'Descargar'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125111728953026212)
,p_name=>'DUP_USER'
,p_message_language=>'es'
,p_message_text=>'Nombre de usuario duplicado en la lista.'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125000509526026178)
,p_name=>'EDIT'
,p_message_language=>'es'
,p_message_text=>'Editar'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125011782318026182)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado la direcci\00F3n de correo electr\00F3nico "%0".')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124994457003026176)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'es'
,p_message_text=>unistr('Este correo electr\00F3nico lo ha enviado %0.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125111978437026212)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'es'
,p_message_text=>unistr('La direcci\00F3n de correo electr\00F3nico es demasiado larga. El l\00EDmite es de 240 caracteres.')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125042187590026191)
,p_name=>'ERROR'
,p_message_language=>'es'
,p_message_text=>'Error'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125072944352026200)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido definir el valor de origen del elemento de la p\00E1gina para la regi\00F3n de refrescamiento de la p\00E1gina parcial')
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125033467717026188)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'es'
,p_message_text=>'Creado por'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124994782101026176)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'es'
,p_message_text=>unistr('Contrase\00F1a caducada')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124987139397026174)
,p_name=>'FILE_EMPTY'
,p_message_language=>'es'
,p_message_text=>unistr('El archivo est\00E1 vac\00EDo.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125076997424026201)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'es'
,p_message_text=>unistr('El tama\00F1o del archivo cargado era de unos %0 MB. Cargue un archivo m\00E1s peque\00F1o.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124997050231026177)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha producido un fallo de autenticaci\00F3n y no se han cargado uno o m\00E1s archivos.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124997187893026177)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'es'
,p_message_text=>'Esta instancia no permite la carga de archivos a usuarios no autenticados.'
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125077001829026201)
,p_name=>'FILTERS'
,p_message_language=>'es'
,p_message_text=>'Filtros'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125055021484026195)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'es'
,p_message_text=>'Se ha producido 1 error'
,p_is_js_message=>true
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125054205040026194)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'es'
,p_message_text=>'Se han producido %0 errores'
,p_is_js_message=>true
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124999648819026178)
,p_name=>'FORM_OF'
,p_message_language=>'es'
,p_message_text=>'%0 de %1'
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125038646615026190)
,p_name=>'GO'
,p_message_language=>'es'
,p_message_text=>'Ir'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125140800467026220)
,p_name=>'HELP'
,p_message_language=>'es'
,p_message_text=>'Ayuda'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124981918103026173)
,p_name=>'HOME'
,p_message_language=>'es'
,p_message_text=>'Inicio'
,p_is_js_message=>true
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125020251049026184)
,p_name=>'HOUR'
,p_message_language=>'es'
,p_message_text=>'hora'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125020394648026184)
,p_name=>'HOURS'
,p_message_language=>'es'
,p_message_text=>'horas'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125001716226026179)
,p_name=>'ICON'
,p_message_language=>'es'
,p_message_text=>'Icono %0'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124979074613026172)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'es'
,p_message_text=>'Ayuda de recorte de icono'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124980200357026172)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Arrastre su icono y utilice la gu\00EDa de desplazamiento de zoom para cambiar su posici\00F3n en el marco.</p>'),
'',
unistr('<p>Cuando cargue un nuevo icono, se ajustar\00E1 su tama\00F1o para adaptarlo a tres formatos: icono de favoritos, icono peque\00F1o e icono grande.</p>'),
'',
unistr('<p>Al utilizar la herramienta de recorte de iconos, dispondr\00E1 de los siguientes m\00E9todos abreviados de teclado:</p>'),
'<ul>',
'    <li>Flecha izquierda: Mover imagen hacia la izquierda*</li>',
'    <li>Flecha arriba: Mover imagen hacia arriba*</li>',
'    <li>Flecha derecha: Mover imagen hacia la derecha*</li>',
'    <li>Flecha abajo: Mover imagen hacia abajo*</li>',
'    <li>I: Acercar</li>',
'    <li>O: Alejar</li>',
'    <li>L: Rotar a la izquierda</li>',
'    <li>R: Rotar a la derecha</li>',
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Mantenga pulsado May\00FAs para mover m\00E1s r\00E1pido la imagen</em></p>')))
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124985774960026174)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Arrastre para cambiar la posici\00F3n del icono')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124985825328026174)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('Mueva la gu\00EDa de desplazamiento para ajustar el nivel de zoom')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124978866115026172)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('Editar icono de aplicaci\00F3n')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124979108876026172)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'es'
,p_message_text=>'Error al guardar el icono'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125061596601026197)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'es'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> Esta aplicaci\00F3n utiliza iconos heredados. Al cargar un nuevo icono se sustituir\00E1n todos los iconos heredados.</p>')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124979797464026172)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'es'
,p_message_text=>'Cargar un nuevo icono'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125055986636026195)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'es'
,p_message_text=>unistr('Credenciales de conexi\00F3n no v\00E1lidas')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125157016651026225)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'es'
,p_message_text=>unistr('Valor no v\00E1lido para el par\00E1metro: %0')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125050245121026193)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'es'
,p_message_text=>'Como Valores de Informe por Defecto'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125050368970026193)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'es'
,p_message_text=>'Como Informe con Nombre'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125032224657026188)
,p_name=>'IR_ERROR'
,p_message_language=>'es'
,p_message_text=>'Error %0. %1'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125031922769026188)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido calcular la navegaci\00F3n de pantalla. %0')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125007546717026180)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado el informe interactivo.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125006951078026180)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('La regi\00F3n de informes interactivos no existe en la aplicaci\00F3n %0, p\00E1gina %1 y regi\00F3n %2.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125050119639026193)
,p_name=>'IR_STAR'
,p_message_language=>'es'
,p_message_text=>unistr('S\00F3lo se muestra a los desarrolladores')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125038311316026189)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('La consulta de informe necesita una clave \00FAnica para identificar cada fila. La clave proporcionada no se puede utilizar para esta consulta. Defina una columna de clave \00FAnica. %0')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125038465970026190)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'es'
,p_message_text=>unistr('La consulta de informe necesita una clave \00FAnica para identificar cada fila. La clave proporcionada no se puede utilizar para esta consulta. Edite los atributos del informe para definir una columna de clave \00FAnica. %0')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125079309345026202)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Archivo'
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125079202650026202)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'es'
,p_message_text=>unistr('Arrastre y suelte un archivo aqu\00ED o')
,p_is_js_message=>true
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124999935563026178)
,p_name=>'ITEMS'
,p_message_language=>'es'
,p_message_text=>'Elementos'
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125033664687026188)
,p_name=>'ITEM_VALUE'
,p_message_language=>'es'
,p_message_text=>'Valor de Elemento'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125048253015026192)
,p_name=>'LABEL'
,p_message_language=>'es'
,p_message_text=>'Etiqueta'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125060851529026196)
,p_name=>'LANGUAGE'
,p_message_language=>'es'
,p_message_text=>'Idioma'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125020904881026184)
,p_name=>'LAST'
,p_message_language=>'es'
,p_message_text=>unistr('\00FAltimo')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124996938250026177)
,p_name=>'LENGTH'
,p_message_language=>'es'
,p_message_text=>'Longitud'
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125055266933026195)
,p_name=>'LOGIN'
,p_message_language=>'es'
,p_message_text=>'Conectar'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125096886356026207)
,p_name=>'MANAGE'
,p_message_language=>'es'
,p_message_text=>'Gestionar'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125159975571026226)
,p_name=>'MAXIMIZE'
,p_message_language=>'es'
,p_message_text=>'Maximizar'
,p_is_js_message=>true
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125020062116026184)
,p_name=>'MINUTE'
,p_message_language=>'es'
,p_message_text=>'minuto'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125020175487026184)
,p_name=>'MINUTES'
,p_message_language=>'es'
,p_message_text=>'minutos'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125112185525026212)
,p_name=>'MISSING_AT'
,p_message_language=>'es'
,p_message_text=>unistr('Falta "@" en la direcci\00F3n de correo electr\00F3nico.')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125112371760026212)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'es'
,p_message_text=>unistr('Advertencia: no se ha definido ninguna plantilla de p\00E1gina de cuadro de di\00E1logo para la p\00E1gina de cuadro de di\00E1logo %0 en la aplicaci\00F3n %1.')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125112016581026212)
,p_name=>'MISSING_DOT'
,p_message_language=>'es'
,p_message_text=>unistr('Falta "." en el dominio de la direcci\00F3n de correo electr\00F3nico.')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125058317231026196)
,p_name=>'MODULE'
,p_message_language=>'es'
,p_message_text=>unistr('M\00F3dulo')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125012586822026182)
,p_name=>'MONTH'
,p_message_language=>'es'
,p_message_text=>'Mes'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125016467190026183)
,p_name=>'MONTHLY'
,p_message_language=>'es'
,p_message_text=>'Mensualmente'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125012604118026182)
,p_name=>'MONTHS'
,p_message_language=>'es'
,p_message_text=>'meses'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125047885714026192)
,p_name=>'MOVE'
,p_message_language=>'es'
,p_message_text=>'Mover'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125118650748026214)
,p_name=>'MOVE_FROM'
,p_message_language=>'es'
,p_message_text=>'Mover de'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125118711857026214)
,p_name=>'MOVE_TO'
,p_message_language=>'es'
,p_message_text=>'Mover a'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125034811252026188)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'es'
,p_message_text=>unistr('Error en operaci\00F3n de supresi\00F3n de varias filas: filas= %0, %1, %2')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125033894782026188)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'es'
,p_message_text=>unistr('No Debe Ser Usuario P\00FAblico')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124982423685026173)
,p_name=>'NAME'
,p_message_language=>'es'
,p_message_text=>'Nombre'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125048092967026192)
,p_name=>'NEW'
,p_message_language=>'es'
,p_message_text=>'Nuevo'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125012377325026182)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'es'
,p_message_text=>'Se puede conectar a %0 mediante:'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125012466610026182)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'es'
,p_message_text=>unistr('Notificaci\00F3n de Nueva Cuenta de %0')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125141084695026220)
,p_name=>'NEXT'
,p_message_language=>'es'
,p_message_text=>'Siguiente'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125058218389026195)
,p_name=>'NO'
,p_message_language=>'es'
,p_message_text=>'No'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125155130045026225)
,p_name=>'NOBODY'
,p_message_language=>'es'
,p_message_text=>'nadie'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125021311972026184)
,p_name=>'NOT'
,p_message_language=>'es'
,p_message_text=>'No'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125064295065026197)
,p_name=>'NOT_NULL'
,p_message_language=>'es'
,p_message_text=>'No Nulo'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125033916828026188)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'es'
,p_message_text=>'No %0'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125053728937026194)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado ning\00FAn dato')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125063730286026197)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado ning\00FAn informe actualizable. Las operaciones de supresi\00F3n y actualizaci\00F3n de varias filas s\00F3lo se pueden realizar en pantallas tabulares del tipo ''Informe Actualizable''.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125064645031026197)
,p_name=>'OK'
,p_message_language=>'es'
,p_message_text=>'Aceptar'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125059990450026196)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'es'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125158828445026226)
,p_name=>'ORA_06550'
,p_message_language=>'es'
,p_message_text=>unistr('ORA-06550: l\00EDnea %0, columna %1')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125109754811026211)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'es'
,p_message_text=>unistr('Est\00E1 utilizando un explorador web anticuado. Para obtener una lista de exploradores web soportados, consulte la Gu\00EDa de instalaci\00F3n de Oracle APEX.')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125004728631026179)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha solicitado un juego de filas no v\00E1lido, los datos de origen del informe se han modificado.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125026711286026186)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Se debe especificar un n\00FAmero de p\00E1gina v\00E1lido, por ejemplo p?n=1234.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125030974858026187)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'es'
,p_message_text=>'Siguiente'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125031043518026187)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'es'
,p_message_text=>'Juego Siguiente'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125031109832026187)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'es'
,p_message_text=>'Anterior'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125031265495026187)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'es'
,p_message_text=>'Juego Anterior'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125140996142026220)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'es'
,p_message_text=>unistr('Seleccionar paginaci\00F3n')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125070900013026199)
,p_name=>'PASSWORD'
,p_message_language=>'es'
,p_message_text=>unistr('Contrase\00F1a')
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125011680856026181)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha cambiado la contrase\00F1a para %0.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124999304087026178)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a no cumple las reglas de complejidad de contrase\00F1a de esta direcci\00F3n.')
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124998410750026178)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a nueva y la antigua deben ser diferentes en al menos %0 caracteres.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124999005032026178)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a no debe contener el nombre de usuario.')
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124999222569026178)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a contiene una palabra simple prohibida.')
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124999163062026178)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a no debe contener el nombre del espacio de trabajo.')
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124998331943026178)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a debe tener al menos %0 caracteres.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124998593391026178)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a debe contener al menos un car\00E1cter alfab\00E9tico (%0).')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124998960108026178)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a debe contener al menos un car\00E1cter alfab\00E9tico en min\00FAsculas.')
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124998618915026178)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a debe contener al menos un car\00E1cter num\00E9rico (0123456789).')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124998718308026178)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a debe contener al menos un car\00E1cter de puntuaci\00F3n (%0).')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124998827041026178)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a debe contener al menos un car\00E1cter alfab\00E9tico en may\00FAsculas.')
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125012186941026182)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'es'
,p_message_text=>unistr('Notificaci\00F3n de Restablecimiento de Contrase\00F1a')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124997290339026177)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('La contrase\00F1a no se puede utilizar porque se ha utilizado en los \00FAltimos %0 d\00EDas.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124993990062026176)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'es'
,p_message_text=>unistr('Gr\00E1fico de Porcentaje')
,p_is_js_message=>true
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125085513665026204)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'es'
,p_message_text=>'Elementos'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125085611801026204)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'es'
,p_message_text=>'Elemento'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125059727334026196)
,p_name=>'PERCENT'
,p_message_language=>'es'
,p_message_text=>'Porcentaje'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125029017785026187)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'es'
,p_message_text=>unistr('P\00F3ngase en contacto con el administrador.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125141170096026221)
,p_name=>'PREVIOUS'
,p_message_language=>'es'
,p_message_text=>'Anterior'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125077795157026201)
,p_name=>'PRINT'
,p_message_language=>'es'
,p_message_text=>'Imprimir'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125058533143026196)
,p_name=>'PRIVILEGES'
,p_message_language=>'es'
,p_message_text=>'Privilegios'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125027130337026186)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'es'
,p_message_text=>unistr('Referencias de regi\00F3n')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125048103919026192)
,p_name=>'REPORT'
,p_message_language=>'es'
,p_message_text=>'Informe'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125058445106026196)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'es'
,p_message_text=>unistr('Per\00EDodo del Informe')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125141300556026221)
,p_name=>'REPORT_LABEL'
,p_message_language=>'es'
,p_message_text=>'Informe: %0'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125059171681026196)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'es'
,p_message_text=>'Total de Informe'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125004871065026179)
,p_name=>'RESET'
,p_message_language=>'es'
,p_message_text=>unistr('Restablecer Paginaci\00F3n')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125033554313026188)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'es'
,p_message_text=>unistr('Restablecer Paginaci\00F3n')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125063682211026197)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'es'
,p_message_text=>unistr('Restablecer contrase\00F1a')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125039436736026190)
,p_name=>'RESTORE'
,p_message_language=>'es'
,p_message_text=>'Restaurar'
,p_is_js_message=>true
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125073095726026200)
,p_name=>'RESULTS'
,p_message_language=>'es'
,p_message_text=>'Resultados'
,p_version_scn=>2692618
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125064766798026197)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'es'
,p_message_text=>unistr('Volver a la Aplicaci\00F3n')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125065120373026198)
,p_name=>'RIGHT'
,p_message_language=>'es'
,p_message_text=>'Derecha'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125097187091026207)
,p_name=>'ROW'
,p_message_language=>'es'
,p_message_text=>'Fila %0'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125047758124026192)
,p_name=>'ROW_COUNT'
,p_message_language=>'es'
,p_message_text=>'Recuento de filas'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124937538715026159)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'es'
,p_message_text=>'Consultar Oracle'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124937859923026160)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'es'
,p_message_text=>'Cerrar Consultar Oracle'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124938197642026160)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'es'
,p_message_text=>'Lista de Notificaciones'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124937761790026159)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'es'
,p_message_text=>'Abrir Ask Oracle'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124938049635026160)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'es'
,p_message_text=>unistr('Asignaci\00F3n de producto')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124937921166026160)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'es'
,p_message_text=>'Lista de sugerencias'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124938858993026160)
,p_name=>'RW_CLEAR'
,p_message_language=>'es'
,p_message_text=>'Borrar'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124938702445026160)
,p_name=>'RW_CLOSE'
,p_message_language=>'es'
,p_message_text=>'Cerrar'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124938543648026160)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'es'
,p_message_text=>unistr('Ver M\00E1s')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124938981372026160)
,p_name=>'RW_GO_TO'
,p_message_language=>'es'
,p_message_text=>'Ir a'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124938394079026160)
,p_name=>'RW_GP_STEP'
,p_message_language=>'es'
,p_message_text=>'Paso'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124938423262026160)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'es'
,p_message_text=>'de'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124938207678026160)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'es'
,p_message_text=>unistr('Conmutar visualizaci\00F3n de pasos')
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124937317958026159)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'es'
,p_message_text=>unistr('Ocultar contrase\00F1a')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124938650305026160)
,p_name=>'RW_OPEN'
,p_message_language=>'es'
,p_message_text=>'Abrir'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124937109184026159)
,p_name=>'RW_ORACLE'
,p_message_language=>'es'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124937278360026159)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'es'
,p_message_text=>unistr('Mostrar Contrase\00F1a')
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124939020962026160)
,p_name=>'RW_START'
,p_message_language=>'es'
,p_message_text=>'Inicio'
,p_is_js_message=>true
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125064146300026197)
,p_name=>'SAVE'
,p_message_language=>'es'
,p_message_text=>'Guardar'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125060320729026196)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'es'
,p_message_text=>'Por Defecto Alternativo'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125060723413026196)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'es'
,p_message_text=>unistr('Descripci\00F3n')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125060276043026196)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'es'
,p_message_text=>'Por Defecto Primario'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125061008947026196)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'es'
,p_message_text=>unistr('Hay m\00E1s de %0 filas disponibles. Aumente el selector de filas para ver m\00E1s.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125128452110026217)
,p_name=>'SEARCH'
,p_message_language=>'es'
,p_message_text=>'Buscar'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125019938761026184)
,p_name=>'SECONDS'
,p_message_language=>'es'
,p_message_text=>'segundos'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125059814816026196)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'es'
,p_message_text=>'Consulte adjuntos'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125120410528026214)
,p_name=>'SELECT_ROW'
,p_message_language=>'es'
,p_message_text=>'Seleccionar Fila'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125059556215026196)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'es'
,p_message_text=>'Desactivar Modo de Lector de Pantalla'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125059620681026196)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'es'
,p_message_text=>'Activar Modo de Lector de Pantalla'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125055875475026195)
,p_name=>'SHOW'
,p_message_language=>'es'
,p_message_text=>'Mostrar'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125122233672026215)
,p_name=>'SHOW_ALL'
,p_message_language=>'es'
,p_message_text=>'Mostrar todo'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125147080139026222)
,p_name=>'SIGN_IN'
,p_message_language=>'es'
,p_message_text=>'Conectar'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125097925864026208)
,p_name=>'SIGN_OUT'
,p_message_language=>'es'
,p_message_text=>unistr('Cerrar sesi\00F3n')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125048791614026193)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'es'
,p_message_text=>unistr('Hace %0 d\00EDas')
,p_is_js_message=>true
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125056388374026195)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>unistr('%0 d\00EDas desde ahora')
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125048625592026193)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'es'
,p_message_text=>'Hace %0 horas'
,p_is_js_message=>true
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125056296877026195)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'%0 horas desde ahora'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125048530210026193)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'es'
,p_message_text=>'Hace %0 minutos'
,p_is_js_message=>true
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125056104954026195)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'%0 minutos desde ahora'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125048928922026193)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'es'
,p_message_text=>'Hace %0 meses'
,p_is_js_message=>true
,p_version_scn=>2692612
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125056500491026195)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'%0 meses desde ahora'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125056725033026195)
,p_name=>'SINCE_NOW'
,p_message_language=>'es'
,p_message_text=>'Ahora'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125048472673026192)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'es'
,p_message_text=>'Hace %0 segundos'
,p_is_js_message=>true
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125056018655026195)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'%0 segundos desde ahora'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125048819534026193)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'es'
,p_message_text=>'Hace %0 semanas'
,p_is_js_message=>true
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125056423340026195)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>'%0 semanas desde ahora'
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125049071617026193)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'es'
,p_message_text=>unistr('Hace %0 a\00F1os')
,p_is_js_message=>true
,p_version_scn=>2692612
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125056621928026195)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'es'
,p_message_text=>unistr('%0 a\00F1os desde ahora')
,p_is_js_message=>true
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125042501494026191)
,p_name=>'STANDARD'
,p_message_language=>'es'
,p_message_text=>unistr('Est\00E1ndar')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125059459283026196)
,p_name=>'START_DATE'
,p_message_language=>'es'
,p_message_text=>'Fecha de inicio'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124994670014026176)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'es'
,p_message_text=>unistr('Est\00E1 recibiendo este correo electr\00F3nico de la suscripci\00F3n de informes interactivos creada por %0.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125156265975026225)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'es'
,p_message_text=>'Suscripciones'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125105694323026210)
,p_name=>'TAB'
,p_message_language=>'es'
,p_message_text=>'Separador'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125019897855026184)
,p_name=>'TITLE'
,p_message_language=>'es'
,p_message_text=>unistr('T\00EDtulo')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124999529540026178)
,p_name=>'TODAY'
,p_message_language=>'es'
,p_message_text=>'Hoy'
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125059070638026196)
,p_name=>'TOTAL'
,p_message_language=>'es'
,p_message_text=>'Total'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125000881298026178)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'es'
,p_message_text=>unistr('Se puede seleccionar un m\00E1ximo de %0 columnas.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124956638762026165)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'es'
,p_message_text=>'Reducir todo'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124957208545026165)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'es'
,p_message_text=>'Reducir Todo Debajo'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124956201863026165)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'es'
,p_message_text=>'Ampliar todo'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124956918744026165)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'es'
,p_message_text=>'Ampliar Todo Debajo'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124957469567026165)
,p_name=>'TREE.REPARENT'
,p_message_language=>'es'
,p_message_text=>'Crear nuevo principal'
,p_is_js_message=>true
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125079529680026202)
,p_name=>'TREES'
,p_message_language=>'es'
,p_message_text=>unistr('\00C1rboles')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125122397384026215)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Obligatorio'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125043236976026191)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'es'
,p_message_text=>'No autorizado'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125093412322026206)
,p_name=>'UNAVAILABLE'
,p_message_language=>'es'
,p_message_text=>'No disponible'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125057146396026195)
,p_name=>'UNKNOWN'
,p_message_language=>'es'
,p_message_text=>'Desconocido'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124995573499026177)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha producido un error de autenticaci\00F3n no reconocido.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124997762844026177)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'es'
,p_message_text=>unistr('Si ya no desea recibir m\00E1s correos electr\00F3nicos, haga clic en <a href="%0">Anular Suscripci\00F3n</a> para gestionar la suscripci\00F3n.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124994556944026176)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'es'
,p_message_text=>unistr('Si ya no desea recibir correos electr\00F3nicos, vaya a la siguiente URL para gestionar la suscripci\00F3n:')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125034059861026188)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'es'
,p_message_text=>'tipo de dato no soportado'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125021153515026184)
,p_name=>'UPDATE'
,p_message_language=>'es'
,p_message_text=>'actualizar'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125019719117026184)
,p_name=>'UPDATED'
,p_message_language=>'es'
,p_message_text=>'Actualizado'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124962931799026167)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'es'
,p_message_text=>unistr('Actualizaci\00F3n en Curso')
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124963257420026167)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'es'
,p_message_text=>unistr('Oracle APEX est\00E1 cambiando de versi\00F3n a una m\00E1s reciente. Este proceso suele durar alrededor de 3 minutos.')
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125026580141026186)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'es'
,p_message_text=>unistr('La direcci\00F3n URL solicitada se ha prohibido. P\00F3ngase en contacto con el administrador.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125047676657026192)
,p_name=>'USER'
,p_message_language=>'es'
,p_message_text=>'Usuario'
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125070874800026199)
,p_name=>'USERNAME'
,p_message_language=>'es'
,p_message_text=>'Nombre de usuario'
,p_version_scn=>2692617
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125112268095026212)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'es'
,p_message_text=>unistr('El nombre de usuario es demasiado largo. El l\00EDmite es de %0 caracteres.')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125054732006026194)
,p_name=>'USERS'
,p_message_language=>'es'
,p_message_text=>'usuarios'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125111822441026212)
,p_name=>'USER_EXISTS'
,p_message_language=>'es'
,p_message_text=>'El nombre de usuario ya existe.'
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125125645491026216)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'es'
,p_message_text=>'Imagen de perfil del usuario %0'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124987594368026174)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'es'
,p_message_text=>unistr('Automatizaci\00F3n - %0')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124986041486026174)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'es'
,p_message_text=>unistr('P\00E1gina %0 - %1 ')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124988995519026175)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'es'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124989037905026175)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'es'
,p_message_text=>'%0 - %1'
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124987935602026174)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'es'
,p_message_text=>unistr('Configuraci\00F3n de b\00FAsqueda - %0')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124987874723026174)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'es'
,p_message_text=>unistr('Lista de valores din\00E1mica compartida - %0')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124987670129026174)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'es'
,p_message_text=>unistr('Definici\00F3n de tarea - %0')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124986194786026174)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'es'
,p_message_text=>'Flujo de trabajo - %0 '
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125008266570026180)
,p_name=>'VALID'
,p_message_language=>'es'
,p_message_text=>unistr('V\00E1lido')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124999856960026178)
,p_name=>'VALIDATIONS'
,p_message_language=>'es'
,p_message_text=>'Validaciones'
,p_version_scn=>2692604
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125060575861026196)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'es'
,p_message_text=>'Se debe especificar un valor'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125106899476026210)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'es'
,p_message_text=>'Se debe especificar el valor para %0'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125029481639026187)
,p_name=>'VERTICAL'
,p_message_language=>'es'
,p_message_text=>'vertical'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125021059160026184)
,p_name=>'VIEW'
,p_message_language=>'es'
,p_message_text=>'ver'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125054817186026194)
,p_name=>'VIEWS'
,p_message_language=>'es'
,p_message_text=>'vistas'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125061337576026196)
,p_name=>'VIEW_ALL'
,p_message_language=>'es'
,p_message_text=>'Ver todo'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125001299176026178)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'es'
,p_message_text=>'Enalce visualmente oculto'
,p_is_js_message=>true
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125042019525026191)
,p_name=>'WARNING'
,p_message_language=>'es'
,p_message_text=>'Advertencia'
,p_is_js_message=>true
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125020623007026184)
,p_name=>'WEEK'
,p_message_language=>'es'
,p_message_text=>'semana'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125016589175026183)
,p_name=>'WEEKLY'
,p_message_language=>'es'
,p_message_text=>'Semanalmente'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125020733492026184)
,p_name=>'WEEKS'
,p_message_language=>'es'
,p_message_text=>'semanas'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125060636377026196)
,p_name=>'WELCOME_USER'
,p_message_language=>'es'
,p_message_text=>'Bienvenido: %0'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125058857659026196)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha encontrado un valor no v\00E1lido, verifique los datos introducidos.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125058906251026196)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha encontrado un valor no v\00E1lido, verifique los datos introducidos.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124996770388026177)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha encontrado un valor de fecha no v\00E1lido, compruebe el formato de fecha.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125058719367026196)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha encontrado un valor num\00E9rico no v\00E1lido, verifique el formato num\00E9rico.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125007891615026180)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha encontrado un valor de registro de hora no v\00E1lido, verifique el formato de registro de hora.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125032320164026188)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'es'
,p_message_text=>'No se ha podido enlazar a "%0". Utilice comillas dobles para los elementos de multibyte o verifique que la longitud del elemento sea de 30 bytes o menos. Utilice la sintaxis v() para hacer referencia a los elementos superiores a 30 bytes.'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125022125102026185)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'es'
,p_message_text=>unistr('Acceso denegado por la comprobaci\00F3n de seguridad %0')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125024641528026185)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'es'
,p_message_text=>unistr('Aplicaci\00F3n No Disponible')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125023006108026185)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado la aplicaci\00F3n.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125023117835026185)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('aplicaci\00F3n=%0, espacio de trabajo=%1')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125023583823026185)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'es'
,p_message_text=>unistr('El acceso a est\00E1 aplicaci\00F3n est\00E1 limitado. Vuelva a intentarlo m\00E1s tarde.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125023478852026185)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'es'
,p_message_text=>unistr('El acceso a esta aplicaci\00F3n est\00E1 limitado a los desarrolladores de aplicaciones. Vuelva a intentarlo m\00E1s tarde.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125022677401026185)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-7744: No se ha podido procesar la rama a la funci\00F3n que devuelve una direcci\00F3n URL.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125022540928026185)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-7744: No se ha podido procesar la rama a la funci\00F3n que devuelve una p\00E1gina.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125022899276026185)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-1430: No est\00E1 soportada la llamada de visualizaci\00F3n desde el proceso de p\00E1gina: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125023977813026185)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-1018: Error al borrar la cach\00E9 de paso.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125022391770026185)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-1005: Tipo de c\00E1lculo desconocido.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125023204098026185)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-1201: No se ha definido el identificador de sesi\00F3n en la autenticaci\00F3n personalizada.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125023390813026185)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('p\00E1gina=%0')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125022988653026185)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-7620: No se ha podido determinar el espacio de trabajo para la aplicaci\00F3n (%0).')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125003438700026179)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'es'
,p_message_text=>'Editar'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125022048774026185)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'es'
,p_message_text=>'ERR-1802: No se ha encontrado el identificador de elemento "%0"'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125021700678026185)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-1002: No se ha encontrado el identificador de elemento para el elemento "%0" en la aplicaci\00F3n "%1".')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125021851799026185)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'es'
,p_message_text=>unistr('Error inesperado. No se ha encontrado el nombre del elemento a nivel de p\00E1gina o aplicaci\00F3n.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125022220793026185)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Ya est\00E1 en la primera p\00E1gina de datos.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125038775459026190)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'es'
,p_message_text=>unistr('El identificador de elemento (%0) no corresponde a ning\00FAn elemento definido en la p\00E1gina actual.')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124996310721026177)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'es'
,p_message_text=>unistr('El elemento no se puede definir transfiriendo argumentos a la aplicaci\00F3n.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124996676539026177)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'es'
,p_message_text=>unistr('(No se ha proporcionado ning\00FAn total de control)')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124996135390026177)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'es'
,p_message_text=>unistr('El elemento se puede definir cuando va acompa\00F1ado de un total de control de tipo "marcador de nivel de usuario".')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124996072421026177)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'es'
,p_message_text=>unistr('El elemento se puede definir cuando va acompa\00F1ado de un total de control de tipo "marcador de nivel de aplicaci\00F3n".')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124996239667026177)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'es'
,p_message_text=>unistr('El elemento se puede definir cuando va acompa\00F1ado de un total de control de tipo "sesi\00F3n".')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124995923421026177)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'es'
,p_message_text=>unistr('El elemento no est\00E1 protegido.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125024086595026185)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'es'
,p_message_text=>unistr('No hay ninguna p\00E1gina de ayuda disponible.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125011932032026182)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'es'
,p_message_text=>'El espacio de trabajo %0 no tiene privilegios para analizar como esquema %1.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125022435336026185)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-1010: Se ha excedido el l\00EDmite de recursi\00F3n de procesamiento de aceptaci\00F3n de rama a p\00E1gina. %0')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124978941896026172)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'es'
,p_message_text=>unistr('P\00E1gina no disponible, no puede ejecutar un patr\00F3n de p\00E1gina.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124996547433026177)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'es'
,p_message_text=>unistr('No se puede llamar a esta p\00E1gina utilizando una direcci\00F3n URL o enviando GET o POST al procedimiento de presentaci\00F3n, se debe llamar utilizando un tipo de rama "Bifurcar a P\00E1gina" desde una p\00E1gina.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125081305802026203)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al intentar guardar el valor no num\00E9rico en el elemento %0. ')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125013698545026182)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'es'
,p_message_text=>unistr('El esquema de an\00E1lisis "%0" de la aplicaci\00F3n no existe en la base de datos.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125013728154026182)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'es'
,p_message_text=>unistr('Las cuentas en el espacio de trabajo interno s\00F3lo se pueden utilizar para acceder a los <a href="%0">Servicios de Administraci\00F3n</a> de &PRODUCT_NAME.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125021698197026184)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-1029: No se ha podido almacenar la informaci\00F3n de sesi\00F3n. sesi\00F3n=%0 elemento=%1')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125024749633026185)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'es'
,p_message_text=>'No se ha podido parar el rastreo: %0'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125021926451026185)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'es'
,p_message_text=>'Error inesperado'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125032790102026188)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'es'
,p_message_text=>'Error en update_substitution_cache: %0'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125024846805026185)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Para ver la ayuda se debe proporcionar la aplicaci\00F3n y la p\00E1gina.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125046523877026192)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado la automatizaci\00F3n.')
,p_version_scn=>2692610
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124982059256026173)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error de consulta de automatizaci\00F3n: %0')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125025942521026186)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'es'
,p_message_text=>'Se han depurado %0 sesiones.'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124967289208026168)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>unistr('No se puede ejecutar el c\00F3digo de %0. No est\00E1 soportado por la base de datos o no est\00E1 habilitado por el par\00E1metro de la instancia MLE_LANGUAGES.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124964894396026167)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>unistr('El motor multiling\00FCe no est\00E1 disponible en esta versi\00F3n de la base de datos.')
,p_version_scn=>2692596
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125004002702026179)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'es'
,p_message_text=>unistr('La matriz de recopilaci\00F3n de la aplicaci\00F3n no debe ser nula')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125003834125026179)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'es'
,p_message_text=>unistr('El n\00FAmero del atributo de miembro especificado %0 no es v\00E1lido. El n\00FAmero del atributo debe estar entre 1 y %1')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125004367463026179)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'es'
,p_message_text=>unistr('Existe una recopilaci\00F3n de aplicaciones')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125004189300026179)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'es'
,p_message_text=>unistr('El nombre de la recopilaci\00F3n no puede ser nulo')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125004271095026179)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'es'
,p_message_text=>unistr('El nombre de la recopilaci\00F3n no puede tener m\00E1s de 255 caracteres')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125003668927026179)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('La recopilaci\00F3n de la aplicaci\00F3n %0 no existe')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125004427353026179)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'es'
,p_message_text=>unistr('El cursor no est\00E1 todav\00EDa abierto')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125003764016026179)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('La secuencia de miembros %0 no existe en la recopilaci\00F3n de aplicaciones %1'),
''))
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125003932471026179)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'es'
,p_message_text=>unistr('La secuencia de miembros %0 no existe en la recopilaci\00F3n de aplicaciones "%1"')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124956789436026165)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'es'
,p_message_text=>unistr('El algoritmo %0 no est\00E1 soportado para ECDSA.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124956408839026165)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'es'
,p_message_text=>unistr('La curva el\00EDptica %0 no est\00E1 soportada.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125082120795026203)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('La funci\00F3n criptogr\00E1fica "%0" no est\00E1 soportada en este sistema.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125134485369026219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'es'
,p_message_text=>'Accesibilidad Probada'
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125025421913026186)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'es'
,p_message_text=>'Cerrar'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125025565709026186)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'es'
,p_message_text=>unistr('Opciones de Personalizaci\00F3n de P\00E1gina')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125025624867026186)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'es'
,p_message_text=>'Por defecto'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125025782325026186)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'es'
,p_message_text=>'Mostrado'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125025844458026186)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'es'
,p_message_text=>'Oculto'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125025237190026186)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'es'
,p_message_text=>unistr('Active las regiones que desea incluir en esta p\00E1gina. Las regiones activadas no aparecer\00E1n si no est\00E1 en el contexto de la aplicaci\00F3n adecuado o si no tiene los privilegios correspondientes.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125025359068026186)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'es'
,p_message_text=>unistr('Esta p\00E1gina no se puede personalizar.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125134721463026219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'es'
,p_message_text=>unistr('Puede personalizar la apariencia de esta aplicaci\00F3n cambiando el estilo de tema. Seleccione un estilo de tema de la lista que muestra a continuaci\00F3n y haga clic en Aplicar Cambios.')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125135541963026219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'es'
,p_message_text=>unistr('Visualizaci\00F3n de la Regi\00F3n')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125134626199026219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'es'
,p_message_text=>unistr('Usar Estilo por Defecto de la Aplicaci\00F3n')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125134589154026219)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'es'
,p_message_text=>'Apariencia '
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125078734392026202)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('El \00EDndice de columnas al que se hace referencia en el %0 agregado no existe.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124971457135026169)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>unistr('La anexi\00F3n de la exportaci\00F3n de datos no est\00E1 soportada para el formato %0.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124934451816026158)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>'La salida CLOB no es compatible con el formato %0.'
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125078473579026202)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'es'
,p_message_text=>'El salto de columna debe estar al principio de la matriz de columnas.'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125078551650026202)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('El \00EDndice de grupos de columnas al que se hace referencia en %0 no existe.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124985639553026174)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'es'
,p_message_text=>'exportar'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124992849571026176)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'es'
,p_message_text=>unistr('El formato de exportaci\00F3n debe ser XML con ORDS como servidor de impresi\00F3n.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125078873809026202)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('El \00EDndice de columnas al que se hace referencia en el %0 resaltado no existe.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124982220769026173)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'es'
,p_message_text=>unistr('Formato de exportaci\00F3n no v\00E1lido: %0')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125078691078026202)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>unistr('El \00EDndice de grupos principales al que se hace referencia en %0 no existe.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125103843138026209)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'es'
,p_message_text=>unistr('La columna %1 de la tabla %0 es una columna de identidad "SIEMPRE GENERADA". Aseg\00FArese de que ninguna columna de origen est\00E9 asignada a la columna %1 en el cuadro de di\00E1logo Configurar.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125015466748026183)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'es'
,p_message_text=>unistr('El intervalo de confirmaci\00F3n que se ha especificado es demasiado bajo.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125015589964026183)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'es'
,p_message_text=>'No se han proporcionado columnas en la carga de datos.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125016846824026183)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado ninguna columna para el selector de filas "%0". Pruebe a detectar autom\00E1ticamente o revisar la estructura de JSON.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125026258214026186)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado ninguna hoja de trabajo en el archivo XLSX.'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124971351229026169)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'es'
,p_message_text=>unistr('Los niveles de jerarqu\00EDa solicitados para detectar (%0) excede el m\00E1ximo de %1.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125026158470026186)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'es'
,p_message_text=>'La hoja de trabajo especificada no existe en el archivo XLSX.'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125004549901026179)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'es'
,p_message_text=>unistr('La versi\00F3n actual de los datos de la base de datos ha cambiado desde que el usuario inici\00F3 el proceso de actualizaci\00F3n.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125007471025026180)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'es'
,p_message_text=>'Error al actualizar las columnas de informe: %0'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125117965735026214)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'es'
,p_message_text=>'No se puede convertir %0 en SDO_GEOMETRY.'
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125054470433026194)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'es'
,p_message_text=>'La columna %0 del tipo de dato %1 no se puede convertir a VARCHAR2.'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125061885423026197)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado la columna "%0" especificada para el atributo "%1" en el origen de datos.'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124997908313026177)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'es'
,p_message_text=>'El tipo de filtro %0 no es compatible con las columnas de varios valores.'
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125121416275026215)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'es'
,p_message_text=>unistr('Filtro "entre" no v\00E1lido.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124977000954026171)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado ning\00FAn valor %2 en la columna %0, fila #%1.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124973797523026170)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'es'
,p_message_text=>'La columna %0 o la fila #%1 no existe.'
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124960355754026166)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha especificado un tipo de lista de valores no v\00E1lido.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124960217376026166)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'es'
,p_message_text=>unistr('Tipo de consulta no v\00E1lido. El tipo de consulta debe ser una tabla, una consulta SQL o una funci\00F3n PL/SQL que devuelva una consulta SQL.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125054586427026194)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Fallo al analizar la consulta SQL.',
'%0'))
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125061961909026197)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado la posici\00F3n de columna especificada %0 para el atributo "%1" en la sentencia SQL.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124951907966026164)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'es'
,p_message_text=>'Se han utilizado demasiados elementos en el filtro de varios valores.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125061759415026197)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'es'
,p_message_text=>'No se ha especificado ninguna columna para el atributo "%0".'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124960127250026166)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('El cuerpo de la funci\00F3n PL/SQL no devuelve ning\00FAn valor.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125077578648026201)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'es'
,p_message_text=>unistr('El origen de datos de REST carece de una operaci\00F3n que permita manejar la acci\00F3n de DML solicitada.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125119220086026214)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'es'
,p_message_text=>unistr('Los filtros de rango solo est\00E1n soportados en los tipos de datos NUMBER, DATE o TIMESTAMP.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124940185655026160)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'es'
,p_message_text=>'Fallo de solicitud con %0'
,p_version_scn=>2692593
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124943627516026161)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'es'
,p_message_text=>unistr('La conversi\00F3n de GeoJSON en SDO_GEOMETRY (columna %0) no est\00E1 disponible en esta base de datos.')
,p_version_scn=>2692594
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124947007666026162)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'es'
,p_message_text=>unistr('La conversi\00F3n de SDO_GEOMETRY (columna %0) no est\00E1 soportada para or\00EDgenes de datos XML.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124971197201026169)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'es'
,p_message_text=>unistr('El car\00E1cter %0 no est\00E1 soportado como separador de varios valores.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125119357957026214)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'es'
,p_message_text=>unistr('Esta funci\00F3n no se puede utilizar en un contexto de consulta.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124947108061026162)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'es'
,p_message_text=>'El tipo de dato de la columna no coincide.'
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124980673781026172)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'es'
,p_message_text=>'Este origen de datos no soporta el cambio de varias filas.'
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124960020815026166)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'es'
,p_message_text=>unistr('Se han superado los l\00EDmites de enlace OUT de ORDS internos. Reduzca la cantidad de filas DML.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125062716168026197)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'No se ha podido analizar la respuesta JSON del servidor remoto: ',
'%0'))
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124959907012026166)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Tipo de contexto desconocido o err\00F3neo.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124984097282026173)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'es'
,p_message_text=>unistr('Componentes no soportados para la exportaci\00F3n legible: %0')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125082062915026203)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'es'
,p_message_text=>unistr('Este tipo de archivo no est\00E1 soportado por el analizador.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125032877275026188)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'es'
,p_message_text=>'Acceso no autorizado  (no se ha definido wwv_flow_api.set_credentials).'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125007704795026180)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'es'
,p_message_text=>'No se ha creado el espacio de trabajo porque ya existe.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125007656192026180)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'es'
,p_message_text=>'No se ha creado el grupo de usuarios porque ya existe.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125019030311026184)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'es'
,p_message_text=>'Se ha encontrado un nombre de usuario duplicado para %0.'
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125019131365026184)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'es'
,p_message_text=>'Error al cargar los usuarios. Fallo en el usuario %0.'
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125029942808026187)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'es'
,p_message_text=>unistr('Deber\00EDa tener %0 usuarios cargados.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125029735829026187)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'es'
,p_message_text=>unistr('Contrase\00F1a')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125029850380026187)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'es'
,p_message_text=>'Privilegios'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125029584515026187)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'es'
,p_message_text=>'Nombre de usuario'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125109996072026211)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('Error en la presentaci\00F3n del elemento de p\00E1gina #COMPONENT_NAME#.')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125024904709026185)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('No se puede mostrar el elemento de p\00E1gina porque a\00FAn no se ha abierto la pantalla HTML.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124983398397026173)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al calcular el valor por defecto del elemento para el elemento de p\00E1gina #COMPONENT_NAME#.')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125024224192026185)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Error en el c\00E1lculo posterior del elemento para el elemento de p\00E1gina #COMPONENT_NAME#.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125024190705026185)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Error al calcular el valor de origen del elemento para el elemento de p\00E1gina #COMPONENT_NAME#.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125000964475026178)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'es'
,p_message_text=>'Acceso no autorizado.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124950471003026163)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'es'
,p_message_text=>unistr('El valor %0 de %1 no es una matriz de JSON v\00E1lida.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125024440118026185)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'es'
,p_message_text=>unistr('JavaScript no est\00E1 soportado.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125024549740026185)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'es'
,p_message_text=>'Lista'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125025190997026186)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'es'
,p_message_text=>'No se ha podido inicializar la consulta.'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125033148893026188)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('No est\00E1 soportada la actualizaci\00F3n de %0.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125026644667026186)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Identificador de elemento no v\00E1lido: %0 ')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125054309645026194)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'es'
,p_message_text=>'No existe ayuda para este elemento.'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125016155893026183)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'es'
,p_message_text=>unistr('Fallo en la generaci\00F3n de consulta de gr\00E1fico. Consulte la configuraci\00F3n de asignaci\00F3n de columna y origen.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125017495604026183)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'es'
,p_message_text=>unistr('Valor no v\00E1lido para el par\00E1metro p_mail_id: %0')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125054133293026194)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'es'
,p_message_text=>unistr('No se pueden usar los valores de los campos "A" o "Responder a" como la direcci\00F3n "De", ya que contienen varias direcciones de correo electr\00F3nico.')
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125139062826026220)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'es'
,p_message_text=>unistr('Ha excedido el n\00FAmero m\00E1ximo de mensajes de correo electr\00F3nico por espacio de trabajo. P\00F3ngase en contacto con el administrador.')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124995630425026177)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'es'
,p_message_text=>unistr('Este procedimiento se debe llamar desde una sesi\00F3n de aplicaci\00F3n.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125017342789026183)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha proporcionado un valor nulo para el par\00E1metro %0.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125075498381026201)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado la plantilla de email "%0" en la aplicaci\00F3n %1.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125151947084026224)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'es'
,p_message_text=>unistr('El par\00E1metro de la instancia SMTP_HOST_ADDRESS se debe definir para enviar correos.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125016759169026183)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Debe proporcionar un destinatario de mensaje para enviar correo.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125141437791026221)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido establecer la conexi\00F3n SMTP con el servidor de correo electr\00F3nico configurado.')
,p_version_scn=>2692627
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125116798119026213)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'es'
,p_message_text=>unistr('Llamada de AJAX no v\00E1lida.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125000623228026178)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha definido ninguna funci\00F3n AJAX para el plugin %0')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125107282063026210)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha definido ninguna funci\00F3n de ejecuci\00F3n para el plugin %0')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125000736981026178)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha definido ninguna funci\00F3n de presentaci\00F3n para el plugin %0')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125117654780026214)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('El plugin de origen de datos de REST "%0" no contiene una funci\00F3n "Capacidades".')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125117580608026213)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('El plugin de origen de datos de REST "%0" no contiene una funci\00F3n DML.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125117790914026214)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('El plugin de origen de datos de REST "%0" no contiene una funci\00F3n de ejecuci\00F3n.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125117850879026214)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'es'
,p_message_text=>unistr('El plugin de origen de datos de REST "%0" no contiene una funci\00F3n de recuperaci\00F3n.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124998130366026177)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Error en el c\00F3digo PLSQL provocado durante el procesamiento del plugin.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125006788124026180)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Se debe especificar un valor.'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125039773408026190)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'es'
,p_message_text=>'El tipo de dato %0 no se puede convertir a VARCHAR2.'
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125127972371026217)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>'No se ha encontrado la columna "%0" especificada para el atributo "%1" en la sentencia SQL.'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124955233197026165)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'es'
,p_message_text=>unistr('El valor %0 de %1 no es una matriz de JSON v\00E1lida.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125105106079026210)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'es'
,p_message_text=>'Se debe especificar la consulta de lista de valores y la lista de valores con nombre para %0.'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125106757730026210)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha seleccionado un n\00FAmero de columnas incorrecto en la consulta SQL de lista de valores para %0. Consulte los ejemplos de sentencias v\00E1lidas.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125127723706026216)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'es'
,p_message_text=>'No se ha especificado ninguna columna para el atributo "%0".'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125156932968026225)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'es'
,p_message_text=>unistr('El valor introducido %0 para el atributo "%1" no es num\00E9rico.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125110261808026211)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'es'
,p_message_text=>unistr('%0 tiene un tipo de dato no v\00E1lido en la sentencia SQL. La columna n\00BA %1 es %2 pero se esperaba %3.')
,p_version_scn=>2692623
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125127898318026217)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'es'
,p_message_text=>'La columna "%0" especificada para el atributo "%1" tiene el tipo de dato %2, pero debe tener %3.'
,p_version_scn=>2692626
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124997308742026177)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha encontrado el dise\00F1o del informe.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124984930821026173)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'es'
,p_message_text=>unistr('Se ha superado el l\00EDmite de ejecuciones en segundo plano para %0.')
,p_version_scn=>2692599
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124935235205026159)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'es'
,p_message_text=>unistr('Ya se est\00E1 ejecutando otra ejecuci\00F3n de %0.')
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124935194102026159)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'es'
,p_message_text=>unistr('Ya se est\00E1 ejecutando otra ejecuci\00F3n de %0 para el contexto %1.')
,p_version_scn=>2692592
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124950148245026163)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'es'
,p_message_text=>unistr('Los archivos cargados no son visibles en la sesi\00F3n en funcionamiento para la ejecuci\00F3n de %0.')
,p_version_scn=>2692595
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125062628606026197)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'es'
,p_message_text=>unistr('La funci\00F3n Calcular suma no se puede utilizar con los informes basados en un origen de datos de REST.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125024380494026185)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('ERR-2904: No se ha podido definir el valor de m\00E9todo abreviado.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125029319185026187)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('Error: Tipo de m\00E9todo abreviado desconocido.')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124967060692026168)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'es'
,p_message_text=>unistr('La consulta de b\00FAsqueda es demasiado larga.')
,p_version_scn=>2692598
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125018480701026184)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido recuperar authentication_scheme en la aplicaci\00F3n %0.')
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125026498529026186)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'es'
,p_message_text=>'No se ha podido recuperar el componente %0.'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125096785251026207)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'es'
,p_message_text=>unistr('El ID de arrendamiento ya existe en la sesi\00F3n actual.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125029690641026187)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'es'
,p_message_text=>unistr('Correo electr\00F3nico')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125156471645026225)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'es'
,p_message_text=>unistr('Fallo de autenticaci\00F3n.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125057035177026195)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'es'
,p_message_text=>unistr('Una o varias cookies definidas en apex_util.g_request_cookies contiene un valor no v\00E1lido.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125038927491026190)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'es'
,p_message_text=>unistr('La respuesta del registro de UDDI no es v\00E1lida.')
,p_version_scn=>2692609
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124998235958026177)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'es'
,p_message_text=>unistr('La direcci\00F3n URL proporcionada no ha devuelto un documento WSDL v\00E1lido.')
,p_version_scn=>2692603
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125001062407026178)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'es'
,p_message_text=>unistr('El documento WSDL contiene varios enlaces de SOAP. &PRODUCT_NAME. s\00F3lo soporta WSDL con un enlace de SOAP. Haga clic en Crear Referencia de Servicio Web Manualmente para seguir creando una referencia para este servicio.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125076633636026201)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'es'
,p_message_text=>'La respuesta del servicio no ha sido XML.'
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125156374490026225)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'es'
,p_message_text=>unistr('El token de acceso de OAuth no est\00E1 disponible o ha caducado.')
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125120899387026214)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'es'
,p_message_text=>unistr('Ha excedido el n\00FAmero m\00E1ximo de solicitudes de servicio web por espacio de trabajo. P\00F3ngase en contacto con el administrador.')
,p_version_scn=>2692624
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125156557793026225)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'es'
,p_message_text=>'El servidor ha respondido con un tipo de token de OAuth no soportado.'
,p_version_scn=>2692630
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125000490000026178)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'es'
,p_message_text=>unistr('El documento WSDL no conten\00EDa un enlace para SOAP, que es necesario para agregar la referencia.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(124995843138026177)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'es'
,p_message_text=>unistr('Este WSDL requiere credenciales de autenticaci\00F3n. Proporcione debajo el nombre de usuario y la contrase\00F1a.')
,p_version_scn=>2692601
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125006898312026180)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'es'
,p_message_text=>unistr('El motor de presentaci\00F3n no ha podido entender el documento WSDL. Haga clic en Crear Referencia de Servicio Web Manualmente para seguir creando una referencia para este servicio.')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125079658833026202)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'es'
,p_message_text=>unistr('No se ha podido procesar la actualizaci\00F3n.')
,p_version_scn=>2692620
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125105408744026210)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'es'
,p_message_text=>unistr('El retorno de la lista de valores y la columna de visualizaci\00F3n son iguales.')
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125105394726026210)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'es'
,p_message_text=>'La lista de valores no tiene una columna de retorno.'
,p_version_scn=>2692621
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125033066642026188)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'es'
,p_message_text=>'Error al recuperar el valor de columna: %0'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125057981226026195)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'es'
,p_message_text=>unistr('Los datos de la pantalla tabular son demasiado antiguos; se han modificado los datos de origen.<br/> Haga clic <strong><a href="%0">aqu\00ED</a></strong> para descartar los cambios y volver a cargar los datos de la base de datos.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125013191013026182)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'es'
,p_message_text=>unistr('Error al determinar la cadena de paginaci\00F3n')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125013032203026182)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'no se han podido determinar las cabeceras de consulta:',
'%0'))
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125013239298026182)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'es'
,p_message_text=>unistr('error al realizar las sustituciones de pie de p\00E1gina de informe')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125013350032026182)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'fallo al analizar la consulta SQL:',
'%0',
'%1'))
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125019497218026184)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'es'
,p_message_text=>unistr('M\00EDnimo de filas solicitadas: %0, filas encontradas pero no mostradas: %1')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125015868106026183)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'es'
,p_message_text=>unistr('la columna de consulta #%0 (%1) no es v\00E1lida. Las columnas que utilizan HTML necesitan nombres de alias')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125032929290026188)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'es'
,p_message_text=>'Error al obtener las cabeceras de consulta: %0'
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125013421720026182)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'error de informe:',
'%0'))
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125053585898026194)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'es'
,p_message_text=>'Ordenar por esta columna'
,p_version_scn=>2692614
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125015945403026183)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'es'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>La consulta no se puede analizar. Compruebe la sintaxis de la consulta.',
'(%0)',
'</p>'))
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125058075451026195)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'es'
,p_message_text=>'Esta pantalla contiene cambios no guardados. Pulse "Aceptar" para continuar sin guardar los cambios.'
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125062539313026197)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'es'
,p_message_text=>unistr('El esquema de paginaci\00F3n del informe (%0) no est\00E1 soportado con el origen de datos seleccionado.')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125015725165026183)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'es'
,p_message_text=>unistr('la columna de consulta #%0 (%1) no es v\00E1lida, utilice el alias de columna')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125019564205026184)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'es'
,p_message_text=>unistr('Fila(s) %0 - %1 de m\00E1s de %2')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125060073254026196)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'es'
,p_message_text=>unistr('%0 - %1 de m\00E1s de %2')
,p_version_scn=>2692615
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125019326063026184)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'es'
,p_message_text=>'fila(s) %0 - %1 de %2'
,p_version_scn=>2692606
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125000178307026178)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'es'
,p_message_text=>'%0 - %1 de %2'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125013527537026182)
,p_name=>'Y'
,p_message_language=>'es'
,p_message_text=>'Y'
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125020804769026184)
,p_name=>'YEAR'
,p_message_language=>'es'
,p_message_text=>unistr('a\00F1o')
,p_version_scn=>2692608
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125012766016026182)
,p_name=>'YEARS'
,p_message_language=>'es'
,p_message_text=>unistr('a\00F1os')
,p_version_scn=>2692605
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(125058137017026195)
,p_name=>'YES'
,p_message_language=>'es'
,p_message_text=>unistr('S\00ED')
,p_version_scn=>2692615
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
 p_id=>wwv_flow_imp.id(109678305570583962.4471)
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
 p_id=>1.4471
,p_name=>'Mensajes'
,p_alias=>'MESSAGES'
,p_step_title=>'Mensajes'
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
