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
,p_default_application_id=>4484
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4484 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4484
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131492713336034327')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'pl'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4484)
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
 p_id=>wwv_flow_imp.id(4484)
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
 p_id=>wwv_flow_imp.id(728504220438374.4484)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4484)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4484)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4484)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4484)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4484)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4484)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4484)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4484)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4484)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4484)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4484)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4484)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4484)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4484)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4484)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4484)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.pl'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4484)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4484)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4484)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4484)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4484)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4484)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4484)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.pl'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4484)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4484)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4484)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4484)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4484)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4484)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4484)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.pl'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4484)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4484)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4484)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4484)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4484)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4484)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4484)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4484)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4484)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4484)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4484)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4484)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4484)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4484)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4484)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4484)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4484)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4484)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4484)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.pl'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4484)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4484)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4484)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4484)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4484)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4484)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4484)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4484)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4484)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4484)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4484)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4484)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4484)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4484)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4484)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4484)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4484)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.pl'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4484)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4484)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4484)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4484)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4484)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4484)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4484)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4484)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4484)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4484)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4484)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4484)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4484)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4484)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4484)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4484)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4484)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.pl'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4484)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4484)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4484)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4484)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4484)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4484)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4484)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4484)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4484)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4484)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4484)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4484)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4484)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4484)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4484)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.pl'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4484)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4484)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4484)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4484)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4484)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4484)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4484)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4484)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4484)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4484)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4484)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4484)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4484)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4484)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4484)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4484)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4484)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4484)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4484)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4484)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4484)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4484)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4484)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4484)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4484)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4484)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4484)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4484)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4484)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4484)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4484)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4484)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4484)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4484)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4484)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4484)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4484)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4484)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4484)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4484)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4484)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4484)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4484)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4484)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4484)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4484)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4484)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4484)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4484)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4484)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4484)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4484)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4484)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4484)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4484)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4484)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4484)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4484)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4484)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4484)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4484)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4484)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4484)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4484)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4484)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4484)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4484)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4484)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4484)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4484)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4484)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4484)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4484)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4484)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4484)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4484)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4484)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4484)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4484)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4484)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4484)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4484)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4484)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4484)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4484)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4484)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4484)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4484)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4484)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4484)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4484)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4484)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4484)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4484)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4484)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4484)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4484)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4484)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4484)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4484)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4484)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4484)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4484)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4484)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4484)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4484)
,p_page_name=>'winlov'
,p_page_title=>'Okno dialogowe wyszukiwania'
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
,p_find_button_text=>'Szukaj'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Zamknij'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>'Dalej &gt;'
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>'&lt; Wstecz'
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>'<div class="a-PopupLOV-pagination">Wiersze: #FIRST_ROW# - #LAST_ROW#</div>'
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
 p_id=>wwv_flow_imp.id(649611609668764506.4484)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4484)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4484)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4484)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4484)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4484)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4484)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4484)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4484)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4484)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4484)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4484)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4484)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4484)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4484)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4484)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4484)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4484)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4484)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4484)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4484)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4484)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4484)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4484)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4484)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4484)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4484)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4484)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4484)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4484)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4484)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4484)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4484)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4484)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4484)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4484)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4484)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4484)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4484)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4484)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4484)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4484)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4484)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4484)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4484)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4484)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4484)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4484)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4484)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4484)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4484)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4484)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4484)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4484)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4484)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4484)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4484)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4484)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4484)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4484)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4484)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4484)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4484)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4484)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4484)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4484)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4484)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4484)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4484)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4484)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4484)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4484)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4484)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4484)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4484)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4484)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4484)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4484)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4484)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4484)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4484)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4484)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4484)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4484)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4484)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4484)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4484)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4484)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4484)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4484)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4484)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4484)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4484)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4484)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4484)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4484)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4484)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4484)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4484)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4484)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4484)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4484)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4484)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4484)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4484)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4484)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4484)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4484)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4484)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4484)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4484)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4484)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4484)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4484)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4484)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4484)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4484)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4484)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4484)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4484)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4484)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4484)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4484)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4484)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4484)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4484)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4484)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4484)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4484)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4484)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4484)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4484)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4484)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4484)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4484)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4484)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4484)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4484)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4484)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4484)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4484)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4484)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4484)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4484)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4484)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4484)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4484)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4484)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4484)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4484)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4484)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4484)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4484)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4484)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4484)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4484)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4484)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4484)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4484)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4484)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4484)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4484)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4484)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4484)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4484)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4484)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4484)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4484)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4484)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4484)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4484)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4484)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4484)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4484)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4484)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4484)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4484)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4484)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4484)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4484)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4484)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4484)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4484)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4484)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4484)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4484)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4484)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4484)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4484)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4484)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4484)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4484)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4484)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4484)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4484)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4484)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4484)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4484)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4484)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4484)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4484)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4484)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4484)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4484)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4484)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4484)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4484)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4484)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4484)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4484)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4484)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4484)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4484)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4484)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4484)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4484)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4484)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4484)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4484)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4484)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4484)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4484)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4484)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4484)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4484)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4484)
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
 p_id=>wwv_flow_imp.id(127947407987027136)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'pl'
,p_message_text=>'Kolumna %0'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127932021502027131)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'pl'
,p_message_text=>'Administrator'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127931908977027131)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'pl'
,p_message_text=>unistr('Nazwa u\017Cytkownika')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127994609069027150)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Odmowa dost\0119pu')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127951520252027137)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'pl'
,p_message_text=>unistr('Konto %0 zosta\0142o utworzone.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127934776217027132)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'pl'
,p_message_text=>'Konto jest zablokowane.'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127919259915027127)
,p_name=>'AM_PM'
,p_message_language=>'pl'
,p_message_text=>'AM / PM'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127902074753027122)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'pl'
,p_message_text=>unistr('\0142\0105cze czynno\015Bci')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127901992112027122)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'pl'
,p_message_text=>unistr('\0142\0105cze okna dialogowego')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128066355540027171)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prze\0142\0105cz: %0')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128074155428027174)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'pl'
,p_message_text=>'(Aktywne)'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127878958682027115)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'pl'
,p_message_text=>'Wyczyszczono czat'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127878850445027115)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyczy\015B\0107 czat')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127875483518027113)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'pl'
,p_message_text=>'Akceptacja'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127875525276027114)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'pl'
,p_message_text=>'Odmowa'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127875257406027113)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'pl'
,p_message_text=>'Historia konwersacji'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127878686156027114)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'pl'
,p_message_text=>'Skopiowano'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127878792128027115)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'pl'
,p_message_text=>'Skopiowano do schowka'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127878459016027114)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'pl'
,p_message_text=>'Kopiuj'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127878572840027114)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'pl'
,p_message_text=>'Kopiuj do Schowka'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127875913480027114)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Asystent'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127876304858027114)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('Us\0142uga AI jest wy\0142\0105czona na poziomie obszaru roboczego lub instancji.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127915667547027126)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono us\0142ugi Generative AI z podanym ID ani statycznym ID.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127914367070027125)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d identyfikacji lub dost\0119p niedozwolony (HTTP-%1) dotycz\0105cy adresu URL: %0. Prosz\0119 sprawdzi\0107 konfiguracj\0119 us\0142ugi Generative AI: %2.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127894191107027119)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('\017B\0105danie HTTP do us\0142ugi Generative AI (%0) nie powiod\0142o si\0119 z u\017Cyciem protoko\0142u HTTP-%1: %2')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127918528461027127)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d w \017C\0105daniu HTTP do us\0142ugi Generative AI dot. wtyczki "%0" w trybie "%1". Prosz\0119 sprawdzi\0107 konfiguracj\0119 us\0142ugi Generative AI.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127881340035027115)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Przyk\0142ady')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127879718213027115)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'pl'
,p_message_text=>'Asystent'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127881182310027115)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127879641885027115)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'pl'
,p_message_text=>'Ty'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127910383682027124)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('OCI Generative AI obecnie nie obs\0142uguje \015Brodowiska czatu z wieloma wiadomo\015Bciami.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127890222209027118)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania filtra monituj\0105cego "%0" dotycz\0105cego aplikacji "%1". Prosz\0119 sprawdzi\0107, czy konstruktor aplikacji jest dost\0119pny w tej instancji.')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127895338681027120)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna przetworzy\0107 odpowiedzi dla us\0142ugi AI %0. Odpowied\017A: %1')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127901599524027121)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wysy\0142anie wiadomo\015Bci')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127889803938027118)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d w us\0142udze AI %0 zaplecza')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127875608027027114)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wiadomo\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127875790863027114)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'pl'
,p_message_text=>unistr('Tutaj nale\017Cy wpisa\0107 wiadomo\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127879028963027115)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Awatar u\017Cytkownika')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127879104860027115)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'pl'
,p_message_text=>unistr('U\017Cyj tego')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127875882655027114)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Istnieje niewys\0142ana wiadomo\015B\0107. Czy na pewno?')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128044816972027165)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Dla wywo\0142ania Ajax zosta\0142 zwr\00F3cony b\0142\0105d "%0" serwera dla "%1".')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127971941511027143)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna przekszta\0142ci\0107 aliasu "%0" aplikacji w unikatowy ID aplikacji.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127960787216027140)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('ERR-1816 Nieoczekiwany b\0142\0105d podczas przekszta\0142cania aliasu p_flow_alias_or_id (%0) aplikacji.')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128058169095027169)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Za pomoc\0105 sumy kontrolnej mo\017Cna \0142atwo ustali\0107, czy ta sama aplikacja jest wdra\017Cana w r\00F3\017Cnych obszarach roboczych. Mo\017Cna por\00F3wnywa\0107 sumy kontrolne, aby stwierdzi\0107, czy s\0105 one identyczne. ')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127944761355027135)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania funkcji identyfikacji.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127926779320027129)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania funkcji identyfikacji.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128098696185027181)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'pl'
,p_message_text=>unistr('Zwr\00F3cona przez Oracle Cloud Identity Management nazwa dzier\017Cawy "%0" nie jest autoryzowana dla domeny %1.<br/>Prosz\0119 <a href="&LOGOUT_URL.">ponownie si\0119 zalogowa\0107</a>, u\017Cywaj\0105c autoryzowanej nazwy dzier\017Cawy lub zmieniaj\0105c URL.')
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127922866556027128)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'pl'
,p_message_text=>unistr('Konto "%0" nie ma wymaganych uprawnie\0144 programistycznych (DB_DEVELOPER lub DB_ADMINISTRATOR)<br/>dla obszaru roboczego "%1". Prosz\0119 <a href="&LOGOUT_URL.">ponownie si\0119 zalogowa\0107</a> po uzyskaniu uprawnie\0144.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127919485341027127)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'pl'
,p_message_text=>unistr('Zwr\00F3cona przez Oracle Cloud Identity Management nazwa dzier\017Cawy nie jest autoryzowana dla bie\017C\0105cego obszaru roboczego.<br/>Prosz\0119 <a href="&LOGOUT_URL.">ponownie si\0119 zalogowa\0107</a>, u\017Cywaj\0105c autoryzowanej nazwy dzier\017Cawy.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127922981738027128)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'pl'
,p_message_text=>unistr('Ze wzgl\0119d\00F3w bezpiecze\0144stwa uruchamianie aplikacji z tego obszaru roboczego poprzez domen\0119 z adresu URL nie jest dozwolone.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127944456018027135)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 si\0119 zwr\00F3ci\0107 do administratora bazy danych o uruchomienie $OH/rdbms/admin/catldap.sql.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127944316992027135)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'pl'
,p_message_text=>'Pakiet SYS.DBMS_LDAP nie istnieje lub jest niepoprawny.'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127944258558027135)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania edycji funkcji u\017Cytkownika LDAP.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127944561349027135)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania identyfikacji LDAP.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127945387566027135)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d w argumencie p_flow_page przekazanym do procedury login_page.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127944920331027135)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawny parametr p_session w wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127996232830027150)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawna posta\0107 argumentu dla wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127945051343027135)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'pl'
,p_message_text=>unistr('Do procedury logowania zosta\0142a przekazana nazwa u\017Cytkownika o warto\015Bci Null.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127931808384027131)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 poczeka\0107 <span id="apex_login_throttle_sec">%0</span> sekund(y), po czym si\0119 ponownie zalogowa\0107.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127933138470027131)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Pr\00F3ba zalogowania zosta\0142a zablokowana.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127993997324027150)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono identyfikacji "%0"'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127933690116027131)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'pl'
,p_message_text=>unistr('ID grupy zabezpiecze\0144 ma warto\015B\0107 Null.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127944841103027135)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas wykonywania procesu po identyfikacji.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127944687552027135)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania procesu poprzedzaj\0105cego identyfikacj\0119.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127946361238027135)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Prosz\0119 otworzy\0107 URL w tej samej przegl\0105darce, z kt\00F3rej zosta\0142o zainicjowane \017C\0105danie zresetowania has\0142a. Je\015Bli po klikni\0119ciu "URL resetowania has\0142a" nast\0105pi'),
unistr('przekierowanie na stron\0119 logowania, prosz\0119 ponownie zainicjowa\0107 \017C\0105danie zresetowania has\0142a'),
unistr('i pozostawi\0107 przegl\0105dark\0119 otwart\0105.')))
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128096150699027180)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'pl'
,p_message_text=>unistr('URL resetowania has\0142a')
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127923185471027128)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Grupa "%0" konsument\00F3w mened\017Cera zasob\00F3w nie uzyska\0142a uprawnie\0144: %1')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127923242257027128)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 przypisa\0107 brakuj\0105ce uprawnienie, u\017Cywaj\0105c procedury DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127957891728027139)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania funkcji sentry sesji.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127957973424027139)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania funkcji weryfikacji sesji.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127958167018027139)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 si\0119 zwr\00F3ci\0107 do administratora %0 o skonfigurowanie motoru dla us\0142ugi Oracle Application Server Single Sign-On.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127968574873027142)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'pl'
,p_message_text=>unistr('Niedozwolony wpis %0 w tokenie %1 zwr\00F3conym przez sso.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127945221994027135)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 edytowa\0107 schemat identyfikacji i doda\0107 nazw\0119 aplikacji.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127968282664027142)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'pl'
,p_message_text=>unistr('Niedozwolony wywo\0142uj\0105cy procedur\0119 %0:')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127968485603027142)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawna sesja aplikacji w tokenie urlc: %0'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127968014405027142)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d w portal_sso_redirect: brak informacji o rejestracji aplikacji: %0')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127958023067027139)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'pl'
,p_message_text=>'Pakiet WWSEC_SSO_ENABLER_PRIVATE nie istnieje lub jest niepoprawny.'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127945130569027135)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'pl'
,p_message_text=>'W schemacie identyfikacji nie znaleziono zarejestrowanej nazwy aplikacji partnerskiej.'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127968134565027142)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 zarejestrowa\0107 aplikacj\0119 zgodnie z opisem zawartym w podr\0119czniku instalacji.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127958298784027139)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania identyfikacji SSO.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128071503331027173)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'pl'
,p_message_text=>'Nieautoryzowany URL: %0'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127957637369027139)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania identyfikacji.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127923073645027128)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'pl'
,p_message_text=>unistr('Obszar roboczy "%0" jest nieaktywny. Prosz\0119 si\0119 skontaktowa\0107 z administratorem.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127923718813027128)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'pl'
,p_message_text=>'%0'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127932859175027131)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Odmowa dost\0119pu ze wzgl\0119du na kontrol\0119 bezpiecze\0144stwa aplikacji')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127932924948027131)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Odmowa dost\0119pu ze wzgl\0119du na kontrol\0119 bezpiecze\0144stwa strony')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127933073926027131)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania autoryzacji.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128002164245027152)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'pl'
,p_message_text=>unistr('Utworzono z %0, u\017Cywaj\0105c %1')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128002277122027152)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'pl'
,p_message_text=>unistr('mi\0142o\015Bci\0105')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128062023543027170)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>'Opis zdarzenia'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128061809648027170)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'pl'
,p_message_text=>unistr('Data ko\0144cowa')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128062180997027170)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'pl'
,p_message_text=>'ID zdarzenia'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128061782387027170)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'pl'
,p_message_text=>unistr('Data pocz\0105tkowa')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128061934080027170)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Tytu\0142 zdarzenia')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127904597573027122)
,p_name=>'APEX.CARD'
,p_message_language=>'pl'
,p_message_text=>'Karta'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127904761418027122)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015B\0107 dot. karty')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127945446563027135)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'pl'
,p_message_text=>'Pole wyboru "Wizualnie ukryte"'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127947316800027136)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d zawarto\015Bci sumy kontrolnej')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127947223389027136)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d formatu sumy kontrolnej')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128017161455027156)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'pl'
,p_message_text=>'Skopiowano do schowka.'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128016691431027156)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'pl'
,p_message_text=>unistr('Ta przegl\0105darka nie obs\0142uguje kopiowania przy u\017Cyciu przycisku lub menu. Prosz\0119 spr\00F3bowa\0107 u\017Cy\0107 Ctrl+C lub Command+C.')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128002876259027152)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'pl'
,p_message_text=>'Zamknij'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127881291234027115)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zawarto\015B\0107 edytora kodu przekracza maksymaln\0105 d\0142ugo\015B\0107 elementu (obecnie: %0, liczba dozwolonych znak\00F3w: %1)')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128061397844027170)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'pl'
,p_message_text=>'Kontrast'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128055823417027168)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'pl'
,p_message_text=>unistr('Bie\017C\0105cy')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128055756553027168)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'pl'
,p_message_text=>unistr('Pocz\0105tkowy')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128059990183027169)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# musi by\0107 poprawnym kolorem. Przyk\0142ad: %0')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127922378631027128)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'pl'
,p_message_text=>unistr('Wi\0119cej kolor\00F3w')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127922499471027128)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'pl'
,p_message_text=>unistr('Otw\00F3rz selektor kolor\00F3w:')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127879518255027115)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'pl'
,p_message_text=>unistr('Suwak alfa, suwak poziomy. Do poruszania si\0119 s\0142u\017C\0105 klawisze ze strza\0142kami.')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127879268766027115)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'pl'
,p_message_text=>unistr('Spektrum kolor\00F3w, suwak 4-kierunkowy. Do poruszania si\0119 s\0142u\017C\0105 klawisze ze strza\0142kami.')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127879378120027115)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'pl'
,p_message_text=>unistr('Suwak odcienia, suwak pionowy. Do poruszania si\0119 s\0142u\017C\0105 klawisze ze strza\0142kami.')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128055613687027168)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r koloru')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128055945305027168)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zmie\0144 format koloru')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128093898734027180)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'pl'
,p_message_text=>unistr('Lista warto\015Bci')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128093973550027180)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'pl'
,p_message_text=>unistr('Otw\00F3rz list\0119 dla: %0')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128074201645027174)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'pl'
,p_message_text=>unistr('(Uko\0144czone)')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127963154093027140)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 si\0119 skontaktowa\0107 z administratorem aplikacji.')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127978628054027145)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Prosz\0119 si\0119 skontaktowa\0107 z administratorem aplikacji.'),
unistr('Szczeg\00F3\0142y tego incydentu s\0105 dost\0119pne poprzez ID "%0" wykrywania b\0142\0119d\00F3w.')))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128060255553027170)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'pl'
,p_message_text=>unistr('Przed zapisaniem prosz\0119 poprawi\0107 b\0142\0119dy.')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127905541441027123)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'pl'
,p_message_text=>unistr('%0. Aby usun\0105\0107, prosz\0119 nacisn\0105\0107 klawisz Backspace.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128003783121027152)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Znaleziono zgodnych: %0'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127885628555027117)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'pl'
,p_message_text=>'1 - znaleziony zgodny'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128003683569027152)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono zgodnych'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127880006280027115)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'pl'
,p_message_text=>'Inne'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127879994004027115)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'pl'
,p_message_text=>unistr('Wybrano warto\015Bci: %0')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128074788470027174)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'pl'
,p_message_text=>unistr('Bie\017C\0105cy post\0119p')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128060678731027170)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Podany w elemencie "%0" plik nie istnieje w APEX_APPLICATION_TEMP_FILES.'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128049157268027166)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'pl'
,p_message_text=>unistr('Bie\017C\0105ca wersja danych w bazie danych uleg\0142a zmianie, poniewa\017C u\017Cytkownik zainicjowa\0142 proces aktualizacji.')
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128018295032027157)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie \0142aduj')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128064562941027171)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania wst\0119pnego')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128064325310027171)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'pl'
,p_message_text=>'Wstaw wiersz'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128077973825027175)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Sekwencja: czynno\015B\0107')
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128064459487027171)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'pl'
,p_message_text=>'Aktualizuj wiersz'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127892927766027119)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015Bci')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127920511313027127)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'pl'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127906679228027123)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 musi by\0107 selektorem daty albo poprawn\0105 dat\0105, na przyk\0142ad: %1.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128015867135027156)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyczy\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127924057643027128)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'pl'
,p_message_text=>'Gotowe'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127935026775027132)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 zawiera w masce formatu nieobs\0142ugiwane cz\0119\015Bci: %1')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127920205322027127)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'pl'
,p_message_text=>'Godz.'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128004189273027153)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Kalendarz wyskakuj\0105cy: %0')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127920071182027127)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'pl'
,p_message_text=>unistr('Tydzie\0144')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127920185040027127)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'pl'
,p_message_text=>'WK'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127920428631027127)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'pl'
,p_message_text=>'Min'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127920685214027127)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'pl'
,p_message_text=>'Mies.'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127921013678027127)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pny miesi\0105c')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127890678129027118)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'pl'
,p_message_text=>unistr('Okno wyskakuj\0105ce dla "%0"')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127920948240027127)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Poprzedni miesi\0105c')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128013415193027155)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'pl'
,p_message_text=>'Selektor daty (tylko do odczytu)'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127921811120027128)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r daty')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127890728026027118)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r daty i godziny')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127887932140027117)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r dnia')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127891326386027118)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r miesi\0105ca i roku')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127888178582027117)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r godziny')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127888617021027118)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'pl'
,p_message_text=>'Dzisiaj'
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127906286071027123)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# musi by\0107 poprawn\0105 dat\0105, na przyk\0142ad %0.')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127905991754027123)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# musi si\0119 zawiera\0107 mi\0119dzy %0 a %1.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127906007089027123)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# nie mo\017Ce by\0107 wcze\015Bniejsza ni\017C %0.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127906158563027123)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# nie mo\017Ce by\0107 p\00F3\017Aniejsza ni\017C %0.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127897594318027120)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'pl'
,p_message_text=>'Edycja wizualnie ukrytego'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127920877603027127)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'pl'
,p_message_text=>'Rok'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128007861334027154)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'pl'
,p_message_text=>'#LABEL# przypada po podanej maksymalnej dacie %0.'
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128008284036027154)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'pl'
,p_message_text=>'#LABEL# nie jest zgodna z formatem %0.'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128007741560027154)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# przypada przed podan\0105 minimaln\0105 dat\0105 %0.')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128007982649027154)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# nie zawiera si\0119 w poprawnym przedziale od %0 do %1.')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128008176624027154)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# nie zawiera si\0119 w poprawnym przedziale lat od %0 do %1.')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127899913585027121)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142 b\0142\0105d wewn\0119trzny podczas przetwarzania \017C\0105dania DBMS_CLOUD.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128060556435027170)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'pl'
,p_message_text=>'Anuluj'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128086477830027177)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'pl'
,p_message_text=>'Zamknij'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127947694262027136)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'pl'
,p_message_text=>'Potwierdzenie'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128088495182027178)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'pl'
,p_message_text=>'Pomoc'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128060346677027170)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'pl'
,p_message_text=>'OK'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128060417512027170)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'pl'
,p_message_text=>'Zapisz'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127928160017027130)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Tytu\0142 okna dialogowego')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127967866548027142)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Tytu\0142 wizualnie ukrytego okna dialogowego')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127888998202027118)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'pl'
,p_message_text=>unistr('Gotowa funkcja generatora dokument\00F3w Oracle')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127899746250027121)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas drukowania dokumentu.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127876988167027114)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('"%s" nie obs\0142uguje warto\015Bci "%1" jako wyniku.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127888830400027118)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142 b\0142\0105d "%0" podczas wywo\0142ywania gotowej funkcji generatora dokument\00F3w Oracle:')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127880336156027115)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>'Szablon jest wymagany.'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127905784025027123)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas pobierania pliku.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127905673318027123)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono danych, kt\00F3re mo\017Cna pobra\0107.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127909202145027124)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'pl'
,p_message_text=>unistr('Ta funkcja jest niedost\0119pna w \015Brodowisku dzia\0142aj\0105cym tylko w trybie wykonawczym.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127962089465027140)
,p_name=>'APEX.ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d')
,p_is_js_message=>true
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127921910829027128)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'pl'
,p_message_text=>unistr('Podczas wykonywania wywo\0142ania zwrotnego w celu obs\0142ugi b\0142\0119du wyst\0105pi\0142 nast\0119puj\0105cy b\0142\0105d: %0')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127934500459027132)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142 b\0142\0105d podczas renderowania strony b\0142\0119du: %0')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127923619316027128)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d wewn\0119trzny')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128073399335027174)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Prosz\0119 si\0119 skontaktowa\0107 z administratorem.'),
unistr('Szczeg\00F3\0142y tego incydentu s\0105 dost\0119pne poprzez ID "%0" wykrywania b\0142\0119d\00F3w.')))
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128067977260027172)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'pl'
,p_message_text=>'Baza danych jest otwarta tylko do odczytu.'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128098082405027181)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'pl'
,p_message_text=>unistr('ORA-28353: Nie uda\0142o si\0119 otworzy\0107 portfela. Dane aplikacji nie s\0105 teraz dost\0119pne.')
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128068006800027172)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Ta strona nie jest dost\0119pna.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127926614104027129)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'pl'
,p_message_text=>unistr('Informacje techniczne (dost\0119pne tylko dla programist\00F3w)')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128032545219027161)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'pl'
,p_message_text=>unistr('Komunikat o b\0142\0119dzie')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128046481906027165)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'pl'
,p_message_text=>'Oczekiwany format: %0'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128011372509027155)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'pl'
,p_message_text=>unistr('U\017Cytkownik ju\017C si\0119 znajduje na li\015Bcie kontroli dost\0119pu')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128011258938027155)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 potwierdzi\0107 dodanie poni\017Cszych u\017Cytkownik\00F3w (%0) do listy <strong>%1</strong> kontroli dost\0119pu.')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128011756102027155)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'pl'
,p_message_text=>unistr('Istnieje zduplikowany u\017Cytkownik')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128011480983027155)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'pl'
,p_message_text=>'Brak znaku "@" w adresie e-mail'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128011596515027155)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'pl'
,p_message_text=>'Brak kropki "." w adresie e-mail'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128011624728027155)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'pl'
,p_message_text=>unistr('Nazwa u\017Cytkownika jest zbyt d\0142uga')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128011922581027155)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'pl'
,p_message_text=>unistr('Dost\0119p do tej aplikacji maj\0105 tylko u\017Cytkownicy zdefiniowani na li\015Bcie kontroli dost\0119pu')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128012012668027155)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'pl'
,p_message_text=>unistr('Nieoczekiwana warto\015B\0107 ustawienia listy kontrolnej: %0')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128011868095027155)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'pl'
,p_message_text=>unistr('Dost\0119p do tej aplikacji maj\0105 wszyscy zidentyfikowani u\017Cytkownicy')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128056334016027168)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\0142\0105czone')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128056270340027168)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142\0105czone')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128056554247027168)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('%0: jest wy\0142\0105czone')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128056493195027168)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('%0: jest w\0142\0105czone')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127905049410027123)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nieobs\0142ugiwane')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127966233041027141)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\0142.')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127966100027027141)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142.')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128056145712027168)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'pl'
,p_message_text=>'nie zidentyfikowano'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127896603018027120)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'pl'
,p_message_text=>'%0 B'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127897103770027120)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'pl'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127896820951027120)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'pl'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127897068559027120)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'pl'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128049327290027166)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'pl'
,p_message_text=>'Pobierz'
,p_is_js_message=>true
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127902458745027122)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Opcje'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127902176241027122)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'pl'
,p_message_text=>'Filtruj'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127902368705027122)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'pl'
,p_message_text=>unistr('Ukryj faset\0119')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127927025869027129)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'pl'
,p_message_text=>'Dodaj filtr'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128003357857027152)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'pl'
,p_message_text=>'Zastosowany filtr: %0'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127927743753027130)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'pl'
,p_message_text=>'Zastosuj'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128046931353027166)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'pl'
,p_message_text=>'Zastosuj'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127927851568027130)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'pl'
,p_message_text=>'Anuluj'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127911688640027125)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wykres s\0142upkowy')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128059614802027169)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'pl'
,p_message_text=>'Inne'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127911701500027125)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wykres ko\0142owy')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128058210775027169)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Wykres'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127911496724027124)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Licznik'
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128047423879027166)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyczy\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128047506561027166)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyczy\015B\0107 wszystkie')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128047658232027166)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyczy\015B\0107: %0')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128064147636027171)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'pl'
,p_message_text=>unistr('Kolumna "%1", do kt\00F3rej odwo\0142uje si\0119 faseta "%0", jest niedost\0119pna lub nieautoryzowana.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127874862095027113)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wybra\0107 pokazywane filtry')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128001381024027152)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'pl'
,p_message_text=>unistr('Liczba wynik\00F3w: %0')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128001494835027152)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'pl'
,p_message_text=>'Wybrano: %0'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128004285741027153)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'pl'
,p_message_text=>unistr('Bie\017C\0105ce filtry')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127879801283027115)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyszukiwanie fasetowe wymaga \017Ar\00F3d\0142a danych na poziomie obszaru.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127883554821027116)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'pl'
,p_message_text=>unistr('Lista filtr\00F3w')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128062623776027170)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'pl'
,p_message_text=>unistr('Przekroczono limit (%0) warto\015Bci dystynktywnych dla fasety "%1".')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128048961292027166)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>unistr('Faseta "%0" nie jest obs\0142ugiwana dla kolumn typu DATE lub TIMESTAMP.')
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128047026672027166)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'pl'
,p_message_text=>'Filtruj: %0'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127921604743027128)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'pl'
,p_message_text=>'%0 (zastosowano filtr)'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128047186354027166)
,p_name=>'APEX.FS.GO'
,p_message_language=>'pl'
,p_message_text=>'Wykonaj'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127917163304027126)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'pl'
,p_message_text=>'zawiera %0'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128048518185027166)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'pl'
,p_message_text=>unistr('r\00F3wna si\0119 %0')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127916829269027126)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'pl'
,p_message_text=>unistr('wi\0119ksze ni\017C %0')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127916904384027126)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'pl'
,p_message_text=>unistr('wi\0119ksze ni\017C lub r\00F3wne "%0"')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127916509834027126)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'pl'
,p_message_text=>unistr('mniejsze ni\017C %0')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127916713991027126)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'pl'
,p_message_text=>unistr('mniejsze ni\017C lub r\00F3wne "%0"')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127916061104027126)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'pl'
,p_message_text=>'nie zawiera "%0"'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127901884106027122)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'pl'
,p_message_text=>unistr('nie r\00F3wna si\0119 "%0"')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127916184976027126)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'pl'
,p_message_text=>unistr('nie zaczyna si\0119 od "%0"')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127917083553027126)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'pl'
,p_message_text=>unistr('zaczyna si\0119 od "%0"')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127915169949027126)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r fasety')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127890985276027118)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'pl'
,p_message_text=>'Prefiks "%0" filtra jest niepoprawny dla fasety "%1".'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127889306379027118)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'pl'
,p_message_text=>'Brak prefiksu filtra dla fasety "%0".'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127923575834027128)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'pl'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127905498306027123)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'pl'
,p_message_text=>'zawiera'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127904476176027122)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'pl'
,p_message_text=>unistr('r\00F3wna si\0119')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127905187036027123)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'pl'
,p_message_text=>unistr('wi\0119ksze ni\017C')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127905280798027123)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'pl'
,p_message_text=>unistr('wi\0119ksze ni\017C lub r\00F3wne')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127904868999027122)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'pl'
,p_message_text=>unistr('mniejsze ni\017C')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127904918602027122)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'pl'
,p_message_text=>unistr('mniejsze ni\017C lub r\00F3wne')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127915955275027126)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'pl'
,p_message_text=>'nie zawiera'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127904680361027122)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'pl'
,p_message_text=>unistr('nie r\00F3wna si\0119')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127915892369027126)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'pl'
,p_message_text=>unistr('nie zaczyna si\0119 od')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127905301558027123)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'pl'
,p_message_text=>unistr('zaczyna si\0119 od')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127923902598027128)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ danych "%0" (%1) nie jest obs\0142ugiwany dla fasety "Pole wej\015Bciowe".')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127890881840027118)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Filtr "%0" nie jest obs\0142ugiwany dla fasety "%1" (typ danych "%2").')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127923410347027128)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128048790230027166)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'pl'
,p_message_text=>unistr('Dla fasety "%0" nie podano \017Cadnych przeszukiwanych kolumn')
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127874900297027113)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'pl'
,p_message_text=>unistr('Wi\0119cej filtr\00F3w')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128001530882027152)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'pl'
,p_message_text=>unistr('Pocz\0105tek zakresu')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128048203557027166)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'pl'
,p_message_text=>'%0 do %1'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128048378239027166)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'pl'
,p_message_text=>unistr('Powy\017Cej %0')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128048406954027166)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'pl'
,p_message_text=>unistr('Poni\017Cej %0')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128001638165027152)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'pl'
,p_message_text=>'Koniec zakresu'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128066254005027171)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'pl'
,p_message_text=>unistr('Element #%2 ("%1") listy warto\015Bci dla fasety "%0" typu "Przedzia\0142" jest niepoprawny (brak separatora "|").')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128048696480027166)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('R\0119czne wprowadzanie danych do fasety "%0" typu "Przedzia\0142" nie jest obs\0142ugiwane, poniewa\017C typem kolumny jest DATE lub TIMESTAMP.')
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128047908495027166)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'pl'
,p_message_text=>'do'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127911555433027125)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 wykres')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127997958030027151)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'pl'
,p_message_text=>'Resetuj'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128047345009027166)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Szukaj'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128047292625027166)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'pl'
,p_message_text=>'Szukaj...'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128048119660027166)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'pl'
,p_message_text=>unistr('- Wyb\00F3r -')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127911333111027124)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C wykres')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128047779790027166)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C mniej')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128047888345027166)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C wszystkie')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128048083608027166)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 i wi\0119cej gwiazdek')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128003203115027152)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'pl'
,p_message_text=>'Filtrowanie sugestii'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128048809304027166)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>unistr('Faseta "%0" typu "Pole tekstowe" jest obecnie obs\0142ugiwana tylko dla kolumn typu NUMBER.')
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127874316769027113)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141\0105czna liczba wierszy')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128064246125027171)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ danych "%0" (%1) nie jest obs\0142ugiwany dla wyszukiwania fasetowego.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127994427812027150)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'pl'
,p_message_text=>unistr('Nag\0142\00F3wek "Wizualnie ukryte"')
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128056799276027168)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Przejd\017A do b\0142\0119du')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128012735897027155)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'pl'
,p_message_text=>'Agregacja.'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127940679498027134)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'pl'
,p_message_text=>unistr('Pusty nag\0142\00F3wek')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128022069028027158)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zwi\0144 przerw\0119 kontroln\0105')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128012877631027155)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'pl'
,p_message_text=>'Przerwa kontrolna.'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128021907213027158)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'pl'
,p_message_text=>unistr('Rozwi\0144 przerw\0119 kontroln\0105')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128021734195027158)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'pl'
,p_message_text=>unistr('Liczba usuni\0119tych wierszy: %0')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128090834579027179)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'pl'
,p_message_text=>unistr('Zduplikowana to\017Csamo\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127883786451027116)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'pl'
,p_message_text=>'Przechodzenie do trybu edycji'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128009675076027154)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Na pocz\0105tku')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127882542622027116)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'pl'
,p_message_text=>'Ukryj okno dialogowe'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127881584490027115)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zawarto\015B\0107 kom\00F3rki nadmiaru zmiennoprzecinkowego')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127882862909027116)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C zawarto\015B\0107 nadmiaru')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127957083971027138)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'pl'
,p_message_text=>'Stopka tabeli'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128013029585027155)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Nag\0142\00F3wek grupy')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128012911565027155)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Nag\0142\00F3wek.')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128009721184027154)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Na ko\0144cu')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127883930575027116)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'pl'
,p_message_text=>'Opuszczanie trybu edycji'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127908655149027124)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Za\0142aduj wszystkie')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128031510002027161)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C wi\0119cej')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128009474687027154)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'pl'
,p_message_text=>'Dalej'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128013116080027155)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'pl'
,p_message_text=>'Wiersze strony'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127922206342027128)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'pl'
,p_message_text=>'Strona %0'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128009866723027154)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'pl'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128009997191027154)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'pl'
,p_message_text=>'%0 - %1 z %2'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128066891048027172)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r strony')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127957379757027138)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'pl'
,p_message_text=>'Paginacja'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128009595590027154)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127907523326027123)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietlanie zakresu')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127940959985027134)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r wierszy')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128090655330027179)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'pl'
,p_message_text=>'Dodano'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128090796248027179)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'pl'
,p_message_text=>'Zmieniono'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128099055717027181)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'pl'
,p_message_text=>'Sekwencja wierszy tabeli: %0. Kolumna: %1.'
,p_is_js_message=>true
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128099158362027181)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'pl'
,p_message_text=>'Sekwencja wierszy tabeli: %0.'
,p_is_js_message=>true
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128090503818027179)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'pl'
,p_message_text=>unistr('Usuni\0119to')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128013347609027155)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'pl'
,p_message_text=>unistr('Nag\0142\00F3wek wiersza')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127940893209027134)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r wierszy')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127908749012027124)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'pl'
,p_message_text=>'Wybrano: %0 %1'
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128008850707027154)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'pl'
,p_message_text=>unistr('Liczba wybranych kom\00F3rek: %0')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128010064390027154)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'pl'
,p_message_text=>'Liczba wybranych wierszy: %0'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128052177038027167)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'pl'
,p_message_text=>'Wybierz wszystkie'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127945698215027135)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r wszystkich wierszy')
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128021864311027158)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'pl'
,p_message_text=>'Strona %0'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128013210160027155)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r wiersza')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128013544105027155)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'pl'
,p_message_text=>unistr('Sortowane rosn\0105co: %0')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128013633824027155)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'pl'
,p_message_text=>unistr('Sortowane malej\0105co: %0')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128008909448027154)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'pl'
,p_message_text=>unistr('Sortuj rosn\0105co')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128009252608027154)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'pl'
,p_message_text=>unistr('Sortuj rosn\0105co: %0')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128009093091027154)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'pl'
,p_message_text=>unistr('Sortuj malej\0105co')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128009392477027154)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'pl'
,p_message_text=>unistr('Sortuj malej\0105co: %0')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128009103124027154)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'pl'
,p_message_text=>'Nie sortuj'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127874732935027113)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'pl'
,p_message_text=>'Opcje sortowania'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127957120930027138)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'pl'
,p_message_text=>'Ikony stanu'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127957232885027138)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'pl'
,p_message_text=>'Status tabeli'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127887021970027117)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'pl'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127886753531027117)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'pl'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128021657363027158)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'pl'
,p_message_text=>'Razem: %0'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127940455928027133)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepowodzenie \017C\0105dania HTTP do "%0".')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127942055569027134)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Kolumna %0'
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127942237925027134)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'pl'
,p_message_text=>'Kolumna %0 i wiersz %1'
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127942511809027134)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Ju\017C pierwsza kolumna. Kolumna %0 i wiersz %1.')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127942453145027134)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'pl'
,p_message_text=>unistr('Ju\017C pierwszy wiersz. Kolumna %0 i wiersz %1.')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128088094672027178)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'pl'
,p_message_text=>'Przedstawiono w %0 kolumnach i %1 wierszach'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127942601336027134)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Ju\017C ostatnia kolumna. Kolumna %0 i wiersz %1.')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127942398268027134)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'pl'
,p_message_text=>unistr('Ju\017C ostatni wiersz. Kolumna %0 i wiersz %1.')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128021564124027158)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'pl'
,p_message_text=>'Przedstawiono w %0 wierszach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127942151299027134)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'pl'
,p_message_text=>'Wiersz %0'
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128098896300027181)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Tabela interaktywna %0'
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128005919784027153)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015Bci')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128006965198027153)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'pl'
,p_message_text=>'Dodaj'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128006837055027153)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'pl'
,p_message_text=>'Dodaj wiersz'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128092496584027179)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'pl'
,p_message_text=>'Agregacja'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128078002519027175)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'pl'
,p_message_text=>'Agregacja'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128079712163027175)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'pl'
,p_message_text=>'Wszystkie'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128037367652027163)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Wszystkie kolumny tekstowe'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128038519012027163)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'pl'
,p_message_text=>'Alternatywny'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128039605630027163)
,p_name=>'APEX.IG.AND'
,p_message_language=>'pl'
,p_message_text=>'i'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128059022844027169)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'pl'
,p_message_text=>unistr('Licznik dystynktywny przybli\017Cony')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128093427590027180)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Licznik dystynktywny og\00F3lny przybli\017Cony')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128076626517027175)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'pl'
,p_message_text=>'Warstwowy'
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128078573418027175)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'pl'
,p_message_text=>unistr('Rosn\0105co')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128038642510027163)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'pl'
,p_message_text=>'Autoryzacja'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128092561285027179)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'pl'
,p_message_text=>'Automatycznie'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128059419087027169)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'pl'
,p_message_text=>unistr('\015Arednia')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128093180206027180)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'pl'
,p_message_text=>unistr('\015Arednia og\00F3lna')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128076171239027174)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Tytu\0142 osi etykiet')
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128076366415027174)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'pl'
,p_message_text=>unistr('Liczba miejsc dziesi\0119tnych')
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128076299546027174)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Tytu\0142 osi warto\015Bci')
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128082371029027176)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Kolor t\0142a')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128076714312027175)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'pl'
,p_message_text=>unistr('S\0142upkowy')
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128033973588027162)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'pl'
,p_message_text=>unistr('mi\0119dzy')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128083506102027177)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'pl'
,p_message_text=>'Obie opcje'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128076852334027175)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'pl'
,p_message_text=>unistr('P\0119cherzykowy')
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128007165119027153)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'pl'
,p_message_text=>'Anuluj'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128039536493027163)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Uwzgl\0119dniana wielko\015B\0107 liter')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128094023348027180)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'pl'
,p_message_text=>unistr('(Z uwzgl\0119dnieniem wielko\015Bci liter)')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128065302009027171)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'pl'
,p_message_text=>'Zmiany zapisane'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128007596037027154)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'pl'
,p_message_text=>unistr('Zmie\0144 widok')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128040633925027164)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'pl'
,p_message_text=>'Wykres'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128037185779027163)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'pl'
,p_message_text=>unistr('Zapytanie przekracza maksymaln\0105 liczb\0119 punkt\00F3w danych (%0) przypadaj\0105cych na wykres. Prosz\0119 zastosowa\0107 filtr, aby ograniczy\0107 liczb\0119 rekord\00F3w dla zapytania.')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128005871535027153)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok wykresu'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128014254387027156)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyczy\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128075618087027174)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Zamkni\0119cie')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128082533579027176)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'pl'
,p_message_text=>'Kolory'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128059848893027169)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'pl'
,p_message_text=>unistr('Podgl\0105d')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128038995485027163)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Kolumna'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128006089790027153)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Kolumny'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127967973051027142)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015Bci dot. kolumny')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127967710420027142)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015Bci dla kolumny "%0"')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128084342741027177)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'pl'
,p_message_text=>'Przeznaczenie kolumny'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128039006939027163)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'pl'
,p_message_text=>unistr('Z\0142o\017Cony')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128006272409027153)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'pl'
,p_message_text=>'Oblicz'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128034520971027162)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'pl'
,p_message_text=>'zawiera'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128040882614027164)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'pl'
,p_message_text=>'Przerwa kontrolna'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128014003678027156)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'pl'
,p_message_text=>'Kopiuj do Schowka'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128014106415027156)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'pl'
,p_message_text=>unistr('Kopiuj w d\00F3\0142')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128058883555027169)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'pl'
,p_message_text=>'Licznik'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128058925540027169)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'pl'
,p_message_text=>'Licznik dystynktywny'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128093335091027180)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Licznik dystynktywny og\00F3lny')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128093248277027180)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Licznik og\00F3lny')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128090983934027179)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'pl'
,p_message_text=>unistr('Utw\00F3rz: %0')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128037556334027163)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'pl'
,p_message_text=>'Dane'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128084135526027177)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'pl'
,p_message_text=>'Typ danych'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128083760307027177)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'pl'
,p_message_text=>'Data'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128065184069027171)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawna warto\015B\0107 daty')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128035239017027162)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'pl'
,p_message_text=>'dni'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128038265800027163)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'pl'
,p_message_text=>unistr('Ustawienia domy\015Blne')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128038049003027163)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ domy\015Blny')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128007053449027153)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128085294567027177)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'pl'
,p_message_text=>unistr('Czy na pewno usun\0105\0107 ten raport?')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128042697077027164)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 wiersz')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128041445990027164)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 wiersze')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128078699889027175)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'pl'
,p_message_text=>unistr('Malej\0105co')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128040388695027164)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'pl'
,p_message_text=>unistr('Szczeg\00F3\0142y')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128005580429027153)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'pl'
,p_message_text=>unistr('Widok szczeg\00F3\0142\00F3w')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128067622285027172)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'pl'
,p_message_text=>'Kierunek'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128040040252027163)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\0142\0105czone')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128034653179027162)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'pl'
,p_message_text=>'nie zawiera'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128034862108027162)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'pl'
,p_message_text=>unistr('nie zaczyna si\0119 od')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128076931711027175)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'pl'
,p_message_text=>'Torusowy'
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128041077032027164)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'pl'
,p_message_text=>'Pobierz'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127931301528027131)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'pl'
,p_message_text=>'Tylko dane'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128086281610027177)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r formatu')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127946476680027135)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('Format pobierania "%0" nie jest w\0142\0105czony.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128079303758027175)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'pl'
,p_message_text=>'Zduplikowana agregacja'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128079456997027175)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'pl'
,p_message_text=>'Zduplikowana przerwa kontrolna'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128042503861027164)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'pl'
,p_message_text=>'Duplikuj wiersze'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128041334543027164)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'pl'
,p_message_text=>'Duplikuj wiersze'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128006646440027153)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'pl'
,p_message_text=>'Edytuj'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128078454858027175)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'pl'
,p_message_text=>'Edytuj wykres'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127958922717027139)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'pl'
,p_message_text=>'Edytuj: %0'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128089827504027178)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'pl'
,p_message_text=>'Edytuj "Grupuj wg"'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127997008030027150)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'pl'
,p_message_text=>'%0 w trybie edycji'
,p_is_js_message=>true
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127972673407027143)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Tabela w trybie edycji; prosz\0119 ponownie nacisn\0105\0107, aby prze\0142\0105czy\0107 do trybu widoku')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128085854867027177)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'pl'
,p_message_text=>'Kopia ukryta (Udw)'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128086035218027177)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'pl'
,p_message_text=>unistr('Wiadomo\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128085702034027177)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'pl'
,p_message_text=>'Kopia (Dw)'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128085443865027177)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'pl'
,p_message_text=>unistr('E-mail wys\0142any.')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128085913915027177)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'pl'
,p_message_text=>'Temat'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128085628996027177)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'pl'
,p_message_text=>'Odbiorca (Do)'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128039725773027163)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142\0105czone')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128032901533027161)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'pl'
,p_message_text=>unistr('r\00F3wna si\0119')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128039883683027163)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyra\017Cenie')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128084828289027177)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'pl'
,p_message_text=>'Typ'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128052039950027167)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'pl'
,p_message_text=>'Plik przygotowany. Rozpoczynanie pobierania.'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128014378508027156)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wype\0142nij')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128016507637027156)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wype\0142nij wyb\00F3r, u\017Cywaj\0105c:')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128016452178027156)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wype\0142nij wyb\00F3r')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128006165068027153)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'pl'
,p_message_text=>'Filtruj'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128039124488027163)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'pl'
,p_message_text=>'Filtry'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128092850753027179)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'pl'
,p_message_text=>'Filtruj...'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128078881495027175)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'pl'
,p_message_text=>unistr('Na pocz\0105tku')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128006376512027153)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'pl'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128037674322027163)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'pl'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128083401756027177)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'pl'
,p_message_text=>'Maska formatu'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128085131357027177)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'pl'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128085072629027177)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'pl'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127996185115027150)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'pl'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127930026488027130)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'pl'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128042265576027164)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zamro\017A')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128039999399027163)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'pl'
,p_message_text=>'Funkcje i operatory'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128077011317027175)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'pl'
,p_message_text=>'Lejkowy'
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128058798248027169)
,p_name=>'APEX.IG.GO'
,p_message_language=>'pl'
,p_message_text=>'Wykonaj'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128033590177027162)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'pl'
,p_message_text=>unistr('wi\0119ksze ni\017C')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128033685679027162)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'pl'
,p_message_text=>unistr('wi\0119ksze ni\017C lub r\00F3wne')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128040200501027163)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'pl'
,p_message_text=>'Tabela'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128005393395027153)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok tabeli'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128079687466027175)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'pl'
,p_message_text=>'Grupa'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128040462180027164)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'pl'
,p_message_text=>'Grupuj wg'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128005621438027153)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok grupowania wg'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128084037639027177)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'pl'
,p_message_text=>'Typ warunku'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128082994806027176)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'pl'
,p_message_text=>unistr('Nag\0142\00F3wek')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128083187792027176)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyr\00F3wnanie nag\0142\00F3wka')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128092780508027179)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'pl'
,p_message_text=>'Pomoc'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128088230138027178)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>W tej tabeli interaktywnej mo\017Cna bezpo\015Brednio wstawia\0107, aktualizowa\0107 i usuwa\0107 dane.</p>'),
'',
unistr('<p>Aby wstawi\0107 nowy wiersz, nale\017Cy klikn\0105\0107 przycisk "Dodaj wiersz".</p>'),
'',
unistr('<p>Aby edytowa\0107 istniej\0105ce dane, nale\017Cy klikn\0105\0107 dwukrotnie odpowiedni\0105 kom\00F3rk\0119. Przy wi\0119kszych pracach edycyjnych mo\017Cna si\0119 prze\0142\0105czy\0107 do trybu edycji, klikaj\0105c "Edytuj". W trybie edycji mo\017Cna edytowa\0107 poszczeg\00F3lne kom\00F3rki, klikaj\0105c je lub korzystaj\0105')
||'c z klawiatury.</p>',
'',
unistr('<p>Do duplikowania lub usuwania wierszy nale\017Cy u\017Cy\0107 menu "Zmie\0144". Aby w\0142\0105czy\0107 menu "Zmie\0144", nale\017Cy wybra\0107 jeden lub wi\0119ksz\0105 liczb\0119 wierszy, zaznaczaj\0105c ich pola wyboru.</p>'),
'',
unistr('<p>Aby zduplikowa\0107 wybrany wiersz, nale\017Cy wybra\0107 z menu "Zmie\0144" opcj\0119 "Zduplikuj wiersze". Aby usun\0105\0107 wybrany wiersz, nale\017Cy wybra\0107 z menu "Zmie\0144" opcj\0119 "Usu\0144 wiersz".</p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128090308638027179)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'pl'
,p_message_text=>unistr('Mo\017Cliwo\015Bci edycyjne')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128090415095027179)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Tabela interaktywna przedstawia zbi\00F3r danych w postaci przeszukiwalnego, dostosowywalnego raportu. Mo\017Cna wykonywa\0107 r\00F3\017Cne operacje maj\0105ce na celu ograniczenie liczby zwracanych rekord\00F3w, a tak\017Ce zmienia\0107 spos\00F3b wy\015Bwietlania danych.</p>'),
'',
unistr('<p>Do filtrowania zwracanych rekord\00F3w s\0142u\017Cy pole "Szukaj". Klikaj\0105c "Czynno\015Bci", uzyskuje si\0119 dost\0119p do opcji umo\017Cliwiaj\0105cych modyfikowanie uk\0142adu raportu; mo\017Cna te\017C korzysta\0107 z menu "Nag\0142\00F3wek kolumny" z wy\015Bwietlanych kolumn.</p>'),
'',
unistr('<p>Z obszaru "Ustawienia raportu" mo\017Cna zapisa\0107 dostosowania raportu. Mo\017Cna tak\017Ce pobra\0107 dane z raportu do pliku zewn\0119trznego b\0105d\017A wys\0142a\0107 je e-mailem do siebie lub do innych u\017Cytkownik\00F3w.</p>'),
'',
unistr('<p>Wi\0119cej informacji mo\017Cna znale\017A\0107 w rozdziale "Using Interactive Grids" w podr\0119czniku <em>Oracle APEX End User''s Guide</em>.')))
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128090113268027179)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'pl'
,p_message_text=>unistr('Przegl\0105d')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128088100109027178)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Korzystaj\0105c z wbudowanych mo\017Cliwo\015Bci, mo\017Cna dostosowa\0107 tabel\0119 interaktywn\0105, tak aby dane by\0142y wy\015Bwietlane w inny spos\00F3b.</p>'),
'',
unistr('<p>Za pomoc\0105 menu "Nag\0142\00F3wek kolumny" lub menu "Czynno\015Bci" mo\017Cna okre\015Bla\0107 wy\015Bwietlane kolumny oraz ich kolejno\015B\0107, a tak\017Ce zamra\017Ca\0107 kolumny. Mo\017Cna r\00F3wnie\017C definiowa\0107 r\00F3\017Cne filtry danych i sortowa\0107 zwracane dane.</p>'),
'',
unistr('<p>Za pomoc\0105 s\0105siaduj\0105cego z polem "Szukaj" przycisku "Widok" mo\017Cna uzyskiwa\0107 dost\0119p do innych widok\00F3w danych, kt\00F3re mog\0142y zosta\0107 zdefiniowane przez tw\00F3rc\0119 aplikacji. Mo\017Cna r\00F3wnie\017C utworzy\0107 wykres lub wy\015Bwietli\0107 ju\017C istniej\0105cy.</p>  '),
'',
unistr('<p><em>Uwaga: Klikaj\0105c <strong>Pomoc</strong> w okna dialogowych dla tabeli interaktywnej, mo\017Cna uzyska\0107 bardziej szczeg\00F3\0142owe informacje o wybranej funkcji.</em></p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128090268833027179)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'pl'
,p_message_text=>unistr('Mo\017Cliwo\015Bci raportowe')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128041257374027164)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Tabela interaktywna - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128087090803027178)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna agregowa\0107 kolumny. Zagregowane warto\015Bci s\0105 wy\015Bwietlane na dole danych albo - je\015Bli zosta\0142y zdefiniowane przerwy kontrolne - na dole ka\017Cdej przerwy.</p>'),
'',
'<p><strong>Lista agregacji</strong><br>',
unistr('Na li\015Bcie agregacji s\0105 wy\015Bwietlane zdefiniowane agregacje. Mo\017Cna je wy\0142\0105cza\0107, czyszcz\0105c ich pola wyboru.<br>'),
unistr('Aby utworzy\0107 now\0105 agregacj\0119, nale\017Cy klikn\0105\0107 ikon\0119 "Dodaj" ( &plus; ); aby usun\0105\0107 istniej\0105c\0105 agregacj\0119 - ikon\0119 "Usu\0144" ( &minus; ).</p>'),
'',
'<p><strong>Ustawienia agregacji</strong><br>',
unistr('Za pomoc\0105 formularza, znajduj\0105cego si\0119 po prawej stronie, mo\017Cna zdefiniowa\0107 agregacj\0119.<br>'),
unistr('Nale\017Cy wybra\0107 nazw\0119 kolumny i typ agregacji.<br>'),
unistr('Opcjonalnie mo\017Cna wprowadzi\0107 etykietk\0119 agregacji.<br>'),
unistr('Je\015Bli zosta\0142a zdefiniowana przerwa kontrolna, to - gdy zostanie wybrana opcja <strong>Poka\017C warto\015B\0107 og\00F3ln\0105</strong> - na dole danych b\0119dzie wy\015Bwietlana \015Brednia og\00F3lna, podsumowanie og\00F3lne lub inna podobna warto\015B\0107.</p>'),
'',
unistr('<p><em>Uwaga: Dost\0119p do okna dialogowego agregacji mo\017Cna uzyska\0107 z menu "Czynno\015Bci" lub klikaj\0105c nag\0142\00F3wek kolumny i symbol sumy ( &sum; ).</em></p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128089237036027178)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Agregacja - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128087707442027178)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna zdefiniowa\0107 wykres, kt\00F3ry ma by\0107 wy\015Bwietlany jako osobny widok danych.<br>'),
unistr('Nale\017Cy wybra\0107 typ i atrybuty wykresu.</p>'),
'<p><strong>Atrybuty wykresu</strong><br>',
unistr('W zale\017Cno\015Bci od typu wykresu s\0105 dost\0119pne r\00F3\017Cne atrybuty wykresu.</p>'),
'<p>',
'<ul>',
unistr('  <li>Nale\017Cy wybra\0107 kolumn\0119 zawieraj\0105c\0105 warto\015B\0107 atrybutu:'),
'    <ul>',
unistr('      <li>Etykieta - tekst dla ka\017Cdego z punkt\00F3w danych.</li>'),
unistr('      <li>Warto\015B\0107 - dane prezentowane na wykresie.</li>'),
unistr('      <li>Serie - u\017Cywane do definiowania wieloseryjnych zapyta\0144 dynamicznych.</li>'),
unistr('      <li>Otwarcie - dzienna gie\0142dowa cena otwarcia (tylko wykres gie\0142dowy)</li>'),
unistr('      <li>Zamkni\0119cie - dzienna gie\0142dowa cena zamkni\0119cia (tylko wykres gie\0142dowy)</li>'),
unistr('      <li>Maksimum - warto\015B\0107 maksymalna (tylko wykresy zakresowy i gie\0142dowy).</li>'),
unistr('      <li>Minimum - warto\015B\0107 minimalna (tylko wykresy zakresowy i gie\0142dowy).</li>'),
unistr('      <li>Wolumen - dzienny wolumen gie\0142dowy (tylko wykres gie\0142dowy).</li>'),
unistr('      <li>Cel - warto\015B\0107 celu (tylko wykres lejkowy).</li>'),
unistr('      <li>X - warto\015B\0107 na osi X (tylko wykresy p\0119cherzykowy i punktowy).</li>'),
unistr('      <li>Y - warto\015B\0107 na osi Y (tylko wykresy p\0119cherzykowy i punktowy).</li>'),
unistr('      <li>Z - szeroko\015B\0107 s\0142upka lub promie\0144 p\0119cherzyka (tylko wykresy s\0142upkowy, p\0119cherzykowy i zakresowy).</li>'),
'    </ul>',
'  </li>',
'  <li>Orientacja - pionowo lub poziomo.</li>',
unistr('  <li>Agregacja - wyb\00F3r sposobu agregowania warto\015Bci wykresu.</li>'),
unistr('  <li>Stos - okre\015Blenie, czy elementy danych maj\0105 by\0107 ustawiane w formie stosu.</li>'),
unistr('  <li>Sortuj wg - sortowanie wed\0142ug etykiety lub warto\015Bci.'),
'    <ul>',
unistr('      <li>Kierunek - sortowanie warto\015Bci w porz\0105dku rosn\0105cym lub malej\0105cym.</li>'),
unistr('      <li>Warto\015Bci Null - okre\015Blenie sposobu sortowania rekord\00F3w z warto\015Bciami Null wzgl\0119dem rekord\00F3w z warto\015Bciami innymi ni\017C Null.</li>'),
'    </ul>',
'  </li>',
unistr('  <li>Liczba miejsc dziesi\0119tnych</li>'),
unistr('  <li>Tytu\0142 osi etykiet</li>'),
unistr('  <li>Tytu\0142 osi warto\015Bci</li>'),
'</ul>',
'</p>'))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128089699477027178)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Wykres - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128086766479027178)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna okre\015Bli\0107, kt\00F3re kolumny maj\0105 by\0107 wy\015Bwietlane i w jakiej kolejno\015Bci.</p>'),
'',
unistr('<p>Aby ukry\0107 kolumn\0119, nale\017Cy wyczy\015Bci\0107 jej pole wyboru.<br>'),
unistr('Aby zmieni\0107 kolejno\015B\0107 kolumn, nale\017Cy klika\0107 ikon\0119 "Przenie\015B w g\00F3r\0119" ( &uarr; ) lub "Przenie\015B w d\00F3\0142" ( &darr; ).<br>'),
unistr('Korzystaj\0105c z rozwijanego selektora, mo\017Cna wybra\0107 wszystkie kolumny, wy\015Bwietlane kolumny lub niewy\015Bwietlane kolumny.</p>'),
'',
unistr('<p>Opcjonalnie mo\017Cna za pomoc\0105 formularza okre\015Bli\0107 (w pikselach) minimaln\0105 szeroko\015B\0107 kolumny.</p>'),
'',
unistr('<p><em>Uwaga: Kolejno\015B\0107 wy\015Bwietlanych kolumn mo\017Cna zmieni\0107, klikaj\0105c uchwyt kolumny (na pocz\0105tku jej nag\0142\00F3wka) i przeci\0105gaj\0105c j\0105 w lewo lub w prawo. Szeroko\015B\0107 wy\015Bwietlanych kolumn mo\017Cna zmieni\0107, klikaj\0105c separator kolumn (mi\0119dzy nag\0142\00F3wkami kolumn) i ')
||unistr('przeci\0105gaj\0105c go w lewo lub w prawo.</em></p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128089599201027178)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Kolumny - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128087123818027178)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna zdefiniowa\0107 dodatkowe kolumny oparte na obliczeniach matematycznych i przeprowadzanych z u\017Cyciem funkcji w odniesieniu do istniej\0105cych kolumn.</p>'),
'',
unistr('<p><strong>Lista oblicze\0144</strong><br>'),
unistr('Na li\015Bcie oblicze\0144 s\0105 wy\015Bwietlane zdefiniowane obliczenia. Mo\017Cna je wy\0142\0105cza\0107, czyszcz\0105c ich pola wyboru.<br>'),
unistr('Aby utworzy\0107 nowe obliczenie, nale\017Cy klikn\0105\0107 ikon\0119 "Dodaj" ( &plus; ); aby usun\0105\0107 istniej\0105ce obliczenie - ikon\0119 "Usu\0144" ( &minus; ).</p>'),
'',
'<p><strong>Ustawienia obliczenia</strong><br>',
unistr('Za pomoc\0105 formularza mo\017Cna zdefiniowa\0107 obliczenie.<br>'),
unistr('Nale\017Cy wprowadzi\0107 szczeg\00F3\0142y kolumny (takie jak nag\0142\00F3wek i etykieta) oraz wybra\0107 ustawienia wyr\00F3wnania.<br>'),
unistr('W obszarze tekstowym "Wyra\017Cenie" nale\017Cy wprowadzi\0107 kolumny i powi\0105zane funkcje, u\017Cywane w obliczeniu.<br>'),
unistr('Nale\017Cy wybra\0107 dla nowej kolumny odpowiedni typ danych i - opcjonalnie - mask\0119 formatu.</p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128089118004027178)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Obliczanie - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128087439810027178)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna zdefiniowa\0107 przerw\0119 kontroln\0105 dla jednej kolumny lub wi\0119kszej ich liczby.</p>'),
'',
'<p><strong>Lista przerw kontrolnych</strong><br>',
unistr('Na li\015Bcie przerw kontrolnych s\0105 wy\015Bwietlane zdefiniowane przerwy kontrolne. Istniej\0105c\0105 kolumn\0119 przerwy kontrolnej mo\017Cna wy\0142\0105czy\0107, czyszcz\0105c pole wyboru kolumny.<br>'),
unistr('Aby doda\0107 do przerwy kontrolnej now\0105 kolumn\0119, nale\017Cy klikn\0105\0107 ikon\0119 "Dodaj" ( &plus; ); aby usun\0105\0107 istniej\0105c\0105 kolumny z przerwy kontrolnej - ikon\0119 "Usu\0144" ( &minus; ).<br>'),
unistr('Aby przenie\015B\0107 wybran\0105 kolumn\0119 w g\00F3r\0119 lub w d\00F3\0142 wzgl\0119dem innych kolumn, nale\017Cy klika\0107 ikon\0119 "Przenie\015B w g\00F3r\0119" ( &uarr; ) lub "Przenie\015B w d\00F3\0142" ( &darr; ).</p>'),
'',
'<p><strong>Ustawienia przerwy kontrolnej</strong><br>',
unistr('Za pomoc\0105 formularza mo\017Cna zdefiniowa\0107 kolumn\0119 przerwy kontrolnej.<br>'),
unistr('Nale\017Cy wybra\0107 kolumn\0119 przerwy kontrolnej, porz\0105dek sortowania oraz spos\00F3b porz\0105dkowania kolumn z warto\015Bciami Null (kolumny niezawieraj\0105ce warto\015Bci).</p>'),
'',
unistr('<p><em>Uwaga: Wy\015Bwietlaj\0105c tabel\0119 interaktywn\0105, mo\017Cna zdefiniowa\0107 przerw\0119 kontroln\0105, klikaj\0105c nag\0142\00F3wek kolumny i wybieraj\0105c ikon\0119 przerwy kontrolnej.</em></p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128088825486027178)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Przerwa kontrolna - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128087687476027178)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna pobra\0107 wszystkie bie\017C\0105ce wiersze do pliku zewn\0119trznego. Zostan\0105 w nim zawarte tylko obecnie wy\015Bwietlane kolumny z u\017Cyciem filtr\00F3w i sortowa\0144 zastosowanych do danych.</p>'),
'',
unistr('<p>Nale\017Cy wybra\0107 format pliku, po czym klikn\0105\0107 "Pobierz".<br>'),
unistr('Uwaga: Plik CSV nie b\0119dzie zawiera\0142 formatowania, takiego jak agregacje i przerwy kontrolne.</p>'),
'',
unistr('<p>Aby wys\0142a\0107 plik e-mailem, nale\017Cy wybra\0107 opcj\0119 "Wy\015Blij jako e-mail", po czym wprowadzi\0107 odbiorc\0119, temat i wiadomo\015B\0107.</p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128088662968027178)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Pobieranie - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128086801335027178)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna skonfigurowa\0107 filtry danych, ograniczaj\0105ce zwracane wiersze.</p>'),
'',
unistr('<p><strong>Lista filtr\00F3w</strong><br>'),
unistr('Na li\015Bcie filtr\00F3w s\0105 wy\015Bwietlane zdefiniowane filtry. Mo\017Cna je wy\0142\0105cza\0107, czyszcz\0105c ich pola wyboru.<br>'),
unistr('Aby utworzy\0107 nowy filtr, nale\017Cy klikn\0105\0107 ikon\0119 "Dodaj" ( &plus; ); aby usun\0105\0107 istniej\0105cy filtr - ikon\0119 "Usu\0144" ( &minus; ).</p>'),
'',
'<p><strong>Ustawienia filtra</strong><br>',
unistr('Za pomoc\0105 formularza mo\017Cna zdefiniowa\0107 w\0142a\015Bciwo\015Bci filtra.<br>'),
unistr('Nale\017Cy wybra\0107 odpowiedni typ filtra:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Wiersz - filtrowanie terminu wyst\0119puj\0105cego w dowolnej filtrowalnej kolumnie.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Kolumna - filtrowanie konkretnej kolumny przy u\017Cyciu okre\015Blonego operatora i okre\015Blonej warto\015Bci.</p>'),
'',
unistr('<p><em>Uwaga: Wy\015Bwietlaj\0105c tabel\0119 interaktywn\0105, mo\017Cna definiowa\0107 filtry wierszy, wpisuj\0105c termin bezpo\015Brednio w polu "Szukaj". Klikaj\0105c "Wyb\00F3r przeszukiwanych kolumn", mo\017Cna ograniczy\0107 wyszukiwanie do okre\015Blonej kolumny. Alternatywnie mo\017Cna - w celu ')
||unistr('utworzenia filtra kolumny - wybra\0107 z menu "Nag\0142\00F3wek kolumny" odpowiedni\0105 warto\015B\0107.</em></p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128089401985027178)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Filtrowanie - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128087256365027178)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna wy\015Bwietli\0107 dane tak, jak istnia\0142y we wcze\015Bniejszym punkcie w czasie.</p>'),
unistr('<p>Aby uruchomi\0107 zapytanie Flashback, prosz\0119 okre\015Bli\0107 punkt w przesz\0142o\015Bci, wprowadzaj\0105c odpowiedni\0105 liczb\0119 minut.</p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128089003134027178)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Flashback - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128089787057027178)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Grupuj wg - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128087389266027178)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna wyr\00F3\017Cni\0107 wiersze lub kolumny danych na podstawie wprowadzonych warunk\00F3w.</p>'),
'',
unistr('<p><strong>Lista wyr\00F3\017Cnie\0144</strong><br>'),
unistr('Na li\015Bcie wyr\00F3\017Cnie\0144 s\0105 wy\015Bwietlane zdefiniowane wyr\00F3\017Cnienia. Mo\017Cna je wy\0142\0105cza\0107, czyszcz\0105c ich pola wyboru.<br>'),
unistr('Aby utworzy\0107 nowe wyr\00F3\017Cnienie, nale\017Cy klikn\0105\0107 ikon\0119 "Dodaj" ( &plus; ); aby usun\0105\0107 istniej\0105ce wyr\00F3\017Cnienie - ikon\0119 "Usu\0144" ( &minus; ).</p>'),
'',
unistr('<p><strong>Ustawienia wyr\00F3\017Cnienia</strong><br>'),
unistr('Za pomoc\0105 formularza mo\017Cna zdefiniowa\0107 w\0142a\015Bciwo\015Bci wyr\00F3\017Cnienia.<br>'),
unistr('Nale\017Cy wprowadzi\0107 nazw\0119, wybra\0107 opcj\0119 "Wiersz" lub "Kolumna", po czym wybra\0107 kody HTML kolor\00F3w t\0142a i tekstu.<br>'),
unistr('Aby wyr\00F3\017Cni\0107 okre\015Blone dane, nale\017Cy wybra\0107 odpowiedni <strong>Typ warunku</strong>:<br>'),
unistr('&nbsp;&nbsp;&nbsp;Wiersz - wyr\00F3\017Cnianie terminu wyst\0119puj\0105cego w dowolnej kolumnie.<br>'),
unistr('&nbsp;&nbsp;&nbsp;Kolumna - wyr\00F3\017Cnianie w konkretnej kolumnie przy u\017Cyciu okre\015Blonego operatora i okre\015Blonej warto\015Bci.</p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128088908923027178)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyr\00F3\017Cnianie - pomoc')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128087543306027178)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna zapisa\0107 zmiany, kt\00F3re zosta\0142y dokonane w uk\0142adzie i konfiguracji bie\017C\0105cej tabeli.<br>'),
unistr('Tw\00F3rcy aplikacji mog\0105 definiowa\0107 r\00F3\017Cne alternatywne uk\0142ady raportu. Tam, gdzie jest to dozwolone, bie\017C\0105cy u\017Cytkownik i inni u\017Cytkownicy ko\0144cowi mog\0105 zapisa\0107 raport jako publiczny, wskutek czego staje si\0119 on dost\0119pny dla wszystkich innych u\017Cytkownik\00F3w')
||unistr(' tabeli. U\017Cytkownik mo\017Ce tak\017Ce zapisa\0107 raport jako prywatny i w\00F3wczas tylko ten u\017Cytkownik b\0119dzie m\00F3g\0142 go wy\015Bwietli\0107.</p>'),
unistr('<p>Nale\017Cy wybra\0107 jeden z dost\0119pnych typ\00F3w i wprowadzi\0107 nazw\0119 zapisywanego raportu.</p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128088745446027178)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Raport - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128086993755027178)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 tego okna dialogowego mo\017Cna okre\015Bli\0107 kolejno\015B\0107 wy\015Bwietlania.</p>'),
'',
'<p><strong>Lista sortowania</strong><br>',
unistr('W oknie dialogowym sortowania jest wy\015Bwietlana lista skonfigurowanych regu\0142 sortowania.<br>'),
unistr('Aby utworzy\0107 kolumn\0119 sortowania, nale\017Cy klikn\0105\0107 ikon\0119 "Dodaj" ( &plus; ); aby usun\0105\0107 kolumn\0119 sortowania - ikon\0119 "Usu\0144" ( &minus; ).<br>'),
unistr('Aby przenie\015B\0107 wybran\0105 kolumn\0119 sortowania w g\00F3r\0119 lub w d\00F3\0142 wzgl\0119dem innych kolumn sortowania, nale\017Cy klika\0107 ikon\0119 "Przenie\015B w g\00F3r\0119" ( &uarr; ) lub "Przenie\015B w d\00F3\0142" ( &darr; ).</p>'),
'',
'<p><strong>Ustawienia sortowania</strong><br>',
unistr('Nale\017Cy wybra\0107 kolumn\0119 sortowania, porz\0105dek sortowania oraz spos\00F3b porz\0105dkowania kolumn z warto\015Bciami Null (kolumny niezawieraj\0105ce warto\015Bci).</p>'),
'',
unistr('<p><em>Uwaga: Dane mo\017Cna sortowa\0107 wed\0142ug kolumn, kt\00F3re nie s\0105 wy\015Bwietlane; nie wszystkie jednak kolumny s\0105 sortowalne.</em><br>'),
unistr('<em>Wy\015Bwietlane kolumny mo\017Cna sortowa\0107, naciskaj\0105c strza\0142k\0119 skierowan\0105 w g\00F3r\0119 (porz\0105dek rosn\0105cy) lub w d\00F3\0142 (porz\0105dek malej\0105cy), wy\015Bwietlan\0105 na ko\0144cu nag\0142\00F3wka kolumny. Aby doda\0107 kolejn\0105 kolumn\0119 do istniej\0105cego sortowania, nale\017Cy przy naci\015Bni\0119tym klawi')
||unistr('szu Shift klikn\0105\0107 strza\0142k\0119 skierowan\0105 w d\00F3\0142 lub w g\00F3r\0119.</em></p>')))
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128089341938027178)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Sortowanie - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128088598655027178)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Subskrypcja - pomoc'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128042172335027164)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'pl'
,p_message_text=>'Ukryj'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128006550749027153)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyr\00F3\017Cnij')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128075727594027174)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Maksimum'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128076562248027174)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'pl'
,p_message_text=>'Poziomy'
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128035139640027162)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'pl'
,p_message_text=>'godz.'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128040132005027163)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'pl'
,p_message_text=>'Ikona'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128005435844027153)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok ikon'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128033363610027161)
,p_name=>'APEX.IG.IN'
,p_message_language=>'pl'
,p_message_text=>'w'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128041779722027164)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'pl'
,p_message_text=>'Ustawienie nieaktywne'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128041853919027164)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'pl'
,p_message_text=>'Ustawienia nieaktywne'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128049417361027166)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142 b\0142\0105d wewn\0119trzny podczas przetwarzania \017C\0105dania zwi\0105zanego z tabel\0105 interaktywn\0105.')
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127937384967027133)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ "%0" filtra kolumn nie jest obs\0142ugiwany dla kolumny "%1".')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128088339913027178)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawny format daty'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128063154703027170)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Tabela interaktywna nie obs\0142uguje definiowania filtra opartego na kolumnie %0.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128063044305027170)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'pl'
,p_message_text=>'%0 nie jest poprawnym typem (typem filtra) do definiowania filtra tabeli interaktywnej.'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127943905820027135)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawny format liczby'
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128091017214027179)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawne ustawienie'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128091186487027179)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawne ustawienia'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128082238472027176)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'pl'
,p_message_text=>unistr('"Sortuj wg" ustawiono na "%0", lecz dla "%0" nie wybrano \017Cadnej kolumny.')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128079523174027175)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawna warto\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128074658146027174)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Niewy\015Bwietlane')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128034163200027162)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'pl'
,p_message_text=>'w ostat.'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128034354245027162)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'pl'
,p_message_text=>'w nast.'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128033233917027161)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>'nie jest puste'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128033108682027161)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'pl'
,p_message_text=>'jest puste'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128083070101027176)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'pl'
,p_message_text=>'Etykieta'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128075029263027174)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Etykieta'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128078918820027175)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'pl'
,p_message_text=>unistr('Na ko\0144cu')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128023475587027158)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Ostatni dzie\0144')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128023620328027159)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'pl'
,p_message_text=>'Ostatnia godzina'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128024178116027159)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'pl'
,p_message_text=>'Ostatnia minuta'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128023127827027158)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Ostatni miesi\0105c')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128023232971027158)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'pl'
,p_message_text=>unistr('Ostatni tydzie\0144')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128023372651027158)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'pl'
,p_message_text=>'Ostatnie dni (%0)'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128023511005027158)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'pl'
,p_message_text=>'Ostatnie godziny (%0)'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128024294167027159)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'pl'
,p_message_text=>'Ostanie minuty (%0)'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128024077903027159)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'pl'
,p_message_text=>unistr('Ostatnie miesi\0105ce (%0)')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128023967764027159)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'pl'
,p_message_text=>'Ostatnie tygodnie (%0)'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128022906087027158)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'pl'
,p_message_text=>'Ostatnie lata (%0)'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128023096728027158)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'pl'
,p_message_text=>'Ostatni rok'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128083207387027176)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyr\00F3wnanie kom\00F3rki')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128083363655027177)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'pl'
,p_message_text=>unistr('U\017Cyj grupy dla')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128033771024027162)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'pl'
,p_message_text=>unistr('mniejsze ni\017C')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128033836542027162)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'pl'
,p_message_text=>unistr('mniejsze ni\017C lub r\00F3wne')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128077107976027175)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'pl'
,p_message_text=>'Liniowy'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128077261773027175)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'pl'
,p_message_text=>'Liniowo-warstwowy'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128083608470027177)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'pl'
,p_message_text=>'Listagg'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128075882439027174)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Minimum'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128086150178027177)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'pl'
,p_message_text=>unistr('Adresy nale\017Cy rozdzieli\0107 przecinkiem')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128034920985027162)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'pl'
,p_message_text=>unistr('zgodne z wyra\017Ceniem regularnym')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128059318843027169)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'pl'
,p_message_text=>'Maksimum'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128093643700027180)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Maksimum og\00F3lne')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128059567745027169)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'pl'
,p_message_text=>'Mediana'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128093725048027180)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Mediana og\00F3lna')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128059211794027169)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'pl'
,p_message_text=>'Minimum'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128035072017027162)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'pl'
,p_message_text=>'min'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128060033211027170)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'pl'
,p_message_text=>'min temu'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128093546937027180)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Minimum og\00F3lne')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128035461313027162)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'pl'
,p_message_text=>'mies.'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128042005368027164)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Dane zawieraj\0105 ponad %0 wierszy, przekraczaj\0105c dozwolony limit. Aby mo\017Cna by\0142o wy\015Bwietli\0107 wyniki, prosz\0119 zastosowa\0107 dodatkowe filtry.')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128067817271027172)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 statyczny ID obszaru, poniewa\017C strona zawiera wi\0119cej ni\017C jedn\0105 tabel\0119 interaktywn\0105.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128038189268027163)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'pl'
,p_message_text=>'Nazwa'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128038390312027163)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Nazwany raport'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128022376017027158)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pny dzie\0144')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128022100523027158)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pna godzina')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128024341239027159)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pna minuta')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128022636967027158)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pny miesi\0105c')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128022509386027158)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pny tydzie\0144')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128022411212027158)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pne dni (%0)')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128022288743027158)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pne godziny (%0)')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128024437488027159)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pne minuty (%0)')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128023764906027159)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pne miesi\0105ce (%0)')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128023810707027159)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pne tygodnie (%0)')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128022805957027158)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pne lata (%0)')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128022728219027158)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pny rok')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128034049613027162)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'pl'
,p_message_text=>unistr('nie mi\0119dzy')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128033055991027161)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'pl'
,p_message_text=>unistr('nie r\00F3wna si\0119')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128097880054027181)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Obszar z ID %0 nie jest obszarem tabeli interaktywnej lub nie istnieje w aplikacji %1.'
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128033453704027161)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'pl'
,p_message_text=>'nie w'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128034285952027162)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'pl'
,p_message_text=>'nie w ostat.'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128034459103027162)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'pl'
,p_message_text=>'nie w nast.'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128041946328027164)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono \017Cadnych danych')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128078779055027175)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015Bci Null')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128083806402027177)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'pl'
,p_message_text=>'Liczbowe'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128079074432027175)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\0142.')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128079139844027175)
,p_name=>'APEX.IG.ON'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142.')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128032237662027161)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'pl'
,p_message_text=>unistr('1 minut\0119 temu')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128086679168027177)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'pl'
,p_message_text=>unistr('Otw\00F3rz selektor kolor\00F3w: %0')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128075562232027174)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Otwarcie'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128039231266027163)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'pl'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128074983871027174)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'pl'
,p_message_text=>'Orientacja'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128077377014027175)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'pl'
,p_message_text=>unistr('Ko\0142owy')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128040590520027164)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'pl'
,p_message_text=>'Tabela przestawna'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128005733643027153)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok tabeli przestawnej'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128086523928027177)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 rozdzieli\0107 warto\015Bci znakiem "%0"')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128077483598027175)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'pl'
,p_message_text=>'Biegunowy'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128082750629027176)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'pl'
,p_message_text=>unistr('\015Arodek')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128082862786027176)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'pl'
,p_message_text=>'Koniec'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128082657837027176)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'pl'
,p_message_text=>unistr('Pocz\0105tek')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128038472083027163)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'pl'
,p_message_text=>'Podstawowy'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128038784883027163)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'pl'
,p_message_text=>unistr('Podstawowy domy\015Blny')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128055288697027168)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Raport podstawowy'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127928821958027130)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'pl'
,p_message_text=>unistr('Do\0142\0105cz tagi u\0142atwie\0144 dost\0119pu')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127926277501027129)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'pl'
,p_message_text=>'Poziomo'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127926392982027129)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'pl'
,p_message_text=>'Pionowo'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127926133729027129)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'pl'
,p_message_text=>'Orientacja strony'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127926081941027129)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'pl'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127925938368027129)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'pl'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127929089973027130)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'pl'
,p_message_text=>'Niestandardowy'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127925784680027129)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'pl'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127925697051027129)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'pl'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127925846426027129)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'pl'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127925551749027129)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'pl'
,p_message_text=>'Rozmiar strony'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127891130671027118)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'pl'
,p_message_text=>unistr('Roz\0142\00F3\017C tekst z formatowaniem')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128077562061027175)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'pl'
,p_message_text=>'Radarowy'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128077606041027175)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'pl'
,p_message_text=>'Zakresowy'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128087877098027178)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'pl'
,p_message_text=>unistr('Od\015Bwie\017C')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128042771704027164)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'pl'
,p_message_text=>unistr('Od\015Bwie\017C wiersz')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128041577660027164)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'pl'
,p_message_text=>unistr('Od\015Bwie\017C wiersze')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128046774900027165)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Obszar tabeli interaktywnej nie istnieje w aplikacji %0 (strona %1 i obszar %2).'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128007231913027154)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144: %0')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128037811303027163)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'pl'
,p_message_text=>'Raport'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128097058584027181)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'pl'
,p_message_text=>unistr('Raport usuni\0119ty')
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128096729489027181)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Raport alternatywny zapisany dla wszystkich u\017Cytkownik\00F3w')
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128096682025027181)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'pl'
,p_message_text=>unistr('Raport domy\015Blny zapisany dla wszystkich u\017Cytkownik\00F3w')
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128096913573027181)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'pl'
,p_message_text=>'Raport prywatny zapisany'
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128096850900027181)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'pl'
,p_message_text=>unistr('Raport publiczny zapisany dla wszystkich u\017Cytkownik\00F3w')
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128046825066027165)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Zapisana tabela interaktywna o nazwie "%0" nie istnieje.'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128032190280027161)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'pl'
,p_message_text=>'Dane tabeli zgodne ze stanem %0 min temu'
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128032081963027161)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'pl'
,p_message_text=>unistr('Dane tabeli zgodne ze stanem 1 minut\0119 temu')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127967579508027142)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Raport "tabela interaktywna" nie istnieje.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128090076317027179)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'pl'
,p_message_text=>'Raport - edytuj'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128046601183027165)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Zapisana tabela interaktywna z ID %0 nie istnieje.'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128089969031027179)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'pl'
,p_message_text=>'Raport - zapisz jako'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128007359930027154)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'pl'
,p_message_text=>'Ustawienia tabeli'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128097901027027181)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Zapisana tabela interaktywna ze statycznym ID %0 nie istnieje.'
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128092914001027179)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok raportu'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128006474928027153)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'pl'
,p_message_text=>'Resetuj'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128042813315027164)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'pl'
,p_message_text=>'Wycofaj zmiany'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128041637335027164)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'pl'
,p_message_text=>unistr('Przywr\00F3\0107 wiersze')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128038801325027163)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'pl'
,p_message_text=>'Wiersz'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128037703654027163)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'pl'
,p_message_text=>'Liczba wierszy na stronie'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128097598843027181)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015Bci dot. wiersza')
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128098763656027181)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015Bci dot. wiersza %0')
,p_is_js_message=>true
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128006793177027153)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'pl'
,p_message_text=>'Zapisz'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128051866672027167)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'pl'
,p_message_text=>'zapisany'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127956441919027138)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Zapisany raport: %0'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128004971676027153)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'pl'
,p_message_text=>'Zapisane raporty'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128005030151027153)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'pl'
,p_message_text=>unistr('Domy\015Blny')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127978557035027145)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'pl'
,p_message_text=>unistr('Ju\017C istnieje zapisany raport o nazwie "%0". Prosz\0119 poda\0107 now\0105 nazw\0119.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128005129320027153)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'pl'
,p_message_text=>'Prywatny'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128005261189027153)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'pl'
,p_message_text=>'Publiczny'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128092614451027179)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'pl'
,p_message_text=>'Zapisz jako'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128040997233027164)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'pl'
,p_message_text=>'Zapisz ustawienia raportu'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128077749500027175)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'pl'
,p_message_text=>'Punktowy'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128004891318027153)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'pl'
,p_message_text=>'Szukaj'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128084932794027177)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Szukaj: Wszystkie kolumny tekstowe'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128004734909027153)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Szukaj: %0'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128084249096027177)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Szukaj: Pe\0142ny tekst')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128031980607027161)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'pl'
,p_message_text=>'Szukaj: %0'
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128074312932027174)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'pl'
,p_message_text=>unistr('- Wyb\00F3r -')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128014411931027156)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128067593101027172)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'pl'
,p_message_text=>unistr('Nale\017Cy wybra\0107 1 wiersz w obszarze nadrz\0119dnym')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128004699545027153)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r przeszukiwanych kolumn')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128097268481027181)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015Bci wyboru')
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128014685730027156)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r kom\00F3rek')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128014513852027156)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r wierszy')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128085557335027177)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Blij jako e-mail')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128078191663027175)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Seria'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128002336712027152)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128057502941027169)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C warto\015B\0107 og\00F3ln\0105')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128042426777027164)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok jednego wiersza'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128040725697027164)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'pl'
,p_message_text=>'Sortuj'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128078260404027175)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'pl'
,p_message_text=>'Sortuj wg'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128097688602027181)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Dla kolumny mo\017Cna zdefiniowa\0107 tylko jedno sortowanie.')
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128097444236027181)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'pl'
,p_message_text=>'Zmiana'
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128079284237027175)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'pl'
,p_message_text=>'Stos'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128034713168027162)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'pl'
,p_message_text=>unistr('zaczyna si\0119 od')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128077852484027175)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'pl'
,p_message_text=>unistr('Gie\0142dowy')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127997189364027150)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>unistr('Zwi\0119kszaj szeroko\015Bci kolumn')
,p_is_js_message=>true
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128041104322027164)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'pl'
,p_message_text=>'Subskrypcja'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128059131447027169)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'pl'
,p_message_text=>'Suma'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128098924121027181)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'pl'
,p_message_text=>'Tabela interaktywna. Raport: %0, widok: %1.'
,p_is_js_message=>true
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128093057184027179)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Suma og\00F3lna')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128076083721027174)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Cel'
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128082427324027176)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'pl'
,p_message_text=>'Kolor tekstu'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128007467897027154)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prze\0142\0105cz')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127889543820027118)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'pl'
,p_message_text=>'Tabela'
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128057402543027169)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'pl'
,p_message_text=>'Etykietka'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128037996956027163)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'pl'
,p_message_text=>'Typ'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128042371732027164)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'pl'
,p_message_text=>unistr('Odmro\017A')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128039430164027163)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'pl'
,p_message_text=>'Jednostka'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128085357620027177)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'pl'
,p_message_text=>unistr('Istniej\0105 niezapisane zmiany. Czy kontynuowa\0107?')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128039399567027163)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128075158978027174)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128080017431027176)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107 jest wymagana.')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128065241924027171)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107 (nie mo\017Cna zmieni\0107 strefy czasowej)')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128083959540027177)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'pl'
,p_message_text=>'Tekstowe'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128076413144027174)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'pl'
,p_message_text=>'Pionowy'
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128037472583027163)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127972564200027143)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Tabela w trybie widoku; prosz\0119 nacisn\0105\0107, aby edytowa\0107')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128074421588027174)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietlane')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128075964610027174)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Wolumen'
,p_is_js_message=>true
,p_version_scn=>2693200
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128035382184027162)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'pl'
,p_message_text=>'tyg./tydz.'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128074589948027174)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Minimalna szeroko\015B\0107 kolumny (w pikselach)')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128026512631027159)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 mi\0119dzy %1 a %2')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128026271528027159)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'pl'
,p_message_text=>'%0 zawiera %1'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128026336044027159)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'pl'
,p_message_text=>'%0 nie zawiera %1'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128001738311027152)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie zaczyna si\0119 od %1')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128025058052027159)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 r\00F3wna si\0119 %1')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128025261001027159)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 wi\0119ksze ni\017C %1')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128025369087027159)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 wi\0119ksze ni\017C lub r\00F3wne %1')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128026086170027159)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'pl'
,p_message_text=>'%0 w %1'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128027252835027160)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'pl'
,p_message_text=>'%0 w ostatnich %1 dniach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128027062371027160)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'pl'
,p_message_text=>'%0 w ostatnich %1 godzinach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128026832970027159)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'pl'
,p_message_text=>'%0 w ostatnich %1 minutach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128027672788027160)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w ostatnich %1 miesi\0105cach')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128027486866027160)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'pl'
,p_message_text=>'%0 w ostatnich %1 tygodniach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128027819488027160)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'pl'
,p_message_text=>'%0 w ostatnich %1 latach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128027116482027160)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'pl'
,p_message_text=>'%0 w ostatnim dniu'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128026908220027159)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'pl'
,p_message_text=>'%0 w ostatniej godzinie'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128026710470027159)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'pl'
,p_message_text=>'%0 w ostatniej minucie'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128027502716027160)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w ostatnim miesi\0105cu')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128027308961027160)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'pl'
,p_message_text=>'%0 w ostatnim tygodniu'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128027744170027160)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'pl'
,p_message_text=>'%0 w ostatnim roku'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128029645116027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnych %1 dniach')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128029441874027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnych %1 godzinach')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128029248715027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnych %1 minutach')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128030046071027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnych %1 miesi\0105cach')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128029802180027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnych %1 tygodniach')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128030209874027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnych %1 latach')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128029587148027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnym dniu')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128029304140027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnej godzinie')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128029195265027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnej minucie')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128029987718027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnym miesi\0105cu')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128029747930027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnym tygodniu')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128030111025027160)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 w nast\0119pnym roku')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128025708965027159)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>'%0 nie jest puste'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128025631375027159)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'pl'
,p_message_text=>'%0 jest puste'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128025453385027159)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 mniejsze ni\017C %1')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128025555588027159)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 mniejsze ni\017C lub r\00F3wne %1')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128025800752027159)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'pl'
,p_message_text=>'%0 podobne do %1'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128026474745027159)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 zgodne z wyra\017Ceniem regularnym %1')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128032336873027161)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0 min temu'
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128026698295027159)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie mi\0119dzy %1 a %2')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128025164032027159)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie r\00F3wna si\0119 %1')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128026142495027159)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w %1'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128028453838027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w ostatnich %1 dniach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128028292396027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w ostatnich %1 godzinach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128028003076027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w ostatnich %1 minutach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128028804899027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w ostatnich %1 miesi\0105cach')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128028699226027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w ostatnich %1 tygodniach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128029066371027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w ostatnich %1 latach'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128028317534027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w ostatnim dniu'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128028129072027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w ostatniej godzinie'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128027904694027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w ostatniej minucie'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128028735516027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w ostatnim miesi\0105cu')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128028536751027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w ostatnim tygodniu'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128028910309027160)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'pl'
,p_message_text=>'%0 nie w ostatnim roku'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128030846589027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnych %1 dniach')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128030617016027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnych %1 godzinach')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128030463779027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnych %1 minutach')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128031295255027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnych %1 miesi\0105cach ')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128031084054027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnych %1 tygodniach')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128031469981027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnych %1 latach')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128030793859027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnym dniu')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128030563210027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnej godzinie')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128030362398027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnej minucie')
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128031143842027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnym miesi\0105cu')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128030992547027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnym tygodniu')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128031317400027161)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie w nast\0119pnym roku')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128025969625027159)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'pl'
,p_message_text=>'%0 niepodobne %1'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128032875134027161)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 zaczyna si\0119 od %1')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128075294827027174)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128035503194027162)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'pl'
,p_message_text=>'lat(a)'
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128075396040027174)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128075452789027174)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128084456552027177)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'pl'
,p_message_text=>unistr('Poniedzia\0142ek, 12 stycznia 2016')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128084514269027177)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'pl'
,p_message_text=>unistr('Stycze\0144')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128084679520027177)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'pl'
,p_message_text=>'16 godz. temu'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128084751341027177)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'pl'
,p_message_text=>'za 16 godz.'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127902788233027122)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'pl'
,p_message_text=>'Zastosuj'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127894713591027119)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Przeci\0105gaj\0105c obraz, a nast\0119pnie u\017Cywaj\0105c suwaka powi\0119kszenia, mo\017Cna zmieni\0107 po\0142o\017Cenie obrazu w obr\0119bie ramki.</p>'),
'',
unistr('<p>Po ustawieniu wska\017Anika na kraw\0119dzi ikony b\0119d\0105 dost\0119pne nast\0119puj\0105ce skr\00F3ty klawiaturowe:</p>'),
'<ul>',
unistr('    <li>Strza\0142ka w lewo: przesuni\0119cie obrazu w lewo*</li>'),
unistr('    <li>Strza\0142ka w g\00F3r\0119: przesuni\0119cie obrazu w g\00F3r\0119*</li>'),
unistr('    <li>Strza\0142ka w prawo: przesuni\0119cie obrazu w prawo*</li>'),
unistr('    <li>Strza\0142ka w d\00F3\0142: przesuni\0119cie obrazu w d\00F3\0142*</li>'),
unistr('    <li>I: powi\0119kszenie</li>'),
'    <li>O: pomniejszenie</li>',
unistr('    <li>L: obr\00F3t w lewo</li>'),
unistr('    <li>R: obr\00F3t w prawo</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Aby szybciej przesuwa\0107, nale\017Cy przytrzymywa\0107 naci\015Bni\0119ty klawisz Shift</em></p>')))
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127894992493027119)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'pl'
,p_message_text=>'Przycinanie obrazu - Pomoc'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127902848205027122)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'pl'
,p_message_text=>'Resetuj'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127895233473027120)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'pl'
,p_message_text=>'Przytnij obraz'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127902903766027122)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Aby dostosowa\0107 poziom powi\0119kszenia, mo\017Cna przesun\0105\0107 suwak')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127932599396027131)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawny typ pliku. Obs\0142ugiwane typy plik\00F3w: %0.')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128066914308027172)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'pl'
,p_message_text=>unistr('Przegl\0105daj')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128066682933027172)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r pliku')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128066718584027172)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r plik\00F3w')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127932357958027131)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'pl'
,p_message_text=>unistr('Przeci\0105ganie i upuszczanie')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127932722480027131)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'pl'
,p_message_text=>unistr('Przeci\0105ganie plik\00F3w')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127934138228027132)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wybra\0107 plik lub go tutaj przeci\0105gn\0105\0107.')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127934261851027132)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wybra\0107 pliki lub je tutaj przeci\0105gn\0105\0107.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127934373359027132)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wybra\0107 plik lub go tutaj przeci\0105gn\0105\0107.')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127934452369027132)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wybra\0107 pliki lub je tutaj przeci\0105gn\0105\0107.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127932675913027131)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'pl'
,p_message_text=>'Pliki: %0'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127932427152027131)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zbyt du\017Cy plik. Maksymalny rozmiar pliku to %0.')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127912939851027125)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie jest obs\0142ugiwane wi\0119cej ni\017C jedno \0142adowanie plik\00F3w.')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127895801671027120)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127901368804027121)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>'Adres jest wymagany.'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127900219301027121)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'pl'
,p_message_text=>unistr('Miejscowo\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127900633828027121)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'pl'
,p_message_text=>'Kod kraju'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127900340048027121)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'pl'
,p_message_text=>'Numer domu'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127901227015027121)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'pl'
,p_message_text=>unistr('Szeroko\015B\0107 geograficzna')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127901153477027121)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'pl'
,p_message_text=>unistr('D\0142ugo\015B\0107 geograficzna')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127901019091027121)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C na mapie')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127900759616027121)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'pl'
,p_message_text=>'Wynik'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127900487016027121)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'pl'
,p_message_text=>'Kod pocztowy'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127900574010027121)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wojew\00F3dztwo')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127900128580027121)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'pl'
,p_message_text=>'Ulica'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127900021637027121)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Wyniki geokodowania'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127931554916027131)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'pl'
,p_message_text=>'Geokodowane'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127931663664027131)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'pl'
,p_message_text=>'Niegeokodowane'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127900953354027121)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'pl'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127900801176027121)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono \017Cadnego adresu.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127901444997027121)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107 "%0" jest wymagana.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128007627874027154)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'pl'
,p_message_text=>'"%0" lub "%1" jest wymagane.'
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128097164302027181)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietl tekst Pomocy dla "%0".')
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127903130780027122)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r obrazu')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127903287684027122)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r obraz\00F3w')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127903069051027122)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'pl'
,p_message_text=>'Pobierz'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127903370890027122)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'pl'
,p_message_text=>unistr('Przeci\0105ganie i upuszczanie')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127903461090027122)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'pl'
,p_message_text=>unistr('Przeci\0105ganie i upuszczanie obraz\00F3w')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127903544432027122)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wybra\0107 obraz lub go tutaj przeci\0105gn\0105\0107.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127903670843027122)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wybra\0107 obrazy lub je tutaj przeci\0105gn\0105\0107.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127903734569027122)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wybra\0107 obraz lub go tutaj przeci\0105gn\0105\0107.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127903821163027122)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wybra\0107 obrazy lub je tutaj przeci\0105gn\0105\0107.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127988541388027148)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'pl'
,p_message_text=>'Zaznaczone'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127988676342027148)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'pl'
,p_message_text=>'Niezaznaczone'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128016127612027156)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'pl'
,p_message_text=>'Puste pole kombi (tylko do odczytu)'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128013928435027155)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'pl'
,p_message_text=>'Puste pole listy (tylko do odczytu)'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128013734182027155)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'pl'
,p_message_text=>'Pole kombi (tylko do odczytu)'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128013803756027155)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'pl'
,p_message_text=>'Pole listy (tylko do odczytu)'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127929583763027130)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# nie zawiera si\0119 w poprawnym przedziale od %0 do %1.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127929695520027130)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# nie jest wielokrotno\015Bci\0105 %0.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128016975581027156)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'pl'
,p_message_text=>unistr('Prze\0142\0105cznik "Tylko do odczytu"')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127957559624027139)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'pl'
,p_message_text=>unistr('Edycja tylko do odczytu z \0142\0105czem')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127929120587027130)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# musi by\0107 zgodna z warto\015Bciami %0 i %1.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127929326489027130)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Nie'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128015624444027156)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\0142.')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128015703133027156)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142.')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127929290011027130)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Tak'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127937158672027132)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Selektor j\0119zyka')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127873530624027113)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'pl'
,p_message_text=>'Dodaj wpis'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128050351930027167)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'pl'
,p_message_text=>'Dodaj'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128050482555027167)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127873644665027113)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'pl'
,p_message_text=>'Wybrane wpisy'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128054166462027168)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'pl'
,p_message_text=>'Zaawansowane'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128054482798027168)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'pl'
,p_message_text=>'Anuluj'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128054276890027168)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'pl'
,p_message_text=>unistr('Wsp\00F3lne')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128054570909027168)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'pl'
,p_message_text=>'Aktywne opcje szablonu'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128055182714027168)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Opcje szablonu nie s\0105 dost\0119pne, poniewa\017C ten sk\0142adnik nie jest renderowany na tej stronie.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128054010861027168)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono opcji szablonu.'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128054310553027168)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'pl'
,p_message_text=>'Zapisz'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127908110051027123)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyczy\015B\0107 okr\0105g')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127910515262027124)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'pl'
,p_message_text=>unistr('Style niestandardowe nie s\0105 podane w poprawnej notacji JSON.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127908419752027124)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'pl'
,p_message_text=>unistr('Narz\0119dzie "Odleg\0142o\015B\0107"')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127908204048027123)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Narysuj okr\0105g')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127888045284027117)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Bie\017C\0105ca lokalizacja')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127894491685027119)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'pl'
,p_message_text=>unistr('Wsp\00F3\0142rz\0119dne pozycji pocz\0105tkowej s\0105 niepoprawne.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127883471648027116)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Pozycja pocz\0105tkowa musi by\0107 geometri\0105 punktow\0105.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127892022660027119)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'pl'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127887205824027117)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'pl'
,p_message_text=>'Warstwa'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128057643935027169)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'pl'
,p_message_text=>'Warstwa: %0'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127906407603027123)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'pl'
,p_message_text=>'Mapa'
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127876124935027114)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'pl'
,p_message_text=>'Komunikaty'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127892206360027119)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'pl'
,p_message_text=>'mile'
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128056614904027168)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Dane zawieraj\0105 ponad %0 wierszy, przekraczaj\0105c dozwolony limit.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127886569725027117)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'pl'
,p_message_text=>'&copy; 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Warunki</a> &nbsp;&nbsp; Dane map &copy; 2021 HERE'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127883147012027116)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ danych SDO_GEOMETRY nie jest dost\0119pny w tej bazie danych.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127886615067027117)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'pl'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> &copy; OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap - wsp\00F3\0142tw\00F3rcy </a>')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127911297534027124)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'pl'
,p_message_text=>unistr('<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap - wsp\00F3\0142tw\00F3rcy </a>')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127887481077027117)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'pl'
,p_message_text=>'Punkty'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128057701061027169)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'pl'
,p_message_text=>'Punkty: %0'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127908349001027124)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'pl'
,p_message_text=>unistr('Powi\0119kszanie prostok\0105tne')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127908061355027123)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127887828731027117)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Zresetuj kierunek na p\00F3\0142noc')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128002683657027152)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prze\0142\0105cz do trybu 2D')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128002722780027152)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prze\0142\0105cz do trybu 3D')
,p_is_js_message=>true
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127907951220027123)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'pl'
,p_message_text=>unistr('Prze\0142\0105cz o\015Bwiadczenie dotycz\0105ce praw autorskich')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127908582303027124)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'pl'
,p_message_text=>unistr('Odleg\0142o\015B\0107 ca\0142kowita')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127887597299027117)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'pl'
,p_message_text=>unistr('Powi\0119ksz')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127887777561027117)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'pl'
,p_message_text=>'Pomniejsz'
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128052267229027167)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'pl'
,p_message_text=>'Pogrubienie'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128053192026027167)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'pl'
,p_message_text=>'Obraz'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128052742906027167)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'pl'
,p_message_text=>'Kod wstawkowy'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128065473627027171)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'pl'
,p_message_text=>'Wstaw obraz'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128065518276027171)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'pl'
,p_message_text=>unistr('Wstaw \0142\0105cze')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128052351798027167)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'pl'
,p_message_text=>'Kursywa'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128066147457027171)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141\0105cze')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128053047346027167)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'pl'
,p_message_text=>'Lista'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128052988521027167)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'pl'
,p_message_text=>unistr('Lista uporz\0105dkowana')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128052470713027167)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'pl'
,p_message_text=>unistr('Podgl\0105d')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128052580312027167)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie ma nic do podgl\0105du')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128052648319027167)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'pl'
,p_message_text=>unistr('Przekre\015Blenie')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128052828822027167)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'pl'
,p_message_text=>unistr('Lista nieuporz\0105dkowana')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128031758360027161)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'pl'
,p_message_text=>unistr('bie\017C\0105ce')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128087979932027178)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wi\0119cej...')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128031695632027161)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141adowanie')
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127945843617027135)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'pl'
,p_message_text=>unistr('Przycisk podzia\0142u')
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127945715844027135)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'pl'
,p_message_text=>unistr('Menu "Podzia\0142"')
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128062719287027170)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'pl'
,p_message_text=>'Komunikat powiadomienia'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127886873324027117)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono \017Cadnego obiektu %0')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128036725951027162)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# musi by\0107 liczb\0105 nie wi\0119ksz\0105 ni\017C %0.')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128036806936027162)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# musi by\0107 poprawn\0105 liczb\0105.')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128036931265027163)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# nie jest zgodna z formatem %0 liczb (przyk\0142ad: %1).')
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128036651767027162)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# musi by\0107 liczb\0105 nie mniejsz\0105 ni\017C %0.')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128036503727027162)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# musi by\0107 liczb\0105 z przedzia\0142u od %0 do %1.')
,p_is_js_message=>true
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128031809110027161)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'pl'
,p_message_text=>'otwiera w nowym oknie'
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127981601445027146)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'pl'
,p_message_text=>unistr('Ta strona zosta\0142a ju\017C przes\0142ana i nie mo\017Cna jej ponownie przes\0142a\0107.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127963038342027140)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono strony "%1" aplikacji "%0".'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127998589970027151)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('#LABEL# musi mie\0107 jak\0105\015B warto\015B\0107.')
,p_is_js_message=>true
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127889208253027118)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'pl'
,p_message_text=>unistr('Ukryj has\0142o')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127889144377027118)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C has\0142o')
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127936741184027132)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'pl'
,p_message_text=>'Szukaj'
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128050794630027167)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'pl'
,p_message_text=>'Zamknij'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128050630694027167)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'pl'
,p_message_text=>unistr('Znajd\017A %0')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128050929186027167)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'pl'
,p_message_text=>'Dalej'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128050838863027167)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127927500572027129)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wprowadzi\0107 szukany termin sk\0142adaj\0105cy si\0119 z przynajmniej %0 znak\00F3w.')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128003876641027153)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyskakuj\0105ca lista warto\015Bci: %0')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127927664100027130)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wprowadzi\0107 szukany termin.')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127874682883027113)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'pl'
,p_message_text=>unistr('Lista warto\015Bci')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127927422540027129)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'pl'
,p_message_text=>unistr('Brak wynik\00F3w.')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127927330668027129)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144: %0')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128024504940027159)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'pl'
,p_message_text=>'Szukany termin'
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128050593579027167)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'pl'
,p_message_text=>'Szukaj'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127876763472027114)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>'Wymaga: %0.'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127889026887027118)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas drukowania raportu.')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127899862019027121)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna wydrukowa\0107 dokumentu przy u\017Cyciu skonfigurowanego serwera drukowania.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127922502546027128)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d w trakcie obliczania parametru "%0" podczas wywo\0142ywania "%1". Wi\0119cej szczeg\00F3\0142\00F3w mo\017Cna znale\017A\0107 w dzienniku b\0142\0119d\00F3w.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128061238115027170)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'pl'
,p_message_text=>'Przetwarzanie'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127920309198027127)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127921444646027128)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'pl'
,p_message_text=>unistr('Ten serwis internetowy ma funkcjonalno\015B\0107 aplikacji. W celu zapewnienia jak najlepszej obs\0142ugi prosz\0119 zainstalowa\0107 go w swoim urz\0105dzeniu.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127922761614027128)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'pl'
,p_message_text=>'Dalej'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127924355549027128)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zainstaluj t\0119 aplikacj\0119')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127909189284027124)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'pl'
,p_message_text=>unistr('U\017Cywane urz\0105dzenie lub przegl\0105darka prawdopodobnie nie obs\0142uguj\0105 aplikacji PWA (Progressive Web App).')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127904245742027122)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'pl'
,p_message_text=>unistr('1. Stukn\0105\0107 w ikon\0119 <strong>Udost\0119pnij</strong>')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127904334434027122)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'pl'
,p_message_text=>unistr('2. Przewin\0105\0107 w d\00F3\0142, po czym stukn\0105\0107 w <strong>Dodaj do ekranu startowego</strong>')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127920798726027127)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'pl'
,p_message_text=>unistr('3. Stukn\0105\0107 w <strong style="color:#007AE1;">Dodaj</strong>, aby potwierdzi\0107.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127919845866027127)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'pl'
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
unistr('    <h1>Nie mo\017Cna si\0119 po\0142\0105czy\0107</h1>'),
unistr('    <p>Prawdopodobnie wyst\0119puje problem z sieci\0105. Nale\017Cy sprawdzi\0107 po\0142\0105czenie i spr\00F3bowa\0107 ponownie.</p>'),
unistr('    <button type="button">Pon\00F3w pr\00F3b\0119</button>'),
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127919747485027127)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna si\0119 po\0142\0105czy\0107')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127966359784027141)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'pl'
,p_message_text=>unistr('Temu urz\0105dzeniu nie uda\0142o si\0119 w\0142\0105czy\0107 powiadomie\0144 wypychanych.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127971804808027143)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Szybkie wybory dla %0'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127971710300027143)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141\0105cze "Szybki wyb\00F3r"')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127945563010027135)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'pl'
,p_message_text=>'Przycisk radiowy "Wizualnie ukryte"'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127889622670027118)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'pl'
,p_message_text=>'Widok jednego wiersza'
,p_is_js_message=>true
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128072387020027173)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'pl'
,p_message_text=>'Dodaj'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128017679387027157)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Ca\0142odniowe')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128095215929027180)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Blij zaproszenie')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128095043283027180)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'pl'
,p_message_text=>'Opcje'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128019421110027157)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Widok dzienny dla ca\0142ego dnia ')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128019207676027157)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'pl'
,p_message_text=>'Widok dzienny dla danych z czasem '
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128063402888027171)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Dzie\0144')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128058452521027169)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>'Opis'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127941994743027134)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'pl'
,p_message_text=>'CSV'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127941738871027134)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'pl'
,p_message_text=>'iCal'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127941627500027134)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'pl'
,p_message_text=>'PDF'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127941880928027134)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'pl'
,p_message_text=>'XML'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127941342516027134)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Data ko\0144cowa')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127941536883027134)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'pl'
,p_message_text=>'Nazwa zdarzenia'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128095100719027180)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'pl'
,p_message_text=>'Zaproszenie'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128063540815027171)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'pl'
,p_message_text=>'Lista'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128063254532027170)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Miesi\0105c')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128065854438027171)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'pl'
,p_message_text=>'Dalej'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128079842385027175)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'pl'
,p_message_text=>unistr('Brak zdarze\0144')
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128095485996027180)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'pl'
,p_message_text=>unistr('Edycja istniej\0105cego zdarzenia.')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128095303079027180)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'pl'
,p_message_text=>unistr('Wysy\0142anie zaproszenia e-mailem.')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128065922889027171)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128073654643027174)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Blij e-mail')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128073430352027174)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Blij e-mail')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128096076684027180)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Wszystkie pola s\0105 wymagane.')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128095963771027180)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Blij zaproszenie')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128094949853027180)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'pl'
,p_message_text=>'Temat'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128073511001027174)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'pl'
,p_message_text=>'Do'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127941412306027134)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Data pocz\0105tkowa')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128071677523027173)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'pl'
,p_message_text=>'Formularz w: %0'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128019030524027157)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'pl'
,p_message_text=>'Czas'
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128066047305027171)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'pl'
,p_message_text=>'Dzisiaj'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128064035076027171)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128063326058027170)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'pl'
,p_message_text=>unistr('Tydzie\0144')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128019359429027157)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Widok tygodniowy dla ca\0142ego dnia')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128019163254027157)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'pl'
,p_message_text=>'Widok tygodniowy dla danych z czasem'
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128063926693027171)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'pl'
,p_message_text=>'Rok'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128063674491027171)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Kolumny...'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128063702400027171)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'pl'
,p_message_text=>unistr('Za\0142aduj wi\0119cej...')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127993139415027149)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127934607299027132)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'pl'
,p_message_text=>unistr('Za\0142aduj wi\0119cej...')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127936900505027132)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'pl'
,p_message_text=>'Szukaj...'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128063829284027171)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'pl'
,p_message_text=>unistr('Za\0142aduj wi\0119cej...')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128065797435027171)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono ID %0 obszaru.'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127936853323027132)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono \017Cadnych danych')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127964341945027141)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna zresetowa\0107 paginacji obszaru.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127928057025027130)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas ustawiania paginacji obszaru.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128057808925027169)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Kolumny...'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127912300013027125)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Powolne \0142adowanie jest niezgodne z gniazdami w obszarze "%0", kt\00F3ry jest obszarem pojedynczym (cz\0119\015Bciowym). Nale\017Cy wy\0142\0105czy\0107 powolne \0142adowanie dotycz\0105ce tego obszaru lub przenie\015B\0107 sk\0142adniki gniazd do innego obszaru.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127907690659027123)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Brak szablonu grupy w sk\0142adniku szablonu dotycz\0105cym "%0".')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127902614710027122)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 jest jednym (cz\0119\015Bciowym) obszarem; zwr\00F3ci\0142 wi\0119cej ni\017C jeden wiersz.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128065665301027171)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ "%0" obszaru nie jest obs\0142ugiwany.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127927926858027130)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas renderowania obszaru "#COMPONENT_NAME#".')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127998626675027151)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('#COLUMN_HEADER# musi mie\0107 jak\0105\015B warto\015B\0107.')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127880229212027115)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nale\017Cy okre\015Bli\0107 uk\0142ad raportu.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128094536949027180)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('%0, edytor tekst\00F3w z formatowaniem')
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128000763380027152)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'pl'
,p_message_text=>unistr('Kod HTML formatowanego tekstu przekracza maksymaln\0105 d\0142ugo\015B\0107 elementu (obecnie: %0, liczba dozwolonych znak\00F3w: %1)')
,p_version_scn=>2693184
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127910177957027124)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Edytor tekst\00F3w z formatowaniem tylko do odczytu')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127910045190027124)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Edytor tekst\00F3w z formatowaniem')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127909809871027124)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyr\00F3wnanie')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127909937973027124)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'pl'
,p_message_text=>'Dodatkowe'
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127909641949027124)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'pl'
,p_message_text=>'Czcionka'
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127909521505027124)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'pl'
,p_message_text=>'Formatowanie'
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127909770061027124)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'pl'
,p_message_text=>'Listy'
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128062826468027170)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144')
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128055326959027168)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'pl'
,p_message_text=>'Duplikuj'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128053606707027168)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietlane kolumny')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128053593461027168)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyklucz warto\015Bci Null')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128062925665027170)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'pl'
,p_message_text=>'Dodaj'
,p_is_js_message=>true
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128017285809027157)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'pl'
,p_message_text=>unistr('Przenie\015B w d\00F3\0142')
,p_is_js_message=>true
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128017320615027157)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'pl'
,p_message_text=>unistr('Przenie\015B w g\00F3r\0119')
,p_is_js_message=>true
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128053313546027167)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'pl'
,p_message_text=>'Dalej'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128053906892027168)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Inne kolumny'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128053409655027168)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128053795529027168)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'pl'
,p_message_text=>'Wiersz %0'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128053806836027168)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'pl'
,p_message_text=>'Wiersz %0 z %1'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128055456090027168)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'pl'
,p_message_text=>unistr('Od\015Bwie\017C')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128055599863027168)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'pl'
,p_message_text=>'Wycofaj zmiany'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128053262702027167)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'pl'
,p_message_text=>'Ustawienia'
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128012484528027155)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'pl'
,p_message_text=>unistr('Na przyk\0142ad: %0')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128016740544027156)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'pl'
,p_message_text=>unistr('Przyk\0142ad: %0')
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127929431327027130)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'1 wynik'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127926522821027129)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Liczba wynik\00F3w: %0')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127978395638027145)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'pl'
,p_message_text=>'Paginacja'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127978441294027145)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'pl'
,p_message_text=>'Wyniki od %0 do %1'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127874132918027113)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 si\0119 ponownie zalogowa\0107')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127874069865027113)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Sesja zosta\0142a zako\0144czona')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127874211844027113)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'pl'
,p_message_text=>unistr('Przed\0142u\017C')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127873833034027113)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'pl'
,p_message_text=>unistr('Sesja zako\0144czy si\0119 o %0. Czy j\0105 przed\0142u\017Cy\0107?')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127873964149027113)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'pl'
,p_message_text=>unistr('Sesja zako\0144czy si\0119 o %0 i nie mo\017Cna jej przed\0142u\017Cy\0107. Aby unikn\0105\0107 utraty danych, prosz\0119 teraz zapisa\0107 swoj\0105 prac\0119.')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128073209261027173)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania kodu czyszczenia sesji bazy danych.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127962988708027140)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania kodu konfiguracji sesji bazy danych.')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127933333951027131)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Sesja zosta\0142a zako\0144czona.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128072436940027173)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 zamkn\0105\0107 to okno dialogowe, po czym - aby uzyska\0107 now\0105 sesj\0119 - nacisn\0105\0107 w przegl\0105darce przycisk ponownego \0142adowania.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128091333708027179)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'pl'
,p_message_text=>unistr('Aby utworzy\0107 now\0105 sesj\0119, prosz\0119 si\0119 ponownie <a href="%0">zalogowa\0107</a>.')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127975665218027144)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawna sesja'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128018792104027157)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'pl'
,p_message_text=>unistr('W sesji Real Application Security dla u\017Cytkownika "%0" nie mog\0105 zosta\0107 w\0142\0105czone \017Cadne dynamiczne role.')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127960888382027140)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('ERR-99900 Nie mo\017Cna by\0142o utworzy\0107 unikatowego ID sesji: %0')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127889920391027118)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>'Typ danych CLOB stanu sesji nie jest dozwolony dla elementu "%0".'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127909365755027124)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zast\0119powanie element\00F3w z typem danych CLOB stanu sesji nie jest obs\0142ugiwane.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127978142561027145)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Naruszenie ochrony stanu sesji: Mo\017Ce by\0107 spowodowane r\0119czn\0105 modyfikacj\0105 elementu "%0" strony chronionej. Nie maj\0105c pewno\015Bci, co jest przyczyn\0105 tego b\0142\0119du, prosz\0119 si\0119 zwr\00F3ci\0107 do administratora aplikacji o pomoc.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128099379070027182)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Naruszenie ochrony strony: Mo\017Ce by\0107 spowodowane przes\0142aniem strony, kt\00F3ra jeszcze nie zosta\0142a w pe\0142ni za\0142adowana, albo r\0119czn\0105 modyfikacj\0105 element\00F3w strony chronionej. Aby uzyska\0107 dalsz\0105 pomoc, prosz\0119 si\0119 skontaktowa\0107 z administratorem aplikacji.')
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128098412081027181)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 zawiera jeden z nast\0119puj\0105cych niedozwolonych znak\00F3w: &<>"/;,*|=% lub --')
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128098597922027181)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 zawiera jeden z nast\0119puj\0105cych niedozwolonych znak\00F3w: &<>"/;,*|=% lub -- lub znak nowego wiersza.')
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128098228585027181)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 zawiera znaki specjalne. Dozwolone s\0105 tylko znaki a-Z, 0-9 i spacje.')
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128098313890027181)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 zawiera <, > lub " (s\0105 to znaki niedozwolone).')
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127935717951027132)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie dostarczono sumy kontrolnej pokazuj\0105cej przetwarzanie strony, kt\00F3ra wymaga sumy kontrolnej, gdy jako parametry przekazano warto\015Bci argument\00F3w lub jedno lub wi\0119ksz\0105 liczb\0119 \017C\0105da\0144 wyczyszczenia pami\0119ci podr\0119cznej.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127973049098027143)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Naruszenie ochrony stanu sesji: Mo\017Ce by\0107 spowodowane r\0119czn\0105 modyfikacj\0105 adresu URL zawieraj\0105cego sum\0119 kontroln\0105 albo u\017Cyciem \0142\0105cza z niepoprawn\0105 lub brakuj\0105c\0105 sum\0105 kontroln\0105. Nie maj\0105c pewno\015Bci, co jest przyczyn\0105 tego b\0142\0119du, prosz\0119 si\0119 zwr\00F3ci\0107 do adm')
||'inistratora aplikacji o pomoc.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128054666657027168)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\0142\0105cz tryb du\017Cego kontrastu')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128054763610027168)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142\0105cz tryb du\017Cego kontrastu')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127919187972027127)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna zaktualizowa\0107 ustawienia "%0" aplikacji, poniewa\017C jest ono subskrybowane z innej aplikacji.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127969419653027142)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'pl'
,p_message_text=>'Na koniec'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127969684300027142)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'pl'
,p_message_text=>unistr('W d\00F3\0142')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127969744697027142)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Przenie\015B')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127969882956027142)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Przenie\015B wszystkie')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127969992209027142)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127970002927027142)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 wszystkie')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127970196781027142)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'pl'
,p_message_text=>'Resetuj'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127969335483027142)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'pl'
,p_message_text=>unistr('Na pocz\0105tek')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127969506629027142)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'pl'
,p_message_text=>unistr('W g\00F3r\0119')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128081101154027176)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128081822649027176)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'w %0d'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128081031869027176)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128081968633027176)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'w %0h'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128080807295027176)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128082021908027176)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'w %0m'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128081458422027176)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0mo'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128081683489027176)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'w %0mo'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128080941470027176)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128081719134027176)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'w %0s'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128081286768027176)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128082165572027176)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'w %0w'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128081315453027176)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128081594964027176)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'w %0y'
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127882408736027116)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'pl'
,p_message_text=>'[Linia]'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127883057105027116)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'pl'
,p_message_text=>'[Wiele linii]'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127882755392027116)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'pl'
,p_message_text=>unistr('[Wiele punkt\00F3w]')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127883292301027116)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'pl'
,p_message_text=>unistr('[Wiele wielok\0105t\00F3w]')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127883395557027116)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'pl'
,p_message_text=>'[Obiekt geometrii]'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127882335084027116)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'pl'
,p_message_text=>'[Punkt (%0,%1)]'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127882680213027116)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'pl'
,p_message_text=>unistr('[Wielok\0105t]')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127881874757027115)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'pl'
,p_message_text=>unistr('Zwini\0119ty obszar: %0')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127996980663027150)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Zwi\0144')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127880878951027115)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'pl'
,p_message_text=>unistr('Poziomo ukierunkowanego rozdzielacza nie mo\017Cna przesun\0105\0107 w lewo ani w prawo')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127881039642027115)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'pl'
,p_message_text=>unistr('Osi\0105gni\0119to maksymalny rozmiar %0 piks.')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127882001181027115)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'pl'
,p_message_text=>unistr('Osi\0105gni\0119to minimalny rozmiar %0 piks.')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127881963201027115)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'pl'
,p_message_text=>unistr('Obszar zosta\0142 zwini\0119ty')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127881780844027115)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'pl'
,p_message_text=>unistr('Obszar zosta\0142 odtworzony')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127881422803027115)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'pl'
,p_message_text=>'Zmieniono rozmiar na %0 piks.'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127881659094027115)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'pl'
,p_message_text=>'Odtworzony obszar: %0'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127996882634027150)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Odtw\00F3rz')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127880959049027115)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'pl'
,p_message_text=>unistr('Pionowo ukierunkowanego rozdzielacza nie mo\017Cna przesun\0105\0107 w g\00F3r\0119 ani w d\00F3\0142')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128046377538027165)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyczy\015B\0107 ocen\0119')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128036286514027162)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie zawiera si\0119 w poprawnym przedziale ocen do 1 do %1')
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128036363433027162)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 nie jest warto\015Bci\0105 liczbow\0105')
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128032403079027161)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'pl'
,p_message_text=>'Komunikat o powodzeniu'
,p_is_js_message=>true
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128094235789027180)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'pl'
,p_message_text=>'Dalej'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128094195368027180)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128004397968027153)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono systemu rekord\00F3w powi\0105zanego z tym wyst\0105pieniem zadania')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128012651718027155)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie uda\0142o si\0119 wykona\0107 czynno\015Bci "%0" zadania - zadanie zosta\0142o ustawione do stanu "z b\0142\0119dem"; prosz\0119 sprawdzi\0107 kod czynno\015Bci zadania')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127892835584027119)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'pl'
,p_message_text=>'Dodanie komentarza: nieautoryzowane'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127892165233027119)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zadanie ju\017C przydzielone')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127885548837027117)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'pl'
,p_message_text=>'Przypisane do: %0'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127891828413027118)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'pl'
,p_message_text=>'Anulowanie zadania: nieautoryzowane'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127907418940027123)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna usun\0105\0107 faktycznego w\0142a\015Bciciela tego zadania. Przed ponowieniem tej operacji prosz\0119 delegowa\0107 zadanie do innego uczestnika.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127891494905027118)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'pl'
,p_message_text=>'Przejmowanie zadania: nieautoryzowane'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127891505524027118)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'pl'
,p_message_text=>unistr('Uko\0144czenie zadania: nieautoryzowane')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127891624959027118)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'pl'
,p_message_text=>'Delegowanie zadania: nieautoryzowane'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127890072122027118)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'pl'
,p_message_text=>unistr('Termin zadania nie mo\017Ce przypada\0107 w przesz\0142o\015Bci.')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127885304647027116)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'pl'
,p_message_text=>'Termin: %0'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127885744012027117)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015B\0107 "%1" zadania nie powiod\0142a si\0119. Komunikat o b\0142\0119dzie - %0')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127885434306027117)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'pl'
,p_message_text=>'Niepowodzenie'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127885034204027116)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'pl'
,p_message_text=>'Powodzenie'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127885274887027116)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015B\0107 "%1" zosta\0142a wykonana pomy\015Blnie. Komunikat: %0')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127888563798027117)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'pl'
,p_message_text=>unistr('Przed wyga\015Bni\0119ciem')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127914157534027125)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'pl'
,p_message_text=>'Anuluj'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127913613704027125)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>'Zadanie anulowane'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127914294750027125)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Uczestnik nie ma uprawnie\0144 do anulowania zadania')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127913546881027125)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'pl'
,p_message_text=>'Przejmij'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127913987124027125)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zadanie zosta\0142o ju\017C przej\0119te przez innego u\017Cytkownika lub uczestnik nie ma uprawnie\0144 do przej\0119cia tego zadania')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127913705016027125)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zadanie przej\0119te przez: %0')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128014893420027156)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'pl'
,p_message_text=>unistr('Uko\0144cz')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127913301969027125)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Uko\0144czono zadanie z wynikiem: %0')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127914613213027125)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zadanie nie jest przydzielone albo uczestnik nie ma uprawnie\0144 do uko\0144czenia tego zadania')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127875098088027113)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'pl'
,p_message_text=>unistr('Uko\0144czono zadanie bez wyniku')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128014942895027156)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Utw\00F3rz')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127907841024027123)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>'Utworzono zadanie z ID %0'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128015032141027156)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'pl'
,p_message_text=>'Deleguj'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127913486949027125)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Delegowano zadanie do potencjalnego w\0142a\015Bciciela "%0"')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127914077297027125)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Uczestnik nie ma uprawnie\0144 lub nowy uczestnik nie jest potencjalnym w\0142a\015Bcicielem tego zadania')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127887169187027117)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyga\015Bni\0119cie')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127888298456027117)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zadanie wygas\0142e.')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128015104870027156)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'pl'
,p_message_text=>'Niepowodzenie'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127883851002027116)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zadanie nie jest przydzielone albo uczestnik nie ma uprawnie\0144 do wyst\0105pienia o informacje dot. tego zadania')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127884063885027116)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie wyst\0105piono o \017Cadne informacje dot. zadania albo uczestnik nie ma uprawnie\0144 do przes\0142ania informacji dot. tego zadania.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127887660381027117)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zadanie wygas\0142o, poniewa\017C zosta\0142a osi\0105gni\0119ta maksymalna liczba %0 odnowie\0144.')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127914906774027126)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'pl'
,p_message_text=>'Zadanie nie ma poprawnego stanu albo uczestnik nie jest administratorem biznesowym w odniesieniu do tego zadania'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127915061957027126)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'pl'
,p_message_text=>'Nieznana operacja "%0" lub operacja ta nie ma zastosowania do tego zadania'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128015249257027156)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'pl'
,p_message_text=>'Zwolnij'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128000936212027152)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zadanie zosta\0142o zwolnione. Mo\017Ce ono teraz zosta\0107 przej\0119te przez innych u\017Cytkownik\00F3w.')
,p_version_scn=>2693184
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127893805837027119)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zwolnienie zadania nie jest dozwolone - u\017Cytkownik nie jest w\0142a\015Bcicielem zadania')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127910869015027124)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 w\0142a\015Bciciela')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127911089977027124)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Uczestnik "%0" zosta\0142 usuni\0119ty z zadania')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127888454190027117)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'pl'
,p_message_text=>unistr('Odn\00F3w')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127887344533027117)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zadanie zosta\0142o odnowione (ID: %0); maksymalna pozosta\0142a liczba odnowie\0144 przed wyga\015Bni\0119ciem: %1.')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127888320632027117)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zadanie o ID "%0" zosta\0142o odnowione (ID zadania: %1)')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127884381188027116)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105p o informacje')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127884259932027116)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105piono do "%0" o wi\0119cej informacji: %1')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127882143677027116)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Ustaw opcj\0119 "Inicjator mo\017Ce uko\0144czy\0107" na warto\015B\0107 "%0"')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127884497677027116)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'pl'
,p_message_text=>unistr('Prze\015Blij informacje')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127884103901027116)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('\017B\0105dane informacje przes\0142ane do "%0": %1')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128015395757027156)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'pl'
,p_message_text=>'Aktualizuj komentarz'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127911838307027125)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>'Dodaj komentarz: %0'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127914766199027126)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>'Stan zadania nie zezwala na komentarze'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127922055331027128)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>'Ustaw termin zadania na %0'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127880100441027115)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'pl'
,p_message_text=>'Termin aktualizacji'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128015482923027156)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'pl'
,p_message_text=>unistr('Aktualizuj w\0142a\015Bciciela')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127913149954027125)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Dodaj potencjalnego w\0142a\015Bciciela "%0" do uczestnik\00F3w zadania')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127912253793027125)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'pl'
,p_message_text=>'Aktualizuj parametry'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128015583415027156)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'pl'
,p_message_text=>'Aktualizuj priorytet'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127913801212027125)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>'Ustaw priorytet zadania na: %0'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127911165720027124)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Parametr "%0" zosta\0142 zaktualizowany z "%1" do "%2".')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127894627381027119)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Anulowano zadanie, poniewa\017C odpowiadaj\0105ca mu instancja procesu Workflow zosta\0142a trwale zako\0144czona.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127891783835027118)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'pl'
,p_message_text=>'Przekazanie zadania: nieautoryzowane'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127885115213027116)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'pl'
,p_message_text=>'Zainicjowane przez: %0 %1'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127894002980027119)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142 nieoczekiwany b\0142\0105d wewn\0119trzny')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127892324194027119)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'pl'
,p_message_text=>'Operacja dot. zadania nie ma zastosowania'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127917994626027127)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'pl'
,p_message_text=>unistr('Ten potencjalny w\0142a\015Bciciel nie istnieje.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127893682771027119)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'pl'
,p_message_text=>'Zatwierdzone'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127893772331027119)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'pl'
,p_message_text=>'Odrzucone'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127875183312027113)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'pl'
,p_message_text=>unistr('Do uko\0144czenia zadania jest wymagany wynik')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127875316727027113)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>'Zadanie nie ma zezwolenia na posiadanie wyniku'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127910931194027124)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna zaktualizowa\0107 parametru "%0".')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127907283655027123)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'pl'
,p_message_text=>unistr('Uczestnik ju\017C istnieje dla tej instancji zadania.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128008727196027154)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'pl'
,p_message_text=>'Pilny'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127885857792027117)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>'Pilny'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128008696474027154)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'pl'
,p_message_text=>'Wysoki'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127885994425027117)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>'Priorytet wysoki'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128008517764027154)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'pl'
,p_message_text=>unistr('\015Aredni')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127886018258027117)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Priorytet \015Bredni')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128008476742027154)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'pl'
,p_message_text=>'Niski'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127886180561027117)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>'Priorytet niski'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128008390239027154)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'pl'
,p_message_text=>unistr('Najni\017Cszy')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127886236459027117)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Priorytet najni\017Cszy')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127891969118027119)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'pl'
,p_message_text=>'Ustawienie priorytetu zadania: nieautoryzowane'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127893196963027119)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'pl'
,p_message_text=>'Przydzielone'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127893562992027119)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'pl'
,p_message_text=>'Anulowane'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127893239695027119)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'pl'
,p_message_text=>unistr('Uko\0144czone')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127893472743027119)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'pl'
,p_message_text=>unistr('Z b\0142\0119dem')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127886968646027117)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Wygas\0142e')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127893389361027119)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'pl'
,p_message_text=>'Niepowodzenie'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127883662650027116)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105piono o informacje')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127893027523027119)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'pl'
,p_message_text=>'Nieprzydzielone'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127915431805027126)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Nie uda\0142o si\0119 utworzy\0107 nowego zadania (definicja zadania: %0, aplikacja: %1).'),
'SQLCODE: %2'))
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127915355218027126)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'pl'
,p_message_text=>unistr('Pr\00F3ba utworzenia zadania (definicja zadania: %0, aplikacja: %1) zako\0144czy\0142a si\0119 niepowodzeniem, poniewa\017C definicja zadania nie zawiera \017Cadnych potencjalnych w\0142a\015Bcicieli. Prosz\0119 edytowa\0107 definicj\0119 zadania oraz doda\0107 przynajmniej jednego uczestnika typu')
||unistr(' "Potencjalny w\0142a\015Bciciel"')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127892689739027119)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono definicji zadania'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127892565622027119)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono uczestnik\00F3w dla zadania')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127893990563027119)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Dla podanego ID zadania istnieje wi\0119cej ni\017C jedno zadanie. Prosz\0119 sprawdzi\0107 z administratorem bazy danych.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127892704044027119)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono zadania'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127892427535027119)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono parametru zadania'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127928714412027130)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015B\0107')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127928690810027130)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'pl'
,p_message_text=>'Zatwierdzenie'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127876063905027114)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie uda\0142o si\0119 wykona\0107 procedury regu\0142y urlopowej "%2" dotycz\0105cej definicji zadania "%0" w aplikacji "%1".')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127876297828027114)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Dodano uczestnika %1 jako zast\0119pc\0119 dla uczestnika %0. Przyczyna - %2.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128079996583027175)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Pasek narz\0119dzi')
,p_is_js_message=>true
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127933493006027131)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'pl'
,p_message_text=>'Aplikacja'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128094614024027180)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Rozwi\0144/zwi\0144 nawigacj\0119')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128094792453027180)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Rozwi\0144/zwi\0144 kolumn\0119 boczn\0105')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128003103435027152)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Nawigacja g\0142\00F3wna')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127903911293027122)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'pl'
,p_message_text=>unistr('"%0" jest niepoprawn\0105 nazw\0105 elementu zast\0119pczego.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128010878369027155)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('1 dzie\0144')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128010674727027155)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'pl'
,p_message_text=>'1 godz.'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128010978378027155)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'pl'
,p_message_text=>'%0 dni'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128010738779027155)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'pl'
,p_message_text=>'%0 godz.'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128010567039027154)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'pl'
,p_message_text=>'%0 min'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128011125402027155)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'pl'
,p_message_text=>'%0 tyg.'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128011006131027155)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'pl'
,p_message_text=>'1 tydz.'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127908835673027124)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wybrano element\00F3w: %0')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127909018285027124)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r elementu')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127908925832027124)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r: %0')
,p_is_js_message=>true
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128097700974027181)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'pl'
,p_message_text=>unistr('Pocz\0105tek strony')
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127955359400027138)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142\0105czone')
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127923889381027128)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania \017C\0105dania.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127909428635027124)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna zaktualizowa\0107 komunikatu tekstowego "%0", poniewa\017C jest on subskrybowany z innej aplikacji.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128012511589027155)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Wymagana warto\015B\0107')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127928980607027130)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'pl'
,p_message_text=>unistr('Poziom nag\0142\00F3wka "%0", ukryty')
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128057389517027169)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'pl'
,p_message_text=>unistr('Na tej stronie wyst\0119puj\0105 niezapisane zmiany.')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127918996250027127)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'pl'
,p_message_text=>'Nawigator'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127918694730027127)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'pl'
,p_message_text=>unistr('Powi\0119ksz')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127919605400027127)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Poziom powi\0119kszenia {0}%')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127918710746027127)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'pl'
,p_message_text=>'Pomniejsz'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127918876162027127)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'pl'
,p_message_text=>unistr('Resetowanie powi\0119kszenia')
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127894365561027119)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'pl'
,p_message_text=>unistr('Diagram procesu Workflow nie jest obecnie dost\0119pny.')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127894292354027119)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Diagram procesu Workflow'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127896172867027120)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancja "%0" procesu Workflow znajduje si\0119 obecnie w stanie "%1". Dlatego ta operacja nie jest dozwolona.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127898700945027121)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancja "%1" dzia\0142ania "%2" w procesie Workflow "%0" zosta\0142a uko\0144czona')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127898558672027121)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'pl'
,p_message_text=>unistr('Utworzono now\0105 instancj\0119 "%1" dzia\0142ania "%2" w procesie Workflow "%0"')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127890318969027118)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono wiersza dodatkowych danych powi\0105zanego z t\0105 instancj\0105 dzia\0142ania procesu Workflow')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127898610324027121)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'pl'
,p_message_text=>unistr('Ponowiono instancj\0119 "%1" dzia\0142ania "%2" w procesie Workflow "%0", kt\00F3rej stanem by\0142o "Niepowodzenie"')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127880664778027115)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancja dzia\0142ania "%1" w procesie Workflow "%0" zosta\0142a trwale zako\0144czona')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127914483525027125)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'pl'
,p_message_text=>unistr('Limit czasu instancji dzia\0142ania "%1" w procesie Workflow "%0" zosta\0142 przekroczony, dlatego zosta\0142a ona trwale zako\0144czona.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127898891170027121)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancja "%1" dzia\0142ania "%2" w procesie Workflow "%0" jest w stanie oczekiwania')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127880497192027115)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancja "%0" procesu Workflow zosta\0142a zmieniona i wznowiona w ramach dzia\0142ania "%1"')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127897852692027120)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'pl'
,p_message_text=>unistr('Oczekuj\0105ca instancja "%1" dzia\0142ania "%2" w procesie Workflow "%0" zosta\0142a pomy\015Blnie uko\0144czona')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127897666871027120)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Oczekuj\0105ce dzia\0142anie "%1" uzyska\0142o status "Niepowodzenie", poniewa\017C proces Workflow "%0" by\0142 ju\017C w stanie "Niepowodzenie", zanim dzia\0142anie zosta\0142o uko\0144czone')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127897739855027120)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'pl'
,p_message_text=>unistr('Oczekuj\0105ce dzia\0142anie "%1" zosta\0142o trwale zako\0144czone, poniewa\017C proces Workflow "%0" by\0142 ju\017C w stanie "Zako\0144czone trwale", zanim dzia\0142anie zosta\0142o uko\0144czone')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127880772082027115)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'pl'
,p_message_text=>unistr('Trwa\0142e zako\0144czenie dzia\0142ania "%1" w procesie Workflow "%0" nie powiod\0142o si\0119 z powodu wyj\0105tku - "%2"')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127896399359027120)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'pl'
,p_message_text=>unistr('Proces Workflow jest teraz zaj\0119ty wykonywaniem poprzedniej operacji. Prosz\0119 spr\00F3bowa\0107 p\00F3\017Aniej.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127912409517027125)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'pl'
,p_message_text=>unistr('Uko\0144czono: %0')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127895446303027120)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna kontynuowa\0107 procesu Workflow "%0", poniewa\017C jest obecnie wykonywane dzia\0142anie "%1", kt\00F3re nie jest w stanie oczekiwania')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127907368473027123)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('"%0" nie jest dla procesu wykonywanego przez dzia\0142anie procesu Workflow poprawnym kontekstem korelacji procesu Workflow. Kontekst korelacji musi by\0107 tekstem z ogranicznikiem w postaci dwukropka, zawieraj\0105cym napis APEX_APPL_WORKFLOW, po kt\00F3rym nast\0119p')
||unistr('uje ID instancji procesu Workflow i ID instancji dzia\0142ania.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127898019865027120)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'pl'
,p_message_text=>unistr('Utworzono now\0105 instancj\0119 "%0" procesu Workflow "%1" w wersji "%2"')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127890190061027118)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono wiersza dodatkowych danych powi\0105zanego z t\0105 instancj\0105 procesu Workflow')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127912648206027125)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'pl'
,p_message_text=>'Termin: %0'
,p_version_scn=>2693172
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127897940036027120)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'pl'
,p_message_text=>unistr('Proces Workflow "%0" zosta\0142 zako\0144czony ze stanem "%1"')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127895159729027120)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ danych "%1" dla warunk\00F3w por\00F3wnywanych w dzia\0142aniu prze\0142\0105czenia w procesie Workflow "%0" nie jest zgodny z operatorem warunku')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127884972798027116)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'pl'
,p_message_text=>'Zainicjowane przez: %0 %1'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127907713617027123)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'pl'
,p_message_text=>unistr('Utworzono now\0105 instancj\0119 "%0" procesu Workflow "%1" w wersji "%2" - wywo\0142ano z instancji dzia\0142ania "%4" w ramach instancji procesu Workflow "%3"')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127880589361027115)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Dzia\0142anie o statycznym ID %1 nie jest dzia\0142aniem w procesie Workflow "%0". Nale\017Cy sprawdzi\0107 statyczny ID dzia\0142ania w odpowiedniej wersji procesu Workflow.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127905888068027123)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'pl'
,p_message_text=>unistr('"%0" jest parametrem wymaganym w tym procesie Workflow i nie mo\017Ce mie\0107 warto\015Bci NULL.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127898438882027121)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancja "%0" procesu Workflow zosta\0142a wznowiona')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127898307492027121)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancja "%0" procesu Workflow zosta\0142a ponowiona')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127912791726027125)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'pl'
,p_message_text=>'%0 ponowienie'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127912889195027125)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'pl'
,p_message_text=>unistr('Liczba ponowie\0144: %0')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127912527681027125)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'pl'
,p_message_text=>unistr('Rozpocz\0119to: %0')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127906739303027123)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'pl'
,p_message_text=>'Aktywne'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127906951326027123)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'pl'
,p_message_text=>unistr('Uko\0144czone')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127907036717027123)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'pl'
,p_message_text=>'Niepowodzenie'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127907180401027123)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'pl'
,p_message_text=>'Zawieszone'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127906849716027123)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zako\0144czone trwale')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127922162374027128)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'pl'
,p_message_text=>'Oczekiwanie'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127898105104027120)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancja "%0" procesu Workflow zosta\0142a zawieszona')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127904094805027122)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna ustali\0107 nast\0119pnego dzia\0142ania dotycz\0105cego instancji procesu Workflow "%0". Przed ponown\0105 pr\00F3b\0105 uruchomienia procesu Workflow nale\017Cy sprawdzi\0107 i poprawi\0107 warunki zdefiniowane dla bie\017C\0105cego dzia\0142ania prze\0142\0105czania.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127898265241027120)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancja "%0" procesu Workflow zosta\0142a trwale zako\0144czona')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127897384710027120)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'pl'
,p_message_text=>unistr('Proces Workflow mo\017Ce wznowi\0107 tylko administrator biznesowy procesu Workflow "%0"')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127897494543027120)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'pl'
,p_message_text=>unistr('Proces Workflow "%0" mo\017Ce ponowi\0107 tylko administrator biznesowy lub w\0142a\015Bciciel')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127896916198027120)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancj\0119 "%0" procesu Workflow mo\017Ce zawiesi\0107 tylko administrator biznesowy zdefiniowany dla procesu Workflow')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127897264697027120)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Proces Workflow mog\0105 zawiesi\0107 tylko w\0142a\015Bciciele i administratorzy biznesowi instancji "%0" procesu Workflow')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127895611667027120)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zmienne procesu Workflow "%0" mo\017Ce zaktualizowa\0107 tylko administrator biznesowy zdefiniowany dla procesu Workflow')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127910224275027124)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Instancja procesu Workflow "%0" musi osi\0105gn\0105\0107 stan "Niepowodzenie" lub "Zawieszone", aby mo\017Cna by\0142o aktualizowa\0107 jej zmienne.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127901768120027122)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zmienna "%0" procesu Workflow zosta\0142a zaktualizowana do "%1"')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127911979136027125)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'pl'
,p_message_text=>'Proces Workflow "%0" nie ma aktywnej wersji'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127912082257027125)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'pl'
,p_message_text=>'Proces Workflow "%0" nie ma wersji w opracowaniu'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127912120328027125)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Proces Workflow "%0" nie ma aktywnej wersji ani wersji w opracowaniu'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127895014050027120)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono instancji "%1" dzia\0142a\0144 dla instancji "%0" procesu Workflow')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127894870504027119)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono instancji "%0" procesu Workflow'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127929965143027130)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'pl'
,p_message_text=>'Skoroszyt nie zawiera aktywnego arkusza roboczego.'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127929872379027130)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'pl'
,p_message_text=>unistr('Skoroszyt nie zosta\0142 zainicjalizowany.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127929704302027130)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142 b\0142\0105d wewn\0119trzny podczas tworzenia pliku XLSX.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127932278088027131)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'pl'
,p_message_text=>'Arkusz'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127942852296027134)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'pl'
,p_message_text=>unistr('Nazwa "%0" arkusza roboczego jest ju\017C u\017Cywana. Prosz\0119 wybra\0107 inn\0105.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128071450011027173)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015Bci')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127986443048027147)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'pl'
,p_message_text=>unistr('Menu "Czynno\015Bci"')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127982123904027146)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Dodaj funkcj\0119')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127982019436027146)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Dodaj kolumn\0119 "Grupuj wg"')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128019674810027157)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Dodaj kolumn\0119 przestawn\0105')
,p_version_scn=>2693189
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128019748823027157)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Dodaj wiersz przestawny'
,p_version_scn=>2693189
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127954100620027138)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'pl'
,p_message_text=>'Agregacja'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127992658846027149)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'pl'
,p_message_text=>'Agregacja'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127973534500027143)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'pl'
,p_message_text=>unistr('\015Arednia')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127977866443027145)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'pl'
,p_message_text=>'Licznik'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127973692547027143)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'pl'
,p_message_text=>'Maksimum'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127973830325027143)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'pl'
,p_message_text=>'Mediana'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127973722169027143)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'pl'
,p_message_text=>'Minimum'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127973457907027143)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'pl'
,p_message_text=>'Suma %0'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127974571838027144)
,p_name=>'APEXIR_ALL'
,p_message_language=>'pl'
,p_message_text=>'Wszystkie'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127953456210027137)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Wszystkie kolumny'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127933515628027131)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'pl'
,p_message_text=>'Wszystkie wiersze'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128068486565027172)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'pl'
,p_message_text=>'Alternatywny'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128070038714027173)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'pl'
,p_message_text=>unistr('Alternatywny domy\015Blny: %0 ')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127967668116027142)
,p_name=>'APEXIR_AND'
,p_message_language=>'pl'
,p_message_text=>'i'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128002408731027152)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna zaimportowa\0107 zapisanego raportu. Zawarto\015B\0107 jest uszkodzona.')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128002524733027152)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna zaimportowa\0107 zapisanego raportu. Zawarto\015B\0107 jest pusta.')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127955665225027138)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'pl'
,p_message_text=>'Zastosuj'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127949251593027136)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'pl'
,p_message_text=>unistr('Rosn\0105co')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127970703283027143)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'pl'
,p_message_text=>'Jak %0'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128070606904027173)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'pl'
,p_message_text=>unistr('\015Arednia %0')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128062243069027170)
,p_name=>'APEXIR_BAR'
,p_message_language=>'pl'
,p_message_text=>unistr('S\0142upkowy')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127954968907027138)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'pl'
,p_message_text=>unistr('mi\0119dzy')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127948083785027136)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Kolor t\0142a')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127949999890027136)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'pl'
,p_message_text=>'niebieski'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127984055145027147)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'pl'
,p_message_text=>'Na koniec'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127914801137027126)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'pl'
,p_message_text=>'Przyciski obok paska wyszukiwania "%0"'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127950550960027136)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'pl'
,p_message_text=>'Anuluj'
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127956802512027138)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'pl'
,p_message_text=>'Kategoria'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127947991534027136)
,p_name=>'APEXIR_CELL'
,p_message_language=>'pl'
,p_message_text=>unistr('Kom\00F3rka')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127974436779027144)
,p_name=>'APEXIR_CHART'
,p_message_language=>'pl'
,p_message_text=>'Wykres'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127984960147027147)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'pl'
,p_message_text=>'Inicjalizowanie...'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128024695117027159)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 etykiet\0119 wykresu.')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128037004411027163)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'pl'
,p_message_text=>unistr('Zapytanie przekracza maksymaln\0105 liczb\0119 punkt\00F3w danych (%0) przypadaj\0105cych na wykres. Prosz\0119 zastosowa\0107 filtr, aby ograniczy\0107 liczb\0119 rekord\00F3w dla zapytania.')
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128035907521027162)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'pl'
,p_message_text=>unistr('Maksymalna liczba wierszy dla zapytania dotycz\0105cego wykresu ogranicza nie liczb\0119 wy\015Bwietlanych wierszy, lecz liczb\0119 wierszy w zapytaniu podstawowym. Zapytanie podstawowe przekracza maksymaln\0105 liczb\0119 wierszy (%0). Prosz\0119 zastosowa\0107 filtr w celu ograni')
||unistr('czenia liczby rekord\00F3w w zapytaniu przestawnym.')
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127953570392027137)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'pl'
,p_message_text=>'Typ wykresu'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127917469782027126)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'pl'
,p_message_text=>'Widok wykresu "%0"'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128032643426027161)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'pl'
,p_message_text=>'Zaznacz wszystkie'
,p_version_scn=>2693192
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127971191548027143)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r formatu raportu')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127978993365027145)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'pl'
,p_message_text=>unistr('wyczy\015B\0107')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127950488958027136)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Kolumna'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127990234734027148)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Kolumny'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127957404654027139)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'pl'
,p_message_text=>'Aliasy kolumn'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128065011877027171)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'pl'
,p_message_text=>'Filtruj...'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127925231026027129)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'pl'
,p_message_text=>unistr('Nag\0142\00F3wek kolumny')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127939302887027133)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015Bci dot. kolumny')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127939658565027133)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Czynno\015Bci dla kolumny "%0"')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127981029834027146)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'pl'
,p_message_text=>unistr('Menu "Nag\0142\00F3wek kolumny"')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127984774865027147)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'pl'
,p_message_text=>'Informacje o kolumnie'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128067325861027172)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Etykieta kolumny'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127982404481027146)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'pl'
,p_message_text=>'Kolumna %0'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127965387436027141)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'pl'
,p_message_text=>'zawiera'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127966652625027141)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'pl'
,p_message_text=>'nie zawiera'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127948934863027136)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'pl'
,p_message_text=>'w'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127966850193027141)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'pl'
,p_message_text=>'nie jest w ostat.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127975991326027144)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'pl'
,p_message_text=>'nie jest w nast.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127966725536027141)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'pl'
,p_message_text=>'jest w ostat.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127975858469027144)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'pl'
,p_message_text=>'jest w nast.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127948803139027136)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('nie ma warto\015Bci Null')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127948718647027136)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('ma warto\015B\0107 Null')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127948525463027136)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'pl'
,p_message_text=>'podobne do'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127949041594027136)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'pl'
,p_message_text=>'nie w'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127948611350027136)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'pl'
,p_message_text=>'niepodobne do'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127965601095027141)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'pl'
,p_message_text=>unistr('zgodne z wyra\017Ceniem regularnym')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127971031305027143)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'pl'
,p_message_text=>'Obliczenie'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128035621704027162)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyra\017Cenie obliczenia')
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127990514052027149)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 utworzy\0107 obliczenie, u\017Cywaj\0105c alias\00F3w kolumn.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127990637489027149)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'pl'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127990731740027149)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'pl'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127990859796027149)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'pl'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127931746582027131)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'pl'
,p_message_text=>'ROUND(C/1000000)'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127975232793027144)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'pl'
,p_message_text=>'Oblicz'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127983009474027146)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'pl'
,p_message_text=>'Przerwa kontrolna'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127986006681027147)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'pl'
,p_message_text=>'Przerwy kontrolne'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128072673171027173)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Kolumny przerwy kontrolnej'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127928426352027130)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'pl'
,p_message_text=>'Licznik dystynktywny'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128071134995027173)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'pl'
,p_message_text=>'Licznik dystynktywny'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128071004155027173)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'pl'
,p_message_text=>'Licznik %0'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128044083147027165)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'pl'
,p_message_text=>unistr('Co dzie\0144')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128097318081027181)
,p_name=>'APEXIR_DATA'
,p_message_language=>'pl'
,p_message_text=>'Dane'
,p_is_js_message=>true
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127984868409027147)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'pl'
,p_message_text=>'Dane raportu zgodne ze stanem %0 min temu.'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127917895486027126)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'pl'
,p_message_text=>'Widok wykresu "%0"'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127954243075027138)
,p_name=>'APEXIR_DATE'
,p_message_language=>'pl'
,p_message_text=>'Data'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127988705884027148)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'pl'
,p_message_text=>unistr('Domy\015Blne')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128068235013027172)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ raportu domy\015Blnego')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127950672594027136)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144')
,p_is_js_message=>true
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127954528656027138)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'pl'
,p_message_text=>unistr('Czy usun\0105\0107 te ustawienia raportu?')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128055099334027168)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 raport domy\015Blny')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127982744876027146)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 raport')
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127949353155027136)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'pl'
,p_message_text=>unistr('Malej\0105co')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127956959070027138)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>'Opis'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127980905979027146)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok jednego wiersza'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127989201185027148)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'pl'
,p_message_text=>'Kierunek %0'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127990153432027148)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\0142\0105czone')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127950168007027136)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietlane')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127953353354027137)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietlane kolumny')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127989115367027148)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietl w raporcie')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127983900118027147)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'pl'
,p_message_text=>unistr('W d\00F3\0142')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127975311571027144)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'pl'
,p_message_text=>'Pobierz'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127989087820027148)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie wy\015Bwietlaj')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128058369848027169)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'pl'
,p_message_text=>unistr('Ju\017C istnieje wyr\00F3\017Cnienie z tym samym warunkiem.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128072866581027173)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Zduplikowana kolumna przestawna. Lista kolumn przestawnych musi zawiera\0107 unikatowe pozycje.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128073027398027173)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'pl'
,p_message_text=>'Edytuj'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127985067253027147)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'pl'
,p_message_text=>'Edytuj ustawienia wykresu'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127991634314027149)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'pl'
,p_message_text=>'Edytuj wykres'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127955594906027138)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'pl'
,p_message_text=>unistr('Edytuj przerw\0119 kontroln\0105')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127992098516027149)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'pl'
,p_message_text=>'Edytuj filtr'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127958586699027139)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'pl'
,p_message_text=>'Edytuj Flashback'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128049803987027166)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'pl'
,p_message_text=>'Edytuj "Grupuj wg"'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127991972166027149)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'pl'
,p_message_text=>unistr('Edytuj cech\0119')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128019976631027157)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'pl'
,p_message_text=>unistr('Edytuj tabel\0119 przestawn\0105')
,p_version_scn=>2693189
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127979328186027145)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Edytuj raport'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128068596667027172)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'pl'
,p_message_text=>'E-mail'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127940782844027134)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'pl'
,p_message_text=>'Adres e-mail'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128068843586027172)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'pl'
,p_message_text=>'Udw'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128069012545027172)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'pl'
,p_message_text=>unistr('Tre\015B\0107')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128068712186027172)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'pl'
,p_message_text=>'Dw'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128069568070027172)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'pl'
,p_message_text=>unistr('Cz\0119stotliwo\015B\0107')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127945971882027135)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'pl'
,p_message_text=>unistr('Dla tej aplikacji nie zosta\0142 skonfigurowany adres e-mail. Prosz\0119 si\0119 skontaktowa\0107 z administratorem.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128043340116027164)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 adres e-mail.')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128069154435027172)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zob. za\0142\0105czone')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128068979138027172)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'pl'
,p_message_text=>'Temat'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128044364303027165)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 temat e-maila.')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128068647677027172)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'pl'
,p_message_text=>'Do'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127947797652027136)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142\0105czone')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127991805588027149)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142\0105cz/wy\0142\0105cz')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127991306033027149)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d! %0')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127990973798027149)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'pl'
,p_message_text=>unistr('Przyk\0142ady')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127991704484027149)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'pl'
,p_message_text=>unistr('Przyk\0142ady:')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127953212960027137)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyklucz warto\015Bci Null')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127992323455027149)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'pl'
,p_message_text=>unistr('Rozwi\0144/Zwi\0144')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127989950973027148)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyra\017Cenie')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127974808261027144)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'pl'
,p_message_text=>'Filtruj'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127985923383027147)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'pl'
,p_message_text=>'Filtry'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127996667408027150)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyra\017Cenie filtra')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128094869842027180)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyra\017Cenie filtra jest zbyt d\0142ugie.')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127939569881027133)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'pl'
,p_message_text=>'Filtrowanie sugestii'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127996599905027150)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'pl'
,p_message_text=>'Typ filtra'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127992513872027149)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r przeszukiwanych kolumn')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127975121264027144)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'pl'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127989729131027148)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Zapytanie Flashback umo\017Cliwia wy\015Bwietlenie danych tak, jak istnia\0142y we wcze\015Bniejszym punkcie w czasie.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128043740425027165)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Flashback - okres'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128045153666027165)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'pl'
,p_message_text=>'Format'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127970901292027143)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'pl'
,p_message_text=>'Maska formatu: %0'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127982634769027146)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>'Funkcja'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127990431260027148)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'pl'
,p_message_text=>'Funkcje %0'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128068197657027172)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'pl'
,p_message_text=>'Funkcje/operatory'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127982353688027146)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'pl'
,p_message_text=>'Funkcja %0'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127974675280027144)
,p_name=>'APEXIR_GO'
,p_message_language=>'pl'
,p_message_text=>'Wykonaj'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127948299938027136)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'pl'
,p_message_text=>'zielony'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127993200367027149)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Grupuj wg kolumn'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127993325955027149)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'pl'
,p_message_text=>'Grupuj wg funkcji'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127928534906027130)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'pl'
,p_message_text=>'Grupuj wg'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128069200121027172)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Grupuj wg kolumny %0'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128024716015027159)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 kolumn\0119, wed\0142ug kt\00F3rej ma nast\0119powa\0107 grupowanie.')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128035879294027162)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'pl'
,p_message_text=>unistr('Maksymalna liczba wierszy dla zapytania "Grupuj wg" ogranicza nie liczb\0119 wy\015Bwietlanych wierszy, lecz liczb\0119 wierszy w zapytaniu podstawowym. Zapytanie podstawowe przekracza maksymaln\0105 liczb\0119 wierszy (%0). Prosz\0119 zastosowa\0107 filtr w celu ograniczenia l')
||unistr('iczby rekord\00F3w w zapytaniu przestawnym.')
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128016008076027156)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'pl'
,p_message_text=>'Sortowanie grupowania wg'
,p_is_js_message=>true
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128072716854027173)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'pl'
,p_message_text=>unistr('Grupuj wg - porz\0105dek sortowania')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127917694543027126)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'pl'
,p_message_text=>'Widok grupowania wg "%0"'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127953619559027137)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'pl'
,p_message_text=>'Kolumna pozioma'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127987698960027148)
,p_name=>'APEXIR_HELP'
,p_message_language=>'pl'
,p_message_text=>'Pomoc'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127979467639027145)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Raporty interaktywne mog\0105 by\0107 dostosowywane przez u\017Cytkownik\00F3w. U\017Cytkownicy mog\0105 zmienia\0107 uk\0142ad danych w raporcie, wybieraj\0105c kolumny, stosuj\0105c filtry i wyr\00F3\017Cnienia, a tak\017Ce sortuj\0105c dane. Mog\0105 tak\017Ce definiowa\0107 podzia\0142y, agregacje, wykresy i grupowan')
||unistr('ia oraz dodawa\0107 w\0142asne obliczenia. Mog\0105 skonfigurowa\0107 subskrypcj\0119, tak aby by\0142a do nich przysy\0142ana z okre\015Blon\0105 cz\0119stotliwo\015Bci\0105 wersja HTML raportu. Mog\0105 r\00F3wnie\017C tworzy\0107 r\00F3\017Cne odmiany raportu i zapisywa\0107 je jako nazwane raporty, przeznaczone do wy\015Bwie')
||'tlania publicznego lub prywatnego. ',
'<p/>',
unistr('W kolejnych sekcjach zosta\0142y podsumowane sposoby modyfikacji raportu interaktywnego. Wi\0119cej informacji mo\017Cna znale\017A\0107 w rozdziale "Using Interactive Reports" w podr\0119czniku <i>Oracle APEX End User''s Guide</i>.')))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127986507202027147)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'pl'
,p_message_text=>unistr('Menu "Czynno\015Bci" pojawia si\0119 z prawej strony przycisku "Wykonaj" na pasku wyszukiwania. Za pomoc\0105 opcji z tego menu mo\017Cna dostosowa\0107 raport interaktywny.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127980262036027145)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Agregacje s\0105 to obliczenia matematyczne, wykonywane w odniesieniu do kolumny. Agregacje s\0105 wy\015Bwietlane po ka\017Cdej przerwie kontrolnej i na ko\0144cu raportu w tych kolumnach, w kt\00F3rych zosta\0142y zdefiniowane. S\0105 dost\0119pne nast\0119puj\0105ce opcje:'),
'<p>',
'</p><ul>',
unistr('<li><strong>Agregacja</strong> - umo\017Cliwia wybranie wcze\015Bniej zdefiniowanej agregacji do edycji.</li>'),
unistr('<li><strong>Funkcja</strong> - okre\015Bla funkcj\0119, kt\00F3ra ma zosta\0107 wykonana (na przyk\0142ad SUM, MIN).</li>'),
unistr('<li><strong>Kolumna</strong> - s\0142u\017Cy do wybrania kolumny, do kt\00F3rej ma zosta\0107 zastosowana funkcja matematyczna. '),
unistr('S\0105 wy\015Bwietlane tylko kolumny liczbowe.</li>'),
'</ul>'))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127980322454027145)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Mo\017Cna zdefiniowa\0107 jeden wykres przypadaj\0105cy na jeden zapisany raport. Po zdefiniowaniu wykresu'),
unistr('mo\017Cna si\0119 prze\0142\0105cza\0107, za pomoc\0105 ikon widok\00F3w z paska wyszukiwania, mi\0119dzy widokiem wykresu i widokiem raportu.'),
unistr('Dost\0119pne s\0105 nast\0119puj\0105ce opcje:  '),
'<p>',
'</p><ul>',
'<li><strong>Typ wykresu</strong> - identyfikuje stosowany typ wykresu.',
unistr('Mo\017Cna wybra\0107 wykres s\0142upkowy poziomy, s\0142upkowy pionowy, ko\0142owy lub liniowy.</li>'),
unistr('<li><strong>Etykieta</strong> - umo\017Cliwia wybranie kolumny, kt\00F3ra b\0119dzie u\017Cywana jako etykieta.</li>'),
unistr('<li><strong>Tytu\0142 osi dla etykiety</strong> - okre\015Bla tytu\0142 wy\015Bwietlany na osi powi\0105zanej z kolumn\0105 wybran\0105 na etykiet\0119. '),
unistr('Opcja ta nie jest dost\0119pna dla wykresu ko\0142owego.</li>'),
unistr('<li><strong>Warto\015B\0107</strong>  - umo\017Cliwia wybranie kolumny, kt\00F3ra b\0119dzie u\017Cywana jako warto\015B\0107.'),
unistr('Je\015Bli funkcj\0105 jest COUNT, nie trzeba wybiera\0107 warto\015Bci.</li>'),
unistr('<li><strong>Tytu\0142 osi dla warto\015Bci</strong> - identyfikuje tytu\0142 wy\015Bwietlany na osi powi\0105zanej z kolumn\0105 wybran\0105 na warto\015B\0107.'),
unistr('Opcja ta nie jest dost\0119pna dla wykresu ko\0142owego.</li>'),
unistr('<li><strong>Funkcja</strong> - okre\015Bla opcjonaln\0105 funkcj\0119, kt\00F3ra ma zosta\0107 wykonana w odniesieniu do kolumny wybranej na warto\015B\0107.</li>'),
unistr('<li><strong>Sortuj</strong> - umo\017Cliwia posortowanie zbioru wynik\00F3w.</li></ul>')))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127979656901027145)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Klikaj\0105c nag\0142\00F3wek dowolnej kolumny, eksponuje si\0119 jego menu. S\0105 w nim dost\0119pne nast\0119puj\0105ce opcje:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Sortuj rosn\0105co</strong> - raport jest sortowany wed\0142ug danej kolumny w porz\0105dku rosn\0105cym.</li>'),
unistr('<li><strong>Sortuj malej\0105co</strong> - raport jest sortowany wed\0142ug danej kolumny w porz\0105dku malej\0105cym.</li>'),
unistr('<li><strong>Ukryj kolumn\0119</strong> - kolumna jest ukrywana. Nie ka\017Cd\0105 kolumn\0119 mo\017Cna ukry\0107. Je\015Bli kolumny nie mo\017Cna ukry\0107, to ikona "Ukryj kolumn\0119" nie pojawi si\0119.</li>'),
unistr('<li><strong>Podziel kolumn\0119</strong> - jest tworzona grupa podzia\0142u oparta na danej kolumnie. Kolumna ta jest wydobywana z raportu jako rekord nadrz\0119dny.</li>'),
unistr('<li><strong>Informacje o kolumnie</strong> - jest wy\015Bwietlany (o ile istnieje) tekst Pomocy dla kolumny.</li>'),
unistr('<li><strong>Obszar tekstowy</strong> - jest u\017Cywany do wprowadzania kryteri\00F3w wyszukiwania, w kt\00F3rych nie jest uwzgl\0119dniana wielko\015B\0107 liter'),
unistr('(nie trzeba stosowa\0107 wieloznacznik\00F3w). Wprowadzaj\0105c warto\015B\0107, ogranicza si\0119 list\0119 warto\015Bci'),
unistr('na dole menu. Mo\017Cna z niej wybra\0107 warto\015B\0107,'),
unistr('kt\00F3ra zostanie u\017Cyta do utworzenia filtra z u\017Cyciem znaku r\00F3wno\015Bci "="'),
unistr('(na przyk\0142ad <code>column = ''ABC''</code>). Mo\017Cna te\017C klikn\0105\0107 na ikonie "Wyr\00F3\017Cnienie" i wprowadzi\0107 warto\015B\0107, kt\00F3ra zostanie u\017Cyta do utworzenia filtra z modyfikatorem LIKE'),
unistr('(na przyk\0142ad <code>column LIKE ''%ABC%''</code>).</li>'),
unistr('<li><strong>Lista unikatowych warto\015Bci</strong> - zawiera 500 pierwszych unikatowych warto\015Bci'),
unistr('spe\0142niaj\0105cych kryteria filtrowania. Je\015Bli kolumna zawiera daty, zostanie wy\015Bwietlona lista przedzia\0142\00F3w dat. Je\015Bli jaka\015B warto\015B\0107 zostanie wybrana, zostanie utworzony filtr'),
unistr('z u\017Cyciem znaku r\00F3wno\015Bci "=" (na przyk\0142ad <code>column = ''ABC''</code>).</li>'),
'</ul>'))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127980122658027145)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Umo\017Cliwia dodanie obliczanych kolumn do raportu. Mog\0105 to by\0107 obliczenia matematyczne (na przyk\0142ad <code>NBR_HOURS/24</code>) lub standardowe funkcje Oracle'),
unistr('zastosowane do istniej\0105cych kolumn. Niekt\00F3re s\0105 wy\015Bwietlane jako przyk\0142ady, ale mog\0105 zosta\0107 u\017Cyte tak\017Ce inne (takie jak <code>TO_DATE)</code>). Dost\0119pne s\0105 nast\0119puj\0105ce opcje:'),
'<p></p>',
'<ul>',
unistr('<li><strong>Obliczenie</strong> - umo\017Cliwia wybranie wcze\015Bniej zdefiniowanego wyra\017Cenia do edycji.</li>'),
unistr('<li><strong>Nag\0142\00F3wek kolumny</strong> - umo\017Cliwia okre\015Blenie nag\0142\00F3wka nowej kolumny.</li>'),
unistr('<li><strong>Maska formatu</strong> - okre\015Bla mask\0119 formatu Oracle, kt\00F3ra ma zosta\0107 zastosowana do kolumny (na przyk\0142ad S9999).</li>'),
unistr('<li><strong>Obliczenie</strong> - okre\015Bla obliczenie, kt\00F3re ma zosta\0107 wykonane. W obliczeniu mo\017Cna si\0119 odwo\0142ywa\0107 do kolumn, u\017Cywaj\0105c ich wy\015Bwietlanych alias\00F3w.</li>'),
'</ul>',
unistr('<p>Wyst\0119puj\0105ce w zapytaniu kolumny s\0105 wy\015Bwietlane pod obliczeniem wraz z ich aliasami. Klikaj\0105c nazw\0119 kolumny lub alias,'),
unistr('zawiera si\0119 je w obliczeniu. Obok kolumn znajduje si\0119 klawiatura. Dzia\0142a ona jak'),
unistr('skr\00F3t do zazwyczaj u\017Cywanych funkcji. Po prawej stronie znajduje si\0119 obszar "Funkcje".</p>'),
unistr('<p>Nast\0119puj\0105cy przyk\0142ad obliczenia pokazuje, w jaki spos\00F3b mo\017Cna wy\015Bwietli\0107 \0142\0105czne wynagrodzenie:</p>'),
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
'(gdzie A to ORGANIZATION, B to SALARY, C to COMMISSION)'))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127986684227027147)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'pl'
,p_message_text=>unistr('S\0142u\017Cy do utworzenia grupy podzia\0142u opartej na kolumnach (jednej lub wi\0119kszej ich liczbie). Kolumny te s\0105 wydobywane z raportu interaktywnego i wy\015Bwietlane jako rekordy nadrz\0119dne.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127980802611027146)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'pl'
,p_message_text=>unistr('Aby wy\015Bwietli\0107 szczeg\00F3\0142y jednego wiersza, klikn\0105\0107 ikon\0119 "Widok jednego wiersza" w odpowiednim wierszu. Widok jednego wiersza, je\015Bli dost\0119pny, zawsze b\0119dzie pierwsz\0105 kolumn\0105. W zale\017Cno\015Bci od dostosowania raportu interaktywnego widok jednego wiersza mo')
||unistr('\017Ce by\0107 widokiem standardowym lub stron\0105 niestandardow\0105, kt\00F3re mog\0105 zezwala\0107 na aktualizacj\0119.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127980763023027146)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'pl'
,p_message_text=>unistr('Umo\017Cliwia pobranie bie\017C\0105cego zbioru wynik\00F3w. Dost\0119pne formaty pobierania to m.in. PDF, Excel, HTML i CSV. Opcje pobierania r\00F3\017Cni\0105 si\0119 w zale\017Cno\015Bci od wybranego formatu. Wszystkie formaty mo\017Cna tak\017Ce wys\0142a\0107 jako e-mail.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127979856739027145)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Uszczeg\00F3\0142awia raport przez dodanie lub zmodyfikowanie klauzuli <code>WHERE</code> w zapytaniu. Mo\017Cna filtrowa\0107 wed\0142ug kolumny lub wiersza.  '),
unistr('<p>Filtruj\0105c wed\0142ug kolumny, nale\017Cy j\0105 wybra\0107 (nie musi by\0107 wy\015Bwietlana),'),
unistr('nast\0119pnie wybra\0107 standardowy operator Oracle (=, !=, nie\00A0w, mi\0119dzy), po czym wprowadzi\0107 wyra\017Cenie por\00F3wnawcze. W wyra\017Ceniach jest uwzgl\0119dniana wielko\015B\0107 liter. Mo\017Cna u\017Cy\0107 wieloznacznika % a (na przyk\0142ad <code>STATE_NAME'),
'like A%)</code>.</p>',
unistr('<p>Filtruj\0105c wed\0142ug wiersza, mo\017Cna tworzy\0107 z\0142o\017Cone klauzule <code>WHERE</code> z u\017Cyciem'),
unistr('alias\00F3w kolumn i dowolnych funkcji lub operator\00F3w Oracle, na przyk\0142ad <code>G = ''VA'' or G = ''CT''</code>, gdzie'),
'<code>G</code> jest aliasem kolumny <code>CUSTOMER_STATE</code>.</p>',
''))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127980442888027145)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Zapytanie Flashback umo\017Cliwia wy\015Bwietlenie danych, kt\00F3re istnia\0142y w poprzednim punkcie w czasie.'),
unistr('Czas domy\015Blny, obj\0119ty zapytaniem Flashback, wynosi 3 godziny (180 minut),'),
unistr('ale faktyczny czas mo\017Ce si\0119 r\00F3\017Cni\0107 w zale\017Cno\015Bci od bazy danych.')))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128045008788027165)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Za pomoc\0105 menu "Format" mo\017Cna dostosowa\0107 wy\015Bwietlanie raportu.'),
unistr('Menu "Format" zawiera nast\0119puj\0105ce podmenu:</p>'),
'<ul><li>Sortuj</li>',
'<li>Przerwa kontrolna</li>',
unistr('<li>Wyr\00F3\017Cnij</li>'),
'<li>Oblicz</li>',
'<li>Agregacja</li>',
'<li>Wykres</li>',
'<li>Grupuj wg</li>',
'<li>Tabela przestawna</li>',
'</ul>',
''))
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128043246062027164)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Mo\017Cna zdefiniowa\0107 jeden widok grupowania wg przypadaj\0105cy na jeden zapisany raport. Po zdefiniowaniu widoku mo\017Cna si\0119 prze\0142\0105cza\0107, za pomoc\0105 ikon widok\00F3w z paska wyszukiwania, mi\0119dzy widokiem grupowania wg i widokiem raportu. Aby utworzy\0107 widok grupowa')
||unistr('nia wg, nale\017Cy wybra\0107: '),
'<p></p>',
'<ul>',
unistr('<li>kolumny u\017Cywane do grupowania</li>'),
unistr('<li>agregowane kolumny wraz z wykonywan\0105 funkcj\0105 (\015Brednia, suma, licznik itd.)</li>'),
'</ul>'))
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127980088291027145)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Umo\017Cliwia zdefiniowanie filtra. Wiersze spe\0142niaj\0105ce kryteria filtrowania s\0105 wyr\00F3\017Cniane przy u\017Cyciu cech powi\0105zanych z filtrem. Dost\0119pne s\0105 nast\0119puj\0105ce opcje:</p>'),
'<ul>',
unistr('<li><strong>Nazwa</strong> - s\0142u\017Cy tylko do wy\015Bwietlania.</li>'),
unistr('<li><strong>Sekwencja</strong> - identyfikuje kolejno\015B\0107 obliczania regu\0142.</li>'),
unistr('<li><strong>W\0142\0105czone</strong> - okre\015Bla, czy regu\0142a jest w\0142\0105czona czy wy\0142\0105czona.</li>'),
unistr('<li><strong>Typ wyr\00F3\017Cnienia</strong> - okre\015Bla, co ma by\0107 wyr\00F3\017Cniane: wiersz lub kom\00F3rka.'),
unistr('Je\015Bli zostanie wybrana opcja "Kom\00F3rka", b\0119dzie wyr\00F3\017Cniana kolumna, do kt\00F3rej odnosi si\0119'),
unistr('warunek wyr\00F3\017Cniania.</li>'),
unistr('<li><strong>Kolor t\0142a</strong> - identyfikuje nowy kolor t\0142a wyr\00F3\017Cnionego obszaru.</li>'),
unistr('<li><strong>Kolor tekstu</strong> - identyfikuje nowy kolor tekstu w wyr\00F3\017Cnionym obszarze.</li>'),
unistr('<li><strong>Warunek wyr\00F3\017Cnienia</strong> - okre\015Bla warunek filtrowania.</li>'),
'</ul>',
''))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127873486125027113)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Mo\017Cna zdefiniowa\0107 jeden widok tabeli przestawnej przypadaj\0105cy na jeden zapisany raport. Po zdefiniowaniu widoku mo\017Cna si\0119 prze\0142\0105cza\0107, za pomoc\0105 ikon widok\00F3w z paska wyszukiwania, mi\0119dzy widokiem tabeli przestawnej i widokiem raportu. Aby utworzy\0107 wid')
||unistr('ok tabeli przestawnej, nale\017Cy wybra\0107: '),
'<p></p>',
'<ul>',
unistr('<li>kolumny u\017Cywane do przestawienia</li>'),
unistr('<li>kolumny do wy\015Bwietlenia jako wiersze</li>'),
unistr('<li>agregowane kolumny wraz z wykonywan\0105 funkcj\0105 (\015Brednia, suma, licznik itd.)</li>'),
'</ul>'))
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127991177209027149)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Gdy raport interaktywny jest dostosowywany, jego ustawienia s\0105 wy\015Bwietlane'),
unistr('pod paskiem wyszukiwania i nad raportem. Obszar ten mo\017Cna zwin\0105\0107 lub rozwin\0105\0107, u\017Cywaj\0105c ikony wy\015Bwietlanej po lewej stronie.'),
'<p>',
unistr('Dla ka\017Cdego ustawienia raportu mo\017Cna:'),
'</p><ul>',
unistr('<li>Edytowa\0107 ustawienie, klikaj\0105c jego nazw\0119.</li>'),
unistr('<li>W\0142\0105czy\0107 lub wy\0142\0105czy\0107 ustawienie, zaznaczaj\0105c lub czyszcz\0105c pole wyboru "W\0142\0105cz/Wy\0142\0105cz". Za jego pomoc\0105 mo\017Cna tymczasowo w\0142\0105cza\0107 i wy\0142\0105cza\0107 ustawienie.</li>'),
unistr('<li>Usun\0105\0107 ustawienie, klikaj\0105c ikon\0119 "Usu\0144".</li>'),
'</ul>',
unistr('<p>Je\015Bli utworzono wykres, grupowanie wg lub tabel\0119 przestawn\0105, to mo\017Cna si\0119 prze\0142\0105cza\0107 mi\0119dzy nimi'),
unistr('a raportem podstawowym za pomoc\0105 \0142\0105czy "Widok raportu", "Widok wykresu", "Widok grupowania wg" i "Widok tabeli przestawnej",'),
unistr('wy\015Bwietlanych po prawej stronie. Je\015Bli jest wy\015Bwietlany wykres, grupowanie wg lub tabela przestawna,'),
unistr('mo\017Cna - w celu edycji ustawie\0144 - u\017Cy\0107 tak\017Ce \0142\0105cza "Edytuj".</p>')))
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127980636369027146)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'pl'
,p_message_text=>unistr('Resetuje raport, przywracaj\0105c ustawienia domy\015Blne oraz usuwaj\0105c wszelkie wprowadzone dostosowania.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128045337816027165)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Okre\015Bla liczb\0119 rekord\00F3w wy\015Bwietlanych na stronie.')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127980505101027146)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Zapisuje dostosowany raport do u\017Cycia w przysz\0142o\015Bci. Nale\017Cy poda\0107 nazw\0119 oraz mo\017Cna opcjonalnie wprowadzi\0107 opis i uczyni\0107 raport dost\0119pnym publicznie (znaczy to, \017Ce dost\0119p do podstawowego raportu domy\015Blnego b\0119d\0105 mie\0107 wszyscy u\017Cytkownicy). Mo\017Cna zap')
||unistr('isywa\0107 cztery typy raport\00F3w interaktywnych:</p>'),
'<ul>',
unistr('<li><strong>Podstawowy domy\015Blny</strong> (tylko programi\015Bci). Raport "Podstawowy domy\015Blny" jest raportem pocz\0105tkowo wy\015Bwietlanym. Nie mo\017Cna usuwa\0107 tych raport\00F3w ani zmienia\0107 ich nazw.</li>'),
unistr('<li><strong>Raport alternatywny</strong> (tylko programi\015Bci). Umo\017Cliwia programistom tworzenie r\00F3\017Cnych uk\0142ad\00F3w raportu. Tylko programi\015Bci mog\0105 taki raport zapisa\0107 lub usun\0105\0107 b\0105d\017A zmieni\0107 jego nazw\0119.</li>'),
unistr('<li><strong>Raport publiczny</strong> (u\017Cytkownicy ko\0144cowi). U\017Cytkownik ko\0144cowy, kt\00F3ry taki raport utworzy\0142, mo\017Ce go zapisa\0107 lub usun\0105\0107 b\0105d\017A zmieni\0107 jego nazw\0119. Inni u\017Cytkownicy mog\0105 go wy\015Bwietli\0107 i zapisa\0107 uk\0142ad jako inny raport.</li>'),
unistr('<li><strong>Raport prywatny</strong> (u\017Cytkownicy ko\0144cowi). Tylko u\017Cytkownik ko\0144cowy, kt\00F3ry taki raport utworzy\0142, mo\017Ce go wy\015Bwietli\0107, zapisa\0107 lub usun\0105\0107 b\0105d\017A zmieni\0107 jego nazw\0119.</li>'),
'</ul>',
unistr('<p>Gdy dostosowane raporty s\0105 zapisywane, na pasku wyszukiwania jest wy\015Bwietlany (po lewej stronie selektora wierszy) selektor raport\00F3w, o ile ta funkcja zosta\0142a w\0142\0105czona.</p>'),
''))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127979512723027145)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Na g\00F3rze ka\017Cdej strony raportu znajduje si\0119 obszar wyszukiwania. W obszarze tym (lub na pasku wyszukiwania) s\0105 dost\0119pne nast\0119puj\0105ce funkcje:')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128045982196027165)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'pl'
,p_message_text=>unistr('<li><strong>Menu czynno\015Bci</strong> - pozwala dostosowa\0107 raport. Zob. kolejne sekcje.</li>')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128045412935027165)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'pl'
,p_message_text=>unistr('<li><strong>Ikona wyboru kolumn</strong> - pozwala zidentyfikowa\0107, kt\00F3re kolumny maj\0105 by\0107 przeszukiwane (lub wszystkie).</li>')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128045753780027165)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'pl'
,p_message_text=>unistr('<li><strong>Raporty</strong> - s\0105 tu wy\015Bwietlane raporty alternatywne domy\015Blne oraz zapisane raporty prywatne lub publiczne.</li>')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128045636603027165)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'pl'
,p_message_text=>unistr('<li><strong>Wiersze</strong> - okre\015Bla liczb\0119 rekord\00F3w wy\015Bwietlanych na stronie.</li>')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128045527756027165)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<li><strong>Obszar tekstowy</strong> - umo\017Cliwia wprowadzenie kryteri\00F3w wyszukiwania, w kt\00F3rych nie jest uwzgl\0119dniana wielko\015B\0107 liter (wieloznaczniki s\0105 przyjmowane domy\015Blnie).</li>'),
unistr('<li>Przycisk <strong>Wykonaj</strong> - uruchamia wyszukiwanie. Tak\017Ce naci\015Bni\0119cie klawisza Enter uruchamia wyszukiwanie, je\015Bli kursor znajduje si\0119 w obszarze tekstowym wyszukiwania.</li>')))
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128045809709027165)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'pl'
,p_message_text=>unistr('<li><strong>Ikony widok\00F3w</strong> - umo\017Cliwiaj\0105 prze\0142\0105czanie si\0119 mi\0119dzy nast\0119puj\0105cymi widokami raportu (o ile zosta\0142y zdefiniowane): ikona, raport, szczeg\00F3\0142y, wykres, grupuj wg i tabela przestawna</li>')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127979792931027145)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>unistr('S\0142u\017Cy do modyfikowania wy\015Bwietlanych kolumn. Kolumny po prawej stronie s\0105 wy\015Bwietlane. Kolumny po lewej stronie s\0105 ukryte. Za pomoc\0105 strza\0142ek (na ko\0144cu, po prawej stronie) mo\017Cna zmieni\0107 kolejno\015B\0107 wy\015Bwietlanych kolumn. Kolumny obliczane s\0105 poprzedzone')
||' znakami <strong>**</strong>.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127979928137027145)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Umo\017Cliwia zmian\0119 kolumn, wed\0142ug kt\00F3rych odbywa si\0119 sortowanie, oraz okre\015Blenie'),
unistr('porz\0105dku sortowania (rosn\0105co lub malej\0105co). Mo\017Cna okre\015Bli\0107, w jaki spos\00F3b maj\0105 by\0107 traktowane warto\015Bci'),
unistr('<code>NULL</code>. Przy ustawieniu domy\015Blnym warto\015Bci <code>NULL</code> s\0105 zawsze wy\015Bwietlane jako ostatnie,'),
unistr('ale mog\0105 by\0107 wy\015Bwietlane jako pierwsze. Wybrany spos\00F3b sortowania jest pokazywany z prawej strony nag\0142\00F3wk\00F3w kolumn w raporcie.</p>')))
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128043055646027164)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Dodaj\0105c subskrypcj\0119, nale\017Cy poda\0107 adres e-mail (lub adresy e-mail rozdzielone przecinkiem), temat e-maila, cz\0119stotliwo\015B\0107 oraz dat\0119 pocz\0105tkow\0105 i ko\0144cow\0105. Wynikowe e-maile b\0119d\0105 zawiera\0107 wyeksportowan\0105 wersj\0119 (PDF, Excel, HTML lub CSV) raportu interakty')
||'wnego, z aktualnymi danymi, zgodnie z jego ustawieniami w chwili dodania subskrypcji.'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127984666332027147)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Ukryj kolumn\0119')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127975044406027144)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyr\00F3\017Cnij')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127986170128027147)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyr\00F3\017Cnione')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127956366218027138)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyr\00F3\017Cnij kom\00F3rk\0119, %0 w %1')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127991275527027149)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ wyr\00F3\017Cnienia')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127956263569027138)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyr\00F3\017Cnij wiersz, %0 w %1')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128043619913027164)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Styl wyr\00F3\017Cnienia')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127947871332027136)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ wyr\00F3\017Cnienia')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128062493919027170)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'pl'
,p_message_text=>'Poziomo'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128091460866027179)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'pl'
,p_message_text=>'Nieaktywne ustawienie (1)'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128091506620027179)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'pl'
,p_message_text=>'Nieaktywne ustawienia (%0)'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127981238892027146)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'pl'
,p_message_text=>'Raport interaktywny - pomoc'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127992227957027149)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawne'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127985633543027147)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawne wyra\017Cenie obliczenia. %0')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127941287978027134)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Data ko\0144cowa musi przypada\0107 po dacie pocz\0105tkowej.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128000430090027151)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawne wyra\017Cenie filtra. %0')
,p_version_scn=>2693184
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128070216508027173)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawne zapytanie filtrowania'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128091675664027179)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawne ustawienie (1)'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128091714839027179)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawne ustawienia (%0)'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128043898910027165)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'pl'
,p_message_text=>'(w minutach)'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128060853784027170)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'pl'
,p_message_text=>'%0 jest w ostat. %1'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128061015268027170)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'pl'
,p_message_text=>'%0 jest w nast. %1'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128060953732027170)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'pl'
,p_message_text=>'%0 nie jest w ostat. %1'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128061195259027170)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'pl'
,p_message_text=>'%0 nie jest w nast. %1'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127990366604027148)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'pl'
,p_message_text=>'Klawiatura'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127954002200027138)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Etykieta "%0"'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127984263636027147)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Tytu\0142 osi dla etykiety')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127976584430027144)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Ostatni dzie\0144')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127976737755027144)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'pl'
,p_message_text=>'Ostatnia godzina'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127976287260027144)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Ostatni miesi\0105c')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127976303926027144)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'pl'
,p_message_text=>unistr('Ostatni tydzie\0144')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127976441811027144)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'pl'
,p_message_text=>'Ostatnie dni (%0)'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127976619844027144)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'pl'
,p_message_text=>'Ostatnie godziny (%0)'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127976071221027144)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'pl'
,p_message_text=>'Ostatnie lata (%0)'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127976135765027144)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'pl'
,p_message_text=>'Ostatni rok'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127953919548027137)
,p_name=>'APEXIR_LINE'
,p_message_language=>'pl'
,p_message_text=>'Liniowy'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127950767326027137)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'pl'
,p_message_text=>'Liniowo-warstwowy'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128070186002027173)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'pl'
,p_message_text=>'Mapuj'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127985173146027147)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'pl'
,p_message_text=>unistr('Wed\0142ug szacunk\00F3w zapytanie przekroczy dozwolon\0105 maksymaln\0105 liczb\0119 zasob\00F3w. Prosz\0119 zmodyfikowa\0107 ustawienia raportu, po czym ponowi\0107 pr\00F3b\0119.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127966544680027141)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'pl'
,p_message_text=>unistr('Maksymalna liczba wierszy dla tego raportu wynosi %0. Prosz\0119 zastosowa\0107 filtr, aby ograniczy\0107 liczb\0119 rekord\00F3w dla zapytania.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128070753969027173)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'pl'
,p_message_text=>'Maksimum %0'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128070932977027173)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'pl'
,p_message_text=>'Mediana %0'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127913276357027125)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wiadomo\015B\0107')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127970816934027143)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0 min temu'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128070816374027173)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'pl'
,p_message_text=>'Minimum %0'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128069842455027172)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Miesi\0105c')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128044274556027165)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'pl'
,p_message_text=>unistr('Co miesi\0105c')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127983459900027146)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Przenie\015B')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127983353440027146)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Przenie\015B wszystkie')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128096531397027181)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 statyczny ID obszaru, poniewa\017C strona zawiera wi\0119cej ni\017C jeden interaktywny raport.')
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127949492067027136)
,p_name=>'APEXIR_NAME'
,p_message_language=>'pl'
,p_message_text=>'Nazwa'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127979176141027145)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'pl'
,p_message_text=>'Nowa agregacja'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128092313818027179)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Nowa kategoria'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127979223895027145)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'pl'
,p_message_text=>'Nowe obliczenie'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127973932479027143)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'pl'
,p_message_text=>'Dalej'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127977024993027144)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pny dzie\0144')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127976885365027144)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pna godzina')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127977302328027145)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pny miesi\0105c')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127977260165027144)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pny tydzie\0144')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127977102353027144)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pne dni (%0)')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127976990271027144)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pne godziny (%0)')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127977576810027145)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pne lata (%0)')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127977496639027145)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pny rok')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127949713785027136)
,p_name=>'APEXIR_NO'
,p_message_language=>'pl'
,p_message_text=>'Nie'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127992408918027149)
,p_name=>'APEXIR_NONE'
,p_message_language=>'pl'
,p_message_text=>'- Brak -'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128043412666027164)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawny adres e-mail.'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127915501478027126)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie wybrano \017Cadnych kolumn do wy\015Bwietlenia. Aby uczyni\0107 kolumny widocznymi, prosz\0119 z menu czynno\015Bci wybra\0107 <strong>Kolumny</strong>.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127988974789027148)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015Bci Null zawsze pierwsze')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127988801537027148)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015Bci Null zawsze ostatnie')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127989316634027148)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'pl'
,p_message_text=>unistr('Sortowanie warto\015Bci Null: %0')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127985771131027147)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'pl'
,p_message_text=>unistr('Czas operacji Flashback musi by\0107 okre\015Blony liczb\0105.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127985390533027147)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'pl'
,p_message_text=>unistr('Sekwencja musi by\0107 okre\015Blona liczb\0105.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127989883721027148)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'pl'
,p_message_text=>'Operator'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127948375782027136)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'pl'
,p_message_text=>unistr('pomara\0144czowy')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128062385029027170)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'pl'
,p_message_text=>'Orientacja'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127950263795027136)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'pl'
,p_message_text=>'Inne'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127916450883027126)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'pl'
,p_message_text=>'Paginacja "%0"'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127930439949027130)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'pl'
,p_message_text=>'Orientacja strony'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127931100407027131)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'pl'
,p_message_text=>'Poziomo'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127931238962027131)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'pl'
,p_message_text=>'Pionowo'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127930313940027130)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'pl'
,p_message_text=>'Rozmiar strony'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127930905642027131)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'pl'
,p_message_text=>'A3'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127930800442027131)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'pl'
,p_message_text=>'A4'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127931032826027131)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'pl'
,p_message_text=>'Niestandardowy'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127930608195027130)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'pl'
,p_message_text=>'Legal'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127930507340027130)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'pl'
,p_message_text=>'Letter'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127930782362027130)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'pl'
,p_message_text=>'Tabloid'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128071249854027173)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'pl'
,p_message_text=>unistr('Procent liczby \0142\0105cznej %0 (%)')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128070408030027173)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'pl'
,p_message_text=>unistr('Procent sumy \0142\0105cznej %0 (%)')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128069458972027172)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'pl'
,p_message_text=>unistr('Procent liczby \0142\0105cznej')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128069348781027172)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'pl'
,p_message_text=>unistr('Procent sumy \0142\0105cznej')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127953860395027137)
,p_name=>'APEXIR_PIE'
,p_message_language=>'pl'
,p_message_text=>unistr('Ko\0142owy')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128019532868027157)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'pl'
,p_message_text=>'Tabela przestawna'
,p_is_js_message=>true
,p_version_scn=>2693189
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128021004143027158)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 agregacj\0119.')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128021252410027158)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna agregowa\0107 z u\017Cyciem kolumny wybranej jako kolumna wiersza.')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128020479754027157)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Kolumny przestawne'
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128020252955027157)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'pl'
,p_message_text=>'Kolumna przestawna: %0'
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128020814518027158)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 kolumn\0119 przestawn\0105.')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127873353923027113)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'pl'
,p_message_text=>unistr('Maksymalna liczba wierszy dla zapytania dot. tabeli przestawnej ogranicza nie liczb\0119 wy\015Bwietlanych wierszy, lecz liczb\0119 wierszy w zapytaniu podstawowym. Zapytanie podstawowe przekracza maksymaln\0105 liczb\0119 wierszy (%0). Prosz\0119 zastosowa\0107 filtr w celu og')
||unistr('raniczenia liczby rekord\00F3w w zapytaniu przestawnym.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128020772347027158)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'pl'
,p_message_text=>'Sortowanie tabeli przestawnej'
,p_is_js_message=>true
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127986791201027147)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'pl'
,p_message_text=>unistr('Kolumna przestawna zawiera zbyt wiele r\00F3\017Cnych warto\015Bci - nie mo\017Cna wygenerowa\0107 kodu SQL przestawiania.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127917799351027126)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'pl'
,p_message_text=>'Widok tabeli przestawnej "%0"'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128043577696027164)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'pl'
,p_message_text=>unistr('Podgl\0105d')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127974006080027144)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128068376763027172)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'pl'
,p_message_text=>'Podstawowy'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128044531036027165)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Raport podstawowy'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127930276159027130)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Do\0142\0105cz tagi u\0142atwie\0144 dost\0119pu')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127891063025027118)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Roz\0142\00F3\017C tekst z formatowaniem')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127999473868027151)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'pl'
,p_message_text=>'Prywatny'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127954418205027138)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'pl'
,p_message_text=>'Publiczny'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127950027886027136)
,p_name=>'APEXIR_RED'
,p_message_language=>'pl'
,p_message_text=>'czerwony'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128096415934027181)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Statyczny ID %0 obszaru nie istnieje.'
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127983581776027146)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127983673383027146)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 wszystkie')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128091802087027179)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 wykres')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127983107901027146)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 przerw\0119 kontroln\0105')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127982814115027146)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 filtr')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127982976866027146)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 Flashback')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128091930246027179)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 "Grupuj wg"')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127983285570027146)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 wyr\00F3\017Cnienie')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128092090344027179)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 tabel\0119 przestawn\0105')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128073153526027173)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'pl'
,p_message_text=>unistr('Usu\0144 raport')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128054924779027168)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'pl'
,p_message_text=>unistr('Zmie\0144 nazw\0119 raportu domy\015Blnego')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127992776507027149)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'pl'
,p_message_text=>unistr('Zmie\0144 nazw\0119 raportu')
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127974349294027144)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Raport'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128071350246027173)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'pl'
,p_message_text=>'Raporty'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127946554085027135)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Zapisany raport interaktywny z aliasem "%0" nie istnieje.'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127999777247027151)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Raport nie istnieje.'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127946607253027135)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'ID %0 zapisanego raportu interaktywnego nie istnieje.'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127991098957027149)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'pl'
,p_message_text=>'Ustawienia raportu'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127915284993027126)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'pl'
,p_message_text=>'Ustawienia raportu "%0"'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127971364605027143)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'pl'
,p_message_text=>'Widok raportu'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127975550912027144)
,p_name=>'APEXIR_RESET'
,p_message_language=>'pl'
,p_message_text=>'Resetuj'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127954605101027138)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'pl'
,p_message_text=>unistr('Przywr\00F3\0107 ustawienia domy\015Blne raportu.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127949803004027136)
,p_name=>'APEXIR_ROW'
,p_message_language=>'pl'
,p_message_text=>'Wiersz'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128067441886027172)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'pl'
,p_message_text=>unistr('Kolumny ROWID nie mo\017Cna u\017Cy\0107 jako kolumny g\0142\00F3wnego klucza \017Ar\00F3d\0142a danych REST.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127982273422027146)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'pl'
,p_message_text=>'Wiersze'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128045243755027165)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'pl'
,p_message_text=>'Liczba wierszy na stronie'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128020591880027158)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Kolumny wiersza'
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128020391417027157)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'pl'
,p_message_text=>'Kolumna wiersza: %0'
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128020951570027158)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 wiersz przestawny.')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128021155205027158)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'pl'
,p_message_text=>unistr('Kolumna wiersza musi si\0119 r\00F3\017Cni\0107 od kolumny przestawnej.')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127996746864027150)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'pl'
,p_message_text=>'Filtr wierszy'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127971489567027143)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'pl'
,p_message_text=>'Wiersz %0 z %1'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127975744457027144)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'pl'
,p_message_text=>'Tekst wiersza zawiera'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127949128702027136)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'pl'
,p_message_text=>'Zapisz'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127986399307027147)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Zapisany raport'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127986296346027147)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'pl'
,p_message_text=>'Zapisany raport = "%0"'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127988426680027148)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'pl'
,p_message_text=>unistr('Ustawienia bie\017C\0105cego raportu b\0119d\0105 u\017Cywane dla wszystkich u\017Cytkownik\00F3w jako domy\015Blne.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128054887473027168)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'pl'
,p_message_text=>unistr('Zapisz raport domy\015Blny')
,p_is_js_message=>true
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127975494105027144)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Zapisz raport'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128092273907027179)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'pl'
,p_message_text=>'Zapisz raport *'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128046219701027165)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'pl'
,p_message_text=>'Szukaj'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127981120914027146)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'pl'
,p_message_text=>'Pasek wyszukiwania'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127914597986027125)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'pl'
,p_message_text=>'Pasek wyszukiwania "%0"'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128092104832027179)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Szukaj: %0'
,p_is_js_message=>true
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128051758731027167)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Wyszukaj raport'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128035724412027162)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>'Wybrane kolumny'
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127950870126027137)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('- Wyb\00F3r kolumny -')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127974714853027144)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r kolumn')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127954327486027138)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>unistr('- Wyb\00F3r funkcji -')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127981913892027146)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('- Wyb\00F3r kolumny "Grupuj wg" -')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128020088096027157)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('- Wyb\00F3r kolumny przestawnej -')
,p_version_scn=>2693189
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128070335722027173)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r wiersza')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128020199780027157)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('- Wyb\00F3r wiersza przestawnego -')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127901668530027122)
,p_name=>'APEXIR_SEND'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Blij')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127924162457027128)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Blij jako e-mail')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127949592838027136)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'pl'
,p_message_text=>'Sekwencja'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127974929486027144)
,p_name=>'APEXIR_SORT'
,p_message_language=>'pl'
,p_message_text=>'Sortuj'
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127984444174027147)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'pl'
,p_message_text=>unistr('Sortuj rosn\0105co')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127984575941027147)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'pl'
,p_message_text=>unistr('Sortuj malej\0105co')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128072538798027173)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'pl'
,p_message_text=>unistr('Porz\0105dek sortowania')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127978831637027145)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'pl'
,p_message_text=>'spacja'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127990056794027148)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'pl'
,p_message_text=>'Status %0'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128043911113027165)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'pl'
,p_message_text=>'Subskrypcja'
,p_is_js_message=>true
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128069706202027172)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'pl'
,p_message_text=>'Koniec'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127888709370027118)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'pl'
,p_message_text=>unistr('Pomi\0144, je\015Bli nie znaleziono \017Cadnych danych')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128069627223027172)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'pl'
,p_message_text=>unistr('Pocz\0105tek')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128070576064027173)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'pl'
,p_message_text=>'Suma %0'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128061403494027170)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'pl'
,p_message_text=>'%0, raport = %1, widok = %2'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127948443767027136)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'pl'
,p_message_text=>'Kolor tekstu'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127967186375027141)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'pl'
,p_message_text=>'dni'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127967056627027141)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'pl'
,p_message_text=>'godz.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127966932804027141)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'pl'
,p_message_text=>'min'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127967358597027142)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'pl'
,p_message_text=>'mies.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127967284384027142)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'pl'
,p_message_text=>'tyg./tydz.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127967424792027142)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'pl'
,p_message_text=>'lat(a)'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128072913340027173)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prze\0142\0105cz')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127983745322027146)
,p_name=>'APEXIR_TOP'
,p_message_language=>'pl'
,p_message_text=>unistr('Na pocz\0105tek')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128066451386027171)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Kolumna niezgrupowana'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127985226454027147)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'pl'
,p_message_text=>unistr('Nazwa wyr\00F3\017Cnienia musi by\0107 unikatowa.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127953175029027137)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('nieobs\0142ugiwany typ danych')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127983825271027147)
,p_name=>'APEXIR_UP'
,p_message_language=>'pl'
,p_message_text=>unistr('W g\00F3r\0119')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127985412384027147)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wprowadzi\0107 poprawny kolor.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127985505739027147)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 wprowadzi\0107 poprawn\0105 mask\0119 formatu.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127950381987027136)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127984369182027147)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Tytu\0142 osi dla warto\015Bci')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127992152598027149)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Wymagana warto\015B\0107')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127953758636027137)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'pl'
,p_message_text=>'Kolumna pionowa'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128062556835027170)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'pl'
,p_message_text=>'Pionowo'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127991465019027149)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietl wykres')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128050064608027166)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C szczeg\00F3\0142y')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128094351010027180)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Raport nie ma zdefiniowanego widoku "%0".'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128050125996027167)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietl "Grupuj wg"')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128049910438027166)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'pl'
,p_message_text=>unistr('Ikony widok\00F3w')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128019818678027157)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietl tabel\0119 przestawn\0105')
,p_version_scn=>2693189
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127991577282027149)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietl raport')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128044187944027165)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'pl'
,p_message_text=>unistr('Co tydzie\0144')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127974253401027144)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Raport roboczy'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128071921728027173)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'pl'
,p_message_text=>'%0 dni'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128071805528027173)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'pl'
,p_message_text=>'%0 godz.'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128071756628027173)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'pl'
,p_message_text=>'%0 min'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128072122752027173)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'pl'
,p_message_text=>'%0 mies.'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128072097779027173)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'pl'
,p_message_text=>'%0 tyg.'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128072266733027173)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'pl'
,p_message_text=>'%0 lat(a)'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128069956523027173)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'pl'
,p_message_text=>'Rok'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127948117164027136)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'pl'
,p_message_text=>unistr('\017C\00F3\0142ty')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127949648470027136)
,p_name=>'APEXIR_YES'
,p_message_language=>'pl'
,p_message_text=>'Tak'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127984158151027147)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 zawiera < lub > (s\0105 to znaki niedozwolone).')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128008025505027154)
,p_name=>'APEX_REGION'
,p_message_language=>'pl'
,p_message_text=>'Obszar'
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127899112295027121)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna rozpakowa\0107 pliku ZIP.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127899001743027121)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono podpisu ko\0144ca katalogu centralnego. Ten plik nie jest plikiem ZIP.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127930198016027130)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'pl'
,p_message_text=>unistr('Naruszenie wst\0119pnego warunku API')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127952271609027137)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna uzyska\0107 warto\015Bci ustawienia "%0" aplikacji, poniewa\017C powi\0105zana opcja kompilacji jest wy\0142\0105czona.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127952192548027137)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna ustawi\0107 warto\015Bci ustawienia "%0" aplikacji, poniewa\017C powi\0105zana opcja kompilacji jest wy\0142\0105czona.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128064799708027171)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107 ustawienia "%0" aplikacji jest niepoprawna')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128064696217027171)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'pl'
,p_message_text=>unistr('\017B\0105dane ustawienie "%0" aplikacji nie zosta\0142o zdefiniowane')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128064845017027171)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015Bci\0105 ustawienia "%0" aplikacji nie mo\017Ce by\0107 Null')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127938729744027133)
,p_name=>'BACK'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127921177782027127)
,p_name=>'BUILDER'
,p_message_language=>'pl'
,p_message_text=>'Konstruktor'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127994797713027150)
,p_name=>'BUTTON LABEL'
,p_message_language=>'pl'
,p_message_text=>'Etykieta przycisku'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127918062148027127)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'pl'
,p_message_text=>'Klasy CSS przycisku'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127956578707027138)
,p_name=>'BUTTON_ID'
,p_message_language=>'pl'
,p_message_text=>unistr('Wygenerowany ID przycisku b\0119dzie albo statycznym ID (o ile zdefiniowano) przycisku, albo nie b\0119dzie wewn\0119trznie wygenerowanym ID w formacie ''B'' || [Wewn\0119trzny ID przycisku]')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127890543162027118)
,p_name=>'CANDLESTICK'
,p_message_language=>'pl'
,p_message_text=>unistr('\015Awiecowy')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128004598527027153)
,p_name=>'CENTER'
,p_message_language=>'pl'
,p_message_text=>unistr('\015Arodek')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127951130994027137)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'pl'
,p_message_text=>unistr('\017B\0105danie %0')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127941130396027134)
,p_name=>'CHECK$'
,p_message_language=>'pl'
,p_message_text=>'selektor wierszy'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128066524451027171)
,p_name=>'CHECKED'
,p_message_language=>'pl'
,p_message_text=>'zaznaczone'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128042969267027164)
,p_name=>'COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Kolumna'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128000534174027152)
,p_name=>'COMMENTS'
,p_message_language=>'pl'
,p_message_text=>'Komentarze'
,p_version_scn=>2693184
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127981561850027146)
,p_name=>'CONTINUE'
,p_message_language=>'pl'
,p_message_text=>'Kontynuuj'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127939017080027133)
,p_name=>'COPYRIGHT'
,p_message_language=>'pl'
,p_message_text=>unistr('Copyright &copy; 1999, %0, Oracle i/lub jej sp\00F3\0142ki powi\0105zane.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127987213801027148)
,p_name=>'COUNT'
,p_message_language=>'pl'
,p_message_text=>'Licznik'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127994265921027150)
,p_name=>'CREATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Utw\00F3rz')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128049647110027166)
,p_name=>'CREATED'
,p_message_language=>'pl'
,p_message_text=>'Utworzono'
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128049730424027166)
,p_name=>'CREATED_BY'
,p_message_language=>'pl'
,p_message_text=>unistr('Tw\00F3rca')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127970606059027143)
,p_name=>'CREATED_ON'
,p_message_language=>'pl'
,p_message_text=>'Utworzono'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127981760947027146)
,p_name=>'CUSTOM'
,p_message_language=>'pl'
,p_message_text=>'Niestandardowe'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127992923076027149)
,p_name=>'CUSTOMIZE'
,p_message_language=>'pl'
,p_message_text=>'Dostosuj'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127994921947027150)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'pl'
,p_message_text=>unistr('Zresetowano dla u\017Cytkownika "%0" preferencje dot. strony.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127995051421027150)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zmieniono dla u\017Cytkownika "%0" preferencje dot. strony.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127994812158027150)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'pl'
,p_message_text=>unistr('Zresetowano dla u\017Cytkownika "%0" preferencje dot. strony.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127955930015027138)
,p_name=>'DAILY'
,p_message_language=>'pl'
,p_message_text=>unistr('Co dzie\0144')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127919320437027127)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wysy\0142any plik jest niepoprawny lub ma niew\0142a\015Bciwe rozszerzenie.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127951382878027137)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'pl'
,p_message_text=>unistr('U\017Cyto niepoprawnego selektora XML lub JSON.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127896423493027120)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'pl'
,p_message_text=>unistr('Profil danych i wys\0142any plik nie zawieraj\0105 \017Cadnej kolumny tabeli docelowej.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128010303000027154)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'pl'
,p_message_text=>unistr('W wys\0142anym pliku nie znaleziono \017Cadnych danych.')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128010447236027154)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'pl'
,p_message_text=>unistr('W wys\0142anym arkuszu roboczym "%0" nie znaleziono \017Cadnych danych.')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127916274376027126)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'pl'
,p_message_text=>'Podany plik nie jest plikiem XLSX.'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127882266348027116)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141adowanie danych zako\0144czone; liczba przetworzonych wierszy: %0')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127884519025027116)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141adowanie danych zako\0144czone; liczba przetworzonych wierszy z 1 b\0142\0119dem: %0')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127884833030027116)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141adowanie danych zako\0144czone; liczba przetworzonych wierszy z %1 b\0142\0119dami: %0')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127884634636027116)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141adowanie danych zako\0144czone; liczba przetworzonych wierszy: 1')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127898920371027121)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141adowanie danych zako\0144czone; liczba przetworzonych wierszy z b\0142\0119dem: 1')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127884754025027116)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141adowanie danych zako\0144czone; liczba przetworzonych wierszy bez b\0142\0119du: 1')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128017473305027157)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'pl'
,p_message_text=>'Kolumna docelowa'
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127924628448027129)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie \0142aduj')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127924756960027129)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas przetwarzania wst\0119pnego')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128017538975027157)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'pl'
,p_message_text=>unistr('Kolumna \017Ar\00F3d\0142owa')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128018374044027157)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'pl'
,p_message_text=>'Format daty/liczby'
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127924447735027128)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'pl'
,p_message_text=>'Wstaw wiersz'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128080573134027176)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie uda\0142o si\0119 pobra\0107 warto\015Bci wyszukiwania.')
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128050299448027167)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'pl'
,p_message_text=>'Mapowanie dane/tabela'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128018448380027157)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'pl'
,p_message_text=>'Wiersz'
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127924859133027129)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Sekwencja: czynno\015B\0107')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128012114771027155)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepowodzenie regu\0142y transformacji')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127924538376027129)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'pl'
,p_message_text=>'Aktualizuj wiersz'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127986800967027147)
,p_name=>'DATE'
,p_message_language=>'pl'
,p_message_text=>'Data'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127959739629027139)
,p_name=>'DAY'
,p_message_language=>'pl'
,p_message_text=>unistr('dzie\0144')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127959834483027139)
,p_name=>'DAYS'
,p_message_language=>'pl'
,p_message_text=>'dni'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128000205951027151)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'pl'
,p_message_text=>unistr('Wykrywanie b\0142\0119d\00F3w nie jest w\0142\0105czone dla tej aplikacji.')
,p_version_scn=>2693184
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128051996098027167)
,p_name=>'DEFAULT'
,p_message_language=>'pl'
,p_message_text=>unistr('Domy\015Blny')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127960552775027139)
,p_name=>'DELETE'
,p_message_language=>'pl'
,p_message_text=>unistr('usu\0144')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127936111777027132)
,p_name=>'DELETE_MSG'
,p_message_language=>'pl'
,p_message_text=>unistr('Czy wykona\0107 t\0119 czynno\015B\0107 usuni\0119cia?')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127915799276027126)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'pl'
,p_message_text=>unistr('Przes\0142oni\0119cia sesji')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127916689074027126)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142\0105cz przes\0142oni\0119cia sesji')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127917556384027126)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142 b\0142\0105d podczas \0142adowania przes\0142oni\0119\0107 sesji.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127917319614027126)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142 b\0142\0105d podczas zapisywania przes\0142oni\0119\0107 sesji.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127917288015027126)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'pl'
,p_message_text=>unistr('Przes\0142oni\0119cia sesji zosta\0142y zapisane. Aby zobaczy\0107 zmiany, prosz\0119 zamkn\0105\0107 to okno dialogowe.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127890469539027118)
,p_name=>'DIAL_PCT'
,p_message_language=>'pl'
,p_message_text=>'Tarczowy (procent)'
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127931455710027131)
,p_name=>'DOWNLOAD'
,p_message_language=>'pl'
,p_message_text=>'Pobierz'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128051057617027167)
,p_name=>'DUP_USER'
,p_message_language=>'pl'
,p_message_text=>unistr('Zduplikowana nazwa u\017Cytkownika na li\015Bcie.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127939886045027133)
,p_name=>'EDIT'
,p_message_language=>'pl'
,p_message_text=>'Edytuj'
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127951073102027137)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono adresu e-mail "%0".'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127933764395027131)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'pl'
,p_message_text=>unistr('Nadawc\0105 tego e-maila jest %0.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128051265243027167)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'pl'
,p_message_text=>unistr('Adres e-mail jest zbyt d\0142ugi. Maksymalna liczba znak\00F3w to 240.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127981431826027146)
,p_name=>'ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128012208867027155)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna ustawi\0107 warto\015Bci \017Ar\00F3d\0142owej elementu dla obszaru obj\0119tego cz\0119\015Bciowym od\015Bwie\017Caniem strony')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127972781698027143)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'pl'
,p_message_text=>unistr('Tw\00F3rca')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127934066073027132)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o wygas\0142o')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127926470182027129)
,p_name=>'FILE_EMPTY'
,p_message_language=>'pl'
,p_message_text=>'Plik jest pusty.'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128016268836027156)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Rozmiar wys\0142anego pliku by\0142 wi\0119kszy ni\017C %0\00A0MB. Prosz\0119 wys\0142a\0107 mniejszy plik.')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127936302397027132)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie uda\0142o si\0119 zidentyfikowa\0107 u\017Cytkownika; nie wys\0142ano jednego lub wi\0119kszej liczby plik\00F3w.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127936407421027132)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Ta instancja nie zezwala na wysy\0142anie plik\00F3w przez niezidentyfikowanych u\017Cytkownik\00F3w.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128016350321027156)
,p_name=>'FILTERS'
,p_message_language=>'pl'
,p_message_text=>'Filtry'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127994337839027150)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142 b\0142\0105d (1)')
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127993566019027149)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142y b\0142\0119dy (%0)')
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127938907733027133)
,p_name=>'FORM_OF'
,p_message_language=>'pl'
,p_message_text=>'%0 z %1'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127977904850027145)
,p_name=>'GO'
,p_message_language=>'pl'
,p_message_text=>'Wykonaj'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128080108232027176)
,p_name=>'HELP'
,p_message_language=>'pl'
,p_message_text=>'Pomoc'
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127921291093027128)
,p_name=>'HOME'
,p_message_language=>'pl'
,p_message_text=>'Strona startowa'
,p_is_js_message=>true
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127959598185027139)
,p_name=>'HOUR'
,p_message_language=>'pl'
,p_message_text=>'godz.'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127959635244027139)
,p_name=>'HOURS'
,p_message_language=>'pl'
,p_message_text=>'godz.'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127941040040027134)
,p_name=>'ICON'
,p_message_language=>'pl'
,p_message_text=>'Ikona "%0"'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127918341930027127)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'pl'
,p_message_text=>'Ikona "Przytnij" - Pomoc'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127919569037027127)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Przeci\0105gaj\0105c ikon\0119, a nast\0119pnie u\017Cywaj\0105c suwaka powi\0119kszenia, mo\017Cna zmieni\0107 jej po\0142o\017Cenie w obr\0119bie ramki.</p>'),
'',
unistr('<p>Podczas wysy\0142ania nowej ikony jej rozmiar zostanie zmieniony, tak aby j\0105 dopasowa\0107 do trzech format\00F3w: ikona ulubionych, ma\0142a ikona i du\017Ca ikona.</p>'),
'',
unistr('<p>Po ustawieniu wska\017Anika na kraw\0119dzi ikony b\0119d\0105 dost\0119pne nast\0119puj\0105ce skr\00F3ty klawiaturowe:</p>'),
'<ul>',
unistr('    <li>Strza\0142ka w lewo: przesuni\0119cie obrazu w lewo*</li>'),
unistr('    <li>Strza\0142ka w g\00F3r\0119: przesuni\0119cie obrazu w g\00F3r\0119*</li>'),
unistr('    <li>Strza\0142ka w prawo: przesuni\0119cie obrazu w prawo*</li>'),
unistr('    <li>Strza\0142ka w d\00F3\0142: przesuni\0119cie obrazu w d\00F3\0142*</li>'),
unistr('    <li>I: powi\0119kszenie</li>'),
'    <li>O: pomniejszenie</li>',
unistr('    <li>L: obr\00F3t w lewo</li>'),
unistr('    <li>R: obr\00F3t w prawo</li>'),
'</ul>',
'',
unistr('<p class="margin-top-md"><em>*Aby szybciej przesuwa\0107, nale\017Cy przytrzymywa\0107 naci\015Bni\0119ty klawisz Shift</em></p>')))
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127925092838027129)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Aby zmieni\0107 po\0142o\017Cenie ikony, mo\017Cna j\0105 przeci\0105gn\0105\0107')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127925125199027129)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'pl'
,p_message_text=>unistr('Aby dostosowa\0107 poziom powi\0119kszenia, mo\017Cna przesun\0105\0107 suwak')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127918128384027127)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Ikona "Edytuj aplikacj\0119"')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127918452316027127)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas zapisywania ikony')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128000818630027152)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'pl'
,p_message_text=>unistr('<p><span class="a-Icon icon-tr-warning"></span> Ta aplikacja u\017Cywa zastanych ikon. Pobranie nowej ikony spowoduje zast\0105pienie wszystkich zastanych ikon.</p>')
,p_version_scn=>2693184
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127919089484027127)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Blij now\0105 ikon\0119')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127995286852027150)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawne uwierzytelnienia logowania'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128096310672027181)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawna warto\015B\0107 parametru: %0')
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127989510371027148)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'pl'
,p_message_text=>unistr('Jak ustawienia domy\015Blne raportu')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127989633047027148)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'pl'
,p_message_text=>'Jak nazwany raport'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127971562548027143)
,p_name=>'IR_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 - b\0142\0105d. %1')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127971289279027143)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna obliczy\0107 nawigacji po formularzu. %0')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127946802908027135)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono raportu interaktywnego.'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127946234122027135)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Obszar raportu interaktywnego nie istnieje w aplikacji %0 (strona %1 i obszar %2).'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127989457820027148)
,p_name=>'IR_STAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietlane tylko dla programist\00F3w')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127977674407027145)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Zapytanie raportu wymaga unikatowego klucza do identyfikowania poszczeg\00F3lnych wierszy. Dostarczonego klucza nie mo\017Cna u\017Cy\0107 dla tego zapytania. Prosz\0119 zdefiniowa\0107 kolumn\0119 unikatowego klucza. %0')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127977758253027145)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'pl'
,p_message_text=>unistr('Zapytanie raportu wymaga unikatowego klucza do identyfikowania poszczeg\00F3lnych wierszy. Dostarczonego klucza nie mo\017Cna u\017Cy\0107 dla tego zapytania. Prosz\0119 - edytuj\0105c atrybuty raportu - zdefiniowa\0107 kolumn\0119 unikatowego klucza. %0')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128018667527027157)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'pl'
,p_message_text=>unistr('wybra\0107 plik')
,p_is_js_message=>true
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128018543679027157)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 tu przeci\0105gn\0105\0107 plik lub')
,p_is_js_message=>true
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127939261443027133)
,p_name=>'ITEMS'
,p_message_language=>'pl'
,p_message_text=>'Elementy'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127972910304027143)
,p_name=>'ITEM_VALUE'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107 elementu')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127987546199027148)
,p_name=>'LABEL'
,p_message_language=>'pl'
,p_message_text=>'Etykieta'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128000108013027151)
,p_name=>'LANGUAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('J\0119zyk')
,p_version_scn=>2693184
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127960229851027139)
,p_name=>'LAST'
,p_message_language=>'pl'
,p_message_text=>'ostatni(a)'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127936212774027132)
,p_name=>'LENGTH'
,p_message_language=>'pl'
,p_message_text=>unistr('D\0142ugo\015B\0107')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127994532661027150)
,p_name=>'LOGIN'
,p_message_language=>'pl'
,p_message_text=>'Zaloguj'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128036131222027162)
,p_name=>'MANAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zarz\0105dzanie')
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128099220914027181)
,p_name=>'MAXIMIZE'
,p_message_language=>'pl'
,p_message_text=>'Maksymalizuj'
,p_is_js_message=>true
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127959331103027139)
,p_name=>'MINUTE'
,p_message_language=>'pl'
,p_message_text=>'min'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127959436343027139)
,p_name=>'MINUTES'
,p_message_language=>'pl'
,p_message_text=>'min'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128051424623027167)
,p_name=>'MISSING_AT'
,p_message_language=>'pl'
,p_message_text=>'Brak "@" w adresie e-mail.'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128051679909027167)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'pl'
,p_message_text=>unistr('Ostrze\017Cenie: W aplikacji %1 nie zdefiniowano dla strony "Okno dialogowe" (%0) \017Cadnego szablonu strony "Okno dialogowe".')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128051325844027167)
,p_name=>'MISSING_DOT'
,p_message_language=>'pl'
,p_message_text=>'Brak "." w domenie adresu e-mail.'
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127997697708027151)
,p_name=>'MODULE'
,p_message_language=>'pl'
,p_message_text=>unistr('Modu\0142')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127951814426027137)
,p_name=>'MONTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Miesi\0105c')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127955715557027138)
,p_name=>'MONTHLY'
,p_message_language=>'pl'
,p_message_text=>unistr('Co miesi\0105c')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127951986512027137)
,p_name=>'MONTHS'
,p_message_language=>'pl'
,p_message_text=>'mies.'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127987199194027148)
,p_name=>'MOVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Przenie\015B')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128057935080027169)
,p_name=>'MOVE_FROM'
,p_message_language=>'pl'
,p_message_text=>unistr('Przenie\015B z')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128058061575027169)
,p_name=>'MOVE_TO'
,p_message_language=>'pl'
,p_message_text=>unistr('Przenie\015B do')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127974111695027144)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas wykonywania operacji usuwania wielu wierszy: wiersz = %0, %1, %2')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127973166984027143)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Ce by\0107 u\017Cytkownikiem publicznym')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127921783062027128)
,p_name=>'NAME'
,p_message_language=>'pl'
,p_message_text=>'Nazwa'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127987315682027148)
,p_name=>'NEW'
,p_message_language=>'pl'
,p_message_text=>'Nowe'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127951644790027137)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'pl'
,p_message_text=>unistr('Mo\017Cna si\0119 zalogowa\0107 do "%0", przechodz\0105c do:')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127951770047027137)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'pl'
,p_message_text=>'Powiadomienie o nowym koncie (%0)'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128080308755027176)
,p_name=>'NEXT'
,p_message_language=>'pl'
,p_message_text=>'Dalej'
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127997510763027151)
,p_name=>'NO'
,p_message_language=>'pl'
,p_message_text=>'Nie'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128094416735027180)
,p_name=>'NOBODY'
,p_message_language=>'pl'
,p_message_text=>'nikt'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127960600764027140)
,p_name=>'NOT'
,p_message_language=>'pl'
,p_message_text=>'Nie'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128003578182027152)
,p_name=>'NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>'Nie Null'
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127973213867027143)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'pl'
,p_message_text=>'Nie %0'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127993081161027149)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'pl'
,p_message_text=>'nie znaleziono danych'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128003050823027152)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono \017Cadnego aktualizowalnego raportu. Operacje aktualizacji i usuwania wielu wierszy mog\0105 by\0107 wykonywane tylko w formularzach tabelarycznych typu "Raport aktualizowalny".')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128003977377027153)
,p_name=>'OK'
,p_message_language=>'pl'
,p_message_text=>'OK'
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127999237630027151)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'pl'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128098154499027181)
,p_name=>'ORA_06550'
,p_message_language=>'pl'
,p_message_text=>'ORA-06550: linia %0, kolumna %1'
,p_version_scn=>2693205
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128049059877027166)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'pl'
,p_message_text=>unistr('Jest u\017Cywana nieaktualna przegl\0105darka internetowa. List\0119 obs\0142ugiwanych przegl\0105darek mo\017Cna znale\017A\0107 w podr\0119czniku Oracle APEX Installation Guide.')
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127944035069027135)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zosta\0142 za\017C\0105dany niepoprawny zbi\00F3r wierszy - \017Ar\00F3d\0142o danych raportu zosta\0142o zmodyfikowane.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127966036989027141)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba poda\0107 poprawny numer strony, na przyk\0142ad p?n=1234.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127970284740027142)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'pl'
,p_message_text=>'Dalej'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127970307714027142)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'pl'
,p_message_text=>unistr('Nast\0119pny zbi\00F3r')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127970442788027142)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127970500479027142)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'pl'
,p_message_text=>unistr('Poprzedni zbi\00F3r')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128080255981027176)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r paginacji')
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128010291524027154)
,p_name=>'PASSWORD'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127950970613027137)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o do "%0" zosta\0142o zmienione.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127938630118027133)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o nie spe\0142nia regu\0142 z\0142o\017Cono\015Bci has\0142a obowi\0105zuj\0105cych dla tego serwisu.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127937734110027133)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nowe has\0142o musi si\0119 r\00F3\017Cni\0107 od starego przynajmniej %0 znakami.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127938335556027133)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o nie mo\017Ce zawiera\0107 nazwy u\017Cytkownika.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127938507146027133)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o zawiera niedozwolone zwyk\0142e s\0142owo.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127938450363027133)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o nie mo\017Ce zawiera\0107 nazwy obszaru roboczego.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127937641629027133)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o musi si\0119 sk\0142ada\0107 z przynajmniej nast\0119puj\0105cej liczby znak\00F3w: %0')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127937873755027133)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o musi zawiera\0107 przynajmniej jedn\0105 liter\0119 (%0).')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127938255116027133)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o musi zawiera\0107 przynajmniej jedn\0105 ma\0142\0105 liter\0119.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127937961739027133)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o musi zawiera\0107 przynajmniej jedn\0105 cyfr\0119 (0123456789).')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127938055347027133)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o musi zawiera\0107 przynajmniej jeden znak przestankowy (%0).')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127938172703027133)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o musi zawiera\0107 przynajmniej jedn\0105 wielk\0105 liter\0119.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127951400965027137)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Powiadomienie o zresetowaniu has\0142a')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127936559793027132)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Tego has\0142a nie mo\017Cna u\017Cy\0107, poniewa\017C by\0142o ono u\017Cywane w ci\0105gu %0 ostatnich dni.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127933233201027131)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Wykres procentowy'
,p_is_js_message=>true
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128024824050027159)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'pl'
,p_message_text=>'Elementy'
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128024958262027159)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'pl'
,p_message_text=>'Element'
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127999044300027151)
,p_name=>'PERCENT'
,p_message_language=>'pl'
,p_message_text=>'Procent'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127968302820027142)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 si\0119 skontaktowa\0107 z administratorem.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128080416213027176)
,p_name=>'PREVIOUS'
,p_message_language=>'pl'
,p_message_text=>'Wstecz'
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128017039867027156)
,p_name=>'PRINT'
,p_message_language=>'pl'
,p_message_text=>'Drukuj'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127997830957027151)
,p_name=>'PRIVILEGES'
,p_message_language=>'pl'
,p_message_text=>'Uprawnienia'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127966445892027141)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'pl'
,p_message_text=>unistr('Odwo\0142ania do obszaru')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127987409378027148)
,p_name=>'REPORT'
,p_message_language=>'pl'
,p_message_text=>'Raport'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127997776085027151)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'pl'
,p_message_text=>'Okres raportowania'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128080676949027176)
,p_name=>'REPORT_LABEL'
,p_message_language=>'pl'
,p_message_text=>'Raport: %0'
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127998447328027151)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'pl'
,p_message_text=>'Podsumowanie raportu'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127944182872027135)
,p_name=>'RESET'
,p_message_language=>'pl'
,p_message_text=>unistr('Resetuj paginacj\0119')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127972818395027143)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Resetuj paginacj\0119')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128002901862027152)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'pl'
,p_message_text=>unistr('Resetuj has\0142o')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127978764585027145)
,p_name=>'RESTORE'
,p_message_language=>'pl'
,p_message_text=>unistr('Odtw\00F3rz')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128012331953027155)
,p_name=>'RESULTS'
,p_message_language=>'pl'
,p_message_text=>'Wyniki'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128004067839027153)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Powr\00F3t do aplikacji.')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128004437327027153)
,p_name=>'RIGHT'
,p_message_language=>'pl'
,p_message_text=>'Po prawej'
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128036479267027162)
,p_name=>'ROW'
,p_message_language=>'pl'
,p_message_text=>'Wiersz %0'
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127987097619027147)
,p_name=>'ROW_COUNT'
,p_message_language=>'pl'
,p_message_text=>'Liczba wierszy'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127876836537027114)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'pl'
,p_message_text=>'Pytanie do Oracle'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127877102878027114)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'pl'
,p_message_text=>'Zamknij pytanie do Oracle'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127877461167027114)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'pl'
,p_message_text=>unistr('Lista powiadomie\0144')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127877014034027114)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Otw\00F3rz pytanie do Oracle')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127877376040027114)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'pl'
,p_message_text=>'Mapowanie produktu'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127877203977027114)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'pl'
,p_message_text=>'Lista sugestii'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127878110422027114)
,p_name=>'RW_CLEAR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyczy\015B\0107')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127878038323027114)
,p_name=>'RW_CLOSE'
,p_message_language=>'pl'
,p_message_text=>'Zamknij'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127877891239027114)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietl wi\0119cej')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127878281931027114)
,p_name=>'RW_GO_TO'
,p_message_language=>'pl'
,p_message_text=>unistr('Przejd\017A do')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127877660675027114)
,p_name=>'RW_GP_STEP'
,p_message_language=>'pl'
,p_message_text=>'Etap'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127877761955027114)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'pl'
,p_message_text=>'z'
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127877593745027114)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'pl'
,p_message_text=>unistr('Prze\0142\0105cz wy\015Bwietlanie etap\00F3w')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127876639995027114)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'pl'
,p_message_text=>unistr('Ukryj has\0142o')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127877992993027114)
,p_name=>'RW_OPEN'
,p_message_language=>'pl'
,p_message_text=>'Otwarcie'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127876436480027114)
,p_name=>'RW_ORACLE'
,p_message_language=>'pl'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127876521336027114)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C has\0142o')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127878365706027114)
,p_name=>'RW_START'
,p_message_language=>'pl'
,p_message_text=>unistr('Pocz\0105tek')
,p_is_js_message=>true
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128003435279027152)
,p_name=>'SAVE'
,p_message_language=>'pl'
,p_message_text=>'Zapisz'
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127999604724027151)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'pl'
,p_message_text=>unistr('Alternatywny domy\015Blny')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128000002760027151)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'pl'
,p_message_text=>'Opis'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127999587909027151)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'pl'
,p_message_text=>unistr('Podstawowy domy\015Blny')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128000344581027151)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'pl'
,p_message_text=>unistr('Liczba dost\0119pnych wierszy przekracza %0. Aby wy\015Bwietli\0107 wi\0119cej wierszy, prosz\0119 zwi\0119kszy\0107 warto\015B\0107 selektora wierszy.')
,p_version_scn=>2693184
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128067726427027172)
,p_name=>'SEARCH'
,p_message_language=>'pl'
,p_message_text=>'Szukaj'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127959277192027139)
,p_name=>'SECONDS'
,p_message_language=>'pl'
,p_message_text=>'s'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127999113952027151)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'pl'
,p_message_text=>unistr('Zob. za\0142\0105czone')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128059771533027169)
,p_name=>'SELECT_ROW'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyb\00F3r wiersza')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127998859681027151)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\0142\0105cz tryb czytnika ekranu')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127998975752027151)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'pl'
,p_message_text=>unistr('W\0142\0105cz tryb czytnika ekranu')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127995145251027150)
,p_name=>'SHOW'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128061505730027170)
,p_name=>'SHOW_ALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Poka\017C wszystkie')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128086381177027177)
,p_name=>'SIGN_IN'
,p_message_language=>'pl'
,p_message_text=>'Zaloguj'
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128037295266027163)
,p_name=>'SIGN_OUT'
,p_message_language=>'pl'
,p_message_text=>'Wyloguj'
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127988065880027148)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0 dni temu'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127995612175027150)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'%0 dni od teraz'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127987955230027148)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0 godz. temu'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127995501522027150)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'%0 godz. od teraz'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127987899258027148)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0 min temu'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127995483201027150)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'%0 min od teraz'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127988200703027148)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0 mies. temu'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127995836151027150)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'%0 mies. od teraz'
,p_is_js_message=>true
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127996046214027150)
,p_name=>'SINCE_NOW'
,p_message_language=>'pl'
,p_message_text=>'Teraz'
,p_is_js_message=>true
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127987709932027148)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0 s temu'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127995355921027150)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'%0 s od teraz'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127988128273027148)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0 tyg. temu'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127995744256027150)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'%0 tyg. od teraz'
,p_is_js_message=>true
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127988303334027148)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'pl'
,p_message_text=>'%0 lat(a) temu'
,p_is_js_message=>true
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127995916952027150)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'pl'
,p_message_text=>'%0 lat(a) od teraz'
,p_is_js_message=>true
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127981829385027146)
,p_name=>'STANDARD'
,p_message_language=>'pl'
,p_message_text=>'Standardowe'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127998721654027151)
,p_name=>'START_DATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Data pocz\0105tkowa')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127933936270027132)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'pl'
,p_message_text=>unistr('Ta wiadomo\015B\0107 e-mail jest wysy\0142ana z subskrypcji raportu interaktywnego, utworzonej przez u\017Cytkownika %0.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128095533328027180)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'pl'
,p_message_text=>'Subskrypcje'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128044995072027165)
,p_name=>'TAB'
,p_message_language=>'pl'
,p_message_text=>'Tabulator'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127959194263027139)
,p_name=>'TITLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Tytu\0142')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127938821789027133)
,p_name=>'TODAY'
,p_message_language=>'pl'
,p_message_text=>'Dzisiaj'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127998379024027151)
,p_name=>'TOTAL'
,p_message_language=>'pl'
,p_message_text=>'Razem'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127940176459027133)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Mo\017Cna wybra\0107 maksymalnie %0 kolumn(y).')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127895973630027120)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Zwi\0144 wszystkie')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127896510018027120)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'pl'
,p_message_text=>unistr('Zwi\0144 wszystkie poni\017Cej')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127895516404027120)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Rozwi\0144 wszystkie')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127896219358027120)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'pl'
,p_message_text=>unistr('Rozwi\0144 wszystkie poni\017Cej')
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127896748709027120)
,p_name=>'TREE.REPARENT'
,p_message_language=>'pl'
,p_message_text=>'Zmiana rodzica'
,p_is_js_message=>true
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128018876330027157)
,p_name=>'TREES'
,p_message_language=>'pl'
,p_message_text=>'Drzewa'
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128061697299027170)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'pl'
,p_message_text=>'Wymagane'
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127982559294027146)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'pl'
,p_message_text=>'Brak autoryzacji'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128032728328027161)
,p_name=>'UNAVAILABLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Niedost\0119pne')
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127996451368027150)
,p_name=>'UNKNOWN'
,p_message_language=>'pl'
,p_message_text=>'Nieznane'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127934882770027132)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Wyst\0105pi\0142 nieznany b\0142\0105d identyfikacji.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127937032105027132)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie chc\0105c ju\017C otrzymywa\0107 e-maili, prosz\0119 - w celu zarz\0105dzania swoj\0105 subskrypcj\0105 - klikn\0105\0107 <a href="%0">desubskrybuj</a>.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127933855712027131)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie chc\0105c ju\017C otrzymywa\0107 e-maili, prosz\0119 - w celu zarz\0105dzania swoj\0105 subskrypcj\0105 - przej\015B\0107 pod nast\0119puj\0105cy adres URL:')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127973375608027143)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('nieobs\0142ugiwany typ danych')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127960447077027139)
,p_name=>'UPDATE'
,p_message_language=>'pl'
,p_message_text=>'aktualizuj'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127959026566027139)
,p_name=>'UPDATED'
,p_message_language=>'pl'
,p_message_text=>'Zaktualizowano'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127902244368027122)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'pl'
,p_message_text=>'Uaktualnianie w toku'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127902549810027122)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'pl'
,p_message_text=>'Trwa uaktualnianie Oracle APEX do nowszej wersji. Proces ten zajmuje zwykle maksymalnie 3 minuty.'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127965875066027141)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'pl'
,p_message_text=>unistr('\017B\0105dany URL jest obj\0119ty zakazem dost\0119pu. Prosz\0119 si\0119 skontaktowa\0107 z administratorem.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127986939293027147)
,p_name=>'USER'
,p_message_language=>'pl'
,p_message_text=>unistr('U\017Cytkownik')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128010125970027154)
,p_name=>'USERNAME'
,p_message_language=>'pl'
,p_message_text=>unistr('Nazwa u\017Cytkownika')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128051574654027167)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'pl'
,p_message_text=>unistr('Nazwa u\017Cytkownika jest zbyt d\0142uga. Maksymalna liczba znak\00F3w to %0.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127994022670027150)
,p_name=>'USERS'
,p_message_language=>'pl'
,p_message_text=>unistr('u\017Cytkownicy')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128051168228027167)
,p_name=>'USER_EXISTS'
,p_message_language=>'pl'
,p_message_text=>unistr('Nazwa u\017Cytkownika ju\017C istnieje.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128064972112027171)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Zdj\0119cie profilowe u\017Cytkownika %0')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127926835865027129)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'pl'
,p_message_text=>'Automatyzacja - %0'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127925398423027129)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'pl'
,p_message_text=>'Strona %0 - %1 '
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127928252846027130)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'pl'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127928314438027130)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'pl'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127927252310027129)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'pl'
,p_message_text=>'Konfiguracja wyszukiwania - %0'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127927106116027129)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'pl'
,p_message_text=>unistr('Wsp\00F3\0142u\017Cytkowana dynamiczna lista warto\015Bci - %0')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127926958383027129)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'pl'
,p_message_text=>'Definicja zadania - %0'
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127925432161027129)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'pl'
,p_message_text=>'Workflow - %0 '
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127947564354027136)
,p_name=>'VALID'
,p_message_language=>'pl'
,p_message_text=>'Poprawne'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127939190065027133)
,p_name=>'VALIDATIONS'
,p_message_language=>'pl'
,p_message_text=>'Weryfikacje'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127999886561027151)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 warto\015B\0107')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128046199136027165)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 warto\015B\0107 dla "%0"')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127968724673027142)
,p_name=>'VERTICAL'
,p_message_language=>'pl'
,p_message_text=>'pionowo'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127960383407027139)
,p_name=>'VIEW'
,p_message_language=>'pl'
,p_message_text=>unistr('wy\015Bwietl')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127994172273027150)
,p_name=>'VIEWS'
,p_message_language=>'pl'
,p_message_text=>'widoki'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128000686780027152)
,p_name=>'VIEW_ALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietl wszystkie')
,p_version_scn=>2693184
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127940575047027133)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'pl'
,p_message_text=>unistr('\0141\0105cze "Wizualnie ukryte"')
,p_is_js_message=>true
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127981381336027146)
,p_name=>'WARNING'
,p_message_language=>'pl'
,p_message_text=>unistr('Ostrze\017Cenie')
,p_is_js_message=>true
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127959939353027139)
,p_name=>'WEEK'
,p_message_language=>'pl'
,p_message_text=>unistr('tydzie\0144')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127955865834027138)
,p_name=>'WEEKLY'
,p_message_language=>'pl'
,p_message_text=>unistr('Co tydzie\0144')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127960000435027139)
,p_name=>'WEEKS'
,p_message_language=>'pl'
,p_message_text=>'tyg./tydz.'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127999990979027151)
,p_name=>'WELCOME_USER'
,p_message_language=>'pl'
,p_message_text=>'Witamy: %0'
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127998161245027151)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'pl'
,p_message_text=>unistr('Wykryto niepoprawn\0105 warto\015B\0107; prosz\0119 sprawdzi\0107 wprowadzone dane.')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127998235610027151)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wykryto niepoprawn\0105 warto\015B\0107; prosz\0119 sprawdzi\0107 wprowadzone dane.')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127936098094027132)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wykryto niepoprawn\0105 warto\015B\0107 daty; prosz\0119 sprawdzi\0107 format daty.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127998050665027151)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'pl'
,p_message_text=>unistr('Wykryto niepoprawn\0105 warto\015B\0107 liczbow\0105; prosz\0119 sprawdzi\0107 format liczby.')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127947162765027135)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'pl'
,p_message_text=>unistr('Wykryto niepoprawn\0105 warto\015B\0107 znacznika czasu; prosz\0119 sprawdzi\0107 format znacznika czasu.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127971697418027143)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna powi\0105za\0107 "%0". Prosz\0119 uj\0105\0107 wielobajtowe elementy w cudzys\0142\00F3w oraz upewni\0107 si\0119, \017Ce d\0142ugo\015B\0107 elementu nie przekracza 30 bajt\00F3w. Dla element\00F3w o d\0142ugo\015Bci przekraczaj\0105cej 30 bajt\00F3w prosz\0119 u\017Cy\0107 sk\0142adni v().')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127961479291027140)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'pl'
,p_message_text=>unistr('Odmowa dost\0119pu ze wzgl\0119du na kontrol\0119 bezpiecze\0144stwa (%0)')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127963966059027141)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Aplikacja niedost\0119pna')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127962356849027140)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono aplikacji.'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127962490148027140)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'pl'
,p_message_text=>'aplikacja=%0 obszar roboczy=%1'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127962809304027140)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Dost\0119p do tej aplikacji jest ograniczony; prosz\0119 spr\00F3bowa\0107 p\00F3\017Aniej.')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127962742206027140)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'pl'
,p_message_text=>unistr('Dost\0119p do tej aplikacji jest ograniczony do programist\00F3w aplikacji; prosz\0119 spr\00F3bowa\0107 p\00F3\017Aniej.')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127961985291027140)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('ERR-7744 Nie mo\017Cna przetworzy\0107 odga\0142\0119zienia do funkcji zwracaj\0105cej URL.')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127961890393027140)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('ERR-7744 Nie mo\017Cna przetworzy\0107 odga\0142\0119zienia do funkcji zwracaj\0105cej stron\0119.')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127962183290027140)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('ERR-1430 Nieobs\0142ugiwane wywo\0142anie pokazania z procesu strony: G_FLOW_STEP_ID (%0).')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127963220384027140)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('ERR-1018 B\0142\0105d podczas czyszczenia pami\0119ci podr\0119cznej etapu.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127961618191027140)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'pl'
,p_message_text=>'ERR-1005 Nieznany typ obliczenia.'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127962523767027140)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'pl'
,p_message_text=>'ERR-1201 Nie ustawiono ID sesji dla identyfikacji niestandardowej.'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127962672092027140)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'pl'
,p_message_text=>'strona=%0'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127962262455027140)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('ERR-7620 Nie mo\017Cna ustali\0107 obszaru roboczego dla aplikacji (%0).')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127942772541027134)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'pl'
,p_message_text=>'Edytuj'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127961369903027140)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'pl'
,p_message_text=>'ERR-1802 Nie znaleziono ID elementu "%0"'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127961081447027140)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'pl'
,p_message_text=>'ERR-1002 Nie znaleziono ID elementu "{%0}" w aplikacji "%1".'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127961186900027140)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'pl'
,p_message_text=>unistr('Nieoczekiwany b\0142\0105d, nie znaleziono nazwy elementu na poziomie aplikacji lub na poziomie strony.')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127961531169027140)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'pl'
,p_message_text=>'To jest pierwsza strona danych.'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127978023358027145)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'pl'
,p_message_text=>unistr('ID %0 elementu nie okre\015Bla elementu zdefiniowanego na bie\017C\0105cej stronie.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127935672889027132)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna ustawi\0107 elementu, przekazuj\0105c argumenty do aplikacji.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127935972461027132)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'pl'
,p_message_text=>'(Nie podano sumy kontrolnej)'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127935412705027132)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'pl'
,p_message_text=>unistr('Element mo\017Cna ustawi\0107, gdy towarzyszy mu suma kontrolna "zak\0142adka poziomu u\017Cytkownika".')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127935338284027132)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'pl'
,p_message_text=>unistr('Element mo\017Cna ustawi\0107, gdy towarzyszy mu suma kontrolna "zak\0142adka poziomu aplikacji".')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127935591532027132)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'pl'
,p_message_text=>unistr('Element mo\017Cna ustawi\0107, gdy towarzyszy mu suma kontrolna "sesja".')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127935264605027132)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'pl'
,p_message_text=>'Element nie jest chroniony.'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127963383956027140)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'pl'
,p_message_text=>unistr('Strona pomocy nie jest dost\0119pna.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127951215164027137)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'pl'
,p_message_text=>unistr('Obszar roboczy "%0" nie ma uprawnie\0144 do rozk\0142adu jako schemat %1.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127961769964027140)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('ERR-1010 Przekroczono limit rekursji podczas przetwarzania akceptacji odga\0142\0119zienia do strony. %0')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127918230172027127)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Strona niedost\0119pna. Nie mo\017Cna uruchomi\0107 wzorca strony.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127935831932027132)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'pl'
,p_message_text=>unistr('Tej strony nie mo\017Cna wywo\0142a\0107 - aby pokaza\0107 procedur\0119 - u\017Cywaj\0105c adresu URL b\0105d\017A metody GET lub POST. Stron\0119 t\0119 trzeba wywo\0142a\0107, u\017Cywaj\0105c odga\0142\0119zienia typu "Odga\0142\0119zienie do strony".')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128020644929027158)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas pr\00F3by zapisania warto\015Bci nieliczbowej w elemencie "%0". ')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127952930580027137)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'pl'
,p_message_text=>unistr('Schemat "%0" rozk\0142adu aplikacji nie istnieje w bazie danych.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127953039597027137)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'pl'
,p_message_text=>unistr('Konta w obszarze roboczym INTERNAL mog\0105 by\0107 u\017Cywane tylko do uzyskiwania dost\0119pu do &PRODUCT_NAME. <a href="%0">Us\0142ugi administracyjne</a>.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127960973386027140)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('ERR-1029 Nie mo\017Cna sk\0142adowa\0107 informacji o sesji. Sesja=%0, element=%1')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127964098391027141)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna zatrzyma\0107 \015Bledzenia: %0')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127961268331027140)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nieoczekiwany b\0142\0105d')
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127972041085027143)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d w update_substitution_cache: %0')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127964159437027141)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Aby mo\017Cna by\0142o wy\015Bwietli\0107 pomoc, trzeba okre\015Bli\0107 aplikacj\0119 i stron\0119.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127985894364027147)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>'Nie znaleziono automatyzacji.'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127921390543027128)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d zapytania automatyzacji: %0')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127965289249027141)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'pl'
,p_message_text=>'Skasowane sesje: %0.'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127906581317027123)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna wykona\0107 kodu %0. Kod ten nie jest obs\0142ugiwany przez baz\0119 danych albo nie zosta\0142 w\0142\0105czony przez parametr MLE_LANGUAGES instancji.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127904123939027122)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Motor wieloj\0119zyczny nie jest dost\0119pny w tej wersji bazy danych.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127943381103027134)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Tablica kolekcji aplikacji nie mo\017Ce mie\0107 warto\015Bci Null')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127943116476027134)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Podany numer (%0) atrybutu jest niepoprawny. Numer atrybutu musi si\0119 zawiera\0107 w przedziale od 1 do %1.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127943634335027134)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'pl'
,p_message_text=>unistr('Kolekcja aplikacji ju\017C istnieje')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127943491101027134)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Nazwa kolekcji nie mo\017Ce mie\0107 warto\015Bci Null')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127943546588027134)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Nazwa kolekcji nie mo\017Ce przekracza\0107 255 znak\00F3w')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127942905710027134)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>'Kolekcja "%0" aplikacji nie istnieje'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127943709356027134)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'pl'
,p_message_text=>'Kursor jeszcze nie jest otwarty'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127943023487027134)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Sekwencja "%0" element\00F3w nie istnieje w kolekcji "%1" aplikacji'),
''))
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127943273073027134)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Sekwencja "%0" element\00F3w nie istnieje w kolekcji "%1" aplikacji'),
''))
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127896067898027120)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'pl'
,p_message_text=>unistr('Algorytm %0 nie jest obs\0142ugiwany dla ECDSA.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127895759956027120)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'pl'
,p_message_text=>unistr('Krzywa eliptyczna %0 nie jest obs\0142ugiwana.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128021479869027158)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Funkcja kryptograficzna "%0" nie jest obs\0142ugiwana w tym systemie.')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128073723694027174)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Przetestowano u\0142atwienia dost\0119pu')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127964739448027141)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'pl'
,p_message_text=>'Zamknij'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127964873312027141)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'pl'
,p_message_text=>'Opcje dostosowywania strony'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127964926760027141)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'pl'
,p_message_text=>unistr('Domy\015Blne')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127965087600027141)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietlane')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127965128010027141)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'pl'
,p_message_text=>'Ukryte'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127964578765027141)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'pl'
,p_message_text=>unistr('Prosz\0119 zaznaczy\0107 obszary, kt\00F3re maj\0105 zosta\0107 zawarte na stronie. Zaznaczone obszary mog\0105 nie zosta\0107 wy\015Bwietlone, je\015Bli jest to wykonywane w niew\0142a\015Bciwym kontek\015Bcie aplikacji albo je\015Bli bie\017C\0105cy u\017Cytkownik nie ma odpowiednich uprawnie\0144.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127964686231027141)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'pl'
,p_message_text=>unistr('Tej strony nie mo\017Cna dostosowywa\0107.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128074043197027174)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'pl'
,p_message_text=>unistr('Mo\017Cna spersonalizowa\0107 wygl\0105d tej aplikacji, zmieniaj\0105c styl motywu. Prosz\0119 wybra\0107 z poni\017Cszej listy styl motywu, po czym klikn\0105\0107 "Zastosuj zmiany".')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128074866456027174)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'pl'
,p_message_text=>unistr('Wy\015Bwietlanie obszaru')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128073933258027174)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'pl'
,p_message_text=>unistr('U\017Cyj stylu domy\015Blnego aplikacji')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128073817273027174)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Wygl\0105d ')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128018064269027157)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>unistr('Indeks kolumny, do kt\00F3rego odwo\0142uje si\0119 agregacja %0, nie istnieje.')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127910712598027124)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Do\0142\0105czanie eksportu danych nie jest obs\0142ugiwane dla formatu "%0".')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127873743605027113)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Wynik w postaci obiektu CLOB nie jest obs\0142ugiwany dla formatu "%0".')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128017773229027157)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'pl'
,p_message_text=>unistr('Podzia\0142 kolumn musi si\0119 znajdowa\0107 na pocz\0105tku tablicy kolumn.')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128017855953027157)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>unistr('Indeks grupy kolumn, do kt\00F3rego odwo\0142uje si\0119 %0, nie istnieje.')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127924933027027129)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'pl'
,p_message_text=>'eksportuj'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127932125772027131)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'pl'
,p_message_text=>unistr('Gdy jako serwer wydruku jest u\017Cywany ORDS, formatem eksportu musi by\0107 XML.')
,p_version_scn=>2693175
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128018112231027157)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>unistr('Indeks kolumny, do kt\00F3rego odwo\0142uje si\0119 wyr\00F3\017Cnienie %0, nie istnieje.')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127921500379027128)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawny format eksportu: %0'
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128017904918027157)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>unistr('Indeks grupy nadrz\0119dnej, do kt\00F3rego odwo\0142uje si\0119 %0, nie istnieje.')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128043103618027164)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Kolumna %1 z tabeli %0 jest kolumn\0105 to\017Csamo\015Bci "GENERATED ALWAYS". Prosz\0119 si\0119 upewni\0107, \017Ce \017Cadna kolumna \017Ar\00F3d\0142owa nie zosta\0142a w oknie dialogowym "Konfiguracja" zmapowana na kolumn\0119 %1.')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127954792920027138)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'pl'
,p_message_text=>unistr('Podany interwa\0142 zatwierdzania jest za ma\0142y.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127954864632027138)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie podano kolumn do \0142adowania danych.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127956131224027138)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono kolumn dla selektora wierszy "%0". Prosz\0119 spr\00F3bowa\0107 u\017Cy\0107 automatycznego wykrywania albo sprawdzi\0107 struktur\0119 JSON.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127965545471027141)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('W pliku XLSX nie znaleziono \017Cadnych arkuszy roboczych.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127910601135027124)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'pl'
,p_message_text=>unistr('\017B\0105dana liczba poziom\00F3w hierarchii do wykrycia (%0) przekracza maksymaln\0105 liczb\0119 wynosz\0105c\0105 %1.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127965406049027141)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'pl'
,p_message_text=>unistr('Podany arkusz roboczy nie wyst\0119puje w pliku XLSX.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127943806467027134)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'pl'
,p_message_text=>unistr('Bie\017C\0105ca wersja danych w bazie danych uleg\0142a zmianie, poniewa\017C u\017Cytkownik zainicjowa\0142 proces aktualizacji.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127946778061027135)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas aktualizowania kolumn raportu: %0')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128057271838027169)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna przekszta\0142ci\0107: %0 w SDO_GEOMETRY.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127993729700027149)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'pl'
,p_message_text=>unistr('Kolumny %0 o typie danych %1 nie mo\017Cna przekszta\0142ci\0107 w VARCHAR2.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128001155336027152)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('W \017Ar\00F3dle danych nie znaleziono kolumny "%0" okre\015Blonej dla atrybutu "%1".')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127937242301027132)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'pl'
,p_message_text=>unistr('Typ filtra "%0" nie jest obs\0142ugiwany dla kolumn wielowarto\015Bciowych.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128060716772027170)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawny filtr "mi\0119dzy".')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127916340985027126)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('W kolumnie "%0", w wierszu #%1 nie znaleziono warto\015Bci "%2".')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127913037123027125)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'pl'
,p_message_text=>'Nie istnieje kolumna "%0" lub wiersz #%1.'
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127899634567027121)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'pl'
,p_message_text=>unistr('Okre\015Blono niepoprawny typ listy warto\015Bci (LOV).')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127899588736027121)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawny typ zapytania. Typem zapytania musi by\0107 tabela, zapytanie SQL lub funkcja PL/SQL zwracaj\0105ca zapytanie SQL.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127993821126027149)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Nie uda\0142o si\0119 wykona\0107 analizy sk\0142adniowej zapytania!'),
'%0'))
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128001257496027152)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Podana dla atrybutu "%1" pozycja "%0" kolumny nie zosta\0142a znaleziona w instrukcji SQL.')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127891289689027118)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'pl'
,p_message_text=>unistr('W filtrze wielowarto\015Bciowym u\017Cyto zbyt wiele element\00F3w.')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128001047334027152)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie okre\015Blono kolumny dla atrybutu "%0".')
,p_version_scn=>2693184
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127899453150027121)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Tre\015B\0107 funkcji PL/SQL nie zwr\00F3ci\0142a warto\015Bci.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128016834072027156)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'pl'
,p_message_text=>unistr('\0179r\00F3d\0142o danych REST nie zawiera funkcji operacji obs\0142ugi \017C\0105danej czynno\015Bci DML.')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128058518676027169)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('Filtry zakresu s\0105 obs\0142ugiwane tylko w przypadku danych typu NUMBER, DATE lub TIMESTAMP.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127879429326027115)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepowodzenie \017C\0105dania: %0')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127882958887027116)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'pl'
,p_message_text=>unistr('Konwersja GeoJSON na SDO_GEOMETRY (kolumna %0) nie jest dost\0119pna w tej bazie danych.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127886359304027117)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'pl'
,p_message_text=>unistr('Konwersja SDO_GEOMETRY (kolumna %0) nie jest obs\0142ugiwana dla \017Ar\00F3de\0142 danych XML.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127910425496027124)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'pl'
,p_message_text=>unistr('Znak %0 nie jest obs\0142ugiwany jako separator warto\015Bci.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128058682595027169)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Tej funkcji nie mo\017Cna u\017Cy\0107 w kontek\015Bcie zapytania.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127886479593027117)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Niezgodno\015B\0107 typu danych kolumny.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127919960436027127)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'pl'
,p_message_text=>unistr('To \017Ar\00F3d\0142o danych nie obs\0142uguje zmian wielu wierszy.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127899377613027121)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'pl'
,p_message_text=>unistr('Przekroczono limity wi\0105za\0144 ORDS OUT. Prosz\0119 zmniejszy\0107 liczb\0119 wierszy DML.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128002084866027152)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Nie uda\0142o si\0119 przeprowadzi\0107 analizy sk\0142adniowej odpowiedzi JSON, otrzymanej z odleg\0142ego serwera: '),
'%0'))
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127899224830027121)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'pl'
,p_message_text=>'Nieznany lub niepoprawny typ kontekstu.'
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127923329377027128)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'pl'
,p_message_text=>unistr('Nieobs\0142ugiwane sk\0142adniki eksportu mo\017Cliwego do odczytu: %0')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128021342341027158)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Ten typ pliku nie jest obs\0142ugiwany przez analizator sk\0142adni.')
,p_version_scn=>2693190
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127972117565027143)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nieautoryzowany dost\0119p (nie ustawiono wwv_flow_api.set_credentials).')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127947015502027135)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'pl'
,p_message_text=>unistr('Obszar roboczy nie zosta\0142a utworzony, poniewa\017C ju\017C istnieje.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127946923496027135)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'pl'
,p_message_text=>unistr('Grupa u\017Cytkownik\00F3w nie zosta\0142a utworzona, poniewa\017C ju\017C istnieje.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127958328322027139)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'pl'
,p_message_text=>unistr('Wykryto zduplikowan\0105 nazw\0119 u\017Cytkownika dla "%0".')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127958454498027139)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas \0142adowania u\017Cytkownik\00F3w. Niepowodzenie przy u\017Cytkowniku %0.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127969298966027142)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'pl'
,p_message_text=>unistr('Za\0142adowano by %0 u\017Cytkownik\00F3w.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127969063307027142)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'pl'
,p_message_text=>unistr('Has\0142o')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127969194530027142)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'pl'
,p_message_text=>'Uprawnienia'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127968866892027142)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'pl'
,p_message_text=>unistr('Nazwa u\017Cytkownika')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128049259910027166)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas renderowania elementu "#COMPONENT_NAME#" strony.')
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127964283527027141)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna wy\015Bwietli\0107 elementu strony, poniewa\017C formularz HTML nie zosta\0142 jeszcze otwarty.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127922699247027128)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas obliczania warto\015Bci domy\015Blnej elementu #COMPONENT_NAME# strony.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127963508256027140)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas ko\0144cowego obliczania elementu #COMPONENT_NAME# strony.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127963488740027140)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas obliczania warto\015Bci \017Ar\00F3d\0142owej elementu #COMPONENT_NAME# strony.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127940205370027133)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nieautoryzowany dost\0119p.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127889766695027118)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107 %0 z %1 nie jest poprawn\0105 tablic\0105 JSON.')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127963732531027140)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'pl'
,p_message_text=>unistr('J\0119zyk JavaScript nie jest obs\0142ugiwany.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127963861180027140)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'pl'
,p_message_text=>'Lista'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127964404370027141)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna zainicjalizowa\0107 zapytania.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127972499204027143)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 - aktualizacja nie jest obs\0142ugiwana.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127965908652027141)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'pl'
,p_message_text=>'Niepoprawny ID elementu: %0 '
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127993678940027149)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'pl'
,p_message_text=>'Nie ma Pomocy dla tego elementu.'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127955405794027138)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie uda\0142o si\0119 wygenerowa\0107 zapytania dotycz\0105cego wykresu. Prosz\0119 sprawdzi\0107 ustawienia \017Ar\00F3d\0142a i mapowa\0144 kolumn.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127956733059027138)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawna warto\015B\0107 parametru p_mail_id: %0')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127993446009027149)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'pl'
,p_message_text=>unistr('Jako adresu "Od" nie mo\017Cna u\017Cy\0107 pola "Do" ani "Odpowiedz", poniewa\017C zawieraj\0105 one wi\0119cej ni\017C jeden adres e-mail.')
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128078330206027175)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'pl'
,p_message_text=>unistr('Przekroczono maksymaln\0105 liczb\0119 wiadomo\015Bci e-mail przypadaj\0105cych na obszar roboczy. Prosz\0119 si\0119 skontaktowa\0107 z administratorem.')
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127934933358027132)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'pl'
,p_message_text=>unistr('Ta procedura musi by\0107 wywo\0142ywana z sesji aplikacji.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127956670358027138)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'pl'
,p_message_text=>unistr('Podano warto\015B\0107 Null parametru %0.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128014763154027156)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'pl'
,p_message_text=>'W aplikacji %1 nie znaleziono szablonu "%0" e-maili.'
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128091293910027179)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Aby mo\017Cna by\0142o wysy\0142a\0107 e-maile, trzeba ustawi\0107 parametr SMTP_HOST_ADDRESS instancji.')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127956082255027138)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Aby mo\017Cna by\0142o wys\0142a\0107 e-mail, trzeba poda\0107 odbiorc\0119 wiadomo\015Bci.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128080718490027176)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna ustanowi\0107 po\0142\0105czenia SMTP ze skonfigurowanym serwerem poczty elektronicznej.')
,p_version_scn=>2693201
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128056046980027168)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'pl'
,p_message_text=>unistr('Niepoprawne wywo\0142anie Ajax.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127939939488027133)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>'Nie zdefiniowano funkcji Ajax dla wtyczki %0'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128046518159027165)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>'Nie zdefiniowano funkcji wykonania dla wtyczki %0'
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127940019719027133)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>'Nie zdefiniowano funkcji renderowania dla wtyczki %0'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128056962461027169)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wtyczka "%0" \017Ar\00F3d\0142a danych REST nie zawiera funkcji "Mo\017Cliwo\015Bci".')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128056884114027169)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wtyczka "%0" \017Ar\00F3d\0142a danych REST nie zawiera funkcji DML.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128057045725027169)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wtyczka "%0" \017Ar\00F3d\0142a danych REST nie zawiera funkcji wykonania.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128057166758027169)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wtyczka "%0" \017Ar\00F3d\0142a danych REST nie zawiera funkcji pobierania.')
,p_version_scn=>2693198
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127937409183027133)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Podczas przetwarzania wtyczki zosta\0142 zg\0142oszony b\0142\0105d kodu PL/SQL.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127946024441027135)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Trzeba okre\015Bli\0107 warto\015B\0107.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127979029592027145)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'pl'
,p_message_text=>unistr('Typu danych %0 nie mo\017Cna przekszta\0142ci\0107 w VARCHAR2.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128067225032027172)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('W instrukcji SQL nie znaleziono kolumny "%0" okre\015Blonej dla atrybutu "%1".')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127894554699027119)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107 %0 z %1 nie jest poprawn\0105 tablic\0105 JSON.')
,p_version_scn=>2693171
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128044477369027165)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'pl'
,p_message_text=>unistr('Dla "%0" trzeba okre\015Bli\0107 zapytanie dot. listy warto\015Bci (LOV) albo nazwan\0105 list\0119 warto\015Bci.')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128046032021027165)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'pl'
,p_message_text=>unistr('W zapytaniu SQL dotycz\0105cym listy warto\015Bci (LOV) wybrano niepoprawn\0105 liczb\0119 kolumn dla "%0". Poprawne instrukcje s\0105 pokazane w przyk\0142adach.')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128067041571027172)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie okre\015Blono kolumny dla atrybutu "%0".')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128096250545027181)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'pl'
,p_message_text=>unistr('Warto\015B\0107 "%0", wprowadzona dla atrybutu "%1", nie jest typu liczbowego.')
,p_version_scn=>2693204
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128049553496027166)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'pl'
,p_message_text=>'%0 ma niepoprawny typ danych w instrukcji SQL. Kolumna %1 jest typu %2, a oczekiwano typu %3.'
,p_version_scn=>2693196
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128067160008027172)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'pl'
,p_message_text=>unistr('Typem danych kolumny "%0", okre\015Blonej dla atrybutu "%1", jest "%2", a powinien to by\0107 typ "%3".')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127936623514027132)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie znaleziono uk\0142adu raportu.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127924235270027128)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'pl'
,p_message_text=>unistr('Przekroczono limit wykonywa\0144 w tle dla: %0.')
,p_version_scn=>2693174
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127874517066027113)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'pl'
,p_message_text=>unistr('Inne wykonywanie procesu "%0" jest ju\017C w toku.')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127874431291027113)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'pl'
,p_message_text=>unistr('Inne wykonywanie procesu "%0" jest ju\017C w toku dla kontekstu "%1".')
,p_version_scn=>2693168
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127889457910027118)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'pl'
,p_message_text=>unistr('Wys\0142ane pliki nie s\0105 widoczne w sesji roboczej dla wykonania procesu "%0".')
,p_version_scn=>2693169
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128001992120027152)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'pl'
,p_message_text=>unistr('Funkcji "Oblicz sum\0119" nie mo\017Cna u\017Cy\0107 dla raport\00F3w opartych na \017Ar\00F3dle danych REST.')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127963616992027140)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('ERR-2904 Nie mo\017Cna ustawi\0107 warto\015Bci skr\00F3tu.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127968617265027142)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d: Nieznany typ skr\00F3tu.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127906371095027123)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'pl'
,p_message_text=>unistr('Zapytanie wyszukiwania jest zbyt d\0142ugie.')
,p_version_scn=>2693172
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127957737691027139)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna pobra\0107 schematu authentication_scheme aplikacji %0.')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127965705841027141)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna pobra\0107 sk\0142adnika: %0.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128036094998027162)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'pl'
,p_message_text=>unistr('ID dzier\017Cawy ju\017C istnieje dla bie\017C\0105cej sesji.')
,p_version_scn=>2693193
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127968978516027142)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'pl'
,p_message_text=>'E-mail'
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128095775127027180)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'pl'
,p_message_text=>'Niepowodzenie identyfikacji.'
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127996362025027150)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'pl'
,p_message_text=>unistr('Jeden lub wi\0119ksza liczba plik\00F3w cookie w apex_util.g_request_cookies zawiera niepoprawn\0105 warto\015B\0107.')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127978274180027145)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'pl'
,p_message_text=>unistr('Otrzymano niepoprawn\0105 odpowied\017A z rejestru UDDI.')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127937586814027133)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'pl'
,p_message_text=>'Podany URL nie zwraca poprawnego dokumentu WSDL.'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127940366338027133)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'pl'
,p_message_text=>unistr('Dokument WSDL zawiera wi\0119cej ni\017C jedno wi\0105zanie SOAP. &PRODUCT_NAME. obs\0142uguje WSDL z tylko jednym wi\0105zaniem SOAP. Aby kontynuowa\0107 tworzenie odwo\0142ania do tej us\0142ugi, prosz\0119 klikn\0105\0107 "R\0119czne tworzenie odwo\0142ania do us\0142ugi internetowej".')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128015966978027156)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'pl'
,p_message_text=>unistr('Odpowied\017A z us\0142ugi nie by\0142a w formacie XML.')
,p_version_scn=>2693187
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128095623276027180)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'pl'
,p_message_text=>unistr('Token dost\0119pu OAuth nie jest dost\0119pny lub wygas\0142.')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128060129577027170)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'pl'
,p_message_text=>unistr('Przekroczono maksymaln\0105 liczb\0119 \017C\0105da\0144 do us\0142ugi internetowej przypadaj\0105cych na obszar roboczy. Prosz\0119 si\0119 skontaktowa\0107 z administratorem.')
,p_version_scn=>2693199
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128095828425027180)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'pl'
,p_message_text=>unistr('Odpowied\017A serwera zawieraj\0105ca nieobs\0142ugiwany typ tokenu OAuth.')
,p_version_scn=>2693203
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127939760493027133)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'pl'
,p_message_text=>unistr('Dokument WSDL nie zawiera\0142 wi\0105zania protoko\0142u SOAP, kt\00F3re jest wymagane, aby mo\017Cna by\0142o doda\0107 odwo\0142anie.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127935176515027132)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'pl'
,p_message_text=>unistr('Ten kod WSDL wymaga uwierzytelnie\0144 identyfikuj\0105cych. Prosz\0119 poda\0107 poni\017Cej nazw\0119 u\017Cytkownika i has\0142o.')
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127946101902027135)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'pl'
,p_message_text=>unistr('Motor renderowania nie zrozumia\0142 dokumentu WSDL. Aby kontynuowa\0107 tworzenie odwo\0142ania do tej us\0142ugi, prosz\0119 klikn\0105\0107 "R\0119czne tworzenie odwo\0142ania do us\0142ugi internetowej".')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128018928093027157)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'pl'
,p_message_text=>unistr('Nie mo\017Cna przetworzy\0107 aktualizacji.')
,p_version_scn=>2693188
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128044745411027165)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'pl'
,p_message_text=>unistr('Zwracana i wy\015Bwietlana kolumna z listy warto\015Bci s\0105 t\0105 sam\0105 kolumn\0105.')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128044634967027165)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'pl'
,p_message_text=>unistr('Lista warto\015Bci nie ma zwracanej kolumny.')
,p_version_scn=>2693194
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127972318145027143)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas pobierania warto\015Bci kolumny: %0')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127997292666027151)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'pl'
,p_message_text=>unistr('Obecne dane z formularza tabelarycznego s\0105 zbyt stare; \017Ar\00F3d\0142o danych zosta\0142o zmodyfikowane.<br/> Aby zrezygnowa\0107 z dokonanych zmian i ponownie za\0142adowa\0107 dane z bazy danych, prosz\0119 klikn\0105\0107 <strong><a href="%0">tutaj</a></strong>.')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127952420534027137)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas ustalania napisu wyznaczaj\0105cego paginacj\0119')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127952373651027137)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('nie mo\017Cna ustali\0107 nag\0142\00F3wk\00F3w zapytania:'),
'%0'))
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127952559206027137)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'pl'
,p_message_text=>unistr('b\0142\0105d podczas zast\0119powania w stopce raportu')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127952601922027137)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Nie uda\0142o si\0119 wykona\0107 analizy sk\0142adniowej zapytania:'),
'%0',
'%1'))
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127958733326027139)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'pl'
,p_message_text=>unistr('Minimalna liczba \017C\0105danych wierszy: %0; wiersze znaleziono, ale nie wy\015Bwietlono: %1')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127955101314027138)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'pl'
,p_message_text=>unistr('u\017Cyta w zapytaniu kolumna #%0 (%1) jest niepoprawna; dla kolumn u\017Cywaj\0105cych kodu HTML s\0105 wymagane aliasy')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127972250283027143)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'pl'
,p_message_text=>unistr('B\0142\0105d podczas uzyskiwania nag\0142\00F3wk\00F3w zapytania: %0')
,p_version_scn=>2693181
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127952771883027137)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('b\0142\0105d raportu:'),
'%0'))
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127992812348027149)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'pl'
,p_message_text=>'Sortuj wg tej kolumny'
,p_version_scn=>2693182
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127955295041027138)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'pl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Nie mo\017Cna wykona\0107 analizy sk\0142adniowej zapytania; prosz\0119 sprawdzi\0107 jego sk\0142adni\0119.'),
'(%0)',
'</p>'))
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127997346708027151)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'pl'
,p_message_text=>unistr('Ten formularz zawiera niezapisane dane. Prosz\0119 nacisn\0105\0107 przycisk OK, aby kontynuowa\0107 bez zapisywania danych. ')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(128001862371027152)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'pl'
,p_message_text=>unistr('Schemat "%0" paginacji raportu nie jest obs\0142ugiwany przy wybranym \017Ar\00F3dle danych.')
,p_version_scn=>2693185
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127955016646027138)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'pl'
,p_message_text=>unistr('u\017Cyta w zapytaniu kolumna #%0 (%1) jest niepoprawna; prosz\0119 u\017Cy\0107 aliasu kolumny')
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127958812465027139)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'pl'
,p_message_text=>'wiersz(e) %0 - %1 z ponad %2'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127999371001027151)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'pl'
,p_message_text=>unistr('%0 - %1 z wi\0119cej ni\017C %2')
,p_version_scn=>2693183
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127958692590027139)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'pl'
,p_message_text=>'wiersz(e) %0 - %1 z %2'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127939499468027133)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'pl'
,p_message_text=>'%0 - %1 z %2'
,p_version_scn=>2693177
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127952848126027137)
,p_name=>'Y'
,p_message_language=>'pl'
,p_message_text=>'Y'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127960154746027139)
,p_name=>'YEAR'
,p_message_language=>'pl'
,p_message_text=>'rok'
,p_version_scn=>2693180
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127952045159027137)
,p_name=>'YEARS'
,p_message_language=>'pl'
,p_message_text=>'lat(a)'
,p_version_scn=>2693178
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127997464249027151)
,p_name=>'YES'
,p_message_language=>'pl'
,p_message_text=>'Tak'
,p_version_scn=>2693183
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
 p_id=>wwv_flow_imp.id(109678305570583962.4484)
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
 p_id=>1.4484
,p_name=>'Komunikaty'
,p_alias=>'MESSAGES'
,p_step_title=>'Komunikaty'
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
