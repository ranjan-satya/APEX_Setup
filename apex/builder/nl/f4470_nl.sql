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
,p_default_application_id=>4494
,p_default_id_offset=>0
,p_default_owner=>'APEX_240200'
);
end;
/
 
prompt APPLICATION 4494 - Oracle APEX Runtime Messages
--
-- Application Export:
--   Application:     4494
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
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A131492551593033644')
,p_page_view_logging=>'YES'
,p_charset=>'utf-8'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20241206202600'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'24.2'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'nl'
,p_flow_language_derived_from=>'SESSION'
,p_date_format=>'&DATE_FORMAT.'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(109678305570583962.4494)
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
 p_id=>wwv_flow_imp.id(4494)
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
 p_id=>wwv_flow_imp.id(728504220438374.4494)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>7007816
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(736540203200530.4494)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>243430877
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(800575880762576.4494)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15457644
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2657043006125217.4494)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>117636987
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(110599941590099161.4494)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>7007818
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(118481226255833028.4494)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(123214098089478467.4494)
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
 p_id=>wwv_flow_imp.id(124389732573989299.4494)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>37165931336889
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(209516503264520988.4494)
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
 p_id=>wwv_flow_imp.id(285800719532138903.4494)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>7007823
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(649595203182764436.4494)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6539584
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1874744429444344138.4494)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'N')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1941451863897626238.4494)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1088662545
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2027366558906572283.4494)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>7007824
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2120597162971751123.4494)
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
 p_id=>wwv_flow_imp.id(649613204592764515.4494)
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
 p_id=>wwv_flow_imp.id(850359229090693491.4494)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Wizard Dialog.nl'
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
 p_id=>wwv_flow_imp.id(293526110820992194.4494)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4494)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293526630547992195.4494)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4494)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293527171164992195.4494)
,p_page_template_id=>wwv_flow_imp.id(850359229090693491.4494)
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
 p_id=>wwv_flow_imp.id(851037359784626333.4494)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Dialog.nl'
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
 p_id=>wwv_flow_imp.id(293473352245977306.4494)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4494)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293473882718977306.4494)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4494)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(293474370844977307.4494)
,p_page_template_id=>wwv_flow_imp.id(851037359784626333.4494)
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
 p_id=>wwv_flow_imp.id(851037631091626378.4494)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Edit Screen.nl'
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
 p_id=>wwv_flow_imp.id(2495515088702127.4494)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4494)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496016567702127.4494)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4494)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2496522618702127.4494)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4494)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497097895702127.4494)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4494)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2497562953702128.4494)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4494)
,p_name=>'Edit Screen Header'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498085850702128.4494)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4494)
,p_name=>'Page Position 5'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2498553894702128.4494)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4494)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499023066702128.4494)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4494)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2499516729702128.4494)
,p_page_template_id=>wwv_flow_imp.id(851037631091626378.4494)
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
 p_id=>wwv_flow_imp.id(851039898661626389.4494)
,p_theme_id=>3
,p_name=>'APEX 5.0 - No Side Bar.nl'
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
 p_id=>wwv_flow_imp.id(2418665544706094.4494)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4494)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419139140706094.4494)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4494)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2419660231706094.4494)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4494)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420136000706094.4494)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4494)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2420617033706094.4494)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4494)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421142368706094.4494)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4494)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2421629849706095.4494)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4494)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2422132460706095.4494)
,p_page_template_id=>wwv_flow_imp.id(851039898661626389.4494)
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
 p_id=>wwv_flow_imp.id(851040471818626394.4494)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Right Side Bar.nl'
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
 p_id=>wwv_flow_imp.id(1537388880131854.4494)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4494)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1537880270131855.4494)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4494)
,p_name=>'Page Header (Position 3)'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538315330131855.4494)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4494)
,p_name=>'Page Header (Position 4)'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1538840638131855.4494)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4494)
,p_name=>'Right Side Bar'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539339441131855.4494)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4494)
,p_name=>'After Body'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1539830162131855.4494)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4494)
,p_name=>'Page Header (Position 1)'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540338421131855.4494)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4494)
,p_name=>'Page Header (Position 2)'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1540832064131856.4494)
,p_page_template_id=>wwv_flow_imp.id(851040471818626394.4494)
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
 p_id=>wwv_flow_imp.id(851041812938626395.4494)
,p_theme_id=>3
,p_name=>'[x] APEX 5.0 - Sign Up Wizard.nl'
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
 p_id=>wwv_flow_imp.id(115212309210289451.4494)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4494)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115212857712289451.4494)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4494)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213340345289452.4494)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4494)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115213804331289452.4494)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4494)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214317592289452.4494)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4494)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115214875819289453.4494)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4494)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(115215325320289453.4494)
,p_page_template_id=>wwv_flow_imp.id(851041812938626395.4494)
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
 p_id=>wwv_flow_imp.id(851042476105626395.4494)
,p_theme_id=>3
,p_name=>'APEX 5.0 - Wizard Page.nl'
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
 p_id=>wwv_flow_imp.id(1485266589875353.4494)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4494)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1485734308875353.4494)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4494)
,p_name=>'Page Position 1'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486237142875354.4494)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4494)
,p_name=>'Page Position 2'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1486735024875354.4494)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4494)
,p_name=>'Page Position 3'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487219028875354.4494)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4494)
,p_name=>'Page Position 4'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1487770987875354.4494)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4494)
,p_name=>'Page Position 7'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488272041875354.4494)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4494)
,p_name=>'Page Position 8'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(1488725778875354.4494)
,p_page_template_id=>wwv_flow_imp.id(851042476105626395.4494)
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
 p_id=>wwv_flow_imp.id(514381861202541059.4494)
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
 p_id=>wwv_flow_imp.id(514382190540541061.4494)
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
 p_id=>wwv_flow_imp.id(514382538845541061.4494)
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
 p_id=>wwv_flow_imp.id(620629666890811728.4494)
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
 p_id=>wwv_flow_imp.id(620629778318811745.4494)
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
 p_id=>wwv_flow_imp.id(868252865986181054.4494)
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
 p_id=>wwv_flow_imp.id(514338947870435171.4494)
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
 p_id=>wwv_flow_imp.id(2962385277500935.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2962865718500935.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963338641500935.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2963894582500935.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964329937500935.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2964897214500936.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965324003500936.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2965838011500936.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966328405500936.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2966823859500936.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967325351500936.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2967812485500936.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2968377768500937.4494)
,p_plug_template_id=>wwv_flow_imp.id(514338947870435171.4494)
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
 p_id=>wwv_flow_imp.id(514343873675436760.4494)
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
 p_id=>wwv_flow_imp.id(32585474981747544.4494)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32585915750747544.4494)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4494)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586471989747545.4494)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4494)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(32586972270747545.4494)
,p_plug_template_id=>wwv_flow_imp.id(514343873675436760.4494)
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
 p_id=>wwv_flow_imp.id(771803843049318447.4494)
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
 p_id=>wwv_flow_imp.id(3207496127505978.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3207907805505978.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208484941505978.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3208991047505978.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209402462505979.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3209972507505979.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210460159505979.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3210935368505979.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211466566505979.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3211956312505979.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212461962505979.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3212966370505980.4494)
,p_plug_template_id=>wwv_flow_imp.id(771803843049318447.4494)
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
 p_id=>wwv_flow_imp.id(850406444708718383.4494)
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
 p_id=>wwv_flow_imp.id(2204663592232325.4494)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205135519232325.4494)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2205694824232325.4494)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206129075232325.4494)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2206618558232325.4494)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207115910232326.4494)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2207688896232326.4494)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208160700232326.4494)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2208614050232326.4494)
,p_plug_template_id=>wwv_flow_imp.id(850406444708718383.4494)
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
 p_id=>wwv_flow_imp.id(850442966147812557.4494)
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
 p_id=>wwv_flow_imp.id(3346988371508588.4494)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3347426198508588.4494)
,p_plug_template_id=>wwv_flow_imp.id(850442966147812557.4494)
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
 p_id=>wwv_flow_imp.id(856206049762521193.4494)
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
 p_id=>wwv_flow_imp.id(2526185270486606.4494)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2526610033486606.4494)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527184084486606.4494)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2527626846486607.4494)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528141078486607.4494)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2528637911486607.4494)
,p_plug_template_id=>wwv_flow_imp.id(856206049762521193.4494)
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
 p_id=>wwv_flow_imp.id(914802799655239969.4494)
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
 p_id=>wwv_flow_imp.id(88183211858816924.4494)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(88183732152816924.4494)
,p_plug_template_id=>wwv_flow_imp.id(914802799655239969.4494)
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
 p_id=>wwv_flow_imp.id(914803495164240003.4494)
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
 p_id=>wwv_flow_imp.id(3373447170510516.4494)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(3373993086510516.4494)
,p_plug_template_id=>wwv_flow_imp.id(914803495164240003.4494)
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
 p_id=>wwv_flow_imp.id(915210356236972585.4494)
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
 p_id=>wwv_flow_imp.id(2899946654493378.4494)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900442121493378.4494)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4494)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2900949359493378.4494)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4494)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2901467944493378.4494)
,p_plug_template_id=>wwv_flow_imp.id(915210356236972585.4494)
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
 p_id=>wwv_flow_imp.id(915371118115573423.4494)
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
 p_id=>wwv_flow_imp.id(2695578355491332.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696079816491332.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2696558276491332.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697055726491332.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2697581510491332.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698048732491333.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Create2'
,p_placeholder=>'CREATE2'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2698576547491333.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699004772491333.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2699557295491333.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Expand'
,p_placeholder=>'EXPAND'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700035673491333.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2700500589491333.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701097053491333.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2701554382491334.4494)
,p_plug_template_id=>wwv_flow_imp.id(915371118115573423.4494)
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
 p_id=>wwv_flow_imp.id(1274355059486017828.4494)
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
 p_id=>wwv_flow_imp.id(61232728057733462.4494)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4494)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(61233207886733462.4494)
,p_plug_template_id=>wwv_flow_imp.id(1274355059486017828.4494)
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
 p_id=>wwv_flow_imp.id(514332014414430986.4494)
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
 p_id=>wwv_flow_imp.id(514332292784430987.4494)
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
 p_id=>wwv_flow_imp.id(860563697365629462.4494)
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
 p_id=>wwv_flow_imp.id(865273508717512144.4494)
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
 p_id=>wwv_flow_imp.id(908020362212234651.4494)
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
 p_id=>wwv_flow_imp.id(914818080687341593.4494)
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
 p_id=>wwv_flow_imp.id(851049711466639395.4494)
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
 p_id=>wwv_flow_imp.id(851054516889639461.4494)
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
 p_id=>wwv_flow_imp.id(851055225644639463.4494)
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
 p_id=>wwv_flow_imp.id(851056531929639482.4494)
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
 p_id=>wwv_flow_imp.id(914792024808213039.4494)
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
 p_id=>wwv_flow_imp.id(914792322768213043.4494)
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
 p_id=>wwv_flow_imp.id(915377874236666939.4494)
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
 p_id=>wwv_flow_imp.id(1041941432531249038.4494)
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
 p_id=>wwv_flow_imp.id(850683711614406253.4494)
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
 p_id=>wwv_flow_imp.id(851047536471633848.4494)
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
 p_id=>wwv_flow_imp.id(851047676005633854.4494)
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
 p_id=>wwv_flow_imp.id(851047684809633856.4494)
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
 p_id=>wwv_flow_imp.id(851047795461633856.4494)
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
 p_id=>wwv_flow_imp.id(860542631889572088.4494)
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
 p_id=>wwv_flow_imp.id(1321751941832424103.4494)
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
 p_id=>wwv_flow_imp.id(514333590213433126.4494)
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
 p_id=>wwv_flow_imp.id(649611704621764507.4494)
,p_page_name=>'winlov'
,p_page_title=>'Dialoogvenster Zoeken'
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
,p_find_button_text=>'Zoeken'
,p_find_button_attr=>'class="a-Button a-Button--hot a-Button--padLeft"'
,p_close_button_text=>'Sluiten'
,p_close_button_attr=>'class="a-Button u-pullRight"'
,p_next_button_text=>'Volgende &gt;'
,p_next_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_prev_button_text=>'&lt; Vorige'
,p_prev_button_attr=>'class="a-Button a-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'480'
,p_result_row_x_of_y=>'<div class="a-PopupLOV-pagination">Rij(en) #FIRST_ROW# - #LAST_ROW#</div>'
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
 p_id=>wwv_flow_imp.id(649611609668764506.4494)
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
 p_id=>wwv_flow_imp.id(182005134783173294.4494)
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
 p_id=>wwv_flow_imp.id(666074212329754757.4494)
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
 p_id=>wwv_flow_imp.id(666074525535755551.4494)
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
 p_id=>wwv_flow_imp.id(717250289307903026.4494)
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
 p_id=>wwv_flow_imp.id(2336377640986141.4494)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL'
,p_display_name=>'Heading Level'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(806925000765340952.4494)
,p_theme_id=>3
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default - No Icons'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380142596819918.4494)
,p_theme_id=>3
,p_name=>'ALTERNATING_TABLE_ROWS'
,p_display_name=>'Alternating Table Rows'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Enable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808380828683819918.4494)
,p_theme_id=>3
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Disable'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808381542095819918.4494)
,p_theme_id=>3
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default Border'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(808383088145819924.4494)
,p_theme_id=>3
,p_name=>'REPORT_WIDTH'
,p_display_name=>'Report Width'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850406791580718389.4494)
,p_theme_id=>3
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407096779718396.4494)
,p_theme_id=>3
,p_name=>'REGION_PADDING'
,p_display_name=>'Region Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Padding'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(850407509193718398.4494)
,p_theme_id=>3
,p_name=>'REGION_STYLE'
,p_display_name=>'Region Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Style'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851050160062639437.4494)
,p_theme_id=>3
,p_name=>'BADGE_LAYOUT'
,p_display_name=>'Badge Layout'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(851051045625639457.4494)
,p_theme_id=>3
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>1
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856113214217058023.4494)
,p_theme_id=>3
,p_name=>'HEIGHT'
,p_display_name=>'Height'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856114568019058024.4494)
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
 p_id=>wwv_flow_imp.id(856114830529058024.4494)
,p_theme_id=>3
,p_name=>'FORM_LABEL_WIDTH'
,p_display_name=>'Form Label Width'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856115135223058024.4494)
,p_theme_id=>3
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Not Part of Button Set'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116214022058024.4494)
,p_theme_id=>3
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116523282058024.4494)
,p_theme_id=>3
,p_name=>'FORM_LABEL_POSITION'
,p_display_name=>'Form Label Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856116798725058025.4494)
,p_theme_id=>3
,p_name=>'BUTTON_SIZE'
,p_display_name=>'Button Size'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Button Size'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117102944058028.4494)
,p_theme_id=>3
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing left'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Left Spacing'
,p_is_advanced=>'Y'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117454663058028.4494)
,p_theme_id=>3
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default Right Spacing'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856117908453058029.4494)
,p_theme_id=>3
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Icon on Right'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856118261810058029.4494)
,p_theme_id=>3
,p_name=>'BUTTON_TYPE'
,p_display_name=>'Button Type'
,p_display_sequence=>1
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206461450521195.4494)
,p_theme_id=>3
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(856206736628521198.4494)
,p_theme_id=>3
,p_name=>'DISPLAY'
,p_display_name=>'Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860570508910721307.4494)
,p_theme_id=>3
,p_name=>'REGION_POSITION'
,p_display_name=>'Region Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Position'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(860571060920721309.4494)
,p_theme_id=>3
,p_name=>'REGION_OVERFLOW'
,p_display_name=>'Region Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default Behavior'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_opt_group(
 p_id=>wwv_flow_imp.id(908020718209234676.4494)
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
 p_id=>wwv_flow_imp.id(1487577187426769.4494)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden to Assistive Tech'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4494)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4494)
,p_template_types=>'REGION'
,p_help_text=>'By default, region title is hidden but accessible, use this option to remove the header from accessible interface'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336635141996782.4494)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H1'
,p_display_name=>'H1'
,p_display_sequence=>10
,p_css_classes=>'js-headingLevel-1'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4494)
,p_template_types=>'REGION'
,p_help_text=>'H1'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2336917964996782.4494)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H2'
,p_display_name=>'H2'
,p_display_sequence=>20
,p_css_classes=>'js-headingLevel-2'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4494)
,p_template_types=>'REGION'
,p_help_text=>'H2'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337368425996782.4494)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H3'
,p_display_name=>'H3'
,p_display_sequence=>30
,p_css_classes=>'js-headingLevel-3'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4494)
,p_template_types=>'REGION'
,p_help_text=>'H3'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2337706283996782.4494)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H4'
,p_display_name=>'H4'
,p_display_sequence=>40
,p_css_classes=>'js-headingLevel-4'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4494)
,p_template_types=>'REGION'
,p_help_text=>'H4'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338144805996782.4494)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H5'
,p_display_name=>'H5'
,p_display_sequence=>50
,p_css_classes=>'js-headingLevel-5'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4494)
,p_template_types=>'REGION'
,p_help_text=>'H5'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(2338562059996782.4494)
,p_theme_id=>3
,p_name=>'HEADING_LEVEL_H6'
,p_display_name=>'H6'
,p_display_sequence=>60
,p_css_classes=>'js-headingLevel-6'
,p_group_id=>wwv_flow_imp.id(2336377640986141.4494)
,p_template_types=>'REGION'
,p_help_text=>'H6'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134384175764258.4494)
,p_theme_id=>3
,p_name=>'LARGELEFT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134654971764258.4494)
,p_theme_id=>3
,p_name=>'LARGERIGHT'
,p_display_name=>'Large'
,p_display_sequence=>1
,p_css_classes=>'a-Button--gapRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857134823880764258.4494)
,p_theme_id=>3
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135009020764258.4494)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>3
,p_css_classes=>'a-Button--large'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135269851764258.4494)
,p_theme_id=>3
,p_name=>'SMALLLEFT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padLeft'
,p_group_id=>wwv_flow_imp.id(856117102944058028.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135477215764258.4494)
,p_theme_id=>3
,p_name=>'SMALLRIGHT'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--padRight'
,p_group_id=>wwv_flow_imp.id(856117454663058028.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135634744764258.4494)
,p_theme_id=>3
,p_name=>'INNERBUTTON'
,p_display_name=>'Inner Button'
,p_display_sequence=>2
,p_css_classes=>'a-Button--pill'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857135785730764258.4494)
,p_theme_id=>3
,p_name=>'LASTBUTTON'
,p_display_name=>'Last Button'
,p_display_sequence=>3
,p_css_classes=>'a-Button--pillEnd'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136068296764258.4494)
,p_theme_id=>3
,p_name=>'FIRSTBUTTON'
,p_display_name=>'First Button'
,p_display_sequence=>1
,p_css_classes=>'a-Button--pillStart'
,p_group_id=>wwv_flow_imp.id(856115135223058024.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136225140764258.4494)
,p_theme_id=>3
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>1
,p_css_classes=>'a-Button--primary'
,p_group_id=>wwv_flow_imp.id(856118261810058029.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136360666764258.4494)
,p_theme_id=>3
,p_name=>'REGIONHEADERBUTTON'
,p_display_name=>'Button in Region Header'
,p_display_sequence=>1
,p_css_classes=>'a-Button--regionHeader'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136507481764259.4494)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>1
,p_css_classes=>'a-Button--small'
,p_group_id=>wwv_flow_imp.id(856116798725058025.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136620486764259.4494)
,p_theme_id=>3
,p_name=>'STRONGBUTTONLABEL'
,p_display_name=>'Strong Button Label'
,p_display_sequence=>1
,p_css_classes=>'a-Button--strongLabel'
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857136861925764259.4494)
,p_theme_id=>3
,p_name=>'AUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form--autoWidthLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137023291764259.4494)
,p_theme_id=>3
,p_name=>'FIXEDWIDTH'
,p_display_name=>'Fixed'
,p_display_sequence=>10
,p_css_classes=>'a-Form--fixedLabels'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137193234764259.4494)
,p_theme_id=>3
,p_name=>'LABELSABOVE'
,p_display_name=>'Labels Above'
,p_display_sequence=>1
,p_css_classes=>'a-Form--labelsAbove'
,p_group_id=>wwv_flow_imp.id(856116523282058024.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137470293764259.4494)
,p_theme_id=>3
,p_name=>'ALIGNLABELSLEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_css_classes=>'a-Form--leftLabels'
,p_group_id=>wwv_flow_imp.id(856114568019058024.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137586003764259.4494)
,p_theme_id=>3
,p_name=>'LABELAUTOWIDTH'
,p_display_name=>'Auto Width'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--autoLabelWidth'
,p_group_id=>wwv_flow_imp.id(856116214022058024.4494)
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137737661764259.4494)
,p_theme_id=>3
,p_name=>'STRETCHFORMFIELD'
,p_display_name=>'Stretch Form Field'
,p_display_sequence=>1
,p_css_classes=>'a-Form-fieldContainer--stretch'
,p_template_types=>'FIELD'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857137933035764259.4494)
,p_theme_id=>3
,p_name=>'FIXEDLARGE'
,p_display_name=>'Fixed (Large Width)'
,p_display_sequence=>30
,p_css_classes=>'a-Form-fixedLabelsLarge'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138175863764259.4494)
,p_theme_id=>3
,p_name=>'FIXEDMEDIUM'
,p_display_name=>'Fixed (Medium Width)'
,p_display_sequence=>20
,p_css_classes=>'a-Form-fixedLabelsMed'
,p_group_id=>wwv_flow_imp.id(856114830529058024.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138340877764259.4494)
,p_theme_id=>3
,p_name=>'180PX'
,p_display_name=>'180px'
,p_display_sequence=>10
,p_css_classes=>'h180'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138553321764259.4494)
,p_theme_id=>3
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>20
,p_css_classes=>'h240'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138777457764259.4494)
,p_theme_id=>3
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>30
,p_css_classes=>'h320'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857138891974764260.4494)
,p_theme_id=>3
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>50
,p_css_classes=>'h480'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139153872764260.4494)
,p_theme_id=>3
,p_name=>'540PX'
,p_display_name=>'540px'
,p_display_sequence=>60
,p_css_classes=>'h540'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857139375337764260.4494)
,p_theme_id=>3
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>70
,p_css_classes=>'h640'
,p_group_id=>wwv_flow_imp.id(856113214217058023.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145206107768768.4494)
,p_theme_id=>3
,p_name=>'USE_COLORED_BACKGROUND'
,p_display_name=>'Use Colored Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_css_classes=>'a-Alert--colorBG'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145328630768768.4494)
,p_theme_id=>3
,p_name=>'USE_DEFAULT_ICONS'
,p_display_name=>'Use Default Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_css_classes=>'a-Alert--defaultIcons'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145505007768768.4494)
,p_theme_id=>3
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_css_classes=>'a-Alert--warning'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145725778768768.4494)
,p_theme_id=>3
,p_name=>'ERROR'
,p_display_name=>'Error'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_css_classes=>'a-Alert--danger'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857145892117768768.4494)
,p_theme_id=>3
,p_name=>'INFORMATIONAL'
,p_display_name=>'Informational'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_css_classes=>'a-Alert--info'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146085228768768.4494)
,p_theme_id=>3
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_css_classes=>'a-Alert--horizontal'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146322225768769.4494)
,p_theme_id=>3
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_css_classes=>'a-Alert--wizard'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146393064768769.4494)
,p_theme_id=>3
,p_name=>'REMOVE_ICON'
,p_display_name=>'Remove Icons'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_css_classes=>'a-Alert--noIcon'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857146615368768769.4494)
,p_theme_id=>3
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(856206049762521193.4494)
,p_css_classes=>'a-Alert--success'
,p_group_id=>wwv_flow_imp.id(856206461450521195.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147042367768771.4494)
,p_theme_id=>3
,p_name=>'REGIONCONTAINSITEMSTEXT'
,p_display_name=>'Region Contains Items / Text'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_css_classes=>'a-ButtonRegion--withItems'
,p_template_types=>'REGION'
,p_help_text=>'Check this option if this region contains items or text.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147189725768771.4494)
,p_theme_id=>3
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_css_classes=>'a-ButtonRegion--noUI'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147385795768771.4494)
,p_theme_id=>3
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_css_classes=>'a-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147655668768771.4494)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_css_classes=>'a-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147872948768771.4494)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_css_classes=>'a-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857147976018768771.4494)
,p_theme_id=>3
,p_name=>'WIZARDDIALOG'
,p_display_name=>'Used for Wizard Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_css_classes=>'a-ButtonRegion--wizard'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148162424768771.4494)
,p_theme_id=>3
,p_name=>'VISIBLE'
,p_display_name=>'Visible'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_css_classes=>'a-ButtonRegion--showTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857148341454768771.4494)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(850406444708718383.4494)
,p_css_classes=>'a-ButtonRegion--accessibleTitle'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4494)
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add a visually hidden heading which is accessible for screen readers, but otherwise not visible to users.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149438708768778.4494)
,p_theme_id=>3
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--float'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149614105768778.4494)
,p_theme_id=>3
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--fixed'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149843563768778.4494)
,p_theme_id=>3
,p_name=>'STACKEDVERTICALLY'
,p_display_name=>'Stacked Vertically'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--stacked'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857149998210768778.4494)
,p_theme_id=>3
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--small'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150194417768778.4494)
,p_theme_id=>3
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--medium'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150439507768778.4494)
,p_theme_id=>3
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--large'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150608654768780.4494)
,p_theme_id=>3
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--xlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857150792333768780.4494)
,p_theme_id=>3
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--xxlarge'
,p_group_id=>wwv_flow_imp.id(851051045625639457.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151008734768780.4494)
,p_theme_id=>3
,p_name=>'2COLUMNNGRID'
,p_display_name=>'2 Columnn Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151259777768780.4494)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--3cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151408063768780.4494)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--4cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151643103768780.4494)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--cols a-BadgeList--5cols'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(857151861194768780.4494)
,p_theme_id=>3
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851049711466639395.4494)
,p_css_classes=>'a-BadgeList--flex'
,p_group_id=>wwv_flow_imp.id(851050160062639437.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798730495581814.4494)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4494)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896798963380581814.4494)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4494)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799089194581814.4494)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4494)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799349986581814.4494)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4494)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799577541581814.4494)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4494)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799637215581814.4494)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4494)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(896799807498581814.4494)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851056531929639482.4494)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022191342234716.4494)
,p_theme_id=>3
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4494)
,p_css_classes=>'a-MediaList--cols a-MediaList--2cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4494)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022392217234716.4494)
,p_theme_id=>3
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4494)
,p_css_classes=>'a-MediaList--cols a-MediaList--3cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4494)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022597980234716.4494)
,p_theme_id=>3
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4494)
,p_css_classes=>'a-MediaList--cols a-MediaList--4cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4494)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908022867300234717.4494)
,p_theme_id=>3
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4494)
,p_css_classes=>'a-MediaList--cols a-MediaList--5cols'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4494)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023065592234717.4494)
,p_theme_id=>3
,p_name=>'SPANHORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4494)
,p_css_classes=>'a-MediaList--horizontal'
,p_group_id=>wwv_flow_imp.id(908020718209234676.4494)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023131122234717.4494)
,p_theme_id=>3
,p_name=>'HIDEBADGE'
,p_display_name=>'Hide Badge'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4494)
,p_css_classes=>'a-MediaList--noBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023191297234717.4494)
,p_theme_id=>3
,p_name=>'HIDEDESCRIPTION'
,p_display_name=>'Hide Description'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4494)
,p_css_classes=>'a-MediaList--noDesc'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023315038234717.4494)
,p_theme_id=>3
,p_name=>'HIDETITLE'
,p_display_name=>'Hide Title'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4494)
,p_css_classes=>'a-MediaList--noTitle'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023432264234717.4494)
,p_theme_id=>3
,p_name=>'HIDEICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4494)
,p_css_classes=>'a-MediaList--noIcons'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(908023494059234717.4494)
,p_theme_id=>3
,p_name=>'SLIMLIST'
,p_display_name=>'Slim List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(908020362212234651.4494)
,p_css_classes=>'a-MediaList--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378094918666945.4494)
,p_theme_id=>3
,p_name=>'DISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4494)
,p_css_classes=>'a-Report--staticRowColors'
,p_group_id=>wwv_flow_imp.id(808380142596819918.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378225037666947.4494)
,p_theme_id=>3
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4494)
,p_css_classes=>'a-Report--rowHighlight'
,p_group_id=>wwv_flow_imp.id(808380828683819918.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378370589666947.4494)
,p_theme_id=>3
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4494)
,p_css_classes=>'a-Report--horizontalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378467813666947.4494)
,p_theme_id=>3
,p_name=>'INLINEBORDERS'
,p_display_name=>'Inline Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4494)
,p_css_classes=>'a-Report--inline'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378526097666947.4494)
,p_theme_id=>3
,p_name=>'NOBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4494)
,p_css_classes=>'a-Report--noBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378615102666947.4494)
,p_theme_id=>3
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4494)
,p_css_classes=>'a-Report--stretch'
,p_group_id=>wwv_flow_imp.id(808383088145819924.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(915378735377666947.4494)
,p_theme_id=>3
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Borders'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(915377874236666939.4494)
,p_css_classes=>'a-Report--verticalBorders'
,p_group_id=>wwv_flow_imp.id(808381542095819918.4494)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071796325339624.4494)
,p_theme_id=>3
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4494)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1036071972285339624.4494)
,p_theme_id=>3
,p_name=>'ADD_SLIDE_ANIMATION'
,p_display_name=>'Add Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(514332292784430987.4494)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1050367122398973653.4494)
,p_theme_id=>3
,p_name=>'SLIMPROGRESSLIST'
,p_display_name=>'Slim Progress List'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(865273508717512144.4494)
,p_css_classes=>'a-WizardSteps--slim'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1309233880682664517.4494)
,p_theme_id=>3
,p_name=>'LEFT'
,p_display_name=>'Left'
,p_display_sequence=>1
,p_button_template_id=>wwv_flow_imp.id(868252865986181054.4494)
,p_css_classes=>'a-Button--iconLeft'
,p_group_id=>wwv_flow_imp.id(856117908453058029.4494)
,p_template_types=>'BUTTON'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1351338307429029043.4494)
,p_theme_id=>3
,p_name=>'USED_IN_DIALOG'
,p_display_name=>'Used in Dialog'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(1274355059486017828.4494)
,p_css_classes=>'a-ProcessingRegion--dialog'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333722717814196.4494)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4494)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333859287814196.4494)
,p_theme_id=>3
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4494)
,p_css_classes=>'a-LinksList--showBadge'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635333887728814196.4494)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4494)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334039640814196.4494)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4494)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334247146814196.4494)
,p_theme_id=>3
,p_name=>'FORTOPLEVELONLY'
,p_display_name=>'For top level only'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4494)
,p_css_classes=>'a-LinksList--showTopIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4494)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1635334455135814196.4494)
,p_theme_id=>3
,p_name=>'FORALLITEMS'
,p_display_name=>'For all items'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_imp.id(914818080687341593.4494)
,p_css_classes=>'a-LinksList--showIcons'
,p_group_id=>wwv_flow_imp.id(806925000765340952.4494)
,p_template_types=>'LIST'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491342397110118.4494)
,p_theme_id=>3
,p_name=>'SHOWRIGHTARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4494)
,p_css_classes=>'a-LinksList--showArrow'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491390428110118.4494)
,p_theme_id=>3
,p_name=>'USEBRIGHTHOVERS'
,p_display_name=>'Use Bright Hovers'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4494)
,p_css_classes=>'a-LinksList--brightHover'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1654491480011110118.4494)
,p_theme_id=>3
,p_name=>'DONOTWRAPTEXT'
,p_display_name=>'Do not wrap text'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_imp.id(851055225644639463.4494)
,p_css_classes=>'a-LinksList--nowrap'
,p_template_types=>'REPORT'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488722406040473.4494)
,p_theme_id=>3
,p_name=>'HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--hideHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664488933681040473.4494)
,p_theme_id=>3
,p_name=>'ACCESSIBLEHEADING'
,p_display_name=>'Hidden (Accessible)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--accessibleHeader'
,p_group_id=>wwv_flow_imp.id(850406791580718389.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489165994040473.4494)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489304869040473.4494)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489519844040473.4494)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489753255040473.4494)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664489941797040473.4494)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490153471040473.4494)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490336091040473.4494)
,p_theme_id=>3
,p_name=>'DEFAULTPADDING'
,p_display_name=>'Default Padding'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--paddedBody'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490377667040473.4494)
,p_theme_id=>3
,p_name=>'REMOVE_TOP_BORDER'
,p_display_name=>'Remove Top Border'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--noTopBorder'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664490659850040473.4494)
,p_theme_id=>3
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(514338947870435171.4494)
,p_css_classes=>'a-Region--simple'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664501980442158869.4494)
,p_theme_id=>3
,p_name=>'RESPONSIVEICONCOLUMNS'
,p_display_name=>'Responsive Icon Columns'
,p_display_sequence=>2
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4494)
,p_css_classes=>'a-IRR-region--responsiveIconView'
,p_template_types=>'REGION'
,p_help_text=>'Automatically increases number of icon columns to show based on screen resolution.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502160891158869.4494)
,p_theme_id=>3
,p_name=>'ICONLABELSRIGHT'
,p_display_name=>'Icon Labels on Right'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4494)
,p_css_classes=>'a-IRR-region--iconLabelsRight'
,p_template_types=>'REGION'
,p_help_text=>'Shows labels in Icon View to the right of the icon.'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664502181188158869.4494)
,p_theme_id=>3
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'Remove Outer Borders'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915210356236972585.4494)
,p_css_classes=>'a-IRR-region--noOuterBorders'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508367504174332.4494)
,p_theme_id=>3
,p_name=>'FLUSHREGION'
,p_display_name=>'Flush Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_css_classes=>'a-Region--flush'
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508426350174332.4494)
,p_theme_id=>3
,p_name=>'STACKEDREGION'
,p_display_name=>'Stacked Region'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_css_classes=>'a-Region--stacked'
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508588305174332.4494)
,p_theme_id=>3
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_css_classes=>'a-Region--slimPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664508810521174332.4494)
,p_theme_id=>3
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_css_classes=>'a-Region--noPadding'
,p_group_id=>wwv_flow_imp.id(850407096779718396.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509005841174332.4494)
,p_theme_id=>3
,p_name=>'SIDEBAR'
,p_display_name=>'Sidebar'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_css_classes=>'a-Region--sideRegion'
,p_group_id=>wwv_flow_imp.id(860570508910721307.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509270186174332.4494)
,p_theme_id=>3
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_css_classes=>'a-Region--noBorder'
,p_group_id=>wwv_flow_imp.id(850407509193718398.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509448573174333.4494)
,p_theme_id=>3
,p_name=>'SCROLLWITHSHADOWS'
,p_display_name=>'Scroll (with Shadows)'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_css_classes=>'a-Region--shadowScroll'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509659839174333.4494)
,p_theme_id=>3
,p_name=>'AUTOSCROLL'
,p_display_name=>'Scroll'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_css_classes=>'a-Region--scrollAuto'
,p_group_id=>wwv_flow_imp.id(860571060920721309.4494)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664509822387174334.4494)
,p_theme_id=>3
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>.1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4494)
,p_template_types=>'REGION'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(1664510028962174334.4494)
,p_theme_id=>3
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_imp.id(915371118115573423.4494)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_imp.id(856206736628521198.4494)
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
 p_id=>wwv_flow_imp.id(127495211684026991)
,p_name=>'4150_COLUMN_NUMBER'
,p_message_language=>'nl'
,p_message_text=>'Kolom %0'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127479810338026987)
,p_name=>'ACCESS_CONTROL_ADMIN'
,p_message_language=>'nl'
,p_message_text=>'Beheerder'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127479774747026987)
,p_name=>'ACCESS_CONTROL_USERNAME'
,p_message_language=>'nl'
,p_message_text=>'Gebruikersnaam'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127542411839027005)
,p_name=>'ACCESS_DENIED_SIMPLE'
,p_message_language=>'nl'
,p_message_text=>'Toegang geweigerd'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127499335205026993)
,p_name=>'ACCOUNT_HAS_BEEN_CREATED'
,p_message_language=>'nl'
,p_message_text=>'Uw %0 account is gemaakt.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127482529260026988)
,p_name=>'ACCOUNT_LOCKED'
,p_message_language=>'nl'
,p_message_text=>'De account is vergrendeld.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127467070973026983)
,p_name=>'AM_PM'
,p_message_language=>'nl'
,p_message_text=>'AM / PM'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127449863055026978)
,p_name=>'APEX.ACTIONS.ACTION_LINK'
,p_message_language=>'nl'
,p_message_text=>'actiekoppeling'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127449702151026978)
,p_name=>'APEX.ACTIONS.DIALOG_LINK'
,p_message_language=>'nl'
,p_message_text=>'dialoogkoppeling'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127614190127027027)
,p_name=>'APEX.ACTIONS.TOGGLE'
,p_message_language=>'nl'
,p_message_text=>'%0 in-/uitschakelen'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127621924803027029)
,p_name=>'APEX.ACTIVE_STATE'
,p_message_language=>'nl'
,p_message_text=>'(Actief)'
,p_is_js_message=>true
,p_version_scn=>2693119
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127426786852026970)
,p_name=>'APEX.AI.CHAT_CLEARED'
,p_message_language=>'nl'
,p_message_text=>'Chat is gewist.'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127426623784026970)
,p_name=>'APEX.AI.CLEAR_CHAT'
,p_message_language=>'nl'
,p_message_text=>'Chat wissen'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127423239845026969)
,p_name=>'APEX.AI.CONSENT_ACCEPT'
,p_message_language=>'nl'
,p_message_text=>'Accepteren'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127423337682026969)
,p_name=>'APEX.AI.CONSENT_DENY'
,p_message_language=>'nl'
,p_message_text=>'Weigeren'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127423024919026969)
,p_name=>'APEX.AI.CONVERSATION_HISTORY'
,p_message_language=>'nl'
,p_message_text=>'Gesprekshistorie'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127426417558026970)
,p_name=>'APEX.AI.COPIED'
,p_message_language=>'nl'
,p_message_text=>'Gekopieerd'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127426532236026970)
,p_name=>'APEX.AI.COPIED_TO_CLIPBOARD'
,p_message_language=>'nl'
,p_message_text=>'Gekopieerd naar klembord'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127426232872026970)
,p_name=>'APEX.AI.COPY'
,p_message_language=>'nl'
,p_message_text=>unistr('Kopi\00EBren')
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127426318554026970)
,p_name=>'APEX.AI.COPY_TO_CLIPBOARD'
,p_message_language=>'nl'
,p_message_text=>unistr('Naar klembord kopi\00EBren')
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127423772647026969)
,p_name=>'APEX.AI.DIALOG_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Assistent'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127424160642026969)
,p_name=>'APEX.AI.DISABLED'
,p_message_language=>'nl'
,p_message_text=>'AI is inactief op het niveau van de werkplek of de instance.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127463451539026982)
,p_name=>'APEX.AI.GET_SERVER_ID_OR_STATIC_ID'
,p_message_language=>'nl'
,p_message_text=>'Generatieve AI-service met opgegeven ID of statische ID is niet gevonden.'
,p_version_scn=>2693088
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127462147771026982)
,p_name=>'APEX.AI.HTTP_4013_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Authenticatiefout of verboden toegang (HTTP-%1) voor URL %0. Controleer de configuratie van Generative AI Service %2.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127441991729026975)
,p_name=>'APEX.AI.HTTP_ERROR'
,p_message_language=>'nl'
,p_message_text=>'De HTTP-aanvraag aan de generatieve AI-service bij %0 is mislukt met HTTP-%1: %2.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127466387237026983)
,p_name=>'APEX.AI.HTTP_FRIENDLY_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Fout in HTTP-verzoek naar Generative AI Service voor plugin %0 in modus %1. Controleer de configuratie van de Generative AI Service.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127429135104026971)
,p_name=>'APEX.AI.MAIN_QUICK_ACTIONS_ARIA_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Voorbeelden'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127427565008026970)
,p_name=>'APEX.AI.NAME_ASSISTANT'
,p_message_language=>'nl'
,p_message_text=>'Assistent'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127428986948026971)
,p_name=>'APEX.AI.NAME_COMMA_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'%0,%1'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127427411619026970)
,p_name=>'APEX.AI.NAME_USER'
,p_message_language=>'nl'
,p_message_text=>'U'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127458132345026980)
,p_name=>'APEX.AI.OCI_CHAT_NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'OCI Generative AI ondersteunt momenteel geen chatervaring met meerdere berichten.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127438088840026974)
,p_name=>'APEX.AI.PROMPT_ENRICHMENT_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de prompt %0 voor applicatie %1. Controleer of de App Builder beschikbaar is op deze instance.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127443126616026975)
,p_name=>'APEX.AI.RESPONSE_ERROR'
,p_message_language=>'nl'
,p_message_text=>'De respons voor AI-service %0, respons %1, kan niet verwerkt worden.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127449376592026978)
,p_name=>'APEX.AI.SEND_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Bericht versturen'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127437625246026974)
,p_name=>'APEX.AI.SERVICE_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Fout in backend AI-service %0'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127423496939026969)
,p_name=>'APEX.AI.TEXTAREA_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Bericht'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127423559498026969)
,p_name=>'APEX.AI.TEXTAREA_PLACEHOLDER'
,p_message_language=>'nl'
,p_message_text=>'Typ uw bericht hier.'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127426848119026970)
,p_name=>'APEX.AI.USER_AVATAR'
,p_message_language=>'nl'
,p_message_text=>'Avatar gebruiken'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127426906966026970)
,p_name=>'APEX.AI.USE_THIS'
,p_message_language=>'nl'
,p_message_text=>'Gebruik dit'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127423608216026969)
,p_name=>'APEX.AI.WARN_UNSENT_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'U hebt een bericht dat nog niet is verstuurd, weet u het zeker?'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127592652748027020)
,p_name=>'APEX.AJAX_SERVER_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Ajax-aanroep heeft serverfout %0 geretourneerd voor %1.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127519740849026999)
,p_name=>'APEX.APPLICATION.ALIAS.NON_UNIQUE'
,p_message_language=>'nl'
,p_message_text=>'De applicatiealias "%0" kan niet worden geconverteerd naar een unieke applicatie-ID.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127508557019026995)
,p_name=>'APEX.APPLICATION.ALIAS.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'ERR-1816 Er is een onverwachte fout opgetreden bij het converteren van de applicatiealias p_flow_alias_or_id (%0).'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127605962421027024)
,p_name=>'APEX.APPLICATION.CHECKSUM.DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>unistr('Met de controletelling voor de applicatie kan eenvoudig worden bepaald of dezelfde applicatie in meerdere werkruimten wordt ge\00EFmplementeerd. U kunt deze controletelling vergelijken om te bepalen of er een overeenkomst is. ')
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127492558688026991)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNC.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de verificatiefunctie.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127474504777026985)
,p_name=>'APEX.AUTHENTICATION.AUTH_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de verificatiefunctie.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127646419198027037)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.HOST_PREFIX_MISMATCH'
,p_message_language=>'nl'
,p_message_text=>'De tenantnaam %0 die door Oracle Cloud Identity Management is geretourneerd, is niet geautoriseerd voor het domein %1.<br/><a href="&LOGOUT_URL.">Log opnieuw in</a> en geef een geautoriseerde tenantnaam op of wijzig de URL.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127470622877026984)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.USER_IS_NOT_DEVELOPER'
,p_message_language=>'nl'
,p_message_text=>'Uw account "%0" heeft niet de benodigde ontwikkelrechten (DB_DEVELOPER of DB_ADMINISTRATOR)<br/>voor werkruimte "%1". <a href="&LOGOUT_URL.">Log opnieuw in</a> nadat de rechten zijn verkregen.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127467239321026983)
,p_name=>'APEX.AUTHENTICATION.CLOUD_IDM.WRONG_GROUP_NAME'
,p_message_language=>'nl'
,p_message_text=>'De tenantnaam die door Oracle Cloud Identity Management is geretourneerd, is niet geautoriseerd voor de huidige werkruimte.<br/><a href="&LOGOUT_URL.">Log opnieuw in</a> en geef een geautoriseerde tenantnaam op.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127470749198026984)
,p_name=>'APEX.AUTHENTICATION.HOST_PREFIX_MISMATCH'
,p_message_language=>'nl'
,p_message_text=>'Om beveiligingsredenen is het niet toegestaan applicaties van deze werkruimte uit te voeren via het domein in de URL.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127492262681026991)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.ASK_FOR_INSTALLATION'
,p_message_language=>'nl'
,p_message_text=>'Vraag de databasebeheerder om $OH/rdbms/admin/catldap.sql uit te voeren.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127492179925026991)
,p_name=>'APEX.AUTHENTICATION.LDAP.DBMS_LDAP.MISSING'
,p_message_language=>'nl'
,p_message_text=>'Het SYS.DBMS_LDAP-package bestaat niet of is ongeldig.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127492081029026991)
,p_name=>'APEX.AUTHENTICATION.LDAP.EDIT_USER_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de bewerking van de LDAP-gebruikersfunctie.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127492396753026991)
,p_name=>'APEX.AUTHENTICATION.LDAP.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de LDAP-verificatie.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127493193745026991)
,p_name=>'APEX.AUTHENTICATION.LOGIN.ILLEGAL_PAGE_ARG'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden in argument p_flow_page voor de login_page-procedure.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127492769138026991)
,p_name=>'APEX.AUTHENTICATION.LOGIN.INVALID_ARG'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige p_session op wwv_flow_custom_auth_std.login--p_flow_page:%0 p_session_id:%1.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127544007224027006)
,p_name=>'APEX.AUTHENTICATION.LOGIN.MALFORMED_ARGS'
,p_message_language=>'nl'
,p_message_text=>'Onjuist argument voor wwv_flow_custom_auth_std.login--p_flow_page:p_session_id:p_entry_point:%0:%1:%2.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127492889982026991)
,p_name=>'APEX.AUTHENTICATION.LOGIN.NULL_USER'
,p_message_language=>'nl'
,p_message_text=>'Er is een NULL-gebruikersnaam doorgegeven aan de inlogprocedure.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127479699254026987)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.COUNTER'
,p_message_language=>'nl'
,p_message_text=>'Wacht <span id="apex_login_throttle_sec">%0</span> seconden voordat u opnieuw inlogt.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127480985942026987)
,p_name=>'APEX.AUTHENTICATION.LOGIN_THROTTLE.ERROR'
,p_message_language=>'nl'
,p_message_text=>'De inlogpoging is geblokkeerd.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127541730740027005)
,p_name=>'APEX.AUTHENTICATION.NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Verificatie "%0" is niet gevonden.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127481434652026987)
,p_name=>'APEX.AUTHENTICATION.NO_SECURITY_GROUP_ID'
,p_message_language=>'nl'
,p_message_text=>'De ID van de beveiligingsgroep is NULL.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127492637606026991)
,p_name=>'APEX.AUTHENTICATION.POST_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het uitvoeren van het proces voor verificatie achteraf.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127492458036026991)
,p_name=>'APEX.AUTHENTICATION.PRE_AUTH_PROC.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van het proces voor verificatie vooraf.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127494117524026991)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD.INSTRUCTIONS'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Open de URL in dezelfde browser waarin u de aanvraag voor het opnieuw instellen van het wachtwoord hebt gestart. Als u op de URL voor het  opnieuw instellen van het wachtwoord klikt en wordt omgeleid naar',
'de inlogpagina, start u de aanvraag voor het opnieuw instellen van het wachtwoord opnieuw en laat u de',
'browser open.'))
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127643937564027036)
,p_name=>'APEX.AUTHENTICATION.RESET_PASSWORD_URL'
,p_message_language=>'nl'
,p_message_text=>'URL voor opnieuw instellen van wachtwoord'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127470971035026984)
,p_name=>'APEX.AUTHENTICATION.RM_GROUP_NOT_GRANTED'
,p_message_language=>'nl'
,p_message_text=>'Gebruikersgroep %0 van de resourcemanager is niet toegekend aan %1.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127471081101026984)
,p_name=>'APEX.AUTHENTICATION.RM_INFO_TO_GRANT'
,p_message_language=>'nl'
,p_message_text=>'Gebruik DBMS_RESOURCE_MANAGER_PRIVS.GRANT_SWITCH_CONSUMER_GROUP om de ontbrekende rechten toe te kennen.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127505634541026994)
,p_name=>'APEX.AUTHENTICATION.SESSION_SENTRY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de sessiesentryfunctie.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127505756296026995)
,p_name=>'APEX.AUTHENTICATION.SESSION_VERIFY_FUNCTION.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de sessieverificatiefunctie.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127505951174026995)
,p_name=>'APEX.AUTHENTICATION.SSO.ASK_FOR_INSTALLATION'
,p_message_language=>'nl'
,p_message_text=>'Vraag de %0 beheerder om de engine voor Single Sign-On van Oracle Application Server te configureren:'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127516306776026998)
,p_name=>'APEX.AUTHENTICATION.SSO.BAD_URLC'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige %0 in %1-token dat via SSO is geretourneerd'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127493042421026991)
,p_name=>'APEX.AUTHENTICATION.SSO.FIX_PARTNER_APP'
,p_message_language=>'nl'
,p_message_text=>'Bewerk het verificatieschema en voeg de applicatienaam toe.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127516017451026998)
,p_name=>'APEX.AUTHENTICATION.SSO.ILLEGAL_CALLER'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige aanroeper van procedure %0:'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127516272672026998)
,p_name=>'APEX.AUTHENTICATION.SSO.INVALID_APP_SESSION'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige applicatiesessie in URLC-token: %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127515808746026998)
,p_name=>'APEX.AUTHENTICATION.SSO.MISSING_APP_REGISTRATION'
,p_message_language=>'nl'
,p_message_text=>'Fout bij portal_sso_redirect: applicatieregistratiegegevens ontbreken: %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127505853071026995)
,p_name=>'APEX.AUTHENTICATION.SSO.PACKAGE_MISSING'
,p_message_language=>'nl'
,p_message_text=>'Het WWSEC_SSO_ENABLER_PRIVATE-package bestaat niet of is ongeldig.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127492982949026991)
,p_name=>'APEX.AUTHENTICATION.SSO.PARTNER_APP_IS_NULL'
,p_message_language=>'nl'
,p_message_text=>'De naam van de geregistreerde partnerapplicatie is niet gevonden in het verificatieschema.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127515995930026998)
,p_name=>'APEX.AUTHENTICATION.SSO.REGISTER_APP'
,p_message_language=>'nl'
,p_message_text=>'Registreer deze applicatie zoals beschreven in de installatiehandleiding.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127506030867026995)
,p_name=>'APEX.AUTHENTICATION.SSO.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de SSO-verificatie.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127619303936027029)
,p_name=>'APEX.AUTHENTICATION.UNAUTHORIZED_URL'
,p_message_language=>'nl'
,p_message_text=>'Niet-geautoriseerde URL: %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127505405443026994)
,p_name=>'APEX.AUTHENTICATION.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de verificatie.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127470891589026984)
,p_name=>'APEX.AUTHENTICATION.WORKSPACE_NOT_ASSIGNED'
,p_message_language=>'nl'
,p_message_text=>'Werkruimte "%0" is inactief. Neem contact op met de beheerder.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127471551974026984)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED'
,p_message_language=>'nl'
,p_message_text=>'%0'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127480676913026987)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.APPLICATION'
,p_message_language=>'nl'
,p_message_text=>'Toegang is geweigerd door beveiligingscontrole van de applicatie.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127480746436026987)
,p_name=>'APEX.AUTHORIZATION.ACCESS_DENIED.PAGE'
,p_message_language=>'nl'
,p_message_text=>'Toegang is geweigerd door beveiligingscontrole van de pagina.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127480800636026987)
,p_name=>'APEX.AUTHORIZATION.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de autorisatie.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127549985214027008)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX'
,p_message_language=>'nl'
,p_message_text=>'Opgebouwd met %0 met behulp van %1'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127550078943027008)
,p_name=>'APEX.BUILT_WITH_LOVE_USING_APEX.ACCESSIBLE.LOVE'
,p_message_language=>'nl'
,p_message_text=>'love'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127609858526027026)
,p_name=>'APEX.CALENDAR.EVENT_DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Eventbeschrijving'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127609695156027026)
,p_name=>'APEX.CALENDAR.EVENT_END'
,p_message_language=>'nl'
,p_message_text=>'Einddatum'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127609920450027026)
,p_name=>'APEX.CALENDAR.EVENT_ID'
,p_message_language=>'nl'
,p_message_text=>'Event-ID'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127609528115027026)
,p_name=>'APEX.CALENDAR.EVENT_START'
,p_message_language=>'nl'
,p_message_text=>'Begindatum'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127609798571027026)
,p_name=>'APEX.CALENDAR.EVENT_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Titel activiteit'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127452348293026979)
,p_name=>'APEX.CARD'
,p_message_language=>'nl'
,p_message_text=>'Kaart'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127452526245026979)
,p_name=>'APEX.CARD.CARD_ACTION'
,p_message_language=>'nl'
,p_message_text=>'Kaartactie'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127493204394026991)
,p_name=>'APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX'
,p_message_language=>'nl'
,p_message_text=>'Visueel verborgen selectievakje'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127495126101026991)
,p_name=>'APEX.CHECKSUM.CONTENT_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Fout in inhoud controletelling'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127495092152026991)
,p_name=>'APEX.CHECKSUM.FORMAT_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Fout in indeling controletelling'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127564982506027012)
,p_name=>'APEX.CLIPBOARD.COPIED'
,p_message_language=>'nl'
,p_message_text=>'Gekopieerd naar klembord'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127564450572027012)
,p_name=>'APEX.CLIPBOARD.NOTSUP'
,p_message_language=>'nl'
,p_message_text=>unistr('In deze browser wordt kopi\00EBren via een knop of menu niet ondersteund. Probeer Ctrl+C of Command+C.')
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127550680643027008)
,p_name=>'APEX.CLOSE_NOTIFICATION'
,p_message_language=>'nl'
,p_message_text=>'Sluiten'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127429049971026971)
,p_name=>'APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'nl'
,p_message_text=>'De inhoud van Code Editor overschrijdt de maximale lengte van het item (feitelijke %0, toegestane %1 tekens)'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127609110617027025)
,p_name=>'APEX.COLOR_PICKER.CONTRAST'
,p_message_language=>'nl'
,p_message_text=>'Contrast'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127603619216027024)
,p_name=>'APEX.COLOR_PICKER.CURRENT'
,p_message_language=>'nl'
,p_message_text=>'Huidige'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127603571221027024)
,p_name=>'APEX.COLOR_PICKER.INITIAL'
,p_message_language=>'nl'
,p_message_text=>'Oorspronkelijke'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127607746828027025)
,p_name=>'APEX.COLOR_PICKER.INVALID_COLOR'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet een geldige kleur zijn. Bijvoorbeeld: %0'
,p_is_js_message=>true
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127470195247026984)
,p_name=>'APEX.COLOR_PICKER.MORE_PRESET_COLORS'
,p_message_language=>'nl'
,p_message_text=>'Meer kleuren'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127470293876026984)
,p_name=>'APEX.COLOR_PICKER.OPEN'
,p_message_language=>'nl'
,p_message_text=>'Kleurenkiezer openen'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127427311977026970)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.ALPHA_SLIDER'
,p_message_language=>'nl'
,p_message_text=>'Alfa-schuifregelaar, horizontale schuifregelaar. Gebruik pijltoetsen om te navigeren.'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127427058243026970)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.COLOR_SPECTRUM'
,p_message_language=>'nl'
,p_message_text=>'Kleurenspectrum, 4-zijdige schuifregelaar. Gebruik pijltoetsen om te navigeren.'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127427130601026970)
,p_name=>'APEX.COLOR_PICKER.SPECTRUM.HUE_SLIDER'
,p_message_language=>'nl'
,p_message_text=>'Tintschuifregelaar, verticale schuifregelaar. Gebruik pijltoetsen om te navigeren.'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127603420352027024)
,p_name=>'APEX.COLOR_PICKER.TITLE'
,p_message_language=>'nl'
,p_message_text=>'Kleur kiezen'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127603702438027024)
,p_name=>'APEX.COLOR_PICKER.TOGGLE_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Kleuropmaak wijzigen'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127641617774027035)
,p_name=>'APEX.COMBOBOX.LIST_OF_VALUES'
,p_message_language=>'nl'
,p_message_text=>'Waardelijst'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127641757537027035)
,p_name=>'APEX.COMBOBOX.SHOW_ALL_VALUES'
,p_message_language=>'nl'
,p_message_text=>'Lijst openen voor: %0'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127622096183027029)
,p_name=>'APEX.COMPLETED_STATE'
,p_message_language=>'nl'
,p_message_text=>'(Voltooid)'
,p_is_js_message=>true
,p_version_scn=>2693119
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127510988942026996)
,p_name=>'APEX.CONTACT_ADMIN'
,p_message_language=>'nl'
,p_message_text=>'Neem contact op met de applicatiebeheerder.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127526421344027001)
,p_name=>'APEX.CONTACT_ADMIN.DEBUG'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Neem contact op met de applicatiebeheerder.',
'Details van dit incident zijn beschikbaar via foutenopsporings-ID "%0".'))
,p_version_scn=>2693099
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127608064087027025)
,p_name=>'APEX.CORRECT_ERRORS'
,p_message_language=>'nl'
,p_message_text=>'Corrigeer de fouten voordat u doorgaat.'
,p_is_js_message=>true
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127453319486026979)
,p_name=>'APEX.CS.ACTIVE_VALUE_CHIP'
,p_message_language=>'nl'
,p_message_text=>'%0. Klik op ''Backspace'' om te verwijderen.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127551597361027008)
,p_name=>'APEX.CS.MATCHES_FOUND'
,p_message_language=>'nl'
,p_message_text=>'%0 matches gevonden'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127433493015026972)
,p_name=>'APEX.CS.MATCH_FOUND'
,p_message_language=>'nl'
,p_message_text=>'1 overeenkomst gevonden'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127551423382027008)
,p_name=>'APEX.CS.NO_MATCHES'
,p_message_language=>'nl'
,p_message_text=>'Geen matches gevonden'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127427857550026971)
,p_name=>'APEX.CS.OTHERS_GROUP'
,p_message_language=>'nl'
,p_message_text=>'Overige'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127427741317026971)
,p_name=>'APEX.CS.SELECTED_VALUES_COUNTER'
,p_message_language=>'nl'
,p_message_text=>'%0 geselecteerde waarden'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127622529634027030)
,p_name=>'APEX.CURRENT_PROGRESS'
,p_message_language=>'nl'
,p_message_text=>'Huidige voortgang'
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127608454384027025)
,p_name=>'APEX.DATA.LOAD.FILE_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Het bestand dat is opgegeven in item %0 bestaat niet in APEX_APPLICATION_TEMP_FILES.'
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127596921689027022)
,p_name=>'APEX.DATA_HAS_CHANGED'
,p_message_language=>'nl'
,p_message_text=>'De huidige versie van de gegevens in de database is gewijzigd nadat de gebruiker het updateproces heeft gestart.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127566002234027013)
,p_name=>'APEX.DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'nl'
,p_message_text=>'Niet laden'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127612327588027026)
,p_name=>'APEX.DATA_LOAD.FAILED'
,p_message_language=>'nl'
,p_message_text=>'Fout bij voorverwerking'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127612158251027026)
,p_name=>'APEX.DATA_LOAD.INSERT'
,p_message_language=>'nl'
,p_message_text=>'Rij invoegen'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127625798666027030)
,p_name=>'APEX.DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'nl'
,p_message_text=>'Volgnummer : Actie'
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127612297425027026)
,p_name=>'APEX.DATA_LOAD.UPDATE'
,p_message_language=>'nl'
,p_message_text=>'Rij bijwerken'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127440725609026975)
,p_name=>'APEX.DATEPICKER.ACTIONS'
,p_message_language=>'nl'
,p_message_text=>'Acties'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127468305553026983)
,p_name=>'APEX.DATEPICKER.AM_PM'
,p_message_language=>'nl'
,p_message_text=>'AM/PM'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127454486389026979)
,p_name=>'APEX.DATEPICKER.BOUNDARY_ITEM_FORMAT_INVALID'
,p_message_language=>'nl'
,p_message_text=>'%0 moet een datumkiezer of een geldige datum zijn, bijvoorbeeld %1.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127563678144027012)
,p_name=>'APEX.DATEPICKER.CLEAR'
,p_message_language=>'nl'
,p_message_text=>'Wissen'
,p_is_js_message=>true
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127471887119026984)
,p_name=>'APEX.DATEPICKER.DONE'
,p_message_language=>'nl'
,p_message_text=>'Voltooid'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127482877967026988)
,p_name=>'APEX.DATEPICKER.FORMAT_NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'%0 bevat niet-ondersteunde onderdelen in het opmaakmasker: %1'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127468012692026983)
,p_name=>'APEX.DATEPICKER.HOUR'
,p_message_language=>'nl'
,p_message_text=>'Uur'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127551965654027008)
,p_name=>'APEX.DATEPICKER.ICON_TEXT'
,p_message_language=>'nl'
,p_message_text=>'Pop-upkalender: %0'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127467830298026983)
,p_name=>'APEX.DATEPICKER.ISO_WEEK'
,p_message_language=>'nl'
,p_message_text=>'Week'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127467944857026983)
,p_name=>'APEX.DATEPICKER.ISO_WEEK_ABBR'
,p_message_language=>'nl'
,p_message_text=>'WK'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127468203792026983)
,p_name=>'APEX.DATEPICKER.MINUTES'
,p_message_language=>'nl'
,p_message_text=>'Minuten'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127468407888026983)
,p_name=>'APEX.DATEPICKER.MONTH'
,p_message_language=>'nl'
,p_message_text=>'Maand'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127468812157026984)
,p_name=>'APEX.DATEPICKER.NEXT_MONTH'
,p_message_language=>'nl'
,p_message_text=>'Volgende maand'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127438445222026974)
,p_name=>'APEX.DATEPICKER.POPUP'
,p_message_language=>'nl'
,p_message_text=>'Pop-up voor %0'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127468736524026984)
,p_name=>'APEX.DATEPICKER.PREVIOUS_MONTH'
,p_message_language=>'nl'
,p_message_text=>'Vorige maand'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127561268007027011)
,p_name=>'APEX.DATEPICKER.READONLY_DATEPICKER'
,p_message_language=>'nl'
,p_message_text=>'Alleen-lezen-datumkiezer'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127469631358026984)
,p_name=>'APEX.DATEPICKER.SELECT_DATE'
,p_message_language=>'nl'
,p_message_text=>'Datum selecteren'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127438518387026974)
,p_name=>'APEX.DATEPICKER.SELECT_DATE_AND_TIME'
,p_message_language=>'nl'
,p_message_text=>'Datum en tijd selecteren'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127435731440026973)
,p_name=>'APEX.DATEPICKER.SELECT_DAY'
,p_message_language=>'nl'
,p_message_text=>'Dag selecteren'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127439117670026974)
,p_name=>'APEX.DATEPICKER.SELECT_MONTH_AND_YEAR'
,p_message_language=>'nl'
,p_message_text=>'Maand en jaar selecteren'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127435917188026973)
,p_name=>'APEX.DATEPICKER.SELECT_TIME'
,p_message_language=>'nl'
,p_message_text=>'Tijd selecteren'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127436434615026973)
,p_name=>'APEX.DATEPICKER.TODAY'
,p_message_language=>'nl'
,p_message_text=>'Vandaag'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127454010363026979)
,p_name=>'APEX.DATEPICKER.VALUE_INVALID'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet een geldige datum zijn. Bijvoorbeeld: %0.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127453708778026979)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_BETWEEN'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet tussen %0 en %1 liggen.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127453885254026979)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_AFTER'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet gelijk zijn aan of later zijn dan %0.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127453917199026979)
,p_name=>'APEX.DATEPICKER.VALUE_MUST_BE_ON_OR_BEFORE'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet gelijk zijn aan of eerder zijn dan %0.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127445319109026976)
,p_name=>'APEX.DATEPICKER.VISUALLY_HIDDEN_EDIT'
,p_message_language=>'nl'
,p_message_text=>'Visueel verborgen bewerking'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127468699766026983)
,p_name=>'APEX.DATEPICKER.YEAR'
,p_message_language=>'nl'
,p_message_text=>'Jaar'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127555623570027009)
,p_name=>'APEX.DATEPICKER_VALUE_GREATER_MAX_DATE'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# is later dan de opgegeven maximumdatum %0.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127556094068027010)
,p_name=>'APEX.DATEPICKER_VALUE_INVALID'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# komt niet overeen met de indeling %0.'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127555580392027009)
,p_name=>'APEX.DATEPICKER_VALUE_LESS_MIN_DATE'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# is eerder dan de opgegeven minimumdatum %0.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127555735703027009)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# bevindt zich niet in het geldige bereik van %0 t/m %1.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127555924855027010)
,p_name=>'APEX.DATEPICKER_VALUE_NOT_IN_YEAR_RANGE'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# bevindt zich niet binnen het geldige jaarbereik van %0 en %1.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127447740310026977)
,p_name=>'APEX.DBMS_CLOUD_INT.DBMS_CLOUD_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een interne fout opgetreden bij het verwerken van de aanvraag ''DBMS_CLOUD''.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127608399189027025)
,p_name=>'APEX.DIALOG.CANCEL'
,p_message_language=>'nl'
,p_message_text=>'Annuleren'
,p_is_js_message=>true
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127634200677027033)
,p_name=>'APEX.DIALOG.CLOSE'
,p_message_language=>'nl'
,p_message_text=>'Sluiten'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127495414357026992)
,p_name=>'APEX.DIALOG.CONFIRMATION'
,p_message_language=>'nl'
,p_message_text=>'Bevestiging'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127636240223027034)
,p_name=>'APEX.DIALOG.HELP'
,p_message_language=>'nl'
,p_message_text=>'Help'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127608134986027025)
,p_name=>'APEX.DIALOG.OK'
,p_message_language=>'nl'
,p_message_text=>'OK'
,p_is_js_message=>true
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127608281219027025)
,p_name=>'APEX.DIALOG.SAVE'
,p_message_language=>'nl'
,p_message_text=>'Opslaan'
,p_is_js_message=>true
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127475918341026986)
,p_name=>'APEX.DIALOG.TITLE'
,p_message_language=>'nl'
,p_message_text=>'Titel dialoogvenster'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127515619356026997)
,p_name=>'APEX.DIALOG.VISUALLY_HIDDEN_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Titel visueel verborgen dialoogvenster'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127436757288026973)
,p_name=>'APEX.DOCGEN'
,p_message_language=>'nl'
,p_message_text=>'Vooraf gemaakte functie van Oracle Document Generator'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127447502192026977)
,p_name=>'APEX.DOCGEN.DBMS_CLOUD_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het afdrukken van een document.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127424716303026970)
,p_name=>'APEX.DOCGEN.INVALID_OUTPUT_TYPE'
,p_message_language=>'nl'
,p_message_text=>'%s biedt geen ondersteuning voor %1 als uitvoer.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127436615287026973)
,p_name=>'APEX.DOCGEN.INVOKE_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Fout "%0" is opgetreden bij het aanroepen van de volgende, vooraf gemaakte functie van Oracle Document Generator:'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127428155006026971)
,p_name=>'APEX.DOCGEN.TEMPLATE_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'Een sjabloon is vereist.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127453539745026979)
,p_name=>'APEX.DOWNLOAD.ERROR'
,p_message_language=>'nl'
,p_message_text=>'Fout bij downloaden bestand.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127453428425026979)
,p_name=>'APEX.DOWNLOAD.NO_DATA_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen downloadbare gegevens gevonden.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127457013992026980)
,p_name=>'APEX.ENVIRONMENT.RUNTIME_ONLY'
,p_message_language=>'nl'
,p_message_text=>'Deze functie is niet beschikbaar op een Runtime-Only omgeving.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127509881550026996)
,p_name=>'APEX.ERROR'
,p_message_language=>'nl'
,p_message_text=>'Fout'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127469727478026984)
,p_name=>'APEX.ERROR.CALLBACK_FAILED'
,p_message_language=>'nl'
,p_message_text=>'De volgende fout heeft zich voorgedaan bij de uitvoering van de foutafhandelingscallback: %0'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127482306817026988)
,p_name=>'APEX.ERROR.ERROR_PAGE.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het opbouwen van de foutpagina: %0'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127471496272026984)
,p_name=>'APEX.ERROR.INTERNAL'
,p_message_language=>'nl'
,p_message_text=>'Interne fout'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127621143779027029)
,p_name=>'APEX.ERROR.INTERNAL.CONTACT_ADMINISTRATOR'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Neem contact op met de beheerder.',
'Details van dit incident zijn beschikbaar via foutenopsporings-ID "%0".'))
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127615746918027027)
,p_name=>'APEX.ERROR.ORA-16000'
,p_message_language=>'nl'
,p_message_text=>'De database is open voor alleen-lezentoegang.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127645813328027037)
,p_name=>'APEX.ERROR.ORA-28353'
,p_message_language=>'nl'
,p_message_text=>'ORA-28353: wallet is niet geopend. Applicatiegegevens zijn momenteel niet toegankelijk.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127615868762027027)
,p_name=>'APEX.ERROR.PAGE_NOT_AVAILABLE'
,p_message_language=>'nl'
,p_message_text=>'Deze pagina is niet beschikbaar.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127474447268026985)
,p_name=>'APEX.ERROR.TECHNICAL_INFO'
,p_message_language=>'nl'
,p_message_text=>'Technische informatie (alleen beschikbaar voor ontwikkelaars)'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127580390393027017)
,p_name=>'APEX.ERROR_MESSAGE_HEADING'
,p_message_language=>'nl'
,p_message_text=>'Foutmelding'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127594270155027021)
,p_name=>'APEX.EXPECTED_FORMAT'
,p_message_language=>'nl'
,p_message_text=>'Verwachte indeling: %0'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127559177695027010)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL'
,p_message_language=>'nl'
,p_message_text=>'De gebruiker staat al op de toegangscontrolelijst.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127559053381027010)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'
,p_message_language=>'nl'
,p_message_text=>'Bevestig dat u de volgende %0 gebruiker(s) wilt toevoegen aan de toegangscontrolelijst <strong>%1</strong>.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127559523112027011)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER'
,p_message_language=>'nl'
,p_message_text=>'Er bestaat een dubbele gebruiker.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127559223809027010)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN'
,p_message_language=>'nl'
,p_message_text=>'Ontbrekend apenstaartje (@) in e-mailadres'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127559322635027010)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.MISSING_DOT'
,p_message_language=>'nl'
,p_message_text=>'Ontbrekende punt (.) in e-mailadres'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127559448979027011)
,p_name=>'APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG'
,p_message_language=>'nl'
,p_message_text=>'Gebruikersnaam is te lang.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127559781883027011)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_ONLY'
,p_message_language=>'nl'
,p_message_text=>'Alleen gebruikers die zijn gedefinieerd in de toegangscontrolelijst van de applicatie hebben toegang tot deze applicatie.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127559858665027011)
,p_name=>'APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'
,p_message_language=>'nl'
,p_message_text=>'Onverwachte waarde in toegangscontrole-instelling: %0'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127559631654027011)
,p_name=>'APEX.FEATURE.ACL.INFO.ALL_USERS'
,p_message_language=>'nl'
,p_message_text=>'Alle geverifieerde gebruikers hebben toegang tot deze applicatie.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127604199033027024)
,p_name=>'APEX.FEATURE.CONFIG.DISABLED'
,p_message_language=>'nl'
,p_message_text=>'Inactief'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127604086227027024)
,p_name=>'APEX.FEATURE.CONFIG.ENABLED'
,p_message_language=>'nl'
,p_message_text=>'Geactiveerd'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127604303317027024)
,p_name=>'APEX.FEATURE.CONFIG.IS_DISABLED'
,p_message_language=>'nl'
,p_message_text=>'%0: is inactief'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127604212783027024)
,p_name=>'APEX.FEATURE.CONFIG.IS_ENABLED'
,p_message_language=>'nl'
,p_message_text=>'%0: is geactiveerd'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127452824213026979)
,p_name=>'APEX.FEATURE.CONFIG.NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'Niet ondersteund'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127514087628026997)
,p_name=>'APEX.FEATURE.CONFIG.OFF'
,p_message_language=>'nl'
,p_message_text=>'Uit'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127513957593026997)
,p_name=>'APEX.FEATURE.CONFIG.ON'
,p_message_language=>'nl'
,p_message_text=>'Aan'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127603973691027024)
,p_name=>'APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'
,p_message_language=>'nl'
,p_message_text=>unistr('niet ge\00EFdentificeerd')
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127444416043026976)
,p_name=>'APEX.FILESIZE.BYTES'
,p_message_language=>'nl'
,p_message_text=>'%0 bytes'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127444947407026976)
,p_name=>'APEX.FILESIZE.GB'
,p_message_language=>'nl'
,p_message_text=>'%0 GB'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127444643126026976)
,p_name=>'APEX.FILESIZE.KB'
,p_message_language=>'nl'
,p_message_text=>'%0 KB'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127444813749026976)
,p_name=>'APEX.FILESIZE.MB'
,p_message_language=>'nl'
,p_message_text=>'%0 MB'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127597172849027022)
,p_name=>'APEX.FILE_BROWSE.DOWNLOAD_LINK_TEXT'
,p_message_language=>'nl'
,p_message_text=>'Downloaden'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127450289047026978)
,p_name=>'APEX.FS.ACTIONS_MENU_BUTTON_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Opties'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127449946170026978)
,p_name=>'APEX.FS.ACTIONS_MENU_FILTER'
,p_message_language=>'nl'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127450154126026978)
,p_name=>'APEX.FS.ACTIONS_MENU_HIDE'
,p_message_language=>'nl'
,p_message_text=>'Facet verbergen'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127474895100026985)
,p_name=>'APEX.FS.ADD_FILTER'
,p_message_language=>'nl'
,p_message_text=>'Filter toevoegen'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127551133698027008)
,p_name=>'APEX.FS.APPLIED_FACET'
,p_message_language=>'nl'
,p_message_text=>'Toegepast filter %0'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127475556985026986)
,p_name=>'APEX.FS.APPLY'
,p_message_language=>'nl'
,p_message_text=>'Toepassen'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127594772946027021)
,p_name=>'APEX.FS.BATCH_APPLY'
,p_message_language=>'nl'
,p_message_text=>'Toepassen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127475600800026986)
,p_name=>'APEX.FS.CANCEL'
,p_message_language=>'nl'
,p_message_text=>'Annuleren'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127459430559026981)
,p_name=>'APEX.FS.CHART_BAR'
,p_message_language=>'nl'
,p_message_text=>'Staafdiagram'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127607407225027025)
,p_name=>'APEX.FS.CHART_OTHERS'
,p_message_language=>'nl'
,p_message_text=>'Overige'
,p_is_js_message=>true
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127459545012026981)
,p_name=>'APEX.FS.CHART_PIE'
,p_message_language=>'nl'
,p_message_text=>'Cirkeldiagram'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127606066215027024)
,p_name=>'APEX.FS.CHART_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Grafiek'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127459250364026981)
,p_name=>'APEX.FS.CHART_VALUE_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Aantal'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127595247303027021)
,p_name=>'APEX.FS.CLEAR'
,p_message_language=>'nl'
,p_message_text=>'Wissen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127595306591027021)
,p_name=>'APEX.FS.CLEAR_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles wissen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127595413394027021)
,p_name=>'APEX.FS.CLEAR_VALUE'
,p_message_language=>'nl'
,p_message_text=>'%0 wissen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127611969569027026)
,p_name=>'APEX.FS.COLUMN_UNAUTHORIZED'
,p_message_language=>'nl'
,p_message_text=>'Kolom %1, waarnaar wordt verwezen door facet %0, is niet beschikbaar of niet-geautoriseerd.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127422662303026969)
,p_name=>'APEX.FS.CONFIG_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Te tonen filters kiezen'
,p_is_js_message=>true
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127549178056027007)
,p_name=>'APEX.FS.COUNT_RESULTS'
,p_message_language=>'nl'
,p_message_text=>'%0 resultaten'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127549232513027008)
,p_name=>'APEX.FS.COUNT_SELECTED'
,p_message_language=>'nl'
,p_message_text=>'%0 geselecteerd'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127552070596027008)
,p_name=>'APEX.FS.CUR_FILTERS_LM'
,p_message_language=>'nl'
,p_message_text=>'Huidige filters'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127427672256026971)
,p_name=>'APEX.FS.FACETED_SEARCH_NEEDS_REGION_QUERY'
,p_message_language=>'nl'
,p_message_text=>'Voor gefacetteerd zoeken is een gegevensbron op regioniveau vereist.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127431352408026972)
,p_name=>'APEX.FS.FACETS_LIST'
,p_message_language=>'nl'
,p_message_text=>'Filterlijst'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127610483774027026)
,p_name=>'APEX.FS.FACET_VALUE_LIMIT_EXCEEDED'
,p_message_language=>'nl'
,p_message_text=>'Afzonderlijke waardelimiet (%0) overschreden voor facet %1.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127596752618027022)
,p_name=>'APEX.FS.FC_TYPE_UNSUPPORTED_FOR_DATE_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Facet %0 wordt niet ondersteund voor DATE- of TIMESTAMP-kolommen.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127594816030027021)
,p_name=>'APEX.FS.FILTER'
,p_message_language=>'nl'
,p_message_text=>'Filter %0'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127469430840026984)
,p_name=>'APEX.FS.FILTER_APPLIED'
,p_message_language=>'nl'
,p_message_text=>'%0 (filter toegepast).'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127594922353027021)
,p_name=>'APEX.FS.GO'
,p_message_language=>'nl'
,p_message_text=>'Uitvoeren'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127464927903026982)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_C'
,p_message_language=>'nl'
,p_message_text=>'bevat %0'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127596398831027022)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_EQ'
,p_message_language=>'nl'
,p_message_text=>'is gelijk aan %0'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127464662771026982)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GT'
,p_message_language=>'nl'
,p_message_text=>'groter dan %0'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127464761318026982)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_GTE'
,p_message_language=>'nl'
,p_message_text=>'groter dan of gelijk aan %0'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127464385194026982)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LT'
,p_message_language=>'nl'
,p_message_text=>'kleiner dan %0'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127464594501026982)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_LTE'
,p_message_language=>'nl'
,p_message_text=>'kleiner dan of gelijk aan %0'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127463811268026982)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NC'
,p_message_language=>'nl'
,p_message_text=>'bevat niet %0'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127449621513026978)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NEQ'
,p_message_language=>'nl'
,p_message_text=>'niet gelijk is aan %0'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127463917572026982)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_NSTARTS'
,p_message_language=>'nl'
,p_message_text=>'begint niet met %0'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127464840649026982)
,p_name=>'APEX.FS.INPUT_CURRENT_LABEL_STARTS'
,p_message_language=>'nl'
,p_message_text=>'begint met %0'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127462999103026982)
,p_name=>'APEX.FS.INPUT_FACET_SELECTOR'
,p_message_language=>'nl'
,p_message_text=>'Facetselectie'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127438710762026974)
,p_name=>'APEX.FS.INPUT_INVALID_FILTER_PREFIX'
,p_message_language=>'nl'
,p_message_text=>'Filtervoorvoegsel "%0" is ongeldig voor facet "%1".'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127437155005026974)
,p_name=>'APEX.FS.INPUT_MISSING_FILTER_PREFIX'
,p_message_language=>'nl'
,p_message_text=>'Filtervoorvoegsel ontbreekt voor facet "%0".'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127471399222026984)
,p_name=>'APEX.FS.INPUT_OPERATOR'
,p_message_language=>'nl'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127453208900026979)
,p_name=>'APEX.FS.INPUT_OPERATOR.C'
,p_message_language=>'nl'
,p_message_text=>'bevat'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127452259346026979)
,p_name=>'APEX.FS.INPUT_OPERATOR.EQ'
,p_message_language=>'nl'
,p_message_text=>'is gelijk aan'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127452910202026979)
,p_name=>'APEX.FS.INPUT_OPERATOR.GT'
,p_message_language=>'nl'
,p_message_text=>'groter dan'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127453007090026979)
,p_name=>'APEX.FS.INPUT_OPERATOR.GTE'
,p_message_language=>'nl'
,p_message_text=>'groter dan of gelijk aan'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127452688773026979)
,p_name=>'APEX.FS.INPUT_OPERATOR.LT'
,p_message_language=>'nl'
,p_message_text=>'kleiner dan'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127452738370026979)
,p_name=>'APEX.FS.INPUT_OPERATOR.LTE'
,p_message_language=>'nl'
,p_message_text=>'kleiner dan of gelijk aan'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127463747541026982)
,p_name=>'APEX.FS.INPUT_OPERATOR.NC'
,p_message_language=>'nl'
,p_message_text=>'bevat niet'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127452468791026979)
,p_name=>'APEX.FS.INPUT_OPERATOR.NEQ'
,p_message_language=>'nl'
,p_message_text=>'is niet gelijk aan'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127463679248026982)
,p_name=>'APEX.FS.INPUT_OPERATOR.NSTARTS'
,p_message_language=>'nl'
,p_message_text=>'begint niet met'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127453145456026979)
,p_name=>'APEX.FS.INPUT_OPERATOR.STARTS'
,p_message_language=>'nl'
,p_message_text=>'begint met'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127471798165026984)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Het gegevenstype %0 (%1) wordt niet ondersteund voor het invoerveldfacet.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127438639552026974)
,p_name=>'APEX.FS.INPUT_UNSUPPORTED_FILTER_FOR_DATA_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Filter "%0" wordt niet ondersteund voor facet "%1" (gegevenssoort %2).'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127471209906026984)
,p_name=>'APEX.FS.INPUT_VALUE'
,p_message_language=>'nl'
,p_message_text=>'Waarde'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127596518598027022)
,p_name=>'APEX.FS.NO_SEARCH_COLUMNS_PROVIDED'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen zoekkolommen opgegeven voor facet %0.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127422795810026969)
,p_name=>'APEX.FS.OPEN_CONFIG'
,p_message_language=>'nl'
,p_message_text=>'Meer filters'
,p_is_js_message=>true
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127549310230027008)
,p_name=>'APEX.FS.RANGE_BEGIN'
,p_message_language=>'nl'
,p_message_text=>'Begin bereik:'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127596022460027021)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL'
,p_message_language=>'nl'
,p_message_text=>'%0 t/m %1'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127596173091027022)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_HI'
,p_message_language=>'nl'
,p_message_text=>'Meer dan %0'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127596240322027022)
,p_name=>'APEX.FS.RANGE_CURRENT_LABEL_OPEN_LO'
,p_message_language=>'nl'
,p_message_text=>'Minder dan %0'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127549402930027008)
,p_name=>'APEX.FS.RANGE_END'
,p_message_language=>'nl'
,p_message_text=>'Einde bereik'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127614007118027027)
,p_name=>'APEX.FS.RANGE_LOV_ITEM_INVALID'
,p_message_language=>'nl'
,p_message_text=>'Waardelijstitem #%2 ("%1") voor bereikfacet %0 is ongeldig (scheidingsteken "|" ontbreekt).'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127596480395027022)
,p_name=>'APEX.FS.RANGE_MANUAL_NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'Handmatige invoer voor bereikfacet %0 wordt momenteel niet ondersteund, aangezien de kolom een DATE- of TIMESTAMP-kolom is.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127595778480027021)
,p_name=>'APEX.FS.RANGE_TEXT'
,p_message_language=>'nl'
,p_message_text=>'t/m'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127459318057026981)
,p_name=>'APEX.FS.REMOVE_CHART'
,p_message_language=>'nl'
,p_message_text=>'Grafiek verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127545744425027006)
,p_name=>'APEX.FS.RESET'
,p_message_language=>'nl'
,p_message_text=>'Opnieuw instellen'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127595121446027021)
,p_name=>'APEX.FS.SEARCH_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Zoeken'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127595074639027021)
,p_name=>'APEX.FS.SEARCH_PLACEHOLDER'
,p_message_language=>'nl'
,p_message_text=>'Bezig met zoeken...'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127595942575027021)
,p_name=>'APEX.FS.SELECT_PLACEHOLDER'
,p_message_language=>'nl'
,p_message_text=>'- Selecteren -'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127459105441026981)
,p_name=>'APEX.FS.SHOW_CHART'
,p_message_language=>'nl'
,p_message_text=>'Grafiek tonen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127595529332027021)
,p_name=>'APEX.FS.SHOW_LESS'
,p_message_language=>'nl'
,p_message_text=>'Minder tonen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127595630130027021)
,p_name=>'APEX.FS.SHOW_MORE'
,p_message_language=>'nl'
,p_message_text=>'Alles tonen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127595872986027021)
,p_name=>'APEX.FS.STAR_RATING_LABEL'
,p_message_language=>'nl'
,p_message_text=>'%0 en meer sterren'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127551089641027008)
,p_name=>'APEX.FS.SUGGESTIONS'
,p_message_language=>'nl'
,p_message_text=>'Filtersuggesties'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127596668225027022)
,p_name=>'APEX.FS.TEXT_FIELD_ONLY_FOR_NUMBER_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Tekstveldfacet %0 wordt momenteel alleen ondersteund voor NUMBER-kolommen.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127422119599026969)
,p_name=>'APEX.FS.TOTAL_ROW_COUNT_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Totaal aantal rijen'
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127612006112027026)
,p_name=>'APEX.FS.UNSUPPORTED_DATA_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Het gegevenstype %0 (%1) wordt niet ondersteund voor gefacetteerd zoeken.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127542276162027005)
,p_name=>'APEX.FS.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'nl'
,p_message_text=>'Visueel verborgen koptekst'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127604597839027024)
,p_name=>'APEX.GO_TO_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Ga naar fout'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127560541747027011)
,p_name=>'APEX.GV.AGG_CONTEXT'
,p_message_language=>'nl'
,p_message_text=>'Aggregatie.'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127488440560026989)
,p_name=>'APEX.GV.BLANK_HEADING'
,p_message_language=>'nl'
,p_message_text=>'Lege koptekst'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127569835025027014)
,p_name=>'APEX.GV.BREAK_COLLAPSE'
,p_message_language=>'nl'
,p_message_text=>'Groepsverandering samenvouwen'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127560660494027011)
,p_name=>'APEX.GV.BREAK_CONTEXT'
,p_message_language=>'nl'
,p_message_text=>'Groepsverandering.'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127569753969027014)
,p_name=>'APEX.GV.BREAK_EXPAND'
,p_message_language=>'nl'
,p_message_text=>'Groepsverandering uitvouwen'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127569547374027014)
,p_name=>'APEX.GV.DELETED_COUNT'
,p_message_language=>'nl'
,p_message_text=>'%0 rijen verwijderd'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127638692977027034)
,p_name=>'APEX.GV.DUP_REC_ID'
,p_message_language=>'nl'
,p_message_text=>'Dubbele identiteit'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127431504962026972)
,p_name=>'APEX.GV.ENTER_EDIT_MODE'
,p_message_language=>'nl'
,p_message_text=>'Bewerkingsmodus openen'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127557495824027010)
,p_name=>'APEX.GV.FIRST_PAGE'
,p_message_language=>'nl'
,p_message_text=>'Eerste'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127430360032026971)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.HIDE_DIALOG'
,p_message_language=>'nl'
,p_message_text=>'Dialoogvenster verbergen'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127429348848026971)
,p_name=>'APEX.GV.FLOATING_ITEM.DIALOG.TITLE'
,p_message_language=>'nl'
,p_message_text=>'Zwevende overschrijding celinhoud'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127430635885026972)
,p_name=>'APEX.GV.FLOATING_ITEM.SHOW_DIALOG'
,p_message_language=>'nl'
,p_message_text=>'Overschrijdingsinhoud tonen'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127504802027026994)
,p_name=>'APEX.GV.FOOTER_LANDMARK'
,p_message_language=>'nl'
,p_message_text=>'Voettekst raster'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127560894723027011)
,p_name=>'APEX.GV.GROUP_CONTEXT'
,p_message_language=>'nl'
,p_message_text=>'Groepskoptekst'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127560745994027011)
,p_name=>'APEX.GV.HEADER_CONTEXT'
,p_message_language=>'nl'
,p_message_text=>'Koptekst.'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127557580062027010)
,p_name=>'APEX.GV.LAST_PAGE'
,p_message_language=>'nl'
,p_message_text=>'Laatste'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127431758919026972)
,p_name=>'APEX.GV.LEAVE_EDIT_MODE'
,p_message_language=>'nl'
,p_message_text=>'Bewerkingsmodus verlaten'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127456464950026980)
,p_name=>'APEX.GV.LOAD_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles laden'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127579356538027017)
,p_name=>'APEX.GV.LOAD_MORE'
,p_message_language=>'nl'
,p_message_text=>'Meer tonen'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127557215864027010)
,p_name=>'APEX.GV.NEXT_PAGE'
,p_message_language=>'nl'
,p_message_text=>'Volgende'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127560961777027011)
,p_name=>'APEX.GV.PAGE_RANGE'
,p_message_language=>'nl'
,p_message_text=>'Paginarijen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127470072344026984)
,p_name=>'APEX.GV.PAGE_RANGE_ENTITY'
,p_message_language=>'nl'
,p_message_text=>'Pagina %0'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127557695773027010)
,p_name=>'APEX.GV.PAGE_RANGE_XY'
,p_message_language=>'nl'
,p_message_text=>'%0 - %1'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127557767104027010)
,p_name=>'APEX.GV.PAGE_RANGE_XYZ'
,p_message_language=>'nl'
,p_message_text=>'%0 - %1 van %2'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127614604415027027)
,p_name=>'APEX.GV.PAGE_SELECTION'
,p_message_language=>'nl'
,p_message_text=>'Paginaselectie'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127505171714026994)
,p_name=>'APEX.GV.PAGINATION_LANDMARK'
,p_message_language=>'nl'
,p_message_text=>'Paginering'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127557363577027010)
,p_name=>'APEX.GV.PREV_PAGE'
,p_message_language=>'nl'
,p_message_text=>'Vorige'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127455321168026980)
,p_name=>'APEX.GV.RANGE_DISPLAY'
,p_message_language=>'nl'
,p_message_text=>'Bereikweergave'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127488703839026990)
,p_name=>'APEX.GV.ROWS_SELECTION'
,p_message_language=>'nl'
,p_message_text=>'Selectie van rijen'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127638457629027034)
,p_name=>'APEX.GV.ROW_ADDED'
,p_message_language=>'nl'
,p_message_text=>'Toegevoegd'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127638514411027034)
,p_name=>'APEX.GV.ROW_CHANGED'
,p_message_language=>'nl'
,p_message_text=>'Gewijzigd'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127646840980027037)
,p_name=>'APEX.GV.ROW_COLUMN_CONTEXT'
,p_message_language=>'nl'
,p_message_text=>'Rijreeks raster %0, kolom %1.'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127646941863027037)
,p_name=>'APEX.GV.ROW_CONTEXT'
,p_message_language=>'nl'
,p_message_text=>'Rijreeks raster %0.'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127638308646027034)
,p_name=>'APEX.GV.ROW_DELETED'
,p_message_language=>'nl'
,p_message_text=>'Verwijderd'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127561192031027011)
,p_name=>'APEX.GV.ROW_HEADER'
,p_message_language=>'nl'
,p_message_text=>'Rijkoptekst'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127488663314026990)
,p_name=>'APEX.GV.ROW_SELECTION'
,p_message_language=>'nl'
,p_message_text=>'Rijselectie'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127456577038026980)
,p_name=>'APEX.GV.SELECTED_ENTITY_COUNT'
,p_message_language=>'nl'
,p_message_text=>'%0 %1 geselecteerd.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127556611339027010)
,p_name=>'APEX.GV.SELECTION_CELL_COUNT'
,p_message_language=>'nl'
,p_message_text=>'%0 cellen geselecteerd'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127557894504027010)
,p_name=>'APEX.GV.SELECTION_COUNT'
,p_message_language=>'nl'
,p_message_text=>'%0 rijen geselecteerd'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127599967567027023)
,p_name=>'APEX.GV.SELECT_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles selecteren'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127493404427026991)
,p_name=>'APEX.GV.SELECT_ALL_ROWS'
,p_message_language=>'nl'
,p_message_text=>'Alle rijen selecteren'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127569602319027014)
,p_name=>'APEX.GV.SELECT_PAGE_N'
,p_message_language=>'nl'
,p_message_text=>'Pagina %0'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127561033136027011)
,p_name=>'APEX.GV.SELECT_ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij selecteren'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127561334930027011)
,p_name=>'APEX.GV.SORTED_ASCENDING'
,p_message_language=>'nl'
,p_message_text=>'Oplopend gesorteerd %0'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127561461825027011)
,p_name=>'APEX.GV.SORTED_DESCENDING'
,p_message_language=>'nl'
,p_message_text=>'Aflopend gesorteerd %0'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127556762540027010)
,p_name=>'APEX.GV.SORT_ASCENDING'
,p_message_language=>'nl'
,p_message_text=>'Oplopend sorteren'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127557066160027010)
,p_name=>'APEX.GV.SORT_ASCENDING_ORDER'
,p_message_language=>'nl'
,p_message_text=>'Oplopend sorteren %0'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127556859959027010)
,p_name=>'APEX.GV.SORT_DESCENDING'
,p_message_language=>'nl'
,p_message_text=>'Aflopend sorteren'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127557144730027010)
,p_name=>'APEX.GV.SORT_DESCENDING_ORDER'
,p_message_language=>'nl'
,p_message_text=>'Aflopend sorteren %0'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127556965481027010)
,p_name=>'APEX.GV.SORT_OFF'
,p_message_language=>'nl'
,p_message_text=>'Niet sorteren'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127422557845026969)
,p_name=>'APEX.GV.SORT_OPTIONS'
,p_message_language=>'nl'
,p_message_text=>'Sorteeropties'
,p_is_js_message=>true
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127504993100026994)
,p_name=>'APEX.GV.STATE_ICONS_LANDMARK'
,p_message_language=>'nl'
,p_message_text=>'Statuspictogrammen'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127505065234026994)
,p_name=>'APEX.GV.STATUS_LANDMARK'
,p_message_language=>'nl'
,p_message_text=>'Status raster'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127434899444026973)
,p_name=>'APEX.GV.TOTAL_ENTITY_PLURAL'
,p_message_language=>'nl'
,p_message_text=>'%0 %1'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127434597412026973)
,p_name=>'APEX.GV.TOTAL_ENTITY_SINGULAR'
,p_message_language=>'nl'
,p_message_text=>'1 %0'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127569427338027014)
,p_name=>'APEX.GV.TOTAL_PAGES'
,p_message_language=>'nl'
,p_message_text=>'Totaal %0'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127488245386026989)
,p_name=>'APEX.HTTP.REQUEST_FAILED'
,p_message_language=>'nl'
,p_message_text=>'De HTTP-aanvraag bij "%0" is mislukt.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127489853059026990)
,p_name=>'APEX.ICON_LIST.COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Kolom %0'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127490066512026990)
,p_name=>'APEX.ICON_LIST.COLUMN_AND_ROW'
,p_message_language=>'nl'
,p_message_text=>'Kolom %0 en rij %1'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127490329301026990)
,p_name=>'APEX.ICON_LIST.FIRST_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Al in de eerste kolom. Kolom %0 en rij %1'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127490224089026990)
,p_name=>'APEX.ICON_LIST.FIRST_ROW'
,p_message_language=>'nl'
,p_message_text=>'Al op de eerste rij. Kolom %0 en rij %1'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127635859661027033)
,p_name=>'APEX.ICON_LIST.GRID_DIM'
,p_message_language=>'nl'
,p_message_text=>'Weergegeven in %0 kolommen en %1 rijen.'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127490494550026990)
,p_name=>'APEX.ICON_LIST.LAST_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Al in de laatste kolom. Kolom %0 en rij %1'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127490152491026990)
,p_name=>'APEX.ICON_LIST.LAST_ROW'
,p_message_language=>'nl'
,p_message_text=>'Al op de laatste rij. Kolom %0 en rij %1'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127569360007027014)
,p_name=>'APEX.ICON_LIST.LIST_DIM'
,p_message_language=>'nl'
,p_message_text=>'Weergegeven in %0 rijen.'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127489937270026990)
,p_name=>'APEX.ICON_LIST.ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij %0'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127646623529027037)
,p_name=>'APEX.IG.ACC_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Interactief raster %0'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127553765848027009)
,p_name=>'APEX.IG.ACTIONS'
,p_message_language=>'nl'
,p_message_text=>'Acties'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127554765273027009)
,p_name=>'APEX.IG.ADD'
,p_message_language=>'nl'
,p_message_text=>'Toevoegen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127554641742027009)
,p_name=>'APEX.IG.ADD_ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij toevoegen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127640216810027035)
,p_name=>'APEX.IG.AGGREGATE'
,p_message_language=>'nl'
,p_message_text=>'Aggregatie'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127625850941027030)
,p_name=>'APEX.IG.AGGREGATION'
,p_message_language=>'nl'
,p_message_text=>'Aggregatie'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127627521348027031)
,p_name=>'APEX.IG.ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127585154340027018)
,p_name=>'APEX.IG.ALL_TEXT_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Alle tekstkolommen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127586304596027019)
,p_name=>'APEX.IG.ALTERNATIVE'
,p_message_language=>'nl'
,p_message_text=>'Alternatief'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127587470769027019)
,p_name=>'APEX.IG.AND'
,p_message_language=>'nl'
,p_message_text=>'en'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127606808176027025)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT'
,p_message_language=>'nl'
,p_message_text=>'Aantal verschillende waarden (ongeveer)'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127641226818027035)
,p_name=>'APEX.IG.APPROX_COUNT_DISTINCT_OVERALL'
,p_message_language=>'nl'
,p_message_text=>'Algeheel aantal verschillende waarden (ongeveer)'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127624409049027030)
,p_name=>'APEX.IG.AREA'
,p_message_language=>'nl'
,p_message_text=>'Vlak'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127626364661027031)
,p_name=>'APEX.IG.ASCENDING'
,p_message_language=>'nl'
,p_message_text=>'Oplopend'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127586451196027019)
,p_name=>'APEX.IG.AUTHORIZATION'
,p_message_language=>'nl'
,p_message_text=>'Autorisatie'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127640377531027035)
,p_name=>'APEX.IG.AUTO'
,p_message_language=>'nl'
,p_message_text=>'Automatisch'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127607219674027025)
,p_name=>'APEX.IG.AVG'
,p_message_language=>'nl'
,p_message_text=>'Gemiddelde'
,p_is_js_message=>true
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127640982551027035)
,p_name=>'APEX.IG.AVG_OVERALL'
,p_message_language=>'nl'
,p_message_text=>'Algeheel gemiddelde'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127623973978027030)
,p_name=>'APEX.IG.AXIS_LABEL_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Titel labelas'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127624152432027030)
,p_name=>'APEX.IG.AXIS_VALUE_DECIMAL'
,p_message_language=>'nl'
,p_message_text=>'Decimalen'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127624030515027030)
,p_name=>'APEX.IG.AXIS_VALUE_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Titel waardeas'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127630168806027032)
,p_name=>'APEX.IG.BACKGROUND_COLOR'
,p_message_language=>'nl'
,p_message_text=>'Achtergrondkleur'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127624532652027030)
,p_name=>'APEX.IG.BAR'
,p_message_language=>'nl'
,p_message_text=>'Staaf'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127581789706027017)
,p_name=>'APEX.IG.BETWEEN'
,p_message_language=>'nl'
,p_message_text=>'tussen'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127631382044027032)
,p_name=>'APEX.IG.BOTH'
,p_message_language=>'nl'
,p_message_text=>'Beide'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127624618469027030)
,p_name=>'APEX.IG.BUBBLE'
,p_message_language=>'nl'
,p_message_text=>'Bellen'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127554985251027009)
,p_name=>'APEX.IG.CANCEL'
,p_message_language=>'nl'
,p_message_text=>'Annuleren'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127587373446027019)
,p_name=>'APEX.IG.CASE_SENSITIVE'
,p_message_language=>'nl'
,p_message_text=>'Hoofdlettergevoelig'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127641899669027035)
,p_name=>'APEX.IG.CASE_SENSITIVE_WITH_BRACKETS'
,p_message_language=>'nl'
,p_message_text=>'(Hoofdlettergevoelig)'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127613169189027027)
,p_name=>'APEX.IG.CHANGES_SAVED'
,p_message_language=>'nl'
,p_message_text=>'Wijzigingen zijn opgeslagen.'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127555361052027009)
,p_name=>'APEX.IG.CHANGE_VIEW'
,p_message_language=>'nl'
,p_message_text=>'Weergave wijzigen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127588435654027019)
,p_name=>'APEX.IG.CHART'
,p_message_language=>'nl'
,p_message_text=>'Grafiek'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127584994205027018)
,p_name=>'APEX.IG.CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'nl'
,p_message_text=>'Uw query overschrijdt het maximum van %0 gegevenspunten per grafiek. Pas een filter toe om het aantal records in uw basisquery te verminderen.'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127553603767027009)
,p_name=>'APEX.IG.CHART_VIEW'
,p_message_language=>'nl'
,p_message_text=>'Grafiekweergave'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127562026596027011)
,p_name=>'APEX.IG.CLEAR'
,p_message_language=>'nl'
,p_message_text=>'Wissen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127623477145027030)
,p_name=>'APEX.IG.CLOSE_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Sluiten'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127630350531027032)
,p_name=>'APEX.IG.COLORS'
,p_message_language=>'nl'
,p_message_text=>'Kleuren'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127607637662027025)
,p_name=>'APEX.IG.COLOR_PREVIEW'
,p_message_language=>'nl'
,p_message_text=>'Voorbeeld'
,p_is_js_message=>true
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127586767822027019)
,p_name=>'APEX.IG.COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Kolom'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127553829734027009)
,p_name=>'APEX.IG.COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Kolommen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127515770151026997)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS'
,p_message_language=>'nl'
,p_message_text=>'Kolomacties'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127515583381026997)
,p_name=>'APEX.IG.COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'nl'
,p_message_text=>'Acties voor kolom "%0"'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127632195901027032)
,p_name=>'APEX.IG.COLUMN_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Kolomdoel'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127586804884027019)
,p_name=>'APEX.IG.COMPLEX'
,p_message_language=>'nl'
,p_message_text=>'Complex'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127554016660027009)
,p_name=>'APEX.IG.COMPUTE'
,p_message_language=>'nl'
,p_message_text=>'Berekenen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127582386263027017)
,p_name=>'APEX.IG.CONTAINS'
,p_message_language=>'nl'
,p_message_text=>'bevat'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127588630689027019)
,p_name=>'APEX.IG.CONTROL_BREAK'
,p_message_language=>'nl'
,p_message_text=>'Groepsverandering'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127561822600027011)
,p_name=>'APEX.IG.COPY_CB'
,p_message_language=>'nl'
,p_message_text=>unistr('Naar klembord kopi\00EBren')
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127561994282027011)
,p_name=>'APEX.IG.COPY_DOWN'
,p_message_language=>'nl'
,p_message_text=>unistr('Omlaag kopi\00EBren')
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127606603983027025)
,p_name=>'APEX.IG.COUNT'
,p_message_language=>'nl'
,p_message_text=>'Aantal'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127606729279027025)
,p_name=>'APEX.IG.COUNT_DISTINCT'
,p_message_language=>'nl'
,p_message_text=>'Aantal verschillende waarden'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127641159779027035)
,p_name=>'APEX.IG.COUNT_DISTINCT_OVERALL'
,p_message_language=>'nl'
,p_message_text=>'Algeheel aantal verschillende waarden'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127641082460027035)
,p_name=>'APEX.IG.COUNT_OVERALL'
,p_message_language=>'nl'
,p_message_text=>'Algeheel aantal'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127638719961027034)
,p_name=>'APEX.IG.CREATE_X'
,p_message_language=>'nl'
,p_message_text=>'%0 maken'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127585347198027018)
,p_name=>'APEX.IG.DATA'
,p_message_language=>'nl'
,p_message_text=>'Gegevens'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127631983654027032)
,p_name=>'APEX.IG.DATA_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Gegevenssoort'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127631588868027032)
,p_name=>'APEX.IG.DATE'
,p_message_language=>'nl'
,p_message_text=>'Datum'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127612942515027027)
,p_name=>'APEX.IG.DATE_INVALID_VALUE'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige datumwaarde'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127583078878027018)
,p_name=>'APEX.IG.DAYS'
,p_message_language=>'nl'
,p_message_text=>'dagen'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127586096375027018)
,p_name=>'APEX.IG.DEFAULT_SETTINGS'
,p_message_language=>'nl'
,p_message_text=>'Standaardinstellingen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127585852513027018)
,p_name=>'APEX.IG.DEFAULT_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Standaardtype'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127554801923027009)
,p_name=>'APEX.IG.DELETE'
,p_message_language=>'nl'
,p_message_text=>'Verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127633089203027033)
,p_name=>'APEX.IG.DELETE_REPORT_CONFIRM'
,p_message_language=>'nl'
,p_message_text=>'Wilt u dit rapport verwijderen?'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127590451194027020)
,p_name=>'APEX.IG.DELETE_ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127589264025027019)
,p_name=>'APEX.IG.DELETE_ROWS'
,p_message_language=>'nl'
,p_message_text=>'Rijen verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127626495022027031)
,p_name=>'APEX.IG.DESCENDING'
,p_message_language=>'nl'
,p_message_text=>'Aflopend'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127588133277027019)
,p_name=>'APEX.IG.DETAIL'
,p_message_language=>'nl'
,p_message_text=>'Detail'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127553360967027009)
,p_name=>'APEX.IG.DETAIL_VIEW'
,p_message_language=>'nl'
,p_message_text=>'Detailweergave'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127615431591027027)
,p_name=>'APEX.IG.DIRECTION'
,p_message_language=>'nl'
,p_message_text=>'Richting'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127587807523027019)
,p_name=>'APEX.IG.DISABLED'
,p_message_language=>'nl'
,p_message_text=>'Inactief'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127582493332027017)
,p_name=>'APEX.IG.DOES_NOT_CONTAIN'
,p_message_language=>'nl'
,p_message_text=>'bevat niet'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127582607654027017)
,p_name=>'APEX.IG.DOES_NOT_START_WITH'
,p_message_language=>'nl'
,p_message_text=>'begint niet met'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127624733652027030)
,p_name=>'APEX.IG.DONUT'
,p_message_language=>'nl'
,p_message_text=>'Ring'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127588888105027019)
,p_name=>'APEX.IG.DOWNLOAD'
,p_message_language=>'nl'
,p_message_text=>'Downloaden'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127479159851026987)
,p_name=>'APEX.IG.DOWNLOAD_DATA_ONLY'
,p_message_language=>'nl'
,p_message_text=>'Alleen gegevens'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127634047650027033)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT'
,p_message_language=>'nl'
,p_message_text=>'Indeling kiezen'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127494231198026991)
,p_name=>'APEX.IG.DOWNLOAD_FORMAT_NOT_ENABLED'
,p_message_language=>'nl'
,p_message_text=>'Downloadindeling %0 is niet actief.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127627199258027031)
,p_name=>'APEX.IG.DUPLICATE_AGGREGATION'
,p_message_language=>'nl'
,p_message_text=>'Dubbele aggregatie'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127627296988027031)
,p_name=>'APEX.IG.DUPLICATE_CONTROLBREAK'
,p_message_language=>'nl'
,p_message_text=>'Dubbele groepsverandering'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127590334676027020)
,p_name=>'APEX.IG.DUPLICATE_ROW'
,p_message_language=>'nl'
,p_message_text=>'Dubbele rij'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127589133478027019)
,p_name=>'APEX.IG.DUPLICATE_ROWS'
,p_message_language=>'nl'
,p_message_text=>'Dubbele rijen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127554411511027009)
,p_name=>'APEX.IG.EDIT'
,p_message_language=>'nl'
,p_message_text=>'Bewerken'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127626228343027031)
,p_name=>'APEX.IG.EDIT_CHART'
,p_message_language=>'nl'
,p_message_text=>'Grafiek bewerken'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127506728437026995)
,p_name=>'APEX.IG.EDIT_CONTROL'
,p_message_language=>'nl'
,p_message_text=>'%0 bewerken'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127637662608027034)
,p_name=>'APEX.IG.EDIT_GROUP_BY'
,p_message_language=>'nl'
,p_message_text=>'GROUP BY bewerken'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127544834384027006)
,p_name=>'APEX.IG.EDIT_MODE'
,p_message_language=>'nl'
,p_message_text=>'%0 in bewerkmodus'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127520438253026999)
,p_name=>'APEX.IG.EDIT_MODE_DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Raster staat in bewerkingsmodus, loslaten om naar weergavemodus te gaan'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127633678444027033)
,p_name=>'APEX.IG.EMAIL_BCC'
,p_message_language=>'nl'
,p_message_text=>'Blinde kopie (BCC)'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127633895680027033)
,p_name=>'APEX.IG.EMAIL_BODY'
,p_message_language=>'nl'
,p_message_text=>'Bericht'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127633564079027033)
,p_name=>'APEX.IG.EMAIL_CC'
,p_message_language=>'nl'
,p_message_text=>'Kopie (CC)'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127633266960027033)
,p_name=>'APEX.IG.EMAIL_SENT'
,p_message_language=>'nl'
,p_message_text=>'Het e-mailbericht is verstuurd.'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127633742330027033)
,p_name=>'APEX.IG.EMAIL_SUBJECT'
,p_message_language=>'nl'
,p_message_text=>'Onderwerp'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127633434042027033)
,p_name=>'APEX.IG.EMAIL_TO'
,p_message_language=>'nl'
,p_message_text=>'Ontvangers (t/m)'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127587573808027019)
,p_name=>'APEX.IG.ENABLED'
,p_message_language=>'nl'
,p_message_text=>'Geactiveerd'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127580752824027017)
,p_name=>'APEX.IG.EQUALS'
,p_message_language=>'nl'
,p_message_text=>'is gelijk aan'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127587654420027019)
,p_name=>'APEX.IG.EXPRESSION'
,p_message_language=>'nl'
,p_message_text=>'Uitdrukking'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127632601622027033)
,p_name=>'APEX.IG.FD_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Type'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127599830326027023)
,p_name=>'APEX.IG.FILE_PREPARED'
,p_message_language=>'nl'
,p_message_text=>'Het bestand is voorbereid. Het downloaden wordt gestart.'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127562175927027011)
,p_name=>'APEX.IG.FILL'
,p_message_language=>'nl'
,p_message_text=>'Opvulling'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127564346975027012)
,p_name=>'APEX.IG.FILL_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Selectie opvullen met'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127564239639027012)
,p_name=>'APEX.IG.FILL_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Selectie opvullen'
,p_is_js_message=>true
,p_version_scn=>2693107
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127553915366027009)
,p_name=>'APEX.IG.FILTER'
,p_message_language=>'nl'
,p_message_text=>'Filter'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127586950131027019)
,p_name=>'APEX.IG.FILTERS'
,p_message_language=>'nl'
,p_message_text=>'Filters'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127640619913027035)
,p_name=>'APEX.IG.FILTER_WITH_DOTS'
,p_message_language=>'nl'
,p_message_text=>'Filteren...'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127626690073027031)
,p_name=>'APEX.IG.FIRST'
,p_message_language=>'nl'
,p_message_text=>'Eerste'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127554172656027009)
,p_name=>'APEX.IG.FLASHBACK'
,p_message_language=>'nl'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127585444046027018)
,p_name=>'APEX.IG.FORMAT'
,p_message_language=>'nl'
,p_message_text=>'Opmaak'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127631255481027032)
,p_name=>'APEX.IG.FORMATMASK'
,p_message_language=>'nl'
,p_message_text=>'Opmaakmasker'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127632996406027033)
,p_name=>'APEX.IG.FORMAT_CSV'
,p_message_language=>'nl'
,p_message_text=>'CSV'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127632820889027033)
,p_name=>'APEX.IG.FORMAT_HTML'
,p_message_language=>'nl'
,p_message_text=>'HTML'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127543956207027006)
,p_name=>'APEX.IG.FORMAT_PDF'
,p_message_language=>'nl'
,p_message_text=>'PDF'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127477828736026986)
,p_name=>'APEX.IG.FORMAT_XLSX'
,p_message_language=>'nl'
,p_message_text=>'Excel'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127590017905027020)
,p_name=>'APEX.IG.FREEZE'
,p_message_language=>'nl'
,p_message_text=>'Blokkeren'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127587763535027019)
,p_name=>'APEX.IG.FUNCTIONS_AND_OPERATORS'
,p_message_language=>'nl'
,p_message_text=>'Functies en operators'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127624809035027030)
,p_name=>'APEX.IG.FUNNEL'
,p_message_language=>'nl'
,p_message_text=>'Trechter'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127606539557027025)
,p_name=>'APEX.IG.GO'
,p_message_language=>'nl'
,p_message_text=>'Uitvoeren'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127581307386027017)
,p_name=>'APEX.IG.GREATER_THAN'
,p_message_language=>'nl'
,p_message_text=>'groter dan'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127581465270027017)
,p_name=>'APEX.IG.GREATER_THAN_OR_EQUALS'
,p_message_language=>'nl'
,p_message_text=>'is groter dan of gelijk aan'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127588033490027019)
,p_name=>'APEX.IG.GRID'
,p_message_language=>'nl'
,p_message_text=>'Raster'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127553124462027009)
,p_name=>'APEX.IG.GRID_VIEW'
,p_message_language=>'nl'
,p_message_text=>'Rasterweergave'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127627495606027031)
,p_name=>'APEX.IG.GROUP'
,p_message_language=>'nl'
,p_message_text=>'Groep'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127588239814027019)
,p_name=>'APEX.IG.GROUP_BY'
,p_message_language=>'nl'
,p_message_text=>'Groeperen op'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127553429706027009)
,p_name=>'APEX.IG.GROUP_BY_VIEW'
,p_message_language=>'nl'
,p_message_text=>'GROUP BY-weergave'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127631894487027032)
,p_name=>'APEX.IG.HD_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Voorwaardetype'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127630703523027032)
,p_name=>'APEX.IG.HEADING'
,p_message_language=>'nl'
,p_message_text=>'Koptekst'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127630994188027032)
,p_name=>'APEX.IG.HEADING_ALIGN'
,p_message_language=>'nl'
,p_message_text=>'Koptekstuitlijning'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127640522702027035)
,p_name=>'APEX.IG.HELP'
,p_message_language=>'nl'
,p_message_text=>'Help'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127636009444027034)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>U kunt gegevens rechtstreeks in dit interactieve raster invoegen, bijwerken en verwijderen.</p>',
'',
'<p>U voegt een nieuwe rij in door op de knop ''Rij toevoegen'' te klikken.</p>',
'',
'<p>Bestaande gegevens bewerkt u door te dubbelklikken op een specifieke cel. Als u uitgebreidere bewerkingen wilt uitvoeren, klikt u op ''Bewerken'' om naar de bewerkingsmodus te schakelen. In de bewerkingsmodus kunt u specifieke cellen bewerken door e'
||'rop te klikken of het toetsenbord te gebruiken.</p>',
'',
'<p>Via het menu ''Wijzigen'' kunt u rijen dupliceren en verwijderen. U activeert het menu ''Wijzigen'' als u de selectievakjes inschakelt om een of meer rijen te selecteren.</p>',
'',
'<p>Als u een geselecteerde rij wilt dupliceren, klikt u op het menu ''Wijzigen'' en selecteert u ''Dubbele rijen''. Als u een geselecteerde rij wilt verwijderen, klikt u op het menu ''Wijzigen'' en selecteert u ''Rij verwijderen''.</p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127638110186027034)
,p_name=>'APEX.IG.HELP.ACTIONS.EDITING_HEADING'
,p_message_language=>'nl'
,p_message_text=>'Bewerkingsmogelijkheden'
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127638237526027034)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In een interactief raster wordt een set gegevens in een zoekbaar, aanpasbaar rapport gepresenteerd. U kunt diverse bewerkingen uitvoeren om de geretourneerde records te beperken. Daarnaast kunt u de manier wijzigen waarop de gegevens worden weerge'
||'geven, .</p>',
'',
'<p>Met het zoekveld kunt u de geretourneerde records filteren. Klik op ''Acties'' om toegang te krijgen tot diverse opties voor het wijzigen van de rapportlay-out of gebruik de kolomkopmenu''s van de weergegeven kolommen.</p>',
'',
'<p>Met ''Rapportinstellingen'' kunt u uw aanpassingen opslaan in een rapport. U kunt ook de gegevens uit het rapport downloaden naar een extern bestand of de gegevens via e-mail naar uzelf of anderen versturen.</p>',
'',
'<p>Zie "Using Interactive Grids" in <em>Oracle APEX End User''s Guide</em> voor meer informatie.'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127637932353027034)
,p_name=>'APEX.IG.HELP.ACTIONS.INTRO_HEADING'
,p_message_language=>'nl'
,p_message_text=>'Overzicht'
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127635951907027034)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Met de ingebouwde mogelijkheden kunt u het interactieve raster aanpassen, zodat gegevens op verschillende manieren worden weergegeven.</p>',
'',
unistr('<p>In de kolomkoptekstmenu''s of het menu ''Acties'' kunt u bepalen welke kolommen moeten worden weergegeven, in welke volgorde ze moeten worden weergegeven en welke kolommen moeten worden bevroren. U kunt ook verschillende gegevensfilters defini\00EBren en')
||' de geretourneerde gegevens sorteren.</p>',
'',
'<p>Met de Knop ''Bekijken'' (naast het zoekveld) kunt u andere gegevensweergaven openen die mogelijk door de applicatieontwikkelaar zijn gedefinieerd. U kunt ook een grafiek maken of een bestaande grafiek bekijken.</p>  ',
'',
'<p><em>Opmerking: klik op <strong>Help</strong> in de dialoogvensters van het interactieve raster voor meer informatie over de geselecteerde functie.</em></p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127638022884027034)
,p_name=>'APEX.IG.HELP.ACTIONS.REPORTING_HEADING'
,p_message_language=>'nl'
,p_message_text=>'Rapportagemogelijkheden'
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127589050453027019)
,p_name=>'APEX.IG.HELP.ACTIONS_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij interactieve rasters'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127634875246027033)
,p_name=>'APEX.IG.HELP.AGGREGATE'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster aggregeert u kolommen. Geaggregeerde waarden worden onderaan de gegevens weergegeven of, als er groepsveranderingen zijn gedefinieerd, onderaan elke verandering.</p>',
'',
'<p><strong>Aggregatielijst</strong><br>',
'In de aggregatielijst worden gedefinieerde aggregaties weergegeven. U deactiveert een bestaande aggregatie door de selectie ervan op te heffen.<br>',
'Klik op ''Toevoegen'' ( &plus; ) om een nieuwe aggregatie te maken of op ''Verwijderen'' ( &minus; ) om een bestaande aggregatie te verwijderen.</p>',
'',
'<p><strong>Aggregatie-instellingen</strong><br>',
'In het scherm aan de rechterkant definieert u de aggregatie.<br>',
'Selecteer de kolomnaam en het aggregatietype.<br>',
'Desgewenst kunt u functie-info voor de aggregatie invoeren.<br>',
'Als u een groepsverandering hebt gedefinieerd en u <strong>Algehele waarde tonen</strong> selecteert, wordt de algehele gemiddelde, totale of dezelfde waarde onderaan de gegevens weergegeven.</p>',
'',
'<p><em>Opmerking: u kunt het dialoogvenster ''Aggregatie'' openen via het menu ''Acties'' of door op de kolomkoptekst en ''Som'' ( &sum; ) te klikken.</em></p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127637070925027034)
,p_name=>'APEX.IG.HELP.AGGREGATE_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij aggregatie'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127635556560027033)
,p_name=>'APEX.IG.HELP.CHART'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster definieert u een grafiek die wordt weergegeven als een aparte gegevensweergave.<br>',
'Selecteer een grafiektype en grafiekattributen.</p>',
'<p><strong>Grafiekattributen</strong><br>',
'De beschikbare grafiekattributen zijn afhankelijk van het grafiektype.</p>',
'<p>',
'<ul>',
'  <li>Selecteer de kolom die de waarde voor het attribuut bevat:',
'    <ul>',
'      <li>Label - De tekst voor elk gegevenspunt.</li>',
'      <li>Waarde - De gegevens die moeten worden geplot.</li>',
unistr('      <li>Reeks - Voor het defini\00EBren van een dynamische zoekopdracht met meerdere reeksen.</li>'),
'      <li>Openen - De dagelijkse openingsprijs van een aandeel (alleen aandelengrafieken).</li>',
'      <li>Sluiten - De dagelijkse sluitingsprijs van een aandeel (alleen aandelengrafieken).</li>',
'      <li>T/m - De t/m-waarde (alleen bereik- en aandelengrafieken).</li>',
'      <li>Vanaf - De vanaf-waarde (alleen bereik- en aandelengrafieken).</li>',
'      <li>Volume - Het dagelijks aandelenvolume (alleen aandelengrafieken).</li>',
'      <li>Doel - De doelwaarde (alleen trechtergrafieken).</li>',
'      <li>X - De x-aswaarde (alleen ballon- en spreidingsdiagrammen).</li>',
'      <li>Y - De y-aswaarde (alleen ballon- en spreidingsdiagrammen).</li>',
'      <li>Z - De breedte van de staaf of straal van de ballon (alleen staaf-, ballon- en bereikdiagrammen).</li>',
'    </ul>',
'  </li>',
'  <li>Richting - Verticaal of horizontaal.</li>',
'  <li>Aggregatie - Selecteer hoe de grafiekwaarden moeten worden geaggregeerd.</li>',
'  <li>Stapel - Geef op of de gegevensitems moeten worden gestapeld.</li>',
'  <li>Sorteren op - Sorteren op het label of op de waarde(n).',
'    <ul>',
'      <li>Richting - Waarden sorteren in oplopende of aflopende volgorde.</li>',
'      <li>NULL-waarden - Geef op hoe records met NULL-waarden moeten worden gesorteerd in vergelijking met records met niet-NULL-waarden.</li>',
'    </ul>',
'  </li>',
'  <li>Decimalen</li>',
'  <li>Titel labelas</li>',
'  <li>Titel waarde-as</li>',
'</ul>',
'</p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127637442496027034)
,p_name=>'APEX.IG.HELP.CHART_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij grafieken'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127634560111027033)
,p_name=>'APEX.IG.HELP.COLUMNS'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster kiest u welke kolommen moeten worden weergegeven en in welke volgorde.</p>',
'',
'<p>U verbergt een kolom door de selectie ervan op te heffen.<br>',
'U kunt kolommen opnieuw ordenen door op ''Omhoog verplaatsen'' ( &uarr; ) of ''Omlaag verplaatsen'' ( &darr; ) te klikken.<br>',
'Met de dropdownselectie kunt u alle kolommen, weergegeven kolommen of niet-weergegeven kolommen in een lijst plaatsen.</p>',
'',
'<p>Desgewenst kunt u in het scherm de minimum breedte van een kolom in pixels opgeven.</p>',
'',
'<p><em>Opmerking: u kunt ook weergegeven kolommen opnieuw ordenen door op de greep voor slepen (aan het begin van de kolomkop) te klikken en de kolom naar links of rechts te slepen. U kunt ook de kolombreedte van weergegeven kolommen wijzigen door he'
||'t kolomscheidingsteken (tussen kopteksten) te selecteren en naar links of rechts te verplaatsen.</em></p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127637386088027034)
,p_name=>'APEX.IG.HELP.COLUMNS_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij kolommen'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127634937881027033)
,p_name=>'APEX.IG.HELP.COMPUTE'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster definieert u aanvullende kolommen op basis van wiskundige en functionele berekeningen die op bestaande kolommen worden uitgevoerd.</p>',
'',
'<p><strong>Berekeningenlijst</strong><br>',
'In de berekeningenlijst worden gedefinieerde berekeningen weergegeven. U deactiveert een bestaande berekening door de selectie ervan op te heffen.<br>',
'Klik op ''Toevoegen'' ( &plus; ) om een nieuwe berekening toe te voegen of op ''Verwijderen'' ( &minus; ) om een bestaande berekening te verwijderen.</p>',
'',
'<p><strong>Berekeningsinstellingen</strong><br>',
unistr('Gebruik het scherm om de berekening te defini\00EBren.<br>'),
'Voer de kolomdetails in zoals koptekst en label, en selecteer de uitlijningsinstellingen.<br> ',
'In het tekstgebied ''Uitdrukking'' voert u de kolom(men) en bijbehorende functies voor de berekening in.<br>',
'Selecteer het gewenste gegevenstype en desgewenst een opmaakmasker voor de nieuwe kolom.</p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127636908864027034)
,p_name=>'APEX.IG.HELP.COMPUTE_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij berekenen'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127635271884027033)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster definieert u een groepsverandering voor een of meer kolommen.</p>',
'',
'<p><strong>Lijst met groepsveranderingen</strong><br>',
'In de lijst met groepsveranderingen worden gedefinieerde groepsveranderingen weergegeven. U deactiveert een bestaande groepsveranderingskolom door de selectie ervan op te heffen.<br>',
'Klik op ''Toevoegen'' ( &plus; ) om een nieuwe kolom op te nemen in de groepsverandering of op ''Verwijderen'' ( &minus; ) om een bestaande kolom uit de groepsverandering te verwijderen.<br>',
'Als u kolommen opnieuw wilt ordenen, klikt u op ''Omhoog verplaatsen'' ( &uarr; ) of ''Omlaag verplaatsen'' ( &darr; ) om de geselecteerde kolom omhoog of omlaag te verplaatsen ten opzichte van de andere kolommen.</p>',
'',
'<p><strong>Instellingen voor groepsveranderingen</strong><br>',
unistr('Gebruik het scherm om de groepsveranderingskolom te defini\00EBren.<br>'),
'Selecteer een groepsveranderingskolom, de sorteerrichting en hoe NULL-kolommen (kolommen zonder waarde) moeten worden geordend.</p>',
'',
unistr('<p><em>Opmerking: wanneer u het interactieve raster bekijkt, kunt u een groepsverandering defini\00EBren door op een kolomkoptekst te klikken en het groepsveranderingspictogram te selecteren.</em></p>')))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127636646950027034)
,p_name=>'APEX.IG.HELP.CONTROL_BREAK_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij groepsverandering'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127635498632027033)
,p_name=>'APEX.IG.HELP.DOWNLOAD'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster downloadt u de huidige rijen naar een extern bestand. Het bestand bevat alleen de kolommen die momenteel worden weergegeven, inclusief filters en sorteringen die op de gegevens zijn toegepast.</p>',
'',
'<p>Selecteer de bestandsindeling en klik op ''Downloaden''.<br>',
'Opmerking: een CSV-bestand bevat geen tekstopmaak zoals aggregaties en groepsveranderingen.</p>',
'',
'<p>Als u het bestand via e-mail wilt versturen, selecteert u ''Versturen als e-mail'' en voert u de e-mailgegevens in (ontvanger, onderwerp en bericht).</p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127636429990027034)
,p_name=>'APEX.IG.HELP.DOWNLOAD_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij downloaden'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127634692695027033)
,p_name=>'APEX.IG.HELP.FILTER'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster configureert u gegevensfilters om de geretourneerde rijen te beperken.</p>',
'',
'<p><strong>Filterlijst</strong><br>',
'In de filterlijst worden gedefinieerde filters weergegeven. U deactiveert een bestaand filter door de selectie ervan op te heffen.<br>',
'Klik op ''Toevoegen'' ( &plus; ) om een nieuw filter te maken of op ''Verwijderen'' ( &minus; ) om een bestaand filter te verwijderen.</p>',
'',
'<p><strong>Filterinstellingen</strong><br>',
unistr('In het scherm kunt u de filtereigenschappen defini\00EBren.<br>'),
'Selecteer het gewenste filtertype:<br>',
'&nbsp;&nbsp;&nbsp;Rij: filteren op een term in filterbare kolommen.<br>',
'&nbsp;&nbsp;&nbsp;Kolom: een specifieke kolom filteren met een opgegeven operator en waarde.</p>',
'',
unistr('<p><em>Opmerking: wanneer u het interactieve raster bekijkt, kunt u rijfilters defini\00EBren door rechtstreeks in het veld ''Zoeken'' te typen. Klik op ''Te doorzoeken kolommen selecteren'' om de zoekopdracht te beperken tot een specifieke kolom. Desgewenst')
||' kunt u een kolomkoptekstmenu openen en een waarde selecteren om een kolomfilter te maken.</em></p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127637263611027034)
,p_name=>'APEX.IG.HELP.FILTER_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij filteren'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127635076909027033)
,p_name=>'APEX.IG.HELP.FLASHBACK'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster kunt u de gegevens bekijken zoals deze waren op een eerder tijdstip.</p>',
'<p>Voer het aantal minuten in het verleden in om de flashback-query uit te voeren.</p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127636829300027034)
,p_name=>'APEX.IG.HELP.FLASHBACK_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij flashbacks'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127637586659027034)
,p_name=>'APEX.IG.HELP.GROUP_BY_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij GROUP BY'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127635118974027033)
,p_name=>'APEX.IG.HELP.HIGHLIGHT'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster markeert u rijen of kolommen met gegevens op basis van de ingevoerde voorwaarde.</p>',
'',
'<p><strong>Markeringenlijst</strong><br>',
'In de markeringenlijst worden gedefinieerde markeringen weergegeven. U deactiveert een bestaande markering door de selectie ervan op te heffen.<br>',
'Klik op ''Toevoegen'' ( &plus; ) om een nieuwe markering te maken of op ''Verwijderen'' ( &minus; ) om een bestaande markering te verwijderen.</p>',
'',
'<p><strong>Markeringsinstellingen</strong><br>',
unistr('Gebruik het scherm om de markeringseigenschappen te defini\00EBren.<br>'),
'Voer de naam in, selecteer ''Rij'' of ''Kolom'' en selecteer de HTML-kleurcodes voor de achtergrond en tekst.<br>',
'Selecteer het gewenste <strong>voorwaardetype</strong> om specifieke gegevens te markeren:<br>',
'&nbsp;&nbsp;&nbsp;Rij: de term in kolommen markeren.<br>',
'&nbsp;&nbsp;&nbsp;Kolom: markeren in een specifieke kolom op basis van de opgegeven operator en waarde.</p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127636741150027034)
,p_name=>'APEX.IG.HELP.HIGHLIGHT_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij markeringen'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127635395535027033)
,p_name=>'APEX.IG.HELP.REPORT'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster slaat u wijzigingen op die u hebt aangebracht in de lay-out en configuratie van het huidige raster.<br>',
unistr('Applicatieontwikkelaars kunnen meerdere alternatieve rapportlay-outs defini\00EBren. Wanneer dit is toegestaan, kunnen u en andere eindgebruikers een rapport opslaan als ''Openbaar''. Het rapport is dan beschikbaar voor alle overige gebruikers van het rast')
||unistr('er. U kunt een rapport ook opslaan als priv\00E9rapport dat alleen u kunt inzien.</p>'),
'<p>Selecteer een beschikbaar type en voer een naam in voor het opgeslagen rapport.</p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127636594184027034)
,p_name=>'APEX.IG.HELP.REPORT_TITLE'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Help bij rapporten',
''))
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127634732085027033)
,p_name=>'APEX.IG.HELP.SORT'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>In dit dialoogvenster stelt u de weergavevolgorde in.</p>',
'',
'<p><strong>Sorteerlijst</strong><br>',
'In het dialoogvenster ''Sorteren'' wordt een lijst weergegeven met geconfigureerde sorteerregels.<br>',
'Klik op ''Toevoegen'' ( &plus; ) om een sorteerkolom te maken of op ''Verwijderen'' ( &minus; ) om een sorteerkolom te verwijderen.<br>',
'Klik op ''Omhoog verplaatsen'' ( &uarr; ) en ''Omlaag verplaatsen'' ( &darr; ) om de geselecteerde sorteerkolom omhoog of omlaag te verplaatsen ten opzichte van de andere sorteerkolommen.</p>',
'',
'<p><strong>Sorteerinstellingen</strong><br>',
'Selecteer een sorteerkolom, de sorteerrichting en hoe NULL-kolommen (kolommen zonder waarde) moeten worden geordend.</p>',
'',
'<p><em>Opmerking: gegevens kunnen worden gesorteerd met kolommen die niet worden weergegeven. Niet alle kolommen zijn echter sorteerbaar.</em><br>',
'<em>U kunt weergegeven kolommen sorteren door op de pijl omhoog (oplopend) of omlaag (aflopend) aan het einde van de kolomkopteksten te klikken. Als u een volgende kolom wilt toevoegen aan een bestaande sortering, houd u Shift-toets ingedrukt en klik'
||'t u op de pijl omhoog of omlaag.</em></p>'))
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127637120079027034)
,p_name=>'APEX.IG.HELP.SORT_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij sorteren'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127636394785027034)
,p_name=>'APEX.IG.HELP.SUBSCRIPTION_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Help bij abonnement'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127589955862027020)
,p_name=>'APEX.IG.HIDE'
,p_message_language=>'nl'
,p_message_text=>'Verbergen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127554393399027009)
,p_name=>'APEX.IG.HIGHLIGHT'
,p_message_language=>'nl'
,p_message_text=>'Markering'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127623524639027030)
,p_name=>'APEX.IG.HIGH_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Hoog'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127624353141027030)
,p_name=>'APEX.IG.HORIZONTAL'
,p_message_language=>'nl'
,p_message_text=>'Horizontaal'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127582975577027018)
,p_name=>'APEX.IG.HOURS'
,p_message_language=>'nl'
,p_message_text=>'uur'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127587985077027019)
,p_name=>'APEX.IG.ICON'
,p_message_language=>'nl'
,p_message_text=>'Pictogram'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127553299442027009)
,p_name=>'APEX.IG.ICON_VIEW'
,p_message_language=>'nl'
,p_message_text=>'Pictogramweergave'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127581129721027017)
,p_name=>'APEX.IG.IN'
,p_message_language=>'nl'
,p_message_text=>'in'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127589532279027020)
,p_name=>'APEX.IG.INACTIVE_SETTING'
,p_message_language=>'nl'
,p_message_text=>'Inactieve instelling'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127589650054027020)
,p_name=>'APEX.IG.INACTIVE_SETTINGS'
,p_message_language=>'nl'
,p_message_text=>'Inactieve instellingen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127597236629027022)
,p_name=>'APEX.IG.INTERNAL_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een interne fout opgetreden bij het verwerken van de aanvraag voor het interactieve raster.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127485150297026988)
,p_name=>'APEX.IG.INVALID_COLUMN_FILTER_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Kolomfiltertype "%0" wordt niet ondersteund voor kolom "%1".'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127636118586027034)
,p_name=>'APEX.IG.INVALID_DATE_FORMAT'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige datumnotatie'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127610991018027026)
,p_name=>'APEX.IG.INVALID_FILTER_COLUMN'
,p_message_language=>'nl'
,p_message_text=>unistr('Bij interactieve rasters wordt het defini\00EBren van een filter voor kolom %0 niet ondersteund.')
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127610802096027026)
,p_name=>'APEX.IG.INVALID_FILTER_OPERATOR'
,p_message_language=>'nl'
,p_message_text=>unistr('%0 is geen geldig filtertype voor het defini\00EBren van een filter voor een interactief raster.')
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127491752238026990)
,p_name=>'APEX.IG.INVALID_NUMBER_FORMAT'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige getalnotatie'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127638889449027034)
,p_name=>'APEX.IG.INVALID_SETTING'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige instelling'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127638941376027034)
,p_name=>'APEX.IG.INVALID_SETTINGS'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige instellingen'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127630026561027032)
,p_name=>'APEX.IG.INVALID_SORT_BY'
,p_message_language=>'nl'
,p_message_text=>'''Sorteren op'' is ingesteld op %0, maar er is geen kolom geselecteerd voor %0.'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127627344695027031)
,p_name=>'APEX.IG.INVALID_VALUE'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige waarde'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127622481919027029)
,p_name=>'APEX.IG.INVISIBLE'
,p_message_language=>'nl'
,p_message_text=>'Niet weergegeven'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127581934518027017)
,p_name=>'APEX.IG.IN_THE_LAST'
,p_message_language=>'nl'
,p_message_text=>'in de afgelopen'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127582168776027017)
,p_name=>'APEX.IG.IN_THE_NEXT'
,p_message_language=>'nl'
,p_message_text=>'in de komende'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127581043874027017)
,p_name=>'APEX.IG.IS_NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'is niet leeg'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127580936519027017)
,p_name=>'APEX.IG.IS_NULL'
,p_message_language=>'nl'
,p_message_text=>'is leeg'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127630826816027032)
,p_name=>'APEX.IG.LABEL'
,p_message_language=>'nl'
,p_message_text=>'Label'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127622841092027030)
,p_name=>'APEX.IG.LABEL_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Label'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127626746930027031)
,p_name=>'APEX.IG.LAST'
,p_message_language=>'nl'
,p_message_text=>'Laatste'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127571211572027014)
,p_name=>'APEX.IG.LAST.DAY'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen dag'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127571484326027014)
,p_name=>'APEX.IG.LAST.HOUR'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen uur'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127571986541027014)
,p_name=>'APEX.IG.LAST.MINUTE'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen minuut'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127570997569027014)
,p_name=>'APEX.IG.LAST.MONTH'
,p_message_language=>'nl'
,p_message_text=>'Vorige maand'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127571039307027014)
,p_name=>'APEX.IG.LAST.WEEK'
,p_message_language=>'nl'
,p_message_text=>'Vorige week'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127571154021027014)
,p_name=>'APEX.IG.LAST.X_DAYS'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen %0 dagen'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127571395745027014)
,p_name=>'APEX.IG.LAST.X_HOURS'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen %0 uur'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127572065953027014)
,p_name=>'APEX.IG.LAST.X_MINUTES'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen %0 minuten'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127571885846027014)
,p_name=>'APEX.IG.LAST.X_MONTHS'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen %0 maanden'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127571792764027014)
,p_name=>'APEX.IG.LAST.X_WEEKS'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen %0 weken'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127570744507027014)
,p_name=>'APEX.IG.LAST.X_YEARS'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen %0 jaar'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127570818768027014)
,p_name=>'APEX.IG.LAST.YEAR'
,p_message_language=>'nl'
,p_message_text=>'Vorig jaar'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127631073728027032)
,p_name=>'APEX.IG.LAYOUT_ALIGN'
,p_message_language=>'nl'
,p_message_text=>'Celuitlijning'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127631115745027032)
,p_name=>'APEX.IG.LAYOUT_USEGROUPFOR'
,p_message_language=>'nl'
,p_message_text=>'Groep gebruiken voor'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127581557063027017)
,p_name=>'APEX.IG.LESS_THAN'
,p_message_language=>'nl'
,p_message_text=>'kleiner dan'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127581635216027017)
,p_name=>'APEX.IG.LESS_THAN_OR_EQUALS'
,p_message_language=>'nl'
,p_message_text=>'is kleiner dan of gelijk aan'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127624984819027030)
,p_name=>'APEX.IG.LINE'
,p_message_language=>'nl'
,p_message_text=>'Lijn'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127625030736027030)
,p_name=>'APEX.IG.LINE_WITH_AREA'
,p_message_language=>'nl'
,p_message_text=>'Lijn met vlak'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127631482277027032)
,p_name=>'APEX.IG.LISTAGG'
,p_message_language=>'nl'
,p_message_text=>'LISTAGG'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127623633636027030)
,p_name=>'APEX.IG.LOW_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Laag'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127633979305027033)
,p_name=>'APEX.IG.MAILADDRESSES_COMMASEP'
,p_message_language=>'nl'
,p_message_text=>'Meerdere adressen van elkaar scheiden met komma''s'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127582787061027018)
,p_name=>'APEX.IG.MATCHES_REGULAR_EXPRESSION'
,p_message_language=>'nl'
,p_message_text=>'komt overeen met reguliere expressie'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127607124156027025)
,p_name=>'APEX.IG.MAX'
,p_message_language=>'nl'
,p_message_text=>'Maximum'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127641485310027035)
,p_name=>'APEX.IG.MAX_OVERALL'
,p_message_language=>'nl'
,p_message_text=>'Algeheel maximum'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127607333928027025)
,p_name=>'APEX.IG.MEDIAN'
,p_message_language=>'nl'
,p_message_text=>'Mediaan'
,p_is_js_message=>true
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127641558437027035)
,p_name=>'APEX.IG.MEDIAN_OVERALL'
,p_message_language=>'nl'
,p_message_text=>'Algehele mediaan'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127607072354027025)
,p_name=>'APEX.IG.MIN'
,p_message_language=>'nl'
,p_message_text=>'Minimum'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127582866957027018)
,p_name=>'APEX.IG.MINUTES'
,p_message_language=>'nl'
,p_message_text=>'minuten'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127607887249027025)
,p_name=>'APEX.IG.MINUTES_AGO'
,p_message_language=>'nl'
,p_message_text=>'Minuten geleden'
,p_is_js_message=>true
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127641354267027035)
,p_name=>'APEX.IG.MIN_OVERALL'
,p_message_language=>'nl'
,p_message_text=>'Algeheel minimum'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127583281218027018)
,p_name=>'APEX.IG.MONTHS'
,p_message_language=>'nl'
,p_message_text=>'maanden'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127589833215027020)
,p_name=>'APEX.IG.MORE_DATA_FOUND'
,p_message_language=>'nl'
,p_message_text=>'De gegevens bevatten meer dan %0 rijen, wat het toegestane maximum overschrijdt. Pas meer filters toe om de resultaten te bekijken.'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127615634470027027)
,p_name=>'APEX.IG.MULTIIG_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'De statische regio-ID moet worden opgegeven omdat de pagina meerdere interactieve rasters bevat.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127585926217027018)
,p_name=>'APEX.IG.NAME'
,p_message_language=>'nl'
,p_message_text=>'Naam'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127586126357027019)
,p_name=>'APEX.IG.NAMED_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Benoemd rapport'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127570146340027014)
,p_name=>'APEX.IG.NEXT.DAY'
,p_message_language=>'nl'
,p_message_text=>'Volgende dag'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127569992960027014)
,p_name=>'APEX.IG.NEXT.HOUR'
,p_message_language=>'nl'
,p_message_text=>'Komende uur'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127572196321027014)
,p_name=>'APEX.IG.NEXT.MINUTE'
,p_message_language=>'nl'
,p_message_text=>'Komende minuut'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127570448010027014)
,p_name=>'APEX.IG.NEXT.MONTH'
,p_message_language=>'nl'
,p_message_text=>'Volgende maand'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127570320531027014)
,p_name=>'APEX.IG.NEXT.WEEK'
,p_message_language=>'nl'
,p_message_text=>'Volgende week'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127570297717027014)
,p_name=>'APEX.IG.NEXT.X_DAYS'
,p_message_language=>'nl'
,p_message_text=>'Komende %0 dagen'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127570010291027014)
,p_name=>'APEX.IG.NEXT.X_HOURS'
,p_message_language=>'nl'
,p_message_text=>'Komende %0 uur'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127572239673027014)
,p_name=>'APEX.IG.NEXT.X_MINUTES'
,p_message_language=>'nl'
,p_message_text=>'Komende %0 minuten'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127571510774027014)
,p_name=>'APEX.IG.NEXT.X_MONTHS'
,p_message_language=>'nl'
,p_message_text=>'Komende %0 maanden'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127571628429027014)
,p_name=>'APEX.IG.NEXT.X_WEEKS'
,p_message_language=>'nl'
,p_message_text=>'Komende %0 weken'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127570601582027014)
,p_name=>'APEX.IG.NEXT.X_YEARS'
,p_message_language=>'nl'
,p_message_text=>'Komende %0 jaar'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127570560267027014)
,p_name=>'APEX.IG.NEXT.YEAR'
,p_message_language=>'nl'
,p_message_text=>'Volgend jaar'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127581855216027017)
,p_name=>'APEX.IG.NOT_BETWEEN'
,p_message_language=>'nl'
,p_message_text=>'niet tussen'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127580882258027017)
,p_name=>'APEX.IG.NOT_EQUALS'
,p_message_language=>'nl'
,p_message_text=>'is niet gelijk aan'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127645622075027037)
,p_name=>'APEX.IG.NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Regio met ID %0 is geen interactief-rasterregio of bestaat niet in applicatie %1.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127581209416027017)
,p_name=>'APEX.IG.NOT_IN'
,p_message_language=>'nl'
,p_message_text=>'niet in'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127582086640027017)
,p_name=>'APEX.IG.NOT_IN_THE_LAST'
,p_message_language=>'nl'
,p_message_text=>'niet in de afgelopen'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127582233371027017)
,p_name=>'APEX.IG.NOT_IN_THE_NEXT'
,p_message_language=>'nl'
,p_message_text=>'niet in de komende'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127589786792027020)
,p_name=>'APEX.IG.NO_DATA_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Geen gegevens gevonden'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127626541439027031)
,p_name=>'APEX.IG.NULLS'
,p_message_language=>'nl'
,p_message_text=>'NULL-waarden'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127631643708027032)
,p_name=>'APEX.IG.NUMBER'
,p_message_language=>'nl'
,p_message_text=>'Numeriek'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127626817757027031)
,p_name=>'APEX.IG.OFF'
,p_message_language=>'nl'
,p_message_text=>'Uit'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127626940276027031)
,p_name=>'APEX.IG.ON'
,p_message_language=>'nl'
,p_message_text=>'Aan'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127580068120027017)
,p_name=>'APEX.IG.ONE_MINUTE_AGO'
,p_message_language=>'nl'
,p_message_text=>'1 minuut geleden'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127634459710027033)
,p_name=>'APEX.IG.OPEN_COLORPICKER'
,p_message_language=>'nl'
,p_message_text=>'Kleurenkiezer openen: %0'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127623355154027030)
,p_name=>'APEX.IG.OPEN_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Openen'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127587009820027019)
,p_name=>'APEX.IG.OPERATOR'
,p_message_language=>'nl'
,p_message_text=>'Operator'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127622755914027030)
,p_name=>'APEX.IG.ORIENTATION'
,p_message_language=>'nl'
,p_message_text=>'Afdrukstand'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127625109751027030)
,p_name=>'APEX.IG.PIE'
,p_message_language=>'nl'
,p_message_text=>'Cirkel'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127588330684027019)
,p_name=>'APEX.IG.PIVOT'
,p_message_language=>'nl'
,p_message_text=>'Draaitabel'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127553593589027009)
,p_name=>'APEX.IG.PIVOT_VIEW'
,p_message_language=>'nl'
,p_message_text=>'Draaitabelweergave'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127634355618027033)
,p_name=>'APEX.IG.PLACEHOLDER_INVALUES'
,p_message_language=>'nl'
,p_message_text=>'Waarden scheiden met "%0"'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127625232159027030)
,p_name=>'APEX.IG.POLAR'
,p_message_language=>'nl'
,p_message_text=>'Polair'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127630519105027032)
,p_name=>'APEX.IG.POSITION_CENTER'
,p_message_language=>'nl'
,p_message_text=>'Midden'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127630615799027032)
,p_name=>'APEX.IG.POSITION_END'
,p_message_language=>'nl'
,p_message_text=>'Einde'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127630437239027032)
,p_name=>'APEX.IG.POSITION_START'
,p_message_language=>'nl'
,p_message_text=>'Begin'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127586289786027019)
,p_name=>'APEX.IG.PRIMARY'
,p_message_language=>'nl'
,p_message_text=>'Primair'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127586520394027019)
,p_name=>'APEX.IG.PRIMARY_DEFAULT'
,p_message_language=>'nl'
,p_message_text=>'Primair standaardrapport'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127603019256027024)
,p_name=>'APEX.IG.PRIMARY_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Primair rapport'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127476671420026986)
,p_name=>'APEX.IG.PRINT_ACCESSIBLE.PROMPT'
,p_message_language=>'nl'
,p_message_text=>'Toegankelijkheidstags opnemen'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127474013382026985)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.HORIZONTAL.D'
,p_message_language=>'nl'
,p_message_text=>'Liggend'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127474121007026985)
,p_name=>'APEX.IG.PRINT_ORIENTATION.LOV.VERTICAL.D'
,p_message_language=>'nl'
,p_message_text=>'Staand'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127473969686026985)
,p_name=>'APEX.IG.PRINT_ORIENTATION.PROMPT'
,p_message_language=>'nl'
,p_message_text=>'Afdrukstand pagina'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127473879007026985)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A3.D'
,p_message_language=>'nl'
,p_message_text=>'A3'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127473751782026985)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.A4.D'
,p_message_language=>'nl'
,p_message_text=>'A4'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127476831591026986)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.CUSTOM.D'
,p_message_language=>'nl'
,p_message_text=>'Aangepast'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127473511227026985)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LEGAL.D'
,p_message_language=>'nl'
,p_message_text=>'Legal'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127473420271026985)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.LETTER.D'
,p_message_language=>'nl'
,p_message_text=>'Letter'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127473624888026985)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.LOV.TABLOID.D'
,p_message_language=>'nl'
,p_message_text=>'Tabloid'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127473387310026985)
,p_name=>'APEX.IG.PRINT_PAGE_SIZE.PROMPT'
,p_message_language=>'nl'
,p_message_text=>'Paginagrootte'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127438991573026974)
,p_name=>'APEX.IG.PRINT_STRIP_RICH_TEXT.PROMPT'
,p_message_language=>'nl'
,p_message_text=>'Opmaak verwijderen uit opgemaakte tekst'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127625328502027030)
,p_name=>'APEX.IG.RADAR'
,p_message_language=>'nl'
,p_message_text=>'Radar'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127625493734027030)
,p_name=>'APEX.IG.RANGE'
,p_message_language=>'nl'
,p_message_text=>'Bereik'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127635610084027033)
,p_name=>'APEX.IG.REFRESH'
,p_message_language=>'nl'
,p_message_text=>'Vernieuwen'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127590515622027020)
,p_name=>'APEX.IG.REFRESH_ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij vernieuwen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127589383143027019)
,p_name=>'APEX.IG.REFRESH_ROWS'
,p_message_language=>'nl'
,p_message_text=>'Rijen vernieuwen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127594546513027021)
,p_name=>'APEX.IG.REGION_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Interactief-rasterregio bestaat niet in applicatie %0, pagina %1 en regio %2.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127555042303027009)
,p_name=>'APEX.IG.REMOVE_CONTROL'
,p_message_language=>'nl'
,p_message_text=>'%0 verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127585621284027018)
,p_name=>'APEX.IG.REPORT'
,p_message_language=>'nl'
,p_message_text=>'Rapport'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127644842600027036)
,p_name=>'APEX.IG.REPORT.DELETED'
,p_message_language=>'nl'
,p_message_text=>'Rapport verwijderd'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127644508634027036)
,p_name=>'APEX.IG.REPORT.SAVED.ALTERNATIVE'
,p_message_language=>'nl'
,p_message_text=>'Alternatief rapport opgeslagen voor alle gebruikers'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127644447446027036)
,p_name=>'APEX.IG.REPORT.SAVED.DEFAULT'
,p_message_language=>'nl'
,p_message_text=>'Standaardrapport opgeslagen voor alle gebruikers'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127644780216027036)
,p_name=>'APEX.IG.REPORT.SAVED.PRIVATE'
,p_message_language=>'nl'
,p_message_text=>unistr('Priv\00E9rapport opgeslagen')
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127644658371027036)
,p_name=>'APEX.IG.REPORT.SAVED.PUBLIC'
,p_message_language=>'nl'
,p_message_text=>'Openbaar rapport opgeslagen voor alle gebruikers'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127594612949027021)
,p_name=>'APEX.IG.REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Opgeslagen interactief raster met naam %0 bestaat niet.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127579976294027017)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF.X.MINUTES_AGO'
,p_message_language=>'nl'
,p_message_text=>'Rastergegevens van %0 minuten geleden'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127579844222027017)
,p_name=>'APEX.IG.REPORT_DATA_AS_OF_ONE_MINUTE_AGO'
,p_message_language=>'nl'
,p_message_text=>'Rastergegevens van 1 minuut geleden'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127515392371026997)
,p_name=>'APEX.IG.REPORT_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Het interactieve rasterrapport bestaat niet.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127637850760027034)
,p_name=>'APEX.IG.REPORT_EDIT'
,p_message_language=>'nl'
,p_message_text=>'Rapport - Bewerken'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127594492405027021)
,p_name=>'APEX.IG.REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Opgeslagen interactief raster met ID %0 bestaat niet.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127637750684027034)
,p_name=>'APEX.IG.REPORT_SAVE_AS'
,p_message_language=>'nl'
,p_message_text=>'Rapport - Opslaan als'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127555112103027009)
,p_name=>'APEX.IG.REPORT_SETTINGS'
,p_message_language=>'nl'
,p_message_text=>'Rasterinstellingen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127645790098027037)
,p_name=>'APEX.IG.REPORT_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Opgeslagen interactief raster met statische ID %0 bestaat niet.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127640738561027035)
,p_name=>'APEX.IG.REPORT_VIEW'
,p_message_language=>'nl'
,p_message_text=>'Rapportweergave'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127554214810027009)
,p_name=>'APEX.IG.RESET'
,p_message_language=>'nl'
,p_message_text=>'Opnieuw instellen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127590650815027020)
,p_name=>'APEX.IG.REVERT_CHANGES'
,p_message_language=>'nl'
,p_message_text=>'Wijzigingen terugdraaien'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127589401364027020)
,p_name=>'APEX.IG.REVERT_ROWS'
,p_message_language=>'nl'
,p_message_text=>'Rijen terugdraaien'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127586608399027019)
,p_name=>'APEX.IG.ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127585573868027018)
,p_name=>'APEX.IG.ROWS_PER_PAGE'
,p_message_language=>'nl'
,p_message_text=>'Rijen per pagina'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127645325597027036)
,p_name=>'APEX.IG.ROW_ACTIONS'
,p_message_language=>'nl'
,p_message_text=>'Rijacties'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127646570588027037)
,p_name=>'APEX.IG.ROW_ACTIONS_FOR'
,p_message_language=>'nl'
,p_message_text=>'Acties voor rij %0'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127554589584027009)
,p_name=>'APEX.IG.SAVE'
,p_message_language=>'nl'
,p_message_text=>'Opslaan'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127599665357027023)
,p_name=>'APEX.IG.SAVED'
,p_message_language=>'nl'
,p_message_text=>'opgeslagen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127504262418026994)
,p_name=>'APEX.IG.SAVED_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Rapport opgeslagen: %0'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127552716768027009)
,p_name=>'APEX.IG.SAVED_REPORTS'
,p_message_language=>'nl'
,p_message_text=>'Opgeslagen rapporten'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127552812548027009)
,p_name=>'APEX.IG.SAVED_REPORT_DEFAULT'
,p_message_language=>'nl'
,p_message_text=>'Standaard'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127526334011027001)
,p_name=>'APEX.IG.SAVED_REPORT_EXISTS'
,p_message_language=>'nl'
,p_message_text=>'Er bestaat al een opgeslagen rapport met de naam %0. Voer een nieuwe naam in.'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127552994727027009)
,p_name=>'APEX.IG.SAVED_REPORT_PRIVATE'
,p_message_language=>'nl'
,p_message_text=>unistr('Priv\00E9')
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127553008059027009)
,p_name=>'APEX.IG.SAVED_REPORT_PUBLIC'
,p_message_language=>'nl'
,p_message_text=>'Openbaar'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127640410723027035)
,p_name=>'APEX.IG.SAVE_AS'
,p_message_language=>'nl'
,p_message_text=>'Opslaan als'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127588745881027019)
,p_name=>'APEX.IG.SAVE_REPORT_SETTINGS'
,p_message_language=>'nl'
,p_message_text=>'Rapportinstellingen opslaan'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127625559763027030)
,p_name=>'APEX.IG.SCATTER'
,p_message_language=>'nl'
,p_message_text=>'Spreiding'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127552612917027009)
,p_name=>'APEX.IG.SEARCH'
,p_message_language=>'nl'
,p_message_text=>'Zoeken'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127632756216027033)
,p_name=>'APEX.IG.SEARCH.ALL_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Zoeken: Alle tekstkolommen'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127552540915027009)
,p_name=>'APEX.IG.SEARCH.COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Zoeken: %0'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127632030095027032)
,p_name=>'APEX.IG.SEARCH.ORACLE_TEXT'
,p_message_language=>'nl'
,p_message_text=>'Zoeken: Volledige tekst'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127579709723027017)
,p_name=>'APEX.IG.SEARCH_FOR.X'
,p_message_language=>'nl'
,p_message_text=>'Zoeken naar ''%0'''
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127622173918027029)
,p_name=>'APEX.IG.SELECT'
,p_message_language=>'nl'
,p_message_text=>'- Selecteren -'
,p_is_js_message=>true
,p_version_scn=>2693119
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127562250713027011)
,p_name=>'APEX.IG.SELECTION'
,p_message_language=>'nl'
,p_message_text=>'Selectie'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127615331284027027)
,p_name=>'APEX.IG.SELECT_1_ROW_IN_MASTER'
,p_message_language=>'nl'
,p_message_text=>'Selecteer 1 rij in de bovenliggende regio.'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127552467778027008)
,p_name=>'APEX.IG.SELECT_COLUMNS_TO_SEARCH'
,p_message_language=>'nl'
,p_message_text=>'Te doorzoeken kolommen selecteren'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127645053293027036)
,p_name=>'APEX.IG.SEL_ACTIONS'
,p_message_language=>'nl'
,p_message_text=>'Selectie-acties'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127562462854027011)
,p_name=>'APEX.IG.SEL_MODE_CELL'
,p_message_language=>'nl'
,p_message_text=>'Celselectie'
,p_is_js_message=>true
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127562379639027011)
,p_name=>'APEX.IG.SEL_MODE_ROW'
,p_message_language=>'nl'
,p_message_text=>'Rijselectie'
,p_is_js_message=>true
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127633301292027033)
,p_name=>'APEX.IG.SEND_AS_EMAIL'
,p_message_language=>'nl'
,p_message_text=>'Versturen als e-mail'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127625949096027031)
,p_name=>'APEX.IG.SERIES_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Reeks'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127550168598027008)
,p_name=>'APEX.IG.SHOW'
,p_message_language=>'nl'
,p_message_text=>'Tonen'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127605302915027024)
,p_name=>'APEX.IG.SHOW_OVERALL_VALUE'
,p_message_language=>'nl'
,p_message_text=>'Algehele waarde tonen'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127590216402027020)
,p_name=>'APEX.IG.SINGLE_ROW_VIEW'
,p_message_language=>'nl'
,p_message_text=>unistr('Weergave met \00E9\00E9n rij')
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127588550514027019)
,p_name=>'APEX.IG.SORT'
,p_message_language=>'nl'
,p_message_text=>'Sorteren'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127626046365027031)
,p_name=>'APEX.IG.SORT_BY'
,p_message_language=>'nl'
,p_message_text=>'Sorteren op'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127645450992027036)
,p_name=>'APEX.IG.SORT_ONLY_ONE_PER_COLUMN'
,p_message_language=>'nl'
,p_message_text=>unistr('U kunt slechts \00E9\00E9n sortering per kolom defini\00EBren.')
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127645204381027036)
,p_name=>'APEX.IG.SRV_CHANGE_MENU'
,p_message_language=>'nl'
,p_message_text=>'Wijzigen'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127627029760027031)
,p_name=>'APEX.IG.STACK'
,p_message_language=>'nl'
,p_message_text=>'Stapel'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127582507404027017)
,p_name=>'APEX.IG.STARTS_WITH'
,p_message_language=>'nl'
,p_message_text=>'begint met'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127625636425027030)
,p_name=>'APEX.IG.STOCK'
,p_message_language=>'nl'
,p_message_text=>'Aandelen'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127544948229027006)
,p_name=>'APEX.IG.STRETCH_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Kolommen verbreden'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127588923317027019)
,p_name=>'APEX.IG.SUBSCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Abonnement'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127606972985027025)
,p_name=>'APEX.IG.SUM'
,p_message_language=>'nl'
,p_message_text=>'Som'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127646784343027037)
,p_name=>'APEX.IG.SUMMARY'
,p_message_language=>'nl'
,p_message_text=>'Interactief raster. Rapport: %0, weergave: %1.'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127640830745027035)
,p_name=>'APEX.IG.SUM_OVERALL'
,p_message_language=>'nl'
,p_message_text=>'Algehele som'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127623885289027030)
,p_name=>'APEX.IG.TARGET_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Doel'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127630246223027032)
,p_name=>'APEX.IG.TEXT_COLOR'
,p_message_language=>'nl'
,p_message_text=>'Tekstkleur'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127555260857027009)
,p_name=>'APEX.IG.TOGGLE'
,p_message_language=>'nl'
,p_message_text=>'In-/Uitschakelen'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127437377443026974)
,p_name=>'APEX.IG.TOOLBAR'
,p_message_language=>'nl'
,p_message_text=>'Raster'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127605214471027024)
,p_name=>'APEX.IG.TOOLTIP'
,p_message_language=>'nl'
,p_message_text=>'Functie-info'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127585769417027018)
,p_name=>'APEX.IG.TYPE'
,p_message_language=>'nl'
,p_message_text=>'Type'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127590197652027020)
,p_name=>'APEX.IG.UNFREEZE'
,p_message_language=>'nl'
,p_message_text=>'Blokkering opheffen'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127587264438027019)
,p_name=>'APEX.IG.UNIT'
,p_message_language=>'nl'
,p_message_text=>'Eenheid'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127633172181027033)
,p_name=>'APEX.IG.UNSAVED_CHANGES_CONTINUE_CONFIRM'
,p_message_language=>'nl'
,p_message_text=>'Er zijn niet-opgeslagen wijzigingen. Wilt u doorgaan?'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127587138348027019)
,p_name=>'APEX.IG.VALUE'
,p_message_language=>'nl'
,p_message_text=>'Waarde'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127622989835027030)
,p_name=>'APEX.IG.VALUE_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Waarde'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127627806920027031)
,p_name=>'APEX.IG.VALUE_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'Een waarde is verplicht.'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127613098594027027)
,p_name=>'APEX.IG.VALUE_TIMESTAMP_TZ'
,p_message_language=>'nl'
,p_message_text=>'Waarde (tijdzone kan niet worden gewijzigd)'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127631704616027032)
,p_name=>'APEX.IG.VARCHAR2'
,p_message_language=>'nl'
,p_message_text=>'Tekst'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127624233416027030)
,p_name=>'APEX.IG.VERTICAL'
,p_message_language=>'nl'
,p_message_text=>'Verticaal'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127585228079027018)
,p_name=>'APEX.IG.VIEW'
,p_message_language=>'nl'
,p_message_text=>'Weergeven'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127520391763026999)
,p_name=>'APEX.IG.VIEW_MODE_DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Raster in weergavemodus, drukken om te bewerken'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127622245797027029)
,p_name=>'APEX.IG.VISIBLE'
,p_message_language=>'nl'
,p_message_text=>'Weergegeven'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127623708660027030)
,p_name=>'APEX.IG.VOLUME_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Volume'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127583185343027018)
,p_name=>'APEX.IG.WEEKS'
,p_message_language=>'nl'
,p_message_text=>'weken'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127622398881027029)
,p_name=>'APEX.IG.WIDTH'
,p_message_language=>'nl'
,p_message_text=>'Minimumkolombreedte (pixels)'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127574354799027015)
,p_name=>'APEX.IG.X.BETWEEN.Y.AND.Z'
,p_message_language=>'nl'
,p_message_text=>'%0 tussen %1 en %2'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127574054970027015)
,p_name=>'APEX.IG.X.CONTAINS.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 bevat %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127574118038027015)
,p_name=>'APEX.IG.X.DOES_NOT_CONTAIN.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 bevat niet %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127549520624027008)
,p_name=>'APEX.IG.X.DOES_NOT_START_WITH.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 begint niet met %1.'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127572837859027015)
,p_name=>'APEX.IG.X.EQUALS.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 is gelijk aan %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127573058350027015)
,p_name=>'APEX.IG.X.GREATER_THAN.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 groter dan %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127573156690027015)
,p_name=>'APEX.IG.X.GREATER_THAN_OR_EQUALS.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 groter dan of gelijk aan %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127573818024027015)
,p_name=>'APEX.IG.X.IN.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 in %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127575028515027015)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.DAYS'
,p_message_language=>'nl'
,p_message_text=>'%0 in de afgelopen %1 dagen'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127574879420027015)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.HOURS'
,p_message_language=>'nl'
,p_message_text=>'%0 in de afgelopen %1 uur'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127574614973027015)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MINUTES'
,p_message_language=>'nl'
,p_message_text=>'%0 in de afgelopen %1 minuten'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127575480865027015)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.MONTHS'
,p_message_language=>'nl'
,p_message_text=>'%0 in de afgelopen %1 maanden'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127575233966027015)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.WEEKS'
,p_message_language=>'nl'
,p_message_text=>'%0 in de afgelopen %1 weken'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127575621212027015)
,p_name=>'APEX.IG.X.IN_THE_LAST.Y.YEARS'
,p_message_language=>'nl'
,p_message_text=>'%0 in de afgelopen %1 jaar'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127574990152027015)
,p_name=>'APEX.IG.X.IN_THE_LAST_DAY'
,p_message_language=>'nl'
,p_message_text=>'%0 in de afgelopen dag'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127574762099027015)
,p_name=>'APEX.IG.X.IN_THE_LAST_HOUR'
,p_message_language=>'nl'
,p_message_text=>'%0 in het afgelopen uur'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127574592838027015)
,p_name=>'APEX.IG.X.IN_THE_LAST_MINUTE'
,p_message_language=>'nl'
,p_message_text=>'%0 in de afgelopen minuut'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127575345270027015)
,p_name=>'APEX.IG.X.IN_THE_LAST_MONTH'
,p_message_language=>'nl'
,p_message_text=>'%0 in de afgelopen maand'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127575199847027015)
,p_name=>'APEX.IG.X.IN_THE_LAST_WEEK'
,p_message_language=>'nl'
,p_message_text=>'%0 in de afgelopen week'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127575522985027015)
,p_name=>'APEX.IG.X.IN_THE_LAST_YEAR'
,p_message_language=>'nl'
,p_message_text=>'%0 in het afgelopen jaar'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127577455953027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.DAYS'
,p_message_language=>'nl'
,p_message_text=>'%0 in de komende %1 dagen'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127577249529027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.HOURS'
,p_message_language=>'nl'
,p_message_text=>'%0 in de komende %1 uur'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127577095910027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'nl'
,p_message_text=>'%0 in de komende %1 minuten'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127577886699027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'nl'
,p_message_text=>'%0 in de komende %1 maanden'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127577671141027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'nl'
,p_message_text=>'%0 in de komende %1 weken'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127578089379027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT.Y.YEARS'
,p_message_language=>'nl'
,p_message_text=>'%0 in de komende %1 jaar'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127577329022027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT_DAY'
,p_message_language=>'nl'
,p_message_text=>'%0 in de komende dag'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127577186098027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT_HOUR'
,p_message_language=>'nl'
,p_message_text=>'%0 in het komende uur'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127576974112027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MINUTE'
,p_message_language=>'nl'
,p_message_text=>'%0 in de komende minuut'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127577755914027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT_MONTH'
,p_message_language=>'nl'
,p_message_text=>'%0 in de komende maand'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127577598068027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT_WEEK'
,p_message_language=>'nl'
,p_message_text=>'%0 in de komende week'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127577908901027016)
,p_name=>'APEX.IG.X.IN_THE_NEXT_YEAR'
,p_message_language=>'nl'
,p_message_text=>'%0 in het komende jaar'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127573588659027015)
,p_name=>'APEX.IG.X.IS_NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'%0 Is niet leeg'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127573462554027015)
,p_name=>'APEX.IG.X.IS_NULL'
,p_message_language=>'nl'
,p_message_text=>'%0 is leeg'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127573291731027015)
,p_name=>'APEX.IG.X.LESS_THAN.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 kleiner dan %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127573355082027015)
,p_name=>'APEX.IG.X.LESS_THAN_OR_EQUALS.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 kleiner dan of gelijk aan %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127573675787027015)
,p_name=>'APEX.IG.X.LIKE.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 ongeveer gelijk aan %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127574281744027015)
,p_name=>'APEX.IG.X.MATCHES_REGULAR_EXPRESSION.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 komt overeen met reguliere expressie %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127580187732027017)
,p_name=>'APEX.IG.X.MINUTES_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0 minuten geleden'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127574434534027015)
,p_name=>'APEX.IG.X.NOT_BETWEEN.Y.AND.Z'
,p_message_language=>'nl'
,p_message_text=>'%0 niet tussen %1 en %2'
,p_is_js_message=>true
,p_version_scn=>2693110
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127572978230027015)
,p_name=>'APEX.IG.X.NOT_EQUALS.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 is niet gelijk aan %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127573926735027015)
,p_name=>'APEX.IG.X.NOT_IN.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127576285541027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.DAYS'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de afgelopen %1 dagen'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127576029686027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.HOURS'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de afgelopen %1 uur'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127575863141027015)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MINUTES'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de afgelopen %1 minuten'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127576647351027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.MONTHS'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de afgelopen %1 maanden'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127576416418027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.WEEKS'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de afgelopen %1 weken'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127576886119027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST.Y.YEARS'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de afgelopen %1 jaar'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127576180359027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_DAY'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de afgelopen dag'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127575937890027015)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_HOUR'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in het afgelopen uur'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127575780664027015)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MINUTE'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de afgelopen minuut'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127576571462027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_MONTH'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de afgelopen maand'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127576339774027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_WEEK'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de afgelopen week'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127576700030027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_LAST_YEAR'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in het afgelopen jaar'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127578674561027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.DAYS'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de komende %1 dagen'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127578474123027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.HOURS'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de komende %1 uur'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127578233993027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MINUTES'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de komende %1 minuten'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127579020982027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.MONTHS'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de komende %1 maanden'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127578830101027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.WEEKS'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de komende %1 weken'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127579229404027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT.Y.YEARS'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de komende %1 jaar'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127578526463027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_DAY'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de komende dag'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127578347026027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_HOUR'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in het komende uur'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127578187735027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MINUTE'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de komende minuut'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127578953436027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_MONTH'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de komende maand'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127578714707027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_WEEK'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in de komende week'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127579157795027016)
,p_name=>'APEX.IG.X.NOT_IN_THE_NEXT_YEAR'
,p_message_language=>'nl'
,p_message_text=>'%0 niet in het komende jaar'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127573779737027015)
,p_name=>'APEX.IG.X.NOT_LIKE.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 niet ongeveer gelijk aan %1'
,p_is_js_message=>true
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127580677698027017)
,p_name=>'APEX.IG.X.STARTS_WITH.Y'
,p_message_language=>'nl'
,p_message_text=>'%0 begint met %1'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127623057667027030)
,p_name=>'APEX.IG.X_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'X'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127583347339027018)
,p_name=>'APEX.IG.YEARS'
,p_message_language=>'nl'
,p_message_text=>'jaar'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127623173208027030)
,p_name=>'APEX.IG.Y_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Y'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127623281603027030)
,p_name=>'APEX.IG.Z_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Z'
,p_is_js_message=>true
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127632257432027032)
,p_name=>'APEX.IG_FORMAT_SAMPLE_1'
,p_message_language=>'nl'
,p_message_text=>'Maandag 12 januari 2016'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127632356323027032)
,p_name=>'APEX.IG_FORMAT_SAMPLE_2'
,p_message_language=>'nl'
,p_message_text=>'Januari'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127632434152027032)
,p_name=>'APEX.IG_FORMAT_SAMPLE_3'
,p_message_language=>'nl'
,p_message_text=>'16 uur geleden'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127632537899027032)
,p_name=>'APEX.IG_FORMAT_SAMPLE_4'
,p_message_language=>'nl'
,p_message_text=>'over 16 uur'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127450505596026978)
,p_name=>'APEX.ITEM.CROPPER.APPLY'
,p_message_language=>'nl'
,p_message_text=>'Toepassen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127442502974026975)
,p_name=>'APEX.ITEM.CROPPER.HELP.TEXT'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Sleep uw afbeelding en gebruik de schuifregelaar voor zoomen om de positie in het frame te wijzigen.</p>',
'',
'<p>Als de functie voor het bijsnijden van een pictogram de focus heeft, zijn de volgende sneltoetsen beschikbaar:</p>',
'<ul>',
'    <li>Pijl naar links: afbeelding naar links verplaatsen*</li>',
'    <li>Pijl omhoog: afbeelding omhoog verplaatsen*</li>',
'    <li>Pijl naar rechts: afbeelding naar rechts verplaatsen*</li>',
'    <li>Pijl omlaag: afbeelding omlaag verplaatsen*</li>',
'    <li>I: inzoomen</li>',
'    <li>O: uitzoomen</li>',
'    <li>L: links roteren</li>',
'    <li>R: rechts roteren</li>',
'</ul>',
'',
'<p class="margin-top-md"><em>*Houd Shift ingedrukt als u de afbeelding sneller wilt verplaatsen.</em></p>'))
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127442752905026975)
,p_name=>'APEX.ITEM.CROPPER.HELP.TITLE'
,p_message_language=>'nl'
,p_message_text=>'Hulp bij bijsnijden afbeelding'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127450610961026978)
,p_name=>'APEX.ITEM.CROPPER.RESET'
,p_message_language=>'nl'
,p_message_text=>'Opnieuw instellen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127443075030026975)
,p_name=>'APEX.ITEM.CROPPER.TITLE'
,p_message_language=>'nl'
,p_message_text=>'Afbeelding bijsnijden'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127450733236026978)
,p_name=>'APEX.ITEM.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Schuifregelaar verplaatsen om zoomniveau te wijzigen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127480314990026987)
,p_name=>'APEX.ITEM.FILE.ACCEPTED_TYPES'
,p_message_language=>'nl'
,p_message_text=>'Ongeldig bestandstype. Ondersteunde bestandstypen zijn %0.'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127614745809027027)
,p_name=>'APEX.ITEM.FILE.BROWSE'
,p_message_language=>'nl'
,p_message_text=>'Bladeren'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127614437905027027)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILE'
,p_message_language=>'nl'
,p_message_text=>'Bestand kiezen'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127614531709027027)
,p_name=>'APEX.ITEM.FILE.CHOOSE_FILES'
,p_message_language=>'nl'
,p_message_text=>'Bestanden kiezen'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127480120325026987)
,p_name=>'APEX.ITEM.FILE.DROP_FILE'
,p_message_language=>'nl'
,p_message_text=>'Slepen en neerzetten'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127480500624026987)
,p_name=>'APEX.ITEM.FILE.DROP_FILES'
,p_message_language=>'nl'
,p_message_text=>'Bestanden slepen en neerzetten'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127481923814026988)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILE'
,p_message_language=>'nl'
,p_message_text=>'Selecteer een bestand of zet er een hier neer.'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127482085032026988)
,p_name=>'APEX.ITEM.FILE.DROP_OR_CHOOSE_FILES'
,p_message_language=>'nl'
,p_message_text=>'Selecteer bestanden of zet deze hier neer.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127482120618026988)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILE'
,p_message_language=>'nl'
,p_message_text=>'Selecteer een bestand of zet er een hier neer.'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127482268447026988)
,p_name=>'APEX.ITEM.FILE.DROP_OR_SELECT_FILES'
,p_message_language=>'nl'
,p_message_text=>'Selecteer bestanden of zet deze hier neer.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127480439479026987)
,p_name=>'APEX.ITEM.FILE.FILES_WITH_COUNT'
,p_message_language=>'nl'
,p_message_text=>'%0 bestanden'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127480232562026987)
,p_name=>'APEX.ITEM.FILE.MAX_FILE_SIZE'
,p_message_language=>'nl'
,p_message_text=>'Het bestand is te groot. De maximumgrootte is %0.'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127460787328026981)
,p_name=>'APEX.ITEM.FILE.MULTIPLE_FILES_NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'Het uploaden van meerdere bestanden wordt niet ondersteund.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127443627001026975)
,p_name=>'APEX.ITEM.FILE.REMOVE'
,p_message_language=>'nl'
,p_message_text=>'Verwijderen'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127449171334026978)
,p_name=>'APEX.ITEM.GEOCODE.ADDRESS_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'Adres is vereist.'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127448011954026977)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_CITY'
,p_message_language=>'nl'
,p_message_text=>'Plaats'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127448492007026977)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_COUNTRY'
,p_message_language=>'nl'
,p_message_text=>'Landcode'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127448189674026977)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_HOUSENUMBER'
,p_message_language=>'nl'
,p_message_text=>'Huisnummer'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127449025383026977)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LATITUDE'
,p_message_language=>'nl'
,p_message_text=>'Breedte'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127448910146026977)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_LONGITUDE'
,p_message_language=>'nl'
,p_message_text=>'Lengte'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127448814395026977)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MAPLINK'
,p_message_language=>'nl'
,p_message_text=>'Op kaart tonen'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127448502495026977)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_MATCHSCORE'
,p_message_language=>'nl'
,p_message_text=>'Score'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127448269961026977)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_POSTALCODE'
,p_message_language=>'nl'
,p_message_text=>'Postcode'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127448304953026977)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STATE'
,p_message_language=>'nl'
,p_message_text=>'Staat'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127447908976026977)
,p_name=>'APEX.ITEM.GEOCODE.COLUMN_STREET'
,p_message_language=>'nl'
,p_message_text=>'Adres'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127447890102026977)
,p_name=>'APEX.ITEM.GEOCODE.DIALOG_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Regiocoderesultaten'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127479358990026987)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_DONE'
,p_message_language=>'nl'
,p_message_text=>'Gegeocodeerd'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127479449072026987)
,p_name=>'APEX.ITEM.GEOCODE.GEOCODING_OPEN'
,p_message_language=>'nl'
,p_message_text=>'Niet geogecodeerd'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127448764657026977)
,p_name=>'APEX.ITEM.GEOCODE.MAP_DIALOG_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Kaart'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127448699833026977)
,p_name=>'APEX.ITEM.GEOCODE.NO_DATA_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen adressen gevonden.'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127449239242026978)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'%0 is vereist.'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127555409973027009)
,p_name=>'APEX.ITEM.GEOCODE.REQUIRED_MULTIPLE'
,p_message_language=>'nl'
,p_message_text=>'%0 of %1 is vereist.'
,p_is_js_message=>true
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127644936957027036)
,p_name=>'APEX.ITEM.HELP_TEXT'
,p_message_language=>'nl'
,p_message_text=>'Helptekst voor %0 weergeven'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127450964474026978)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'nl'
,p_message_text=>'Image kiezen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127451050892026978)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.CHOOSE_FILES'
,p_message_language=>'nl'
,p_message_text=>'Afbeeldingen kiezen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127450876184026978)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DOWNLOAD_LINK_TEXT'
,p_message_language=>'nl'
,p_message_text=>'Downloaden'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127451125012026978)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILE'
,p_message_language=>'nl'
,p_message_text=>'Slepen en neerzetten'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127451261173026978)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_FILES'
,p_message_language=>'nl'
,p_message_text=>'Afbeeldingen slepen en neerzetten'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127451372614026978)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILE'
,p_message_language=>'nl'
,p_message_text=>'Selecteer een afbeelding of zet er hier een neer.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127451467310026978)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_CHOOSE_FILES'
,p_message_language=>'nl'
,p_message_text=>'Selecteer afbeeldingen of zet deze hier neer.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127451542578026978)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILE'
,p_message_language=>'nl'
,p_message_text=>'Selecteer een afbeelding of zet er hier een neer.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127451605419026978)
,p_name=>'APEX.ITEM.IMAGE_UPLOAD.DROP_OR_SELECT_FILES'
,p_message_language=>'nl'
,p_message_text=>'Selecteer afbeeldingen of zet deze hier neer.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127536303571027004)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.CHECKED'
,p_message_language=>'nl'
,p_message_text=>'Ingeschakeld'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127536474112027004)
,p_name=>'APEX.ITEM_TYPE.CHECKBOX.UNCHECKED'
,p_message_language=>'nl'
,p_message_text=>'Uitgeschakeld'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127563902344027012)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_COMBOBOX'
,p_message_language=>'nl'
,p_message_text=>'Lege alleen-lezen-keuzelijst met invoervak'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127561791862027011)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.EMPTY_READONLY_LISTBOX'
,p_message_language=>'nl'
,p_message_text=>'Lege alleen-lezen-keuzelijst'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127561500954027011)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_COMBOBOX'
,p_message_language=>'nl'
,p_message_text=>'Alleen-lezen-keuzelijst met invoervak'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127561673539027011)
,p_name=>'APEX.ITEM_TYPE.SELECT_LIST.READONLY_LISTBOX'
,p_message_language=>'nl'
,p_message_text=>'Alleen-lezen-keuzelijst'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127477357069026986)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# bevindt zich niet in het geldige bereik van %0 t/m %1.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127477450881026986)
,p_name=>'APEX.ITEM_TYPE.SLIDER.VALUE_NOT_MULTIPLE_OF_STEP'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# is geen veelvoud van %0.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127564797164027012)
,p_name=>'APEX.ITEM_TYPE.SWITCH.READONLY_SWITCH'
,p_message_language=>'nl'
,p_message_text=>'Schakelaar alleen-lezen'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127505314442026994)
,p_name=>'APEX.ITEM_TYPE.TEXT.READONLY_WITH_LINK'
,p_message_language=>'nl'
,p_message_text=>'Alleen-lezen bewerken via koppeling'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127476933383026986)
,p_name=>'APEX.ITEM_TYPE.YES_NO.INVALID_VALUE'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet overeenkomen met de waarden %0 en %1.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127477107086026986)
,p_name=>'APEX.ITEM_TYPE.YES_NO.NO_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Nee'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127563471625027012)
,p_name=>'APEX.ITEM_TYPE.YES_NO.OFF_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Uit'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127563596224027012)
,p_name=>'APEX.ITEM_TYPE.YES_NO.ON_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Aan'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127477027230026986)
,p_name=>'APEX.ITEM_TYPE.YES_NO.YES_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Ja'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127484991393026988)
,p_name=>'APEX.LANGUAGE_SELECTOR'
,p_message_language=>'nl'
,p_message_text=>'Selectieoptie voor taal'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127421372114026969)
,p_name=>'APEX.LIST_MANAGER.ADD_ENTRY'
,p_message_language=>'nl'
,p_message_text=>'Ingang toevoegen'
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127598190486027022)
,p_name=>'APEX.LIST_MANAGER.BUTTON_ADD'
,p_message_language=>'nl'
,p_message_text=>'Toevoegen'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127598276810027022)
,p_name=>'APEX.LIST_MANAGER.BUTTON_REMOVE'
,p_message_language=>'nl'
,p_message_text=>'Verwijderen'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127421414548026969)
,p_name=>'APEX.LIST_MANAGER.SELECTED_ENTRY'
,p_message_language=>'nl'
,p_message_text=>'Geselecteerde invoergegevens'
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127601986850027023)
,p_name=>'APEX.LTO.ADVANCED'
,p_message_language=>'nl'
,p_message_text=>'Geavanceerd'
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127602296545027023)
,p_name=>'APEX.LTO.CANCEL'
,p_message_language=>'nl'
,p_message_text=>'Annuleren'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127602047721027023)
,p_name=>'APEX.LTO.COMMON'
,p_message_language=>'nl'
,p_message_text=>'Algemeen'
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127602347308027023)
,p_name=>'APEX.LTO.LIVE_TEMPLATE_OPTIONS'
,p_message_language=>'nl'
,p_message_text=>'Live sjabloonopties'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127602913718027024)
,p_name=>'APEX.LTO.NOT_APPLICABLE'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen sjabloonopties beschikbaar, omdat deze component niet op de pagina wordt weergegeven.'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127601876587027023)
,p_name=>'APEX.LTO.NO_OPTIONS_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen sjabloonopties gevonden.'
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127602147457027023)
,p_name=>'APEX.LTO.SAVE'
,p_message_language=>'nl'
,p_message_text=>'Opslaan'
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127455944323026980)
,p_name=>'APEX.MAPS.CLEAR_CIRCLE'
,p_message_language=>'nl'
,p_message_text=>'Cirkel wissen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127458375704026980)
,p_name=>'APEX.MAPS.CUSTOM_STYLES_INVALID_JSON'
,p_message_language=>'nl'
,p_message_text=>'''Aangepaste stijlen'' is geen geldige JSON.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127456227919026980)
,p_name=>'APEX.MAPS.DISTANCE_TOOL'
,p_message_language=>'nl'
,p_message_text=>'Afstandfunctie'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127456092064026980)
,p_name=>'APEX.MAPS.DRAW_CIRCLE'
,p_message_language=>'nl'
,p_message_text=>'Cirkel tekenen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127435846764026973)
,p_name=>'APEX.MAPS.FIND_MY_LOCATION'
,p_message_language=>'nl'
,p_message_text=>'Huidige locatie'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127442215826026975)
,p_name=>'APEX.MAPS.INIT_POINT_COORDINATES_INVALID'
,p_message_language=>'nl'
,p_message_text=>unistr('De co\00F6rdinaten van de initi\00EBle positie zijn ongeldig.')
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127431250135026972)
,p_name=>'APEX.MAPS.INIT_POINT_GEOMETRY_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>unistr('De initi\00EBle positie moet een puntvorm zijn.')
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127439801955026974)
,p_name=>'APEX.MAPS.KM'
,p_message_language=>'nl'
,p_message_text=>'km'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127435063020026973)
,p_name=>'APEX.MAPS.LAYER'
,p_message_language=>'nl'
,p_message_text=>'Laag'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127605438514027024)
,p_name=>'APEX.MAPS.LAYER_NAME'
,p_message_language=>'nl'
,p_message_text=>'Laag: %0'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127454204986026979)
,p_name=>'APEX.MAPS.MAP'
,p_message_language=>'nl'
,p_message_text=>'Kaart'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127423945308026969)
,p_name=>'APEX.MAPS.MAP_MESSAGES'
,p_message_language=>'nl'
,p_message_text=>'Berichten'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127440099455026974)
,p_name=>'APEX.MAPS.MILES'
,p_message_language=>'nl'
,p_message_text=>'mijl'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127604432148027024)
,p_name=>'APEX.MAPS.MORE_DATA_FOUND'
,p_message_language=>'nl'
,p_message_text=>'De gegevens bevatten meer dan %0 rijen, wat het toegestane maximum overschrijdt.'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127434345129026973)
,p_name=>'APEX.MAPS.ORACLE_MAP_COPYRIGHT'
,p_message_language=>'nl'
,p_message_text=>'(c) 2022 Oracle Corporation &nbsp;&nbsp; <a rel="noopener noreferrer" target="_blank" href="https://elocation.oracle.com/elocation/legal.html">Voorwaarden</a> &nbsp;&nbsp; Kaartgegevens (c) 2021 HIER'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127430965488026972)
,p_name=>'APEX.MAPS.ORACLE_SDO_GEOMETRY_NOT_AVAILABLE'
,p_message_language=>'nl'
,p_message_text=>'Gegevenstype SDO_GEOMETRY is niet beschikbaar in deze database.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127434460420026973)
,p_name=>'APEX.MAPS.OSM_MAP_COPYRIGHT'
,p_message_language=>'nl'
,p_message_text=>'<a rel="noopener noreferrer" target="_blank" href="http://openmaptiles.org"> (c) OpenMapTiles </a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> (c) OpenStreetMap-bijdragers</a>'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127459085491026981)
,p_name=>'APEX.MAPS.OSM_VECTOR_MAP_COPYRIGHT'
,p_message_language=>'nl'
,p_message_text=>'<a rel="noopener noreferrer" target="blank" href="https://www.maptiler.com/copyright"> &copy; MapTiler</a> &nbsp; <a rel="noopener noreferrer" target="_blank" href="https://www.openstreetmap.org/copyright"> &copy; OpenStreetMap-bijdragers</a>'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127435233012026973)
,p_name=>'APEX.MAPS.POINTS'
,p_message_language=>'nl'
,p_message_text=>'Punten'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127605510904027024)
,p_name=>'APEX.MAPS.POINTS_COUNT'
,p_message_language=>'nl'
,p_message_text=>'%0 punten'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127456149106026980)
,p_name=>'APEX.MAPS.RECTANGLE_ZOOM'
,p_message_language=>'nl'
,p_message_text=>'Rechthoek zoomen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127455845822026980)
,p_name=>'APEX.MAPS.REMOVE_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127435693636026973)
,p_name=>'APEX.MAPS.RESET_BEARING_TO_NORTH'
,p_message_language=>'nl'
,p_message_text=>'Peiling weer instellen op noorden'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127550462430027008)
,p_name=>'APEX.MAPS.TOGGLE_2D_MODE'
,p_message_language=>'nl'
,p_message_text=>'Overschakelen op 2D-modus'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127550548960027008)
,p_name=>'APEX.MAPS.TOGGLE_3D_MODE'
,p_message_language=>'nl'
,p_message_text=>'Overschakelen op 3D-modus'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127455775580026980)
,p_name=>'APEX.MAPS.TOGGLE_COPYRIGHT'
,p_message_language=>'nl'
,p_message_text=>'Copyrightverklaring weergeven/verbergen'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127456334662026980)
,p_name=>'APEX.MAPS.TOTAL_DISTANCE'
,p_message_language=>'nl'
,p_message_text=>'Totale afstand'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127435310070026973)
,p_name=>'APEX.MAPS.ZOOM_IN'
,p_message_language=>'nl'
,p_message_text=>'Inzoomen'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127435514746026973)
,p_name=>'APEX.MAPS.ZOOM_OUT'
,p_message_language=>'nl'
,p_message_text=>'Uitzoomen'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127600023883027023)
,p_name=>'APEX.MARKDOWN.BOLD'
,p_message_language=>'nl'
,p_message_text=>'Vet'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127600928045027023)
,p_name=>'APEX.MARKDOWN.IMAGE'
,p_message_language=>'nl'
,p_message_text=>'Afbeelding'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127600530188027023)
,p_name=>'APEX.MARKDOWN.INLINE_CODE'
,p_message_language=>'nl'
,p_message_text=>'Inline code'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127613283762027027)
,p_name=>'APEX.MARKDOWN.INSERT_IMAGE'
,p_message_language=>'nl'
,p_message_text=>'Afbeelding invoegen'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127613366130027027)
,p_name=>'APEX.MARKDOWN.INSERT_LINK'
,p_message_language=>'nl'
,p_message_text=>'Koppeling invoegen'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127600197303027023)
,p_name=>'APEX.MARKDOWN.ITALIC'
,p_message_language=>'nl'
,p_message_text=>'Cursief'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127613948532027027)
,p_name=>'APEX.MARKDOWN.LINK'
,p_message_language=>'nl'
,p_message_text=>'Koppeling'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127600852792027023)
,p_name=>'APEX.MARKDOWN.LIST'
,p_message_language=>'nl'
,p_message_text=>'Lijst'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127600773836027023)
,p_name=>'APEX.MARKDOWN.ORDERED_LIST'
,p_message_language=>'nl'
,p_message_text=>'Geordende lijst'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127600200125027023)
,p_name=>'APEX.MARKDOWN.PREVIEW'
,p_message_language=>'nl'
,p_message_text=>'Voorbeeld'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127600349227027023)
,p_name=>'APEX.MARKDOWN.PREVIEW_EMPTY'
,p_message_language=>'nl'
,p_message_text=>'Er is geen voorbeeld om weer te geven.'
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127600402379027023)
,p_name=>'APEX.MARKDOWN.STRIKETHROUGH'
,p_message_language=>'nl'
,p_message_text=>'Doorhalen'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127600650122027023)
,p_name=>'APEX.MARKDOWN.UNORDERED_LIST'
,p_message_language=>'nl'
,p_message_text=>'Niet-geordende lijst'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127579548807027017)
,p_name=>'APEX.MENU.CURRENT_MENU'
,p_message_language=>'nl'
,p_message_text=>'huidige'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127635773939027033)
,p_name=>'APEX.MENU.OVERFLOW_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Meer...'
,p_is_js_message=>true
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127579452278027017)
,p_name=>'APEX.MENU.PROCESSING'
,p_message_language=>'nl'
,p_message_text=>'Laden'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127493624237026991)
,p_name=>'APEX.MENU.SPLIT_BUTTON'
,p_message_language=>'nl'
,p_message_text=>'Knop ''Splitsen'''
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127493541465026991)
,p_name=>'APEX.MENU.SPLIT_MENU'
,p_message_language=>'nl'
,p_message_text=>'Menu ''Splitsen'''
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127610545673027026)
,p_name=>'APEX.NOTIFICATION_MESSAGE_HEADING'
,p_message_language=>'nl'
,p_message_text=>'Meldingsbericht'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127434689656026973)
,p_name=>'APEX.NO_DATA_FOUND_ENTITY'
,p_message_language=>'nl'
,p_message_text=>'Geen  %0 gevonden'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127584543589027018)
,p_name=>'APEX.NUMBER_FIELD.VALUE_GREATER_MAX_VALUE'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet een getal zijn dat kleiner is dan of gelijk is aan %0.'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127584674896027018)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet een geldig getal zijn.'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127584764204027018)
,p_name=>'APEX.NUMBER_FIELD.VALUE_INVALID2'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# komt niet overeen met getalnotatie %0 (voorbeeld: %1).'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127584468409027018)
,p_name=>'APEX.NUMBER_FIELD.VALUE_LESS_MIN_VALUE'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet een getal zijn dat groter is dan of gelijk is aan %0.'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127584346742027018)
,p_name=>'APEX.NUMBER_FIELD.VALUE_NOT_BETWEEN_MIN_MAX'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet een getal zijn tussen %0 en %1.'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127579639275027017)
,p_name=>'APEX.OPENS_IN_NEW_WINDOW_LOWER'
,p_message_language=>'nl'
,p_message_text=>'wordt geopend in een nieuw venster'
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127529446046027002)
,p_name=>'APEX.PAGE.DUPLICATE_SUBMIT'
,p_message_language=>'nl'
,p_message_text=>'Deze pagina is al verstuurd en kan niet opnieuw worden verstuurd.'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127510826274026996)
,p_name=>'APEX.PAGE.NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Applicatie "%0" pagina "%1" is niet gevonden.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127546342696027007)
,p_name=>'APEX.PAGE_ITEM_IS_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'#LABEL# moet een waarde hebben.'
,p_is_js_message=>true
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127437041949026974)
,p_name=>'APEX.PASSWORD.HIDE_PASSWORD'
,p_message_language=>'nl'
,p_message_text=>'Wachtwoord verbergen'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127436969462026973)
,p_name=>'APEX.PASSWORD.SHOW_PASSWORD'
,p_message_language=>'nl'
,p_message_text=>'Wachtwoord tonen'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127484527708026988)
,p_name=>'APEX.POPUP.SEARCH'
,p_message_language=>'nl'
,p_message_text=>'Zoeken'
,p_is_js_message=>true
,p_version_scn=>2693093
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127598503140027022)
,p_name=>'APEX.POPUP_LOV.BUTTON_CLOSE'
,p_message_language=>'nl'
,p_message_text=>'Sluiten'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127598424832027022)
,p_name=>'APEX.POPUP_LOV.BUTTON_FIND'
,p_message_language=>'nl'
,p_message_text=>'Zoeken%0'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127598757104027022)
,p_name=>'APEX.POPUP_LOV.BUTTON_NEXT'
,p_message_language=>'nl'
,p_message_text=>'Volgende'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127598630485027022)
,p_name=>'APEX.POPUP_LOV.BUTTON_PREV'
,p_message_language=>'nl'
,p_message_text=>'Vorige'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127475383923026985)
,p_name=>'APEX.POPUP_LOV.FILTER_REQ'
,p_message_language=>'nl'
,p_message_text=>'Voer een zoekterm in van minimaal %0 tekens.'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127551638675027008)
,p_name=>'APEX.POPUP_LOV.ICON_TEXT'
,p_message_language=>'nl'
,p_message_text=>'Pop-upwaardelijst: %0'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127475439802026986)
,p_name=>'APEX.POPUP_LOV.INITIAL_FILTER_REQ'
,p_message_language=>'nl'
,p_message_text=>'Voer een zoekterm in.'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127422434184026969)
,p_name=>'APEX.POPUP_LOV.LIST_OF_VALUES'
,p_message_language=>'nl'
,p_message_text=>'Waardelijst'
,p_is_js_message=>true
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127475297749026985)
,p_name=>'APEX.POPUP_LOV.NO_RESULTS'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen resultaten gevonden.'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127475183389026985)
,p_name=>'APEX.POPUP_LOV.REMOVE_VALUE'
,p_message_language=>'nl'
,p_message_text=>'%0 verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127572311137027014)
,p_name=>'APEX.POPUP_LOV.SEARCH'
,p_message_language=>'nl'
,p_message_text=>'Zoekterm'
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127598399687027022)
,p_name=>'APEX.POPUP_LOV.TITLE'
,p_message_language=>'nl'
,p_message_text=>'Zoeken'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127424521455026970)
,p_name=>'APEX.PRINT.DOCGEN_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'Vereist %0'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127436895065026973)
,p_name=>'APEX.PRINT_REPORT.ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het afdrukken van het rapport.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127447663534026977)
,p_name=>'APEX.PRINT_UTIL.UNABLE_TO_PRINT'
,p_message_language=>'nl'
,p_message_text=>'Kan het document niet afdrukken via de geconfigureerde afdrukserver.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127470343313026984)
,p_name=>'APEX.PROCESS.INVOKE_API.PARAMETER_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Fout bij het evalueren van parameter %0 bij het aanroepen van %1. Zie het foutenlogbestand voor details.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127609084029027025)
,p_name=>'APEX.PROCESSING'
,p_message_language=>'nl'
,p_message_text=>'Bezig met verwerken'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127468118097026983)
,p_name=>'APEX.PWA.DIALOG.HIDE.INSTRUCTIONS'
,p_message_language=>'nl'
,p_message_text=>'Terug'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127469297689026984)
,p_name=>'APEX.PWA.DIALOG.INTRO'
,p_message_language=>'nl'
,p_message_text=>'Deze website heeft app-functionaliteit. Installeer de app op uw apparaat voor de beste ervaring.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127470594443026984)
,p_name=>'APEX.PWA.DIALOG.SHOW.INSTRUCTIONS'
,p_message_language=>'nl'
,p_message_text=>'Volgende'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127472157933026985)
,p_name=>'APEX.PWA.DIALOG.TITLE'
,p_message_language=>'nl'
,p_message_text=>'Deze app installeren'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127456902977026980)
,p_name=>'APEX.PWA.INSTRUCTIONS'
,p_message_language=>'nl'
,p_message_text=>'Het lijkt erop dat installatie van Progressive Web Apps momenteel niet wordt ondersteund op uw apparaat of in uw browser.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127452099555026979)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP1'
,p_message_language=>'nl'
,p_message_text=>'1. Tik op het pictogram <strong>Delen</strong>'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127452146299026979)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP2'
,p_message_language=>'nl'
,p_message_text=>'2. Scrol omlaag en tik op <strong>Zet op beginscherm</strong>'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127468515497026983)
,p_name=>'APEX.PWA.INSTRUCTIONS.IOS.STEP3'
,p_message_language=>'nl'
,p_message_text=>'3. Tik op <strong style="color:#007AE1;">Toevoegen</strong> om te bevestigen.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127467602561026983)
,p_name=>'APEX.PWA.OFFLINE.BODY'
,p_message_language=>'nl'
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
'    <h1>Kan geen verbinding maken</h1>',
'    <p>Er lijkt een probleem met het netwerk te zijn. Controleer de verbinding en probeer het opnieuw.</p>',
'    <button type="button">Opnieuw</button>',
'</main>',
'',
'<script>',
'    document.querySelector("button").addEventListener("click", () => {',
'        window.location.reload();',
'    });',
'</script>'))
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127467519859026983)
,p_name=>'APEX.PWA.OFFLINE.TITLE'
,p_message_language=>'nl'
,p_message_text=>'Kan geen verbinding maken'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127514101372026997)
,p_name=>'APEX.PWA.PUSH.SUBSCRIPTION_FAILED'
,p_message_language=>'nl'
,p_message_text=>'Op dit apparaat zijn push-meldingen niet geactiveerd.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127519679570026999)
,p_name=>'APEX.QUICK_PICK.GROUP_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Snelle selecties voor %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127519565580026999)
,p_name=>'APEX.QUICK_PICK.LINK_ROLE'
,p_message_language=>'nl'
,p_message_text=>'Koppeling voor snelle selectie'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127493393498026991)
,p_name=>'APEX.RADIO.VISUALLY_HIDDEN_RADIO'
,p_message_language=>'nl'
,p_message_text=>'Visueel verborgen keuzerondje'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127437413741026974)
,p_name=>'APEX.RECORD_VIEW.TOOLBAR'
,p_message_language=>'nl'
,p_message_text=>unistr('Weergave met \00E9\00E9n rij')
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127620114499027029)
,p_name=>'APEX.REGION.CSSCALENDAR.ADD'
,p_message_language=>'nl'
,p_message_text=>'Toevoegen'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127565453729027012)
,p_name=>'APEX.REGION.CSSCALENDAR.ALL_DAY'
,p_message_language=>'nl'
,p_message_text=>'Hele dag'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127643024512027036)
,p_name=>'APEX.REGION.CSSCALENDAR.BUTTON.SENDEMAIL'
,p_message_language=>'nl'
,p_message_text=>'Uitnodiging versturen'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127642895113027036)
,p_name=>'APEX.REGION.CSSCALENDAR.CHOOSE_ACTION'
,p_message_language=>'nl'
,p_message_text=>'Opties'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127567295488027013)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_ALLDAY'
,p_message_language=>'nl'
,p_message_text=>'Dagoverzicht voor de hele dag'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127567055603027013)
,p_name=>'APEX.REGION.CSSCALENDAR.DAILY_TIME_SPECIFIC'
,p_message_language=>'nl'
,p_message_text=>'Dagoverzicht voor gegevens met tijd'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127611207231027026)
,p_name=>'APEX.REGION.CSSCALENDAR.DAY'
,p_message_language=>'nl'
,p_message_text=>'Dag'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127606249288027025)
,p_name=>'APEX.REGION.CSSCALENDAR.DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Beschrijving'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127489714512026990)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.CSV'
,p_message_language=>'nl'
,p_message_text=>'CSV'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127489526700026990)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.ICALENDAR'
,p_message_language=>'nl'
,p_message_text=>'iCal'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127489498893026990)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.PDF'
,p_message_language=>'nl'
,p_message_text=>'PDF'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127489681179026990)
,p_name=>'APEX.REGION.CSSCALENDAR.DOWNLOAD.XML'
,p_message_language=>'nl'
,p_message_text=>'XML'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127489117031026990)
,p_name=>'APEX.REGION.CSSCALENDAR.ENDDATE'
,p_message_language=>'nl'
,p_message_text=>'Einddatum'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127489328199026990)
,p_name=>'APEX.REGION.CSSCALENDAR.EVENTNAME'
,p_message_language=>'nl'
,p_message_text=>'Eventnaam'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127642951686027036)
,p_name=>'APEX.REGION.CSSCALENDAR.INVITATION'
,p_message_language=>'nl'
,p_message_text=>'Uitnodiging'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127611352051027026)
,p_name=>'APEX.REGION.CSSCALENDAR.LIST'
,p_message_language=>'nl'
,p_message_text=>'Lijst'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127611016050027026)
,p_name=>'APEX.REGION.CSSCALENDAR.MONTH'
,p_message_language=>'nl'
,p_message_text=>'Maand'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127613666689027027)
,p_name=>'APEX.REGION.CSSCALENDAR.NEXT'
,p_message_language=>'nl'
,p_message_text=>'Volgende'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127627666410027031)
,p_name=>'APEX.REGION.CSSCALENDAR.NOEVENTS'
,p_message_language=>'nl'
,p_message_text=>'Geen events'
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127643258388027036)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.FORM'
,p_message_language=>'nl'
,p_message_text=>'Een bestaand event bewerken'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127643114578027036)
,p_name=>'APEX.REGION.CSSCALENDAR.OPTION.SEND'
,p_message_language=>'nl'
,p_message_text=>'Een uitnodiging versturen via e-mail'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127613784493027027)
,p_name=>'APEX.REGION.CSSCALENDAR.PREVIOUS'
,p_message_language=>'nl'
,p_message_text=>'Vorige'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127621489079027029)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL'
,p_message_language=>'nl'
,p_message_text=>'E-mail versturen'
,p_version_scn=>2693119
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127621246799027029)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.BUTTON'
,p_message_language=>'nl'
,p_message_text=>'E-mail versturen'
,p_version_scn=>2693119
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127643888228027036)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'Alle velden zijn verplicht.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127643793173027036)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.DIALOG.TITLE'
,p_message_language=>'nl'
,p_message_text=>'Uitnodiging versturen'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127642719112027036)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.SUBJECT'
,p_message_language=>'nl'
,p_message_text=>'Onderwerp'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127621341865027029)
,p_name=>'APEX.REGION.CSSCALENDAR.SENDEMAIL.TO'
,p_message_language=>'nl'
,p_message_text=>'Aan'
,p_version_scn=>2693119
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127489249895026990)
,p_name=>'APEX.REGION.CSSCALENDAR.STARTDATE'
,p_message_language=>'nl'
,p_message_text=>'Begindatum'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127619405153027029)
,p_name=>'APEX.REGION.CSSCALENDAR.TABLEFORM'
,p_message_language=>'nl'
,p_message_text=>'Scherm bij %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127566829269027013)
,p_name=>'APEX.REGION.CSSCALENDAR.TIME'
,p_message_language=>'nl'
,p_message_text=>'Tijd'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127613856012027027)
,p_name=>'APEX.REGION.CSSCALENDAR.TODAY'
,p_message_language=>'nl'
,p_message_text=>'Vandaag'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127611858801027026)
,p_name=>'APEX.REGION.CSSCALENDAR.VIEW'
,p_message_language=>'nl'
,p_message_text=>'Weergeven'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127611193991027026)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEK'
,p_message_language=>'nl'
,p_message_text=>'Week'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127567144416027013)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_ALLDAY'
,p_message_language=>'nl'
,p_message_text=>'Weekoverzicht voor de hele dag'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127566922396027013)
,p_name=>'APEX.REGION.CSSCALENDAR.WEEKLY_TIME_SPECIFIC'
,p_message_language=>'nl'
,p_message_text=>'Weekoverzicht voor gegevens met tijd'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127611763803027026)
,p_name=>'APEX.REGION.CSSCALENDAR.YEAR'
,p_message_language=>'nl'
,p_message_text=>'Jaar'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127611488453027026)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Kolommen...'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127611552816027026)
,p_name=>'APEX.REGION.JQM_COLUMN_TOGGLE.LOAD_MORE'
,p_message_language=>'nl'
,p_message_text=>'Meer laden...'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127540962509027005)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.BACK'
,p_message_language=>'nl'
,p_message_text=>'Terug'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127482411169026988)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.LOAD_MORE'
,p_message_language=>'nl'
,p_message_text=>'Meer laden...'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127484777268026988)
,p_name=>'APEX.REGION.JQM_LIST_VIEW.SEARCH'
,p_message_language=>'nl'
,p_message_text=>'Bezig met zoeken...'
,p_version_scn=>2693093
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127611618207027026)
,p_name=>'APEX.REGION.JQM_REFLOW.LOAD_MORE'
,p_message_language=>'nl'
,p_message_text=>'Meer laden...'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127613578927027027)
,p_name=>'APEX.REGION.NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Regio-ID %0 is niet gevonden.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127484602364026988)
,p_name=>'APEX.REGION.NO_DATA_FOUND_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Geen gegevens gevonden'
,p_version_scn=>2693093
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127512135001026996)
,p_name=>'APEX.REGION.PAGINATION.RESET_ERROR'
,p_message_language=>'nl'
,p_message_text=>'De regiopaginering kan niet opnieuw worden ingesteld.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127475886024026986)
,p_name=>'APEX.REGION.PAGINATION.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het instellen van de regiopaginering.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127605656748027024)
,p_name=>'APEX.REGION.RESPONSIVE_TABLE.COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Kolommen...'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127460170989026981)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.LAZY_LOADING_INCOMPATIBLE'
,p_message_language=>'nl'
,p_message_text=>unistr('Langzaam laden is incompatibel met slots in %0, omdat dit \00E9\00E9n (gedeeltelijke) regio is. U moet ''Langzaam laden'' deactiveren voor deze regio of de componenten van de slot verplaatsen naar een andere regio.')
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127455420722026980)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.NO_GROUP_TEMPLATE'
,p_message_language=>'nl'
,p_message_text=>'Groepsjabloon ontbreekt in sjablooncomponent voor %0.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127450488428026978)
,p_name=>'APEX.REGION.TEMPLATE_COMPONENT.TOO_MANY_ROWS'
,p_message_language=>'nl'
,p_message_text=>'%0 is een enkele (gedeeltelijke) regio en heeft meerdere rijen geretourneerd.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127613481773027027)
,p_name=>'APEX.REGION.TYPE_NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'Regiotype %0 wordt niet ondersteund.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127475717416026986)
,p_name=>'APEX.REGION.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het weergeven van regio "#COMPONENT_NAME#".'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127546437137027007)
,p_name=>'APEX.REGION_COLUMN_IS_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'#COLUMN_HEADER# moet een waarde hebben.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127428049118026971)
,p_name=>'APEX.REPORT_QUERY.LAYOUT_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'U moet een rapportlay-out opgeven.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127642389330027035)
,p_name=>'APEX.RICH_TEXT_EDITOR.ACCESSIBLE_LABEL'
,p_message_language=>'nl'
,p_message_text=>'%0, RTF-editor'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127548504994027007)
,p_name=>'APEX.RICH_TEXT_EDITOR.MAXIMUM_LENGTH_EXCEEDED'
,p_message_language=>'nl'
,p_message_text=>'De opgemaakte tekst in HTML-markup overschrijdt de maximumlengte van het item (werkelijk aantal tekens %0, toegestaan aantal %1).'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127457978609026980)
,p_name=>'APEX.RTE.READ_ONLY_RICH_TEXT_EDITOR'
,p_message_language=>'nl'
,p_message_text=>'Alleeen-lezen opgemaakte-teksteditor'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127457846207026980)
,p_name=>'APEX.RTE.RICH_TEXT_EDITOR'
,p_message_language=>'nl'
,p_message_text=>'Opgemaakte-teksteditor'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127457661355026980)
,p_name=>'APEX.RTE.TOOLBAR_ALIGNMENT'
,p_message_language=>'nl'
,p_message_text=>'Uitlijning'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127457767612026980)
,p_name=>'APEX.RTE.TOOLBAR_EXTRAS'
,p_message_language=>'nl'
,p_message_text=>'Extra''s'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127457424054026980)
,p_name=>'APEX.RTE.TOOLBAR_FONT'
,p_message_language=>'nl'
,p_message_text=>'Lettertype'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127457352371026980)
,p_name=>'APEX.RTE.TOOLBAR_FORMATTING'
,p_message_language=>'nl'
,p_message_text=>'Bezig met opmaken'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127457580709026980)
,p_name=>'APEX.RTE.TOOLBAR_LISTS'
,p_message_language=>'nl'
,p_message_text=>'Lijsten'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127610654437027026)
,p_name=>'APEX.RV.DELETE'
,p_message_language=>'nl'
,p_message_text=>'Verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127603118954027024)
,p_name=>'APEX.RV.DUPLICATE'
,p_message_language=>'nl'
,p_message_text=>'Dupliceren'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127601496331027023)
,p_name=>'APEX.RV.EXCLUDE_HIDDEN'
,p_message_language=>'nl'
,p_message_text=>'Weergegeven kolommen'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127601386964027023)
,p_name=>'APEX.RV.EXCLUDE_NULL'
,p_message_language=>'nl'
,p_message_text=>'NULL-waarden uitsluiten'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127610777117027026)
,p_name=>'APEX.RV.INSERT'
,p_message_language=>'nl'
,p_message_text=>'Toevoegen'
,p_is_js_message=>true
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127565071338027012)
,p_name=>'APEX.RV.MOVE_DOWN'
,p_message_language=>'nl'
,p_message_text=>'Omlaag verplaatsen'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127565126608027012)
,p_name=>'APEX.RV.MOVE_UP'
,p_message_language=>'nl'
,p_message_text=>'Omhoog verplaatsen'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127601162815027023)
,p_name=>'APEX.RV.NEXT_RECORD'
,p_message_language=>'nl'
,p_message_text=>'Volgende'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127601775982027023)
,p_name=>'APEX.RV.NOT_GROUPED_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Overige kolommen'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127601243028027023)
,p_name=>'APEX.RV.PREV_RECORD'
,p_message_language=>'nl'
,p_message_text=>'Vorige'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127601593358027023)
,p_name=>'APEX.RV.REC_X'
,p_message_language=>'nl'
,p_message_text=>'Rij %0'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127601654799027023)
,p_name=>'APEX.RV.REC_XY'
,p_message_language=>'nl'
,p_message_text=>'Rij %0 van %1'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127603291996027024)
,p_name=>'APEX.RV.REFRESH'
,p_message_language=>'nl'
,p_message_text=>'Vernieuwen'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127603331009027024)
,p_name=>'APEX.RV.REVERT'
,p_message_language=>'nl'
,p_message_text=>'Wijzigingen terugdraaien'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127601099300027023)
,p_name=>'APEX.RV.SETTINGS_MENU'
,p_message_language=>'nl'
,p_message_text=>'Instellingen'
,p_is_js_message=>true
,p_version_scn=>2693114
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127560278870027011)
,p_name=>'APEX.SAMPLE_FORMAT'
,p_message_language=>'nl'
,p_message_text=>'Bijvoorbeeld %0'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127564584584027012)
,p_name=>'APEX.SAMPLE_FORMAT_SHORT'
,p_message_language=>'nl'
,p_message_text=>'Voorbeeld: %0'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127477223519026986)
,p_name=>'APEX.SEARCH.1_RESULT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'1 resultaat'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127474358434026985)
,p_name=>'APEX.SEARCH.N_RESULTS_FOUND'
,p_message_language=>'nl'
,p_message_text=>'%0 resultaten'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127526165216027001)
,p_name=>'APEX.SEARCH.PAGINATION'
,p_message_language=>'nl'
,p_message_text=>'Paginering'
,p_is_js_message=>true
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127526266183027001)
,p_name=>'APEX.SEARCH.RESULTS_X_TO_Y'
,p_message_language=>'nl'
,p_message_text=>'Resultaten, %0 naar %1'
,p_is_js_message=>true
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127421947537026969)
,p_name=>'APEX.SESSION.ALERT.CREATE_NEW'
,p_message_language=>'nl'
,p_message_text=>'Opnieuw aanmelden'
,p_is_js_message=>true
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127421894360026969)
,p_name=>'APEX.SESSION.ALERT.EXPIRED'
,p_message_language=>'nl'
,p_message_text=>unistr('Uw sessie is be\00EBindigd.')
,p_is_js_message=>true
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127422050244026969)
,p_name=>'APEX.SESSION.ALERT.EXTEND'
,p_message_language=>'nl'
,p_message_text=>'Verlengen'
,p_is_js_message=>true
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127421675518026969)
,p_name=>'APEX.SESSION.ALERT.IDLE_WARN'
,p_message_language=>'nl'
,p_message_text=>'Uw sessie loopt af om %0. Wilt u de sessie verlengen?'
,p_is_js_message=>true
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127421729986026969)
,p_name=>'APEX.SESSION.ALERT.MAX_WARN'
,p_message_language=>'nl'
,p_message_text=>'Uw sessie loopt af om %0, en kan niet worden verlengd. Sla uw werk op om te voorkomen dat u gegevens verliest.'
,p_is_js_message=>true
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127621047003027029)
,p_name=>'APEX.SESSION.DB_SESSION_CLEANUP.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de opschoningscode voor de databasesessie.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127510746493026996)
,p_name=>'APEX.SESSION.DB_SESSION_INIT.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de instellingscode voor de databasesessie.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127481125511026987)
,p_name=>'APEX.SESSION.EXPIRED'
,p_message_language=>'nl'
,p_message_text=>unistr('Uw sessie is be\00EBindigd.')
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127620269260027029)
,p_name=>'APEX.SESSION.EXPIRED.CLOSE_DIALOG'
,p_message_language=>'nl'
,p_message_text=>'Sluit dit dialoogvenster en klik op de knop van uw browser voor opnieuw laden om een nieuwe sessie te verkrijgen.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127639162801027034)
,p_name=>'APEX.SESSION.EXPIRED.NEW_SESSION'
,p_message_language=>'nl'
,p_message_text=>'<a href="%0">Log opnieuw in</a> om een nieuwe sessie te maken.'
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127523466989027000)
,p_name=>'APEX.SESSION.NOT_VALID'
,p_message_language=>'nl'
,p_message_text=>'Sessie niet geldig'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127566584330027013)
,p_name=>'APEX.SESSION.RAS.NO_DYNAMIC_ROLES'
,p_message_language=>'nl'
,p_message_text=>'Activeren van dynamische rollen is mislukt in de Real Application Security sessie voor gebruiker "%0".'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127508621881026995)
,p_name=>'APEX.SESSION.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'ERR-99900 Unieke sessie-ID: %0 kan niet worden gemaakt.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127437755184026974)
,p_name=>'APEX.SESSION_STATE.CLOB_NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'Gegevenssoort-CLOB sessiestatus is niet toegestaan voor item %0.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127457199106026980)
,p_name=>'APEX.SESSION_STATE.CLOB_SUBSTITUTION_NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'Het vervangen van items van gegevenssoort-CLOB voor de sessiestatus wordt niet ondersteund.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127525904574027001)
,p_name=>'APEX.SESSION_STATE.ITEM_VALUE_PROTECTION'
,p_message_language=>'nl'
,p_message_text=>'Schending van de sessiestatusbeveiliging. Dit wordt mogelijk veroorzaakt door een handmatige wijziging van het beveiligde pagina-item %0. Neem voor hulp contact op met de applicatiebeheerder als u niet weet waardoor deze fout is veroorzaakt.'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127647111220027037)
,p_name=>'APEX.SESSION_STATE.PAGE_PROTECTION'
,p_message_language=>'nl'
,p_message_text=>'Schending van de paginabeveiliging. Dit wordt mogelijk veroorzaakt doordat een pagina wordt  verstuurd die nog niet volledig was geladen of door een handmatige wijziging van de beveiligde pagina-items. Neem voor hulp contact op met de applicatiebehee'
||'rder.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127646291674027037)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR'
,p_message_language=>'nl'
,p_message_text=>'%0 bevat een van de volgende ongeldige tekens &<>"/;,*|=% of --'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127646371797027037)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.NO_SPECIAL_CHAR_NL'
,p_message_language=>'nl'
,p_message_text=>'%0 bevat een van de volgende ongeldige tekens &<>"/;,*|=% of -- of bevat een nieuwe regel.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127646045797027037)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.US_ONLY'
,p_message_language=>'nl'
,p_message_text=>'%0 bevat speciale tekens. Alleen de tekens a-Z, 0-9 en spaties zijn toegestaan.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127646173287027037)
,p_name=>'APEX.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'nl'
,p_message_text=>'%0 bevat <, > of ", wat ongeldige tekens zijn.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127483538753026988)
,p_name=>'APEX.SESSION_STATE.SSP_CHECKSUM_MISSING'
,p_message_language=>'nl'
,p_message_text=>'Er is geen controletelling opgegeven om de verwerking te tonen van een pagina waarvoor een controletelling is vereist wanneer een of meer aanvraagwaarden, cache-wiswaarden of argumentwaarden worden doorgegeven als parameters.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127520855500026999)
,p_name=>'APEX.SESSION_STATE.SSP_VIOLATION'
,p_message_language=>'nl'
,p_message_text=>'Schending van de sessiestatusbeveiliging. Dit wordt mogelijk veroorzaakt door een handmatige wijziging van een URL die een controletelling bevat of door gebruik van een koppeling met een onjuiste of ontbrekende controletelling. Neem voor hulp contact'
||' op met de applicatiebeheerder als u niet weet waardoor deze fout is veroorzaakt.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127602476212027023)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_OFF'
,p_message_language=>'nl'
,p_message_text=>'Modus voor hoog contrast uitschakelen'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127602524833027023)
,p_name=>'APEX.SET_HIGH_CONTRAST_MODE_ON'
,p_message_language=>'nl'
,p_message_text=>'Modus voor hoog contrast inschakelen'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127466922194026983)
,p_name=>'APEX.SET_VALUE_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Applicatie-instelling %0 kan niet worden bijgewerkt omdat er een abonnement op is vanuit een andere toepassing.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127517277846026998)
,p_name=>'APEX.SHUTTLE.CONTROL_BOTTOM'
,p_message_language=>'nl'
,p_message_text=>'Onderaan'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127517439743026998)
,p_name=>'APEX.SHUTTLE.CONTROL_DOWN'
,p_message_language=>'nl'
,p_message_text=>'Omlaag'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127517525153026998)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE'
,p_message_language=>'nl'
,p_message_text=>'Verplaatsen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127517620846026998)
,p_name=>'APEX.SHUTTLE.CONTROL_MOVE_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles verplaatsen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127517737170026998)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE'
,p_message_language=>'nl'
,p_message_text=>'Verwijderen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127517877061026998)
,p_name=>'APEX.SHUTTLE.CONTROL_REMOVE_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles verwijderen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127517996283026998)
,p_name=>'APEX.SHUTTLE.CONTROL_RESET'
,p_message_language=>'nl'
,p_message_text=>'Opnieuw instellen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127517181059026998)
,p_name=>'APEX.SHUTTLE.CONTROL_TOP'
,p_message_language=>'nl'
,p_message_text=>'Bovenaan'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127517303817026998)
,p_name=>'APEX.SHUTTLE.CONTROL_UP'
,p_message_language=>'nl'
,p_message_text=>'Omhoog'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127628924880027031)
,p_name=>'APEX.SINCE.SHORT.DAYS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0d'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127629604355027032)
,p_name=>'APEX.SINCE.SHORT.DAYS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'over %0 dgn'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127628822850027031)
,p_name=>'APEX.SINCE.SHORT.HOURS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0h'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127629773859027032)
,p_name=>'APEX.SINCE.SHORT.HOURS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'over %0 uur'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127628664036027031)
,p_name=>'APEX.SINCE.SHORT.MINUTES_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0m'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127629848648027032)
,p_name=>'APEX.SINCE.SHORT.MINUTES_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'over %0 min'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127629295044027031)
,p_name=>'APEX.SINCE.SHORT.MONTHS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0 mnd'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127629487676027032)
,p_name=>'APEX.SINCE.SHORT.MONTHS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'over %0 mnd'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127628709840027031)
,p_name=>'APEX.SINCE.SHORT.SECONDS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0s'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127629546662027032)
,p_name=>'APEX.SINCE.SHORT.SECONDS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'over %0 sec'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127629086799027031)
,p_name=>'APEX.SINCE.SHORT.WEEKS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0w'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127629981058027032)
,p_name=>'APEX.SINCE.SHORT.WEEKS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'over %0 wkn'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127629139341027031)
,p_name=>'APEX.SINCE.SHORT.YEARS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0y'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127629328411027032)
,p_name=>'APEX.SINCE.SHORT.YEARS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'over %0 jr'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127430216580026971)
,p_name=>'APEX.SPATIAL.GEOMETRY.LINE'
,p_message_language=>'nl'
,p_message_text=>'[Regel]'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127430810423026972)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTILINE'
,p_message_language=>'nl'
,p_message_text=>'[Meerdere regels]'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127430572303026972)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOINT'
,p_message_language=>'nl'
,p_message_text=>'[Meerdere punten]'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127431044857026972)
,p_name=>'APEX.SPATIAL.GEOMETRY.MULTIPOLYGON'
,p_message_language=>'nl'
,p_message_text=>'[Meerdere veelhoeken]'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127431187104026972)
,p_name=>'APEX.SPATIAL.GEOMETRY.OTHER'
,p_message_language=>'nl'
,p_message_text=>'[Geometrisch object]'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127430123243026971)
,p_name=>'APEX.SPATIAL.GEOMETRY.POINT'
,p_message_language=>'nl'
,p_message_text=>'[Punt (%0,%1)]'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127430482851026972)
,p_name=>'APEX.SPATIAL.GEOMETRY.POLYGON'
,p_message_language=>'nl'
,p_message_text=>'[Veelhoek]'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127429652491026971)
,p_name=>'APEX.SPLITTER.COLLAPSED_REGION'
,p_message_language=>'nl'
,p_message_text=>'Samengevouwen regio: %0'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127544773182027006)
,p_name=>'APEX.SPLITTER.COLLAPSE_TEXT'
,p_message_language=>'nl'
,p_message_text=>'Samenvouwen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127428608295026971)
,p_name=>'APEX.SPLITTER.HORIZ_CANNOT_LEFT_RIGHT'
,p_message_language=>'nl'
,p_message_text=>unistr('Horizontaal geori\00EBnteerde splitsing kan niet naar links of naar rechts worden verplaatst.')
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127428814367026971)
,p_name=>'APEX.SPLITTER.MAX_SIZE_REACHED'
,p_message_language=>'nl'
,p_message_text=>'Maximumgrootte van %0px is bereikt.'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127429881132026971)
,p_name=>'APEX.SPLITTER.MIN_SIZE_REACHED'
,p_message_language=>'nl'
,p_message_text=>'Minimumgrootte van %0px is bereikt.'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127429798792026971)
,p_name=>'APEX.SPLITTER.REGION_IS_COLLAPSED'
,p_message_language=>'nl'
,p_message_text=>'Regio is samengevouwen.'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127429503476026971)
,p_name=>'APEX.SPLITTER.REGION_IS_RESTORED'
,p_message_language=>'nl'
,p_message_text=>'Regio is hersteld.'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127429297899026971)
,p_name=>'APEX.SPLITTER.RESIZED_TO'
,p_message_language=>'nl'
,p_message_text=>'Aangepast tot %0px.'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127429491462026971)
,p_name=>'APEX.SPLITTER.RESTORED_REGION'
,p_message_language=>'nl'
,p_message_text=>'Herstelde regio: %0'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127544680923027006)
,p_name=>'APEX.SPLITTER.RESTORE_TEXT'
,p_message_language=>'nl'
,p_message_text=>'Herstellen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127428744844026971)
,p_name=>'APEX.SPLITTER.VERTICAL_CANNOT_UP_DOWN'
,p_message_language=>'nl'
,p_message_text=>unistr('Verticaal geori\00EBnteerde splitsing kan niet naar boven of naar beneden worden verplaatst.')
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127594144563027021)
,p_name=>'APEX.STAR_RATING.CLEAR_RATING'
,p_message_language=>'nl'
,p_message_text=>'Score wissen'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127584005458027018)
,p_name=>'APEX.STAR_RATING.INVALID_RATING_RANGE'
,p_message_language=>'nl'
,p_message_text=>'%0 valt niet binnen het geldige scorebereik van 1 - %1.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127584118828027018)
,p_name=>'APEX.STAR_RATING.IS_NOT_NUMERIC'
,p_message_language=>'nl'
,p_message_text=>'%0 is niet numeriek.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127580259738027017)
,p_name=>'APEX.SUCCESS_MESSAGE_HEADING'
,p_message_language=>'nl'
,p_message_text=>'Voltooiingsbericht'
,p_is_js_message=>true
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127642093022027035)
,p_name=>'APEX.TABS.NEXT'
,p_message_language=>'nl'
,p_message_text=>'Volgende'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127641974272027035)
,p_name=>'APEX.TABS.PREVIOUS'
,p_message_language=>'nl'
,p_message_text=>'Vorige'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127552145365027008)
,p_name=>'APEX.TASK.ACTION.DATA_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen recordsystemen gevonden die aan deze taak zijn gekoppeld.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127560429764027011)
,p_name=>'APEX.TASK.ACTION.ERROR'
,p_message_language=>'nl'
,p_message_text=>'Het uitvoeren van taakactie %0 is mislukt. De taak heeft nu een foutstatus. Controleer de taakactiecode.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127440652295026975)
,p_name=>'APEX.TASK.ADD_COMMENT_NOT_AUTHORIZED'
,p_message_language=>'nl'
,p_message_text=>'Opmerking toevoegen: niet geautoriseerd'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127439968050026974)
,p_name=>'APEX.TASK.ALREADY_ASSIGNED'
,p_message_language=>'nl'
,p_message_text=>'Taak is al toegewezen.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127433327824026972)
,p_name=>'APEX.TASK.ASSIGNED_TO_USER'
,p_message_language=>'nl'
,p_message_text=>'Toegewezen aan %0'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127439641807026974)
,p_name=>'APEX.TASK.CANCEL_TASK_NOT_AUTHORIZED'
,p_message_language=>'nl'
,p_message_text=>'Taak annuleren: niet geautoriseerd'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127455294674026979)
,p_name=>'APEX.TASK.CANNOT_REMOVE_OWNER'
,p_message_language=>'nl'
,p_message_text=>'De werkelijke eigenaar kan niet worden verwijderd van deze taak. Delegeer de taak naar een andere deelnemer voordat u deze bewerking opnieuw probeert.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127439251673026974)
,p_name=>'APEX.TASK.CLAIM_TASK_NOT_AUTHORIZED'
,p_message_language=>'nl'
,p_message_text=>'Taak claimen: niet geautoriseerd'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127439376894026974)
,p_name=>'APEX.TASK.COMPLETE_TASK_NOT_AUTHORIZED'
,p_message_language=>'nl'
,p_message_text=>'Taak voltooien: niet geautoriseerd'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127439487020026974)
,p_name=>'APEX.TASK.DELEGATE_TASK_NOT_AUTHORIZED'
,p_message_language=>'nl'
,p_message_text=>'Taak delegeren: niet geautoriseerd'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127437887046026974)
,p_name=>'APEX.TASK.DUE_DATE_IN_PAST'
,p_message_language=>'nl'
,p_message_text=>'De vervaldatum van de taak kan niet in het verleden liggen.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127433171152026972)
,p_name=>'APEX.TASK.DUE_SINCE'
,p_message_language=>'nl'
,p_message_text=>'Vervalt %0'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127433558173026972)
,p_name=>'APEX.TASK.EVENT.ACTION.ERROR_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Actietaak %1 mislukt. Foutmelding: %0.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127433216910026972)
,p_name=>'APEX.TASK.EVENT.ACTION.FAILURE'
,p_message_language=>'nl'
,p_message_text=>'Mislukt'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127432871811026972)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS'
,p_message_language=>'nl'
,p_message_text=>'Geslaagd'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127433062062026972)
,p_name=>'APEX.TASK.EVENT.ACTION.SUCCESS_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Actie %1 met bericht %0 geslaagd.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127436300981026973)
,p_name=>'APEX.TASK.EVENT.BEFORE_EXPIRE'
,p_message_language=>'nl'
,p_message_text=>unistr('V\00F3\00F3r vervaldatum')
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127461948005026981)
,p_name=>'APEX.TASK.EVENT.CANCEL'
,p_message_language=>'nl'
,p_message_text=>'Annuleren'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127461452826026981)
,p_name=>'APEX.TASK.EVENT.CANCEL_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Taak geannuleerd'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127462010115026981)
,p_name=>'APEX.TASK.EVENT.CANCEL_NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'Deelnemer mag de taak niet annuleren.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127461322337026981)
,p_name=>'APEX.TASK.EVENT.CLAIM'
,p_message_language=>'nl'
,p_message_text=>'Claim'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127461741772026981)
,p_name=>'APEX.TASK.EVENT.CLAIM_ALREADY_CLAIMED'
,p_message_language=>'nl'
,p_message_text=>'Taak is al geclaimd door een andere gebruiker of deelnemer is niet gemachtigd om deze taak te claimen'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127461597740026981)
,p_name=>'APEX.TASK.EVENT.CLAIM_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Taak geclaimd door %0'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127562607106027011)
,p_name=>'APEX.TASK.EVENT.COMPLETE'
,p_message_language=>'nl'
,p_message_text=>'Voltooid'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127461112030026981)
,p_name=>'APEX.TASK.EVENT.COMPLETE_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Taak voltooid met als resultaat %0'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127462480059026982)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'De taak is niet toegewezen of de deelnemer mag de taak niet voltooien.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127422822549026969)
,p_name=>'APEX.TASK.EVENT.COMPLETE_NO_OUTCOME'
,p_message_language=>'nl'
,p_message_text=>'Taak voltooid zonder resultaat.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127562764826027012)
,p_name=>'APEX.TASK.EVENT.CREATE'
,p_message_language=>'nl'
,p_message_text=>'Maken'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127455676024026980)
,p_name=>'APEX.TASK.EVENT.CREATE_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Taak gemaakt met ID %0'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127562899743027012)
,p_name=>'APEX.TASK.EVENT.DELEGATE'
,p_message_language=>'nl'
,p_message_text=>'Delegeren'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127461230395026981)
,p_name=>'APEX.TASK.EVENT.DELEGATE_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Taak gedelegeerd naar mogelijke eigenaar %0'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127461808614026981)
,p_name=>'APEX.TASK.EVENT.DELEGATE_NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'Deelnemer is niet gemachtigd of nieuwe deelnemer is geen mogelijke eigenaar van deze taak.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127434967885026973)
,p_name=>'APEX.TASK.EVENT.EXPIRE'
,p_message_language=>'nl'
,p_message_text=>'Laten vervallen'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127436053161026973)
,p_name=>'APEX.TASK.EVENT.EXPIRED_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Taak is vervallen.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127562986304027012)
,p_name=>'APEX.TASK.EVENT.FAIL'
,p_message_language=>'nl'
,p_message_text=>'Mislukt'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127431600539026972)
,p_name=>'APEX.TASK.EVENT.INFO_REQUEST.NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'De taak is niet toegewezen of de deelnemer mag geen gegevens voor de taak aanvragen.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127431834899026972)
,p_name=>'APEX.TASK.EVENT.INFO_SUBMIT.NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen gegevens voor de taak aangevraagd of de deelnemer mag geen gegevens voor de taak versturen.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127435427218026973)
,p_name=>'APEX.TASK.EVENT.MAXRENEW_EXPIRED_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Taak laten vervallen wanneer het maximale aantal vernieuwingen (%0) is bereikt'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127462766681026982)
,p_name=>'APEX.TASK.EVENT.NOT_ALLOWED_BUSINESS_ADMIN'
,p_message_language=>'nl'
,p_message_text=>'Taak heeft niet de juiste status of de deelnemer is geen bedrijfsbeheerder voor deze taak.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127462891329026982)
,p_name=>'APEX.TASK.EVENT.NOT_APPLICABLE'
,p_message_language=>'nl'
,p_message_text=>'Bewerking %0 is onbekend of niet van toepassing op deze taak.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127563065018027012)
,p_name=>'APEX.TASK.EVENT.RELEASE'
,p_message_language=>'nl'
,p_message_text=>'Vrijgeven'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127548720224027007)
,p_name=>'APEX.TASK.EVENT.RELEASE_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Taak is vrijgegeven. Deze kan nu worden geclaimd door mogelijke eigenaars.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127441654387026975)
,p_name=>'APEX.TASK.EVENT.RELEASE_NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'Taak vrijgeven is niet toegestaan. De gebruiker is niet de eigenaar van de taak.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127458622299026980)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER'
,p_message_language=>'nl'
,p_message_text=>'Eigenaar verwijderen'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127458805067026981)
,p_name=>'APEX.TASK.EVENT.REMOVE_OWNER_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Deelnemer %0 is uit de taak verwijderd.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127436256193026973)
,p_name=>'APEX.TASK.EVENT.RENEW'
,p_message_language=>'nl'
,p_message_text=>'Vernieuwen'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127435108016026973)
,p_name=>'APEX.TASK.EVENT.RENEW_EXPIRED_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>unistr('Taak vernieuwd met ID %0, maximaal resterend aantal vernieuwingen v\00F3\00F3r vervaldatum is %1.')
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127436179551026973)
,p_name=>'APEX.TASK.EVENT.RENEW_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Taak-ID %0 is vernieuwd met taak-ID %1.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127432141447026972)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO'
,p_message_language=>'nl'
,p_message_text=>'Gegevens aanvragen'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127432099708026972)
,p_name=>'APEX.TASK.EVENT.REQUEST_INFO_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'%0 aangevraagd voor meer gegevens: %1'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127429981705026971)
,p_name=>'APEX.TASK.EVENT.SET_INITIATOR_CAN_COMPLETE_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'''Initiator kan voltooien tot %0'' instellen'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127432256898026972)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO'
,p_message_language=>'nl'
,p_message_text=>'Gegevens versturen'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127431917612026972)
,p_name=>'APEX.TASK.EVENT.SUBMIT_INFO_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Aangevraagde gegevens verstuurd naar %0: %1'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127563191859027012)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT'
,p_message_language=>'nl'
,p_message_text=>'Toelichting bijwerken'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127459669516026981)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Opmerking toevoegen: %0'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127462563486026982)
,p_name=>'APEX.TASK.EVENT.UPDATE_COMMENT_NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'Bij deze taakstatus zijn geen opmerkingen toegestaan.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127469854295026984)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_DATE_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Vervaldatum instellen op %0'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127427993495026971)
,p_name=>'APEX.TASK.EVENT.UPDATE_DUE_ON'
,p_message_language=>'nl'
,p_message_text=>'Vervaldatum bijwerken'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127563285438027012)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER'
,p_message_language=>'nl'
,p_message_text=>'Eigenaar bijwerken'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127460958017026981)
,p_name=>'APEX.TASK.EVENT.UPDATE_OWNER_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Mogelijke eigenaar %0 toevoegen aan taakdeelnemers'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127460062368026981)
,p_name=>'APEX.TASK.EVENT.UPDATE_PARAM'
,p_message_language=>'nl'
,p_message_text=>'Parameters bijwerken'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127563366010027012)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY'
,p_message_language=>'nl'
,p_message_text=>'Prioriteit bijwerken'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127461648162026981)
,p_name=>'APEX.TASK.EVENT.UPDATE_PRIORITY_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Taakprioriteit instellen op %0'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127458913516026981)
,p_name=>'APEX.TASK.EVENT.UPD_PARAMETER_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Bijgewerkte parameter "%0" van "%1" naar "%2".'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127442432557026975)
,p_name=>'APEX.TASK.EVENT.WF_CANCEL_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>unistr('De taak is geannuleerd omdat de bijbehorende workflowinstance werd be\00EBindigd.')
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127439548500026974)
,p_name=>'APEX.TASK.FORWARD_TASK_NOT_AUTHORIZED'
,p_message_language=>'nl'
,p_message_text=>'Taak doorsturen: niet geautoriseerd'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127432979098026972)
,p_name=>'APEX.TASK.INITIATED_BY_USER_SINCE'
,p_message_language=>'nl'
,p_message_text=>unistr('Ge\00EFnitieerd door %0 %1')
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127441869129026975)
,p_name=>'APEX.TASK.INTERNAL_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een onverwachte interne fout opgetreden'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127440112602026974)
,p_name=>'APEX.TASK.NOT_APPLICABLE'
,p_message_language=>'nl'
,p_message_text=>'Taakbewerking niet van toepassing'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127465770951026983)
,p_name=>'APEX.TASK.NO_POTENTIAL_OWNER'
,p_message_language=>'nl'
,p_message_text=>unistr('Deze potenti\00EBle eigenaar bestaat niet.')
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127441499201026975)
,p_name=>'APEX.TASK.OUTCOME.APPROVED'
,p_message_language=>'nl'
,p_message_text=>'Goedgekeurd'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127441533452026975)
,p_name=>'APEX.TASK.OUTCOME.REJECTED'
,p_message_language=>'nl'
,p_message_text=>'Afgewezen'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127422934851026969)
,p_name=>'APEX.TASK.OUTCOME_MISSING'
,p_message_language=>'nl'
,p_message_text=>'Taakvoltooiing vereist een resultaat.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127423111142026969)
,p_name=>'APEX.TASK.OUTCOME_NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'Taak mag geen resultaat hebben.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127458702807026981)
,p_name=>'APEX.TASK.PARAM_NOT_UPDATABLE'
,p_message_language=>'nl'
,p_message_text=>'De parameter %0 kan niet worden bijgewerkt.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127455007317026979)
,p_name=>'APEX.TASK.PARTICIPANT_EXISTS'
,p_message_language=>'nl'
,p_message_text=>'De deelnemer bestaat al voor deze taakinstance.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127556529727027010)
,p_name=>'APEX.TASK.PRIORITY.1'
,p_message_language=>'nl'
,p_message_text=>'Urgent'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127433631400026972)
,p_name=>'APEX.TASK.PRIORITY.1.DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Urgent'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127556435208027010)
,p_name=>'APEX.TASK.PRIORITY.2'
,p_message_language=>'nl'
,p_message_text=>'Hoog'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127433758134026973)
,p_name=>'APEX.TASK.PRIORITY.2.DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Hoge prioriteit'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127556376511027010)
,p_name=>'APEX.TASK.PRIORITY.3'
,p_message_language=>'nl'
,p_message_text=>'Gemiddeld'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127433899173026973)
,p_name=>'APEX.TASK.PRIORITY.3.DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Gemiddelde prioriteit'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127556297157027010)
,p_name=>'APEX.TASK.PRIORITY.4'
,p_message_language=>'nl'
,p_message_text=>'Laag'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127433926851026973)
,p_name=>'APEX.TASK.PRIORITY.4.DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Lage prioriteit'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127556136937027010)
,p_name=>'APEX.TASK.PRIORITY.5'
,p_message_language=>'nl'
,p_message_text=>'Laagste'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127434063943026973)
,p_name=>'APEX.TASK.PRIORITY.5.DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Laagste prioriteit'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127439775479026974)
,p_name=>'APEX.TASK.SET_PRIORITY_NOT_AUTHORIZED'
,p_message_language=>'nl'
,p_message_text=>'Taakprioriteit instellen: niet geautoriseerd'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127440923126026975)
,p_name=>'APEX.TASK.STATE.ASSIGNED'
,p_message_language=>'nl'
,p_message_text=>'Toegewezen'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127441358503026975)
,p_name=>'APEX.TASK.STATE.CANCELLED'
,p_message_language=>'nl'
,p_message_text=>'Geannuleerd'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127441045373026975)
,p_name=>'APEX.TASK.STATE.COMPLETED'
,p_message_language=>'nl'
,p_message_text=>'Voltooid'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127441281925026975)
,p_name=>'APEX.TASK.STATE.ERRORED'
,p_message_language=>'nl'
,p_message_text=>'Met fouten'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127434776278026973)
,p_name=>'APEX.TASK.STATE.EXPIRED'
,p_message_language=>'nl'
,p_message_text=>'Vervallen'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127441139078026975)
,p_name=>'APEX.TASK.STATE.FAILED'
,p_message_language=>'nl'
,p_message_text=>'Mislukt'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127431400724026972)
,p_name=>'APEX.TASK.STATE.INFO_REQUESTED'
,p_message_language=>'nl'
,p_message_text=>'Gegevens aangevraagd'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127440812247026975)
,p_name=>'APEX.TASK.STATE.UNASSIGNED'
,p_message_language=>'nl'
,p_message_text=>'Niet toegewezen'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127463264877026982)
,p_name=>'APEX.TASK.TASK_CREATE_ERROR'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Het maken van een nieuwe taak voor taakdefinitie %0 in applicatie %1 is mislukt.',
'SQLCODE: %2'))
,p_version_scn=>2693088
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127463146543026982)
,p_name=>'APEX.TASK.TASK_CREATE_NO_POTENTIAL_OWNER'
,p_message_language=>'nl'
,p_message_text=>unistr('Een poging om een taak te maken voor taakdefinitie %0 in applicatie %1 is mislukt, omdat de taakdefinitie geen mogelijke eigenaars bevat. Bewerk de taakdefinitie en voeg minimaal \00E9\00E9n deelnemer van het type ''Mogelijke eigenaar'' toe.')
,p_version_scn=>2693088
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127440432511026975)
,p_name=>'APEX.TASK.TASK_DEFINITION_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Taakdefinitie is niet gevonden.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127440362690026974)
,p_name=>'APEX.TASK.TASK_DEF_PARTICIPANTS_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Deelnemers zijn niet gevonden voor de taak'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127441729281026975)
,p_name=>'APEX.TASK.TASK_ID_PK_VIOLATION'
,p_message_language=>'nl'
,p_message_text=>unistr('Er is meer dan \00E9\00E9n taak voor de opgegeven taak-ID. Neem contact op met de databasebeheerder.')
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127440589126026975)
,p_name=>'APEX.TASK.TASK_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Taak is niet gevonden'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127440280244026974)
,p_name=>'APEX.TASK.TASK_PARAMETER_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Taakparameter is niet gevonden.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127476584660026986)
,p_name=>'APEX.TASK.TYPE.ACTION'
,p_message_language=>'nl'
,p_message_text=>'Actie'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127476415836026986)
,p_name=>'APEX.TASK.TYPE.APPROVAL'
,p_message_language=>'nl'
,p_message_text=>'Goedkeuring'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127423864945026969)
,p_name=>'APEX.TASK.VACATION_RULE_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Vakantieregelprocedure %2 kon niet worden uitgevoerd voor taakdefinitie %0 in applicatie %1.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127424081172026969)
,p_name=>'APEX.TASK.VACATION_RULE_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Deelnemer %1 is toegevoegd als vervanging voor deelnemer %0 . Reden - %2 .'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127627755585027031)
,p_name=>'APEX.TB.TOOLBAR'
,p_message_language=>'nl'
,p_message_text=>'Werkbalk'
,p_is_js_message=>true
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127481236428026987)
,p_name=>'APEX.TEMPLATE.APPLICATION'
,p_message_language=>'nl'
,p_message_text=>'Applicatie'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127642458071027036)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_NAV_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Navigatie uitvouwen/samenvouwen'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127642558315027036)
,p_name=>'APEX.TEMPLATE.EXPAND_COLLAPSE_SIDE_COL_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Zijkolom uitvouwen/samenvouwen'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127550952510027008)
,p_name=>'APEX.TEMPLATE.MAIN_NAV_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Hoofdnavigatie'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127451749624026978)
,p_name=>'APEX.TEMPLATE_DIRECTIVE.INVALID_PLACEHOLDER_NAME'
,p_message_language=>'nl'
,p_message_text=>'"%0" is een ongeldige naam voor een plaatsaanduiding.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127558689921027010)
,p_name=>'APEX.TIME.DAY'
,p_message_language=>'nl'
,p_message_text=>'1 dag'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127558499457027010)
,p_name=>'APEX.TIME.HOUR'
,p_message_language=>'nl'
,p_message_text=>'1 uur'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127558785880027010)
,p_name=>'APEX.TIME.N_DAYS'
,p_message_language=>'nl'
,p_message_text=>'%0 dagen'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127558516732027010)
,p_name=>'APEX.TIME.N_HOURS'
,p_message_language=>'nl'
,p_message_text=>'%0 uur'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127558370158027010)
,p_name=>'APEX.TIME.N_MINUTES'
,p_message_language=>'nl'
,p_message_text=>'%0 minuten'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127558951648027010)
,p_name=>'APEX.TIME.N_WEEKS'
,p_message_language=>'nl'
,p_message_text=>'%0 weken'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127558856817027010)
,p_name=>'APEX.TIME.WEEK'
,p_message_language=>'nl'
,p_message_text=>'1 week'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127456634746026980)
,p_name=>'APEX.TMV.SELECTION_COUNT'
,p_message_language=>'nl'
,p_message_text=>'%0 items geselecteerd'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127456833283026980)
,p_name=>'APEX.TMV.SELECTOR_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Item selecteren'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127456728802026980)
,p_name=>'APEX.TMV.SELECTOR_LABEL_1'
,p_message_language=>'nl'
,p_message_text=>'Selecteer %0.'
,p_is_js_message=>true
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127645596763027037)
,p_name=>'APEX.UI.BACK_TO_TOP'
,p_message_language=>'nl'
,p_message_text=>'Begin van pagina'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127503111338026994)
,p_name=>'APEX.UI.ENABLED'
,p_message_language=>'nl'
,p_message_text=>'Geactiveerd'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127471619363026984)
,p_name=>'APEX.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het verwerken van de aanvraag.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127457225774026980)
,p_name=>'APEX.UPDATE_MESSAGE_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Tekstbericht %0 kan niet worden bijgewerkt omdat er een abonnement op is vanuit een andere toepassing.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127560325483027011)
,p_name=>'APEX.VALUE_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'Waarde vereist'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127476742486026986)
,p_name=>'APEX.VISUALLY_HIDDEN_HEADING'
,p_message_language=>'nl'
,p_message_text=>'Niveau koptekst %0, verborgen.'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127605135944027024)
,p_name=>'APEX.WARN_ON_UNSAVED_CHANGES'
,p_message_language=>'nl'
,p_message_text=>'Deze pagina bevat niet-opgeslagen wijzigingen.'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127466700582026983)
,p_name=>'APEX.WF.NAVIGATOR'
,p_message_language=>'nl'
,p_message_text=>'Navigator'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127466473834026983)
,p_name=>'APEX.WF.ZOOM_IN'
,p_message_language=>'nl'
,p_message_text=>'Inzoomen'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127467470169026983)
,p_name=>'APEX.WF.ZOOM_LEVEL'
,p_message_language=>'nl'
,p_message_text=>'Zoomniveau {0}%'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127466508734026983)
,p_name=>'APEX.WF.ZOOM_OUT'
,p_message_language=>'nl'
,p_message_text=>'Uitzoomen'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127466624894026983)
,p_name=>'APEX.WF.ZOOM_RESET'
,p_message_language=>'nl'
,p_message_text=>'Zoom opnieuw instellen'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127442139068026975)
,p_name=>'APEX.WF_DIAGRAM.ARIA_DESC'
,p_message_language=>'nl'
,p_message_text=>'Het workflowdiagram is momenteel niet toegankelijk.'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127442003966026975)
,p_name=>'APEX.WF_DIAGRAM.ARIA_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Workflowdiagram'
,p_is_js_message=>true
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127443947108026976)
,p_name=>'APEX.WORKFLOW.ACTION_NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'De workflow instance %0 bevindt zich momenteel in status %1. Daarom is de bewerking niet toegestaan.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127446591885026977)
,p_name=>'APEX.WORKFLOW.ACTIVITY.COMPLETED'
,p_message_language=>'nl'
,p_message_text=>'De instance %1 van activiteit %2 in workflow %0 is voltooid.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127446351968026976)
,p_name=>'APEX.WORKFLOW.ACTIVITY.CREATED'
,p_message_language=>'nl'
,p_message_text=>'Nieuwe instance %1 aangemaakt van activiteit %2 in workflow %0.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127438173131026974)
,p_name=>'APEX.WORKFLOW.ACTIVITY.DATA_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Er is geen extra gegevensrij gevonden die aan deze workflowactiviteiteninstance is gekoppeld.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127446431683026977)
,p_name=>'APEX.WORKFLOW.ACTIVITY.RETRIED'
,p_message_language=>'nl'
,p_message_text=>'De foutieve instantie %1 van activiteit %2 in workflow %0 is opnieuw uitgevoerd.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127428430686026971)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TERMINATED'
,p_message_language=>'nl'
,p_message_text=>unistr('De instance %1 van de activiteit in workflow %0 is be\00EBindigd.')
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127462203980026982)
,p_name=>'APEX.WORKFLOW.ACTIVITY.TIMEOUT'
,p_message_language=>'nl'
,p_message_text=>unistr('Activiteit-instantie %1 in workflow %0 is uitgetimed en be\00EBindigd.')
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127446678920026977)
,p_name=>'APEX.WORKFLOW.ACTIVITY.WAITING'
,p_message_language=>'nl'
,p_message_text=>'De instance %1 van activiteit %2''in workflow %0 bevindt zich in de status ''Wachtend''.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127428224944026971)
,p_name=>'APEX.WORKFLOW.ALTERED_AND_RESUMED'
,p_message_language=>'nl'
,p_message_text=>'Workflow instance %0 is gewijzigd en is hervat bij activiteit  %1.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127445666555026976)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.COMPLETED'
,p_message_language=>'nl'
,p_message_text=>'De wachtende instance %1 van activiteit %2 in workflow %0 is voltooid.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127445467891026976)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.FAULTED'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het wachten op activiteit %1 omdat de workflow %0 al de status ''Fout opgetreden'' had voordat de activiteit werd voltooid.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127445559480026976)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATED'
,p_message_language=>'nl'
,p_message_text=>unistr('De wachtende activiteit %1 is be\00EBindigd, omdat de workflow %0 zich al in de status ''Be\00EBindigd'' bevond voordat de activiteit werd voltooid.')
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127428567864026971)
,p_name=>'APEX.WORKFLOW.ASYNC.ACT.TERMINATE_FAILED'
,p_message_language=>'nl'
,p_message_text=>unistr('De be\00EBindiging van activiteit %1 in workflow %0 is mislukt vanwege uitzondering: %2.')
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127444176206026976)
,p_name=>'APEX.WORKFLOW.BUSY'
,p_message_language=>'nl'
,p_message_text=>'De workflow is momenteel bezig met het voltooien van een vorige bewerking. Probeer het later nog eens.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127460250861026981)
,p_name=>'APEX.WORKFLOW.COMPLETED_SINCE'
,p_message_language=>'nl'
,p_message_text=>'%0 voltooid.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127443283173026975)
,p_name=>'APEX.WORKFLOW.CONTINUE.NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'De workflow %0 kan niet worden voortgezet omdat deze zich momenteel in activiteit %1 bevindt, die zich niet in een wachtstatus bevindt.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127455139435026979)
,p_name=>'APEX.WORKFLOW.CORRELATION_CONTEXT_ERROR'
,p_message_language=>'nl'
,p_message_text=>'%0 is geen geldige workflow correlatiecontext voor het proces dat wordt uitgevoerd door deze workflowactiviteit. De correlatiecontext moet een met dubbele punten afgebakende tekst zijn die APEX_APPL_WORKFLOW bevat, gevolgd door de ID van de workflowi'
||'nstance en de ID van de activiteitinstance.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127445888566026976)
,p_name=>'APEX.WORKFLOW.CREATED'
,p_message_language=>'nl'
,p_message_text=>'Nieuwe instance %0 aangemaakt van workflow %1, versie %2.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127437966936026974)
,p_name=>'APEX.WORKFLOW.DATA_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Er is geen extra gegevensrij gevonden die aan deze workflowinstance is gekoppeld.'
,p_version_scn=>2693084
);
end;
/
begin
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127460426628026981)
,p_name=>'APEX.WORKFLOW.DUE_SINCE'
,p_message_language=>'nl'
,p_message_text=>'Vervalt %0'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127445744517026976)
,p_name=>'APEX.WORKFLOW.END'
,p_message_language=>'nl'
,p_message_text=>unistr('Workflow %0 is be\00EBindigd bij status %1.')
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127442978998026975)
,p_name=>'APEX.WORKFLOW.INCOMPATIBLE_DATA_TYPE'
,p_message_language=>'nl'
,p_message_text=>'De gegevenssoort %1 voor de voorwaarden die worden vergeleken in de schakelactiviteit van workflow %0 is niet compatibel met de voorwaarde-operator.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127432787164026972)
,p_name=>'APEX.WORKFLOW.INITIATED_BY_USER_SINCE'
,p_message_language=>'nl'
,p_message_text=>unistr('Ge\00EFnitieerd door %0 %1')
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127455542272026980)
,p_name=>'APEX.WORKFLOW.INVOKED'
,p_message_language=>'nl'
,p_message_text=>'Nieuwe instantie %0 van workflow %1, versie %2 gemaakt: aangeroepen vanuit activiteitsinstance %4 van workflowinstane %3.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127428376103026971)
,p_name=>'APEX.WORKFLOW.NO_ACTIVITY_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Activiteit met statische ID %1 is geen activiteit in workflow %0. Controleer de statische ID''s van de betreffende workflowversie.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127453660061026979)
,p_name=>'APEX.WORKFLOW.REQUIRED_PARAM_MISSING'
,p_message_language=>'nl'
,p_message_text=>'%0 is een verplichte parameter voor deze workflow en mag niet NULL zijn.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127446291408026976)
,p_name=>'APEX.WORKFLOW.RESUMED'
,p_message_language=>'nl'
,p_message_text=>'Workflow instance %0 is hervat.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127446135371026976)
,p_name=>'APEX.WORKFLOW.RETRIED'
,p_message_language=>'nl'
,p_message_text=>'Workflow instance %0 is opnieuw geprobeerd.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127460574274026981)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.EQUALS_ONE'
,p_message_language=>'nl'
,p_message_text=>'%0 nieuwe poging'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127460641924026981)
,p_name=>'APEX.WORKFLOW.RETRY_COUNT.NOT_EQUALS_ONE'
,p_message_language=>'nl'
,p_message_text=>'%0 nieuwe pogingen'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127460388620026981)
,p_name=>'APEX.WORKFLOW.STARTED_SINCE'
,p_message_language=>'nl'
,p_message_text=>'%0 gestart.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127454587132026979)
,p_name=>'APEX.WORKFLOW.STATE.ACTIVE'
,p_message_language=>'nl'
,p_message_text=>'Actief'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127454725379026979)
,p_name=>'APEX.WORKFLOW.STATE.COMPLETED'
,p_message_language=>'nl'
,p_message_text=>'Voltooid'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127454894053026979)
,p_name=>'APEX.WORKFLOW.STATE.FAULTED'
,p_message_language=>'nl'
,p_message_text=>'Fout opgetreden'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127454914299026979)
,p_name=>'APEX.WORKFLOW.STATE.SUSPENDED'
,p_message_language=>'nl'
,p_message_text=>'Opgeschort'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127454626574026979)
,p_name=>'APEX.WORKFLOW.STATE.TERMINATED'
,p_message_language=>'nl'
,p_message_text=>unistr('Be\00EBindigd')
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127469939078026984)
,p_name=>'APEX.WORKFLOW.STATE.WAITING'
,p_message_language=>'nl'
,p_message_text=>'Wachten'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127445972883026976)
,p_name=>'APEX.WORKFLOW.SUSPENDED'
,p_message_language=>'nl'
,p_message_text=>'Workflow instance %0 is opgeschort.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127451861018026978)
,p_name=>'APEX.WORKFLOW.SWITCH.BRANCH_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'De volgende activiteit voor workflowinstance %0 kan niet worden bepaald. Controleer en corrigeer de voorwaarden die voor de huidige schakelactiviteit zijn gedefinieerd voordat u de workflow opnieuw probeert.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127446075035026976)
,p_name=>'APEX.WORKFLOW.TERMINATED'
,p_message_language=>'nl'
,p_message_text=>unistr('Workflow instance %0 is be\00EBindigd.')
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127445127287026976)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RESUME'
,p_message_language=>'nl'
,p_message_text=>'Alleen de bedrijfsbeheerder van workflow %0 kan de workflow hervatten.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127445282995026976)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_RETRY'
,p_message_language=>'nl'
,p_message_text=>'De workflow %0 kan alleen worden opgehaald door een bedrijfsbeheerder en/of een eigenaar.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127444769269026976)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_SUSPEND'
,p_message_language=>'nl'
,p_message_text=>'De workflow instance %0 kan alleen worden opgeschort door een bedrijfsbeheerder van de workflow.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127445073660026976)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_TERMINATE'
,p_message_language=>'nl'
,p_message_text=>unistr('Alleen eigenaren en bedrijfsbeheerders van workflow instance %0 kunnen de workflow be\00EBindigen.')
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127443485994026975)
,p_name=>'APEX.WORKFLOW.UNAUTHORIZED_UPDATE'
,p_message_language=>'nl'
,p_message_text=>'De variabelen van workflow %0 kunnen alleen worden bijgewerkt door een bedrijfsbeheerder die voor de workflow is gedefinieerd.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127458005721026980)
,p_name=>'APEX.WORKFLOW.UPDATE,NOT_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'Workflowinstance %0 moet zich in de status ''Fout opgetreden'' of ''Opgeschort'' bevinden voordat de variabelen ervan kunnen worden bijgewerkt.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127449558542026978)
,p_name=>'APEX.WORKFLOW.UPDATED'
,p_message_language=>'nl'
,p_message_text=>'De waarde van de workflowvariabele %0 is bijgewerkt naar %1.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127459733260026981)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_ACTIVE'
,p_message_language=>'nl'
,p_message_text=>'Workflow %0 bevat geen actieve versie'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127459837953026981)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_DEV'
,p_message_language=>'nl'
,p_message_text=>'Workflow %0 bevat geen versie die in ontwikkeling is.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127459906847026981)
,p_name=>'APEX.WORKFLOW.VERSION_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Workflow %0 bevat geen actieve versie of een die in ontwikkeling is.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127442884188026975)
,p_name=>'APEX.WORKFLOW.WORKFLOW_ACT_INSTANCE_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'De activiteitsinstance %1 voor workflow instance %0 is niet gevonden.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127442664550026975)
,p_name=>'APEX.WORKFLOW.WORKFLOW_INSTANCE_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'De workflow instance %0 is niet gevonden.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127477741106026986)
,p_name=>'APEX.XLSX.ERROR.NO_ACTIVE_WORKSHEET'
,p_message_language=>'nl'
,p_message_text=>'De werkmap bevat geen actief werkblad.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127477654709026986)
,p_name=>'APEX.XLSX.ERROR.WORKBOOK_NOT_INITIALIZED'
,p_message_language=>'nl'
,p_message_text=>unistr('De werkmap is niet ge\00EFnitialiseerd.')
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127477535642026986)
,p_name=>'APEX.XLSX.INTERNAL_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een interne fout opgetreden bij het maken van het XLSX-bestand.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127480061668026987)
,p_name=>'APEX.XLSX.SHEET'
,p_message_language=>'nl'
,p_message_text=>'Werkblad'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127490630387026990)
,p_name=>'APEX.XLSX.SHEET_NAME_TAKEN'
,p_message_language=>'nl'
,p_message_text=>'De naam van werkblad "%0" is al in gebruik. Probeer een andere.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127619229968027028)
,p_name=>'APEXIR_ACTIONS'
,p_message_language=>'nl'
,p_message_text=>'Acties'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127534243941027003)
,p_name=>'APEXIR_ACTIONS_MENU'
,p_message_language=>'nl'
,p_message_text=>'Actiemenu'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127529964730027002)
,p_name=>'APEXIR_ADD_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'Functie toevoegen'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127529811705027002)
,p_name=>'APEXIR_ADD_GROUP_BY_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'GROUP BY-kolom toevoegen'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127567422319027013)
,p_name=>'APEXIR_ADD_PIVOT_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Draaikolom toevoegen'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127567563014027013)
,p_name=>'APEXIR_ADD_ROW_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Rijkolom toevoegen'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127501905258026993)
,p_name=>'APEXIR_AGGREGATE'
,p_message_language=>'nl'
,p_message_text=>'Aggregatie'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127540484969027005)
,p_name=>'APEXIR_AGGREGATION'
,p_message_language=>'nl'
,p_message_text=>'Aggregatie'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127521379395026999)
,p_name=>'APEXIR_AGG_AVG'
,p_message_language=>'nl'
,p_message_text=>'Gemiddelde'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127525601940027000)
,p_name=>'APEXIR_AGG_COUNT'
,p_message_language=>'nl'
,p_message_text=>'Aantal'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127521431089026999)
,p_name=>'APEXIR_AGG_MAX'
,p_message_language=>'nl'
,p_message_text=>'Maximum'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127521617540026999)
,p_name=>'APEXIR_AGG_MEDIAN'
,p_message_language=>'nl'
,p_message_text=>'Mediaan'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127521580491026999)
,p_name=>'APEXIR_AGG_MIN'
,p_message_language=>'nl'
,p_message_text=>'Minimum'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127521284843026999)
,p_name=>'APEXIR_AGG_SUM'
,p_message_language=>'nl'
,p_message_text=>'Som %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127522345201026999)
,p_name=>'APEXIR_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127501253411026993)
,p_name=>'APEXIR_ALL_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Alle kolommen'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127481399018026987)
,p_name=>'APEXIR_ALL_ROWS'
,p_message_language=>'nl'
,p_message_text=>'Alle rijen'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127616287679027028)
,p_name=>'APEXIR_ALTERNATIVE'
,p_message_language=>'nl'
,p_message_text=>'Alternatief'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127617834969027028)
,p_name=>'APEXIR_ALTERNATIVE_DEFAULT_NAME'
,p_message_language=>'nl'
,p_message_text=>'Alternatief standaardrapport: %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127515404269026997)
,p_name=>'APEXIR_AND'
,p_message_language=>'nl'
,p_message_text=>'en'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127550240782027008)
,p_name=>'APEXIR_API.IMPORT_CONTENT_CORRUPTED'
,p_message_language=>'nl'
,p_message_text=>unistr('Het opgeslagen rapport kan niet worden ge\00EFmporteerd. De inhoud is beschadigd.')
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127550302718027008)
,p_name=>'APEXIR_API.IMPORT_CONTENT_EMPTY'
,p_message_language=>'nl'
,p_message_text=>unistr('Het opgeslagen rapport kan niet worden ge\00EFmporteerd. De inhoud is leeg.')
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127503457155026994)
,p_name=>'APEXIR_APPLY'
,p_message_language=>'nl'
,p_message_text=>'Toepassen'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127497020796026992)
,p_name=>'APEXIR_ASCENDING'
,p_message_language=>'nl'
,p_message_text=>'Oplopend'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127518557223026998)
,p_name=>'APEXIR_AS_OF'
,p_message_language=>'nl'
,p_message_text=>'Peildatum %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127618442068027028)
,p_name=>'APEXIR_AVERAGE_X'
,p_message_language=>'nl'
,p_message_text=>'Gemiddelde %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127610026822027026)
,p_name=>'APEXIR_BAR'
,p_message_language=>'nl'
,p_message_text=>'Staaf'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127502787135026994)
,p_name=>'APEXIR_BETWEEN'
,p_message_language=>'nl'
,p_message_text=>'tussen'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127495844684026992)
,p_name=>'APEXIR_BGCOLOR'
,p_message_language=>'nl'
,p_message_text=>'Achtergrondkleur'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127497719628026992)
,p_name=>'APEXIR_BLUE'
,p_message_language=>'nl'
,p_message_text=>'blauw'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127531847715027002)
,p_name=>'APEXIR_BOTTOM'
,p_message_language=>'nl'
,p_message_text=>'Onderaan'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127462605657026982)
,p_name=>'APEXIR_BTNS_NEXT_TO_SEARCH_OF'
,p_message_language=>'nl'
,p_message_text=>'Knoppen naast zoekbalk van %0'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127498313305026992)
,p_name=>'APEXIR_CANCEL'
,p_message_language=>'nl'
,p_message_text=>'Annuleren'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127504601693026994)
,p_name=>'APEXIR_CATEGORY'
,p_message_language=>'nl'
,p_message_text=>'Categorie'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127495749296026992)
,p_name=>'APEXIR_CELL'
,p_message_language=>'nl'
,p_message_text=>'Cel'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127522202115026999)
,p_name=>'APEXIR_CHART'
,p_message_language=>'nl'
,p_message_text=>'Grafiek'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127532778908027003)
,p_name=>'APEXIR_CHART_INITIALIZING'
,p_message_language=>'nl'
,p_message_text=>'Bezig met initialiseren...'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127572461263027014)
,p_name=>'APEXIR_CHART_LABEL_NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'Er moet een grafieklabel worden opgegeven.'
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127584888937027018)
,p_name=>'APEXIR_CHART_MAX_DATAPOINT_CNT'
,p_message_language=>'nl'
,p_message_text=>'Uw query overschrijdt het maximum van %0 gegevenspunten per grafiek. Pas een filter toe om het aantal records in uw basisquery te verminderen.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127583784195027018)
,p_name=>'APEXIR_CHART_MAX_ROW_CNT'
,p_message_language=>'nl'
,p_message_text=>'Het maximum aantal rijen voor een grafiekquery beperkt het aantal rijen en de basisquery, niet het aantal weergegeven rijen. Uw basisquery overschrijdt het maximum aantal rijen, %0. Pas een filter toe om het aantal records in uw basisquery te vermind'
||'eren.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127501315374026993)
,p_name=>'APEXIR_CHART_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Grafiektype'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127465251114026982)
,p_name=>'APEXIR_CHART_VIEW_OF'
,p_message_language=>'nl'
,p_message_text=>'Grafiekweergave van %0'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127580465205027017)
,p_name=>'APEXIR_CHECK_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles inschakelen'
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127518920142026998)
,p_name=>'APEXIR_CHOOSE_DOWNLOAD_FORMAT'
,p_message_language=>'nl'
,p_message_text=>'Rapportindeling kiezen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127526781134027001)
,p_name=>'APEXIR_CLEAR'
,p_message_language=>'nl'
,p_message_text=>'wissen'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127498210031026992)
,p_name=>'APEXIR_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Kolom'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127538056724027004)
,p_name=>'APEXIR_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Kolommen'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127505204024026994)
,p_name=>'APEXIR_COLUMN_ALIASES'
,p_message_language=>'nl'
,p_message_text=>'Kolomaliassen'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127612858722027027)
,p_name=>'APEXIR_COLUMN_FILTER'
,p_message_language=>'nl'
,p_message_text=>'Filteren...'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127473028086026985)
,p_name=>'APEXIR_COLUMN_HEADER'
,p_message_language=>'nl'
,p_message_text=>'Kolomkoptekst'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127487188604026989)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS'
,p_message_language=>'nl'
,p_message_text=>'Kolomacties'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127487477888026989)
,p_name=>'APEXIR_COLUMN_HEADER_ACTIONS_FOR'
,p_message_language=>'nl'
,p_message_text=>'Acties voor kolom "%0"'
,p_is_js_message=>true
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127528809367027001)
,p_name=>'APEXIR_COLUMN_HEADING_MENU'
,p_message_language=>'nl'
,p_message_text=>'Kolomkopmenu'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127532523689027003)
,p_name=>'APEXIR_COLUMN_INFO'
,p_message_language=>'nl'
,p_message_text=>'Kolomgegevens'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127615188676027027)
,p_name=>'APEXIR_COLUMN_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Kolomlabel'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127530257943027002)
,p_name=>'APEXIR_COLUMN_N'
,p_message_language=>'nl'
,p_message_text=>'Kolom %0'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127513165650026997)
,p_name=>'APEXIR_COMPARISON_CONTAINS'
,p_message_language=>'nl'
,p_message_text=>'bevat'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127514449873026997)
,p_name=>'APEXIR_COMPARISON_DOESNOT_CONTAIN'
,p_message_language=>'nl'
,p_message_text=>'bevat niet'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127496756156026992)
,p_name=>'APEXIR_COMPARISON_IN'
,p_message_language=>'nl'
,p_message_text=>'in'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127514696225026997)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_LAST'
,p_message_language=>'nl'
,p_message_text=>'is niet in de afgelopen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127523760099027000)
,p_name=>'APEXIR_COMPARISON_ISNOT_IN_NEXT'
,p_message_language=>'nl'
,p_message_text=>'is niet in de komende'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127514534235026997)
,p_name=>'APEXIR_COMPARISON_IS_IN_LAST'
,p_message_language=>'nl'
,p_message_text=>'is in de afgelopen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127523661129027000)
,p_name=>'APEXIR_COMPARISON_IS_IN_NEXT'
,p_message_language=>'nl'
,p_message_text=>'is in de komende'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127496662884026992)
,p_name=>'APEXIR_COMPARISON_IS_NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'is niet NULL'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127496589280026992)
,p_name=>'APEXIR_COMPARISON_IS_NULL'
,p_message_language=>'nl'
,p_message_text=>'is NULL'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127496301712026992)
,p_name=>'APEXIR_COMPARISON_LIKE'
,p_message_language=>'nl'
,p_message_text=>'ongeveer gelijk aan'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127496890371026992)
,p_name=>'APEXIR_COMPARISON_NOT_IN'
,p_message_language=>'nl'
,p_message_text=>'niet in'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127496485225026992)
,p_name=>'APEXIR_COMPARISON_NOT_LIKE'
,p_message_language=>'nl'
,p_message_text=>'niet als'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127513472486026997)
,p_name=>'APEXIR_COMPARISON_REGEXP_LIKE'
,p_message_language=>'nl'
,p_message_text=>'komt overeen met reguliere expressie'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127518811507026998)
,p_name=>'APEXIR_COMPUTATION'
,p_message_language=>'nl'
,p_message_text=>'Berekening'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127583464800027018)
,p_name=>'APEXIR_COMPUTATION_EXPRESSION'
,p_message_language=>'nl'
,p_message_text=>'Berekeningsuitdrukking'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127538388965027004)
,p_name=>'APEXIR_COMPUTATION_FOOTER'
,p_message_language=>'nl'
,p_message_text=>'Maak een berekening met behulp van kolomaliassen.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127538494263027004)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E1'
,p_message_language=>'nl'
,p_message_text=>'(B+C)*100'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127538538928027004)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E2'
,p_message_language=>'nl'
,p_message_text=>'INITCAP(B)||'', ''||INITCAP(C)'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127538665232027004)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E3'
,p_message_language=>'nl'
,p_message_text=>'CASE WHEN A = 10 THEN B + C ELSE B END'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127479516927026987)
,p_name=>'APEXIR_COMPUTATION_FOOTER_E4'
,p_message_language=>'nl'
,p_message_text=>'ROUND(C / 1000000)'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127523045462027000)
,p_name=>'APEXIR_COMPUTE'
,p_message_language=>'nl'
,p_message_text=>'Berekenen'
,p_is_js_message=>true
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127530884459027002)
,p_name=>'APEXIR_CONTROL_BREAK'
,p_message_language=>'nl'
,p_message_text=>'Groepsverandering'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127533833273027003)
,p_name=>'APEXIR_CONTROL_BREAKS'
,p_message_language=>'nl'
,p_message_text=>'Groepsveranderingen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127620433514027029)
,p_name=>'APEXIR_CONTROL_BREAK_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Groepsveranderingkolommen'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127476245379026986)
,p_name=>'APEXIR_COUNT_DISTINCT'
,p_message_language=>'nl'
,p_message_text=>'Aantal verschillende waarden'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127618942519027028)
,p_name=>'APEXIR_COUNT_DISTINCT_X'
,p_message_language=>'nl'
,p_message_text=>'Aantal verschillende waarden'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127618838780027028)
,p_name=>'APEXIR_COUNT_X'
,p_message_language=>'nl'
,p_message_text=>'Aantal %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127591875019027020)
,p_name=>'APEXIR_DAILY'
,p_message_language=>'nl'
,p_message_text=>'Dagelijks'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127645178904027036)
,p_name=>'APEXIR_DATA'
,p_message_language=>'nl'
,p_message_text=>'Gegevens'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127532695844027003)
,p_name=>'APEXIR_DATA_AS_OF'
,p_message_language=>'nl'
,p_message_text=>'Rapportgegevens van %0 minuten geleden'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127465614417026983)
,p_name=>'APEXIR_DATA_VIEW_OF'
,p_message_language=>'nl'
,p_message_text=>'Gegevensweergave van %0'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127502095294026993)
,p_name=>'APEXIR_DATE'
,p_message_language=>'nl'
,p_message_text=>'Datum'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127536536727027004)
,p_name=>'APEXIR_DEFAULT'
,p_message_language=>'nl'
,p_message_text=>'Standaard'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127616067628027028)
,p_name=>'APEXIR_DEFAULT_REPORT_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Standaardrapporttype'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127498487030026992)
,p_name=>'APEXIR_DELETE'
,p_message_language=>'nl'
,p_message_text=>'Verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127502365312026994)
,p_name=>'APEXIR_DELETE_CONFIRM'
,p_message_language=>'nl'
,p_message_text=>'Wilt u deze rapportinstellingen verwijderen?'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127602883055027024)
,p_name=>'APEXIR_DELETE_DEFAULT_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Standaardrapport verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127530576375027002)
,p_name=>'APEXIR_DELETE_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Rapport verwijderen'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127497112050026992)
,p_name=>'APEXIR_DESCENDING'
,p_message_language=>'nl'
,p_message_text=>'Aflopend'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127504730286026994)
,p_name=>'APEXIR_DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Beschrijving'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127528733177027001)
,p_name=>'APEXIR_DETAIL_VIEW'
,p_message_language=>'nl'
,p_message_text=>unistr('Weergave met \00E9\00E9n rij')
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127537067418027004)
,p_name=>'APEXIR_DIRECTION'
,p_message_language=>'nl'
,p_message_text=>'Richting %0'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127537951896027004)
,p_name=>'APEXIR_DISABLED'
,p_message_language=>'nl'
,p_message_text=>'Inactief'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127497952866026992)
,p_name=>'APEXIR_DISPLAYED'
,p_message_language=>'nl'
,p_message_text=>'Weergegeven'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127501137365026993)
,p_name=>'APEXIR_DISPLAYED_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Weergegeven kolommen'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127536944415027004)
,p_name=>'APEXIR_DISPLAY_IN_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Weergeven in rapport'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127531755226027002)
,p_name=>'APEXIR_DOWN'
,p_message_language=>'nl'
,p_message_text=>'Omlaag'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127523150563027000)
,p_name=>'APEXIR_DOWNLOAD'
,p_message_language=>'nl'
,p_message_text=>'Downloaden'
,p_is_js_message=>true
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127536844478027004)
,p_name=>'APEXIR_DO_NOT_DISPLAY'
,p_message_language=>'nl'
,p_message_text=>'Niet weergeven'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127606181302027025)
,p_name=>'APEXIR_DUPLICATE_HIGHLIGHT_COND'
,p_message_language=>'nl'
,p_message_text=>'Er bestaat al een markering met dezelfde voorwaarde.'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127620612576027029)
,p_name=>'APEXIR_DUPLICATE_PIVOT_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Dubbele draaikolom. De lijst met draaikolommen moet uniek zijn.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127620842167027029)
,p_name=>'APEXIR_EDIT'
,p_message_language=>'nl'
,p_message_text=>'Bewerken'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127532827513027003)
,p_name=>'APEXIR_EDIT_CHART'
,p_message_language=>'nl'
,p_message_text=>'Grafiekinstellingen bewerken'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127539438437027005)
,p_name=>'APEXIR_EDIT_CHART2'
,p_message_language=>'nl'
,p_message_text=>'Grafiek bewerken'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127503318758026994)
,p_name=>'APEXIR_EDIT_CONTROL_BREAK'
,p_message_language=>'nl'
,p_message_text=>'Groepsverandering bewerken'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127539849675027005)
,p_name=>'APEXIR_EDIT_FILTER'
,p_message_language=>'nl'
,p_message_text=>'Filter bewerken'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127506304234026995)
,p_name=>'APEXIR_EDIT_FLASHBACK'
,p_message_language=>'nl'
,p_message_text=>'Flashback bewerken'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127597688190027022)
,p_name=>'APEXIR_EDIT_GROUP_BY'
,p_message_language=>'nl'
,p_message_text=>'GROUP BY bewerken'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127539704422027005)
,p_name=>'APEXIR_EDIT_HIGHLIGHT'
,p_message_language=>'nl'
,p_message_text=>'Markering bewerken'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127567737210027013)
,p_name=>'APEXIR_EDIT_PIVOT'
,p_message_language=>'nl'
,p_message_text=>'Draaitabel bewerken'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127527102353027001)
,p_name=>'APEXIR_EDIT_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Rapport bewerken'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127616359821027028)
,p_name=>'APEXIR_EMAIL'
,p_message_language=>'nl'
,p_message_text=>'E-mail'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127488512409026990)
,p_name=>'APEXIR_EMAIL_ADDRESS'
,p_message_language=>'nl'
,p_message_text=>'E-mailadres'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127616624897027028)
,p_name=>'APEXIR_EMAIL_BCC'
,p_message_language=>'nl'
,p_message_text=>'BCC'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127616874391027028)
,p_name=>'APEXIR_EMAIL_BODY'
,p_message_language=>'nl'
,p_message_text=>'Hoofdtekst'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127616527701027028)
,p_name=>'APEXIR_EMAIL_CC'
,p_message_language=>'nl'
,p_message_text=>'CC'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127617396513027028)
,p_name=>'APEXIR_EMAIL_FREQUENCY'
,p_message_language=>'nl'
,p_message_text=>'Frequentie'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127493715638026991)
,p_name=>'APEXIR_EMAIL_NOT_CONFIGURED'
,p_message_language=>'nl'
,p_message_text=>'Er is geen e-mail geconfigureerd voor deze applicatie. Neem contact op met de beheerder.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127591129094027020)
,p_name=>'APEXIR_EMAIL_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'E-mailadres moet worden opgegeven.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127616927795027028)
,p_name=>'APEXIR_EMAIL_SEE_ATTACHED'
,p_message_language=>'nl'
,p_message_text=>'Zie bijlage'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127616757425027028)
,p_name=>'APEXIR_EMAIL_SUBJECT'
,p_message_language=>'nl'
,p_message_text=>'Onderwerp'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127592137211027020)
,p_name=>'APEXIR_EMAIL_SUBJECT_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'E-mailonderwerp moet worden opgegeven.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127616410784027028)
,p_name=>'APEXIR_EMAIL_TO'
,p_message_language=>'nl'
,p_message_text=>'Aan'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127495555882026992)
,p_name=>'APEXIR_ENABLED'
,p_message_language=>'nl'
,p_message_text=>'Geactiveerd'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127539662281027005)
,p_name=>'APEXIR_ENABLE_DISABLE_ALT'
,p_message_language=>'nl'
,p_message_text=>'Activeren/Deactiveren'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127539142097027005)
,p_name=>'APEXIR_ERROR_LANDMARK'
,p_message_language=>'nl'
,p_message_text=>'Fout: %0'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127538709845027004)
,p_name=>'APEXIR_EXAMPLES'
,p_message_language=>'nl'
,p_message_text=>'Voorbeelden'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127539592567027005)
,p_name=>'APEXIR_EXAMPLES_WITH_COLON'
,p_message_language=>'nl'
,p_message_text=>'Voorbeelden:'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127501016418026993)
,p_name=>'APEXIR_EXCLUDE_NULL'
,p_message_language=>'nl'
,p_message_text=>'NULL-waarden uitsluiten'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127540129939027005)
,p_name=>'APEXIR_EXPAND_COLLAPSE_ALT'
,p_message_language=>'nl'
,p_message_text=>'Uitvouwen/Samenvouwen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127537740259027004)
,p_name=>'APEXIR_EXPRESSION'
,p_message_language=>'nl'
,p_message_text=>'Uitdrukking'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127522667159027000)
,p_name=>'APEXIR_FILTER'
,p_message_language=>'nl'
,p_message_text=>'Filteren'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127533721733027003)
,p_name=>'APEXIR_FILTERS'
,p_message_language=>'nl'
,p_message_text=>'Filters'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127544452653027006)
,p_name=>'APEXIR_FILTER_EXPRESSION'
,p_message_language=>'nl'
,p_message_text=>'Filteruitdrukking'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127642657455027036)
,p_name=>'APEXIR_FILTER_EXPR_TOO_LONG'
,p_message_language=>'nl'
,p_message_text=>'De filteruitdrukking is te lang.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127487335611026989)
,p_name=>'APEXIR_FILTER_SUGGESTIONS'
,p_message_language=>'nl'
,p_message_text=>'Filtersuggesties'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127544387167027006)
,p_name=>'APEXIR_FILTER_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Filtertype'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127540369134027005)
,p_name=>'APEXIR_FINDER_ALT'
,p_message_language=>'nl'
,p_message_text=>'Te doorzoeken kolommen selecteren'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127522963485027000)
,p_name=>'APEXIR_FLASHBACK'
,p_message_language=>'nl'
,p_message_text=>'Flashback'
,p_is_js_message=>true
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127537569965027004)
,p_name=>'APEXIR_FLASHBACK_DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Met een flashback-query kunt u de gegevens bekijken zoals deze waren op een eerder tijdstip.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127591596684027020)
,p_name=>'APEXIR_FLASHBACK_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Duur flashback'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127592997664027021)
,p_name=>'APEXIR_FORMAT'
,p_message_language=>'nl'
,p_message_text=>'Opmaak'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127518734329026998)
,p_name=>'APEXIR_FORMAT_MASK'
,p_message_language=>'nl'
,p_message_text=>'Opmaakmasker %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127530432431027002)
,p_name=>'APEXIR_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'Functie'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127538284035027004)
,p_name=>'APEXIR_FUNCTIONS'
,p_message_language=>'nl'
,p_message_text=>'Functies %0'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127615936673027027)
,p_name=>'APEXIR_FUNCTIONS_OPERATORS'
,p_message_language=>'nl'
,p_message_text=>'Functies/Operators'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127530198883027002)
,p_name=>'APEXIR_FUNCTION_N'
,p_message_language=>'nl'
,p_message_text=>'Functie %0'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127522416483026999)
,p_name=>'APEXIR_GO'
,p_message_language=>'nl'
,p_message_text=>'Uitvoeren'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127496094386026992)
,p_name=>'APEXIR_GREEN'
,p_message_language=>'nl'
,p_message_text=>'groen'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127541069424027005)
,p_name=>'APEXIR_GROUPBY_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Groeperen op kolommen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127541180751027005)
,p_name=>'APEXIR_GROUPBY_FUNCTIONS'
,p_message_language=>'nl'
,p_message_text=>'GROUP BY-functies'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127476303861026986)
,p_name=>'APEXIR_GROUP_BY'
,p_message_language=>'nl'
,p_message_text=>'Groeperen op'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127617046178027028)
,p_name=>'APEXIR_GROUP_BY_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Groeperen op kolom %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127572520002027014)
,p_name=>'APEXIR_GROUP_BY_COL_NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'GROUP BY-kolom moet worden opgegeven.'
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127583634356027018)
,p_name=>'APEXIR_GROUP_BY_MAX_ROW_CNT'
,p_message_language=>'nl'
,p_message_text=>'Het maximum aantal rijen voor een GROUP BY-query beperkt het aantal rijen en de basisquery, niet het aantal weergegeven rijen. Uw basisquery overschrijdt het maximum aantal rijen, %0. Pas een filter toe om het aantal records in uw basisquery te vermi'
||'nderen.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127563814354027012)
,p_name=>'APEXIR_GROUP_BY_SORT'
,p_message_language=>'nl'
,p_message_text=>'GROUP BY-sortering'
,p_is_js_message=>true
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127620515322027029)
,p_name=>'APEXIR_GROUP_BY_SORT_ORDER'
,p_message_language=>'nl'
,p_message_text=>'Sorteervolgorde GROUP BY'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127465497037026983)
,p_name=>'APEXIR_GROUP_BY_VIEW_OF'
,p_message_language=>'nl'
,p_message_text=>'GROUP BY-weergave van %0'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127501472098026993)
,p_name=>'APEXIR_HCOLUMN'
,p_message_language=>'nl'
,p_message_text=>'Horizontale kolom'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127535440455027003)
,p_name=>'APEXIR_HELP'
,p_message_language=>'nl'
,p_message_text=>'Help'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127527238360027001)
,p_name=>'APEXIR_HELP_01'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Met interactieve rapporten kunnen eindgebruikers rapporten aanpassen. Gebruikers kunnen de lay-out van rapportgegevens wijzigen door kolommen te selecteren, filters toe te passen, markeringen aan te brengen en te sorteren. Gebruikers kunnen ook afbre'
||unistr('kingen, aggregaties, grafieken en GROUP BY''s defini\00EBren, en eigen berekeningen toevoegen. Gebruikers kunnen daarnaast een abonnement instellen om met een bepaald interval een HTML-versie van het rapport te krijgen via e-mail. Gebruikers kunnen meerde')
||unistr('re versies van een rapport maken en deze opslaan als benoemde rapporten, die zowel openbaar als priv\00E9 kunnen worden bekeken. '),
'<p/>',
'In de volgende secties wordt een samenvatting gegeven van manieren waarop u een interactief rapport kunt aanpassen Zie "Using Interactive Reports" in <i>Oracle APEX End User''s Guide</i> voor meer informatie.'))
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127534358214027003)
,p_name=>'APEXIR_HELP_ACTIONS_MENU'
,p_message_language=>'nl'
,p_message_text=>'Het Actiemenu staat rechts van de knop ''Uitvoeren'' op de zoekbalk. Gebruik dit menu om een interactief rapport aan te passen.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127528083852027001)
,p_name=>'APEXIR_HELP_AGGREGATE'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Aggregaties zijn wiskundige berekeningen die op een kolom worden uitgevoerd. Aggregaties worden weergegeven na elke groepsverandering en aan het einde van het rapport weergegeven in de kolom waarin ze zijn gedefinieerd. Opties zijn:',
'<p>',
'</p><ul>',
'<li><strong>Aggregatie</strong>: hiermee kunt u een eerder gedefinieerde aggregatie selecteren om te bewerken.</li>',
'<li><strong>Functie</strong> is de uit te voeren functie (bijvoorbeeld: SOM, MIN).</li>',
'<li><strong>Kolom</strong> wordt gebruikt om de kolom te selecteren waarop de wiskundige functie moet worden toegepast. Alleen numerieke kolommen worden weergegeven.</li>',
'</ul>'))
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127528147017027001)
,p_name=>'APEXIR_HELP_CHART'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('U kunt \00E9\00E9n grafiek per opgeslagen rapport defini\00EBren.'),
'Nadat de grafiek is gedefinieerd, kunt u schakelen tussen de grafiek- en rapportweergave met behulp van de weergaveknoppen in de zoekbalk.',
'Opties zijn:  ',
'<p>',
'</p><ul>',
'<li><strong>Grafiektype</strong>: identificeert het op te nemen grafiektype.',
'Kies uit horizontale staaf, verticale staaf, cirkel of lijn.</li>',
'<li><strong>Label</strong>: hiermee kunt u de kolom selecteren die moet worden gebruikt als label.</li>',
'<li><strong>Astitel voor label</strong> is de titel die wordt weergegeven op de as die is gekoppeld aan de kolom die is geselecteerd als label. Niet beschikbaar voor cirkeldiagrammen.</li>',
'<li><strong>Waarde</strong>: hiermee kunt u de kolom selecteren die moet worden gebruikt als de waarde. Als het om een COUNT-functie gaat, hoeft er geen waarde te worden geselecteerd.</li>',
'<li><strong>Astitel voor waarde</strong> is de titel die wordt weergegeven op de as die is gekoppeld aan de kolom die is geselecteerd voor de waarde. Niet beschikbaar voor cirkeldiagrammen.</li>',
'<li><strong>Functie</strong> is een optionele functie die moet worden uitgevoerd op de kolom die is geselecteerd voor de waarde.</li>',
'<li><strong>Sorteren</strong>: hiermee kunt u uw resultatenset sorteren.</li></ul>'))
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127527438416027001)
,p_name=>'APEXIR_HELP_COLUMN_HEADING_MENU'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Door op een kolomkop te klikken wordt een kolomkopmenu zichtbaar. Opties zijn:',
'<p></p>',
'<ul>',
'<li><strong>Oplopend sorteren</strong>. Met dit pictogram wordt het rapport in oplopende volgorde op de kolom gesorteerd.</li>',
'<li><strong>Aflopend sorteren</strong>.Met dit pictogram wordt het rapport in aflopende volgorde op de kolom gesorteerd.</li>',
'<li><strong>Kolom verbergen</strong> verbergt de kolom. Niet alle kolommen kunnen worden verborgen. Als een kolom niet kan worden verborgen, is het pictogram ''Kolom verbergen'' niet aanwezig.</li>',
'<li><strong>Onderbrekingskolom</strong> maakt een onderbrekingsgroep in de kolom. Hierdoor wordt de kolom uit het rapport gehaald als een hoofdrecord.</li>',
'<li><strong>Kolomgegevens</strong> geeft helptekst over de kolom weer, indien aanwezig.</li>',
'<li><strong>Tekstgebied</strong> wordt gebruikt om niet-hoofdlettergevoelige zoekcriteria in te voeren (geen jokertekens nodig). Door een waarde in te voeren vermindert de lijst met waarden onderaan het menu. Vervolgens kunt u onderaan een waarde sel'
||'ecteren, waarna de geselecteerde waarde wordt gebruikt als een filter met ''='' (bijvoorbeeld: <code>kolom = ''ABC''</code>). U kunt ook op de zaklantaarnknop klikken en een waarde invoeren om te gebruiken als filter met het sleutelwoord ''LIKE (bijvoorbe'
||'eld: <code>kolom LIKE ''%ABC%''</code>).</li>',
'<li><strong>Lijst met unieke waarden</strong> bevat de eerste 500 unieke waarden die aan uw filtercriterium voldoen. Als de kolom een datum is, wordt in plaats daarvan een lijst met datumbereiken weergegeven. Als u een waarde selecteert, wordt er een'
||' filter gemaakt met ''='' (bijvoorbeeld: <code>kolom = ''ABC''</code>).</li>',
'</ul>'))
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127527913269027001)
,p_name=>'APEXIR_HELP_COMPUTE'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hiermee kunt u berekende kolommen toevoegen aan uw rapport. Dit kunnen wiskundige berekeningen zijn (bijvoorbeeld: <code>NBR_HOURS/24</code>) of standaard Oracle ',
'functies die op bestaande kolommen worden toegepast. Sommige worden weergegeven als voorbeelden, en andere, zoals <code>TO_DATE)</code> kunnen ook worden gebruikt). Opties zijn:',
'<p></p>',
'<ul>',
'<li>Met <strong>Berekening</strong> kunt u een eerder gedefinieerde berekening selecteren om te bewerken.</li>',
'<li><strong>Kolomkop</strong> is de kolomkop voor de nieuwe kolom.</li>',
'<li><strong>Opmaakmasker</strong> is een Oracle opmaakmasker om toe te passen op de kolom (bijvoorbeeld: S9999).</li>',
'<li><strong>Berekening</strong> is de uit te voeren berekening. Binnen de berekening wordt naar kolommen verwezen met de weergegeven aliassen.</li>',
'</ul>',
'<p>Onder de berekening worden de kolommen in uw query weergegeven met de bijbehorende aliassen. Door op een kolomnaam of alias te klikken, wordt deze opgenomen in de berekening. Naast Kolommen bevindt zich een toetsenblok. Dit toetsenblok werkt als e'
||'en snelkoppeling naar veelgebruikte toetsen. Uiterst rechts bevinden zich functies.</p>',
'<p>In de volgende voorbeeldberekening ziet u hoe u totale beloning kunt weergeven:</p>',
'<pre>CASE WHEN A = ''SALES'' THEN B + C ELSE B END</pre>',
'(waarbij A staat voor ORGANIZATION, B voor SALARY en C voor COMMISSION)',
''))
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127534409438027003)
,p_name=>'APEXIR_HELP_CONTROL_BREAK'
,p_message_language=>'nl'
,p_message_text=>'Wordt gebruikt om een onderbrekingsgroep voor een of meer kolommen te maken. Dit haalt de kolommen uit het interactieve rapport en geeft ze weer als hoofdrecord.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127528675369027001)
,p_name=>'APEXIR_HELP_DETAIL_VIEW'
,p_message_language=>'nl'
,p_message_text=>unistr('Als u de gegevens van \00E9\00E9n rij tegelijk wilt bekijken, klikt u bij de rij die u wilt bekijken op het pictogram voor het weergeven van \00E9\00E9n rij. Indien beschikbaar, is de weergave met \00E9\00E9n rij altijd de eerste kolom. Afhankelijk van de aanpassing van het')
||unistr(' interactieve rapport kan de weergave met \00E9\00E9n rij de standaardweergave zijn, of een aangepaste pagina  die kan worden bijgewerkt.')
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127528549982027001)
,p_name=>'APEXIR_HELP_DOWNLOAD'
,p_message_language=>'nl'
,p_message_text=>'Hiermee kan de huidige resultatenset worden gedownload. De downloadindelingen zijn PDF, Excel, HTML en CSV. De downloadopties hangen af van de geselecteerde indeling. Alle indelingen kunnen ook in de vorm van e-mail worden verstuurd.'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127527635684027001)
,p_name=>'APEXIR_HELP_FILTER'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hiermee wordt het rapport toegespitst door de <code>WHERE</code>-clausule van de query te wijzigen. U kunt filteren op een kolom of per rij. ',
'<p>Als u op kolom filtert, selecteert u een kolom (dit hoeft er niet een te zijn die wordt weergegeven), selecteert u een standaard Oracle operator (=, !=, niet in, tussen), en voert u een uitdrukking in om mee te vergelijken. Uitdrukkingen zijn hoof'
||'dlettergevoelig. Gebruik % als jokerteken (bijvoorbeeld: <code>STATE_NAME',
'LIKE A%)</code>.</p>',
'<p>Als u op rij filtert, kunt u complexe <code>WHERE</code>-clausules maken met behulp van kolomaliassen en alle gewenste Oracle functies of operators (bijvoorbeeld: <code>G = ''VA'' or G = ''CT''</code>, waarbij',
'<code>G</code> de alias voor <code>CUSTOMER_STATE</code> is).</p>',
''))
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127528236216027001)
,p_name=>'APEXIR_HELP_FLASHBACK'
,p_message_language=>'nl'
,p_message_text=>'Met een flashback-query kunt u de gegevens bekijken zoals ze waren op een bepaald tijdstip in het verleden. De standaardtijd die u kunt teruggaan is 3 uur (180 minuten), maar de werkelijke tijd verschilt voor elke database.'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127592880464027021)
,p_name=>'APEXIR_HELP_FORMAT'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Met ''Opmaak'' kunt u de weergave van het rapport aanpassen. ''Opmaak'' bevat het volgende submenu:</p>',
'<ul><li>Sorteren</li>',
'<li>Groepsverandering</li>',
'<li>Markering</li>',
'<li>Berekenen</li>',
'<li>Aggregatie</li>',
'<li>Grafiek</li>',
'<li>Groeperen op</li>',
'<li>Draaien</li>',
'</ul>',
''))
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127591016007027020)
,p_name=>'APEXIR_HELP_GROUP_BY'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('U kunt \00E9\00E9n GROUP BY-weergave per opgeslagen rapport maken. Nadat deze is gedefinieerd, kunt u tussen de GROUP BY- en rapportweergave schakelen met behulp van de weergavepictogrammen op de zoekbalk. Als u een GROUP BY-weergave wilt maken, selecteert u'),
'<p></p>',
'<ul>',
'<li>de kolommen die u wilt groeperen</li>',
'<li>de te aggregeren kolommen en de te gebruiken functie (gemiddelde, som, aantal, enzovoort)</li>',
'</ul>'))
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127527864559027001)
,p_name=>'APEXIR_HELP_HIGHLIGHT'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>Hiermee kunt u een filter defini\00EBren. De rijen die voldoen aan de filtercriteria worden gemarkeerd weergeven met behulp van de aan het filter gekoppelde kenmerken. Opties zijn:</p>'),
'<ul>',
'<li><strong>Naam</strong> wordt alleen gebruikt voor weergave.</li>',
unistr('<li><strong>Volgorde</strong> geeft de volgorde aan waarin de regels worden ge\00EBvalueerd.</li>'),
'<li><strong>Geactiveerd</strong> geeft aan of een regel actief of inactief is.</li>',
'<li><strong>Type markering</strong> bepaalt of de rij of cel moet worden gemarkeerd. Als ''Cel'' is geselecteerd, wordt de kolom gemarkeerd waarnaar in de markeringsvoorwaarde wordt verwezen.</li>',
'<li><strong>Achtergrondkleur</strong> is de nieuwe kleur voor de achtergrond van het gemarkeerde gebied.</li>',
'<li><strong>Tekstkleur</strong> is de nieuwe kleur voor de tekst in het gemarkeerde gebied.</li>',
'<li><strong>Markeringsvoorwaarde</strong> definieert uw filtervoorwaarde.</li>',
'</ul>',
''))
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127421214119026969)
,p_name=>'APEXIR_HELP_PIVOT'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('U kunt \00E9\00E9n draaitabelweergave per opgeslagen rapport maken. Nadat deze is gedefinieerd, kunt u tussen de draaitabel- en rapportweergave schakelen met behulp van de weergavepictogrammen op de zoekbalk. Als u een draaitabelweergave wilt maken, selectee')
||'rt u',
'<p></p>',
'<ul>',
'<li>de kolommen waarover u wilt draaien</li>',
'<li>de kolommen die als rijen moeten worden weergegeven</li>',
'<li>de te aggregeren kolommen en de te gebruiken functie (gemiddelde, som, aantal, enzovoort)</li>',
'</ul>'))
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127538940329027004)
,p_name=>'APEXIR_HELP_REPORT_SETTINGS'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Als u een interactief rapport aanpast, worden de rapportinstellingen weergegeven onder de zoekbalk en boven het rapport. Dit gebied kan worden samen- en uitgevouwen met behulp van het pictogram links.',
'<p>',
'Voor elke rapportinstelling kunt u:',
'</p><ul>',
'<li>Een instelling bewerken door op de naam te klikken..</li>',
'<li>Een instelling activeren/deactiveren door het selectievakje activeren/deactiveren in- of uit te schakelen.</li>',
'<li>Een instelling verwijderen door op het pictogram ''Verwijderen'' te klikken.</li>',
'</ul>',
'<p>Als u een grafiek, GROUP BY of draaitabel hebt gemaakt, kunt u schakelen tussen deze en het basisrapport met behulp van de koppelingen ''Rapportweergave'', ''Grafiekweergave'', ''GROUP BY-weergave'' en ''Draaitabelweergave'' die rechts worden weergegeven.'
||' Als u de grafiek, GROUP BY of draaitabel bekijkt, kunt u ook de koppeling ''Bewerking'' gebruiken om de instellingen te bewerken.</p>',
''))
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127528429240027001)
,p_name=>'APEXIR_HELP_RESET'
,p_message_language=>'nl'
,p_message_text=>'Hiermee wordt het rapport weer ingesteld op de standaardinstellingen, en eventuele aanpassingen die u hebt gedaan, worden verwijderd.'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127593114235027021)
,p_name=>'APEXIR_HELP_ROWS_PER_PAGE'
,p_message_language=>'nl'
,p_message_text=>'Hiermee wordt het aantal per pagina weer te geven records ingesteld.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127528335706027001)
,p_name=>'APEXIR_HELP_SAVE_REPORT'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Hiermee wordt het aangepaste rapport opgeslagen voor toekomstig gebruik. U geeft een naam en desgewenst een beschrijving op, en u kunt het rapport toegankelijk maken voor het publiek (dat wil zeggen, alle gebruikers die toegang hebben tot het prim'
||'aire standaardrapport). U kunt vier typen interactieve rapporten opslaan:</p>',
'<ul>',
'<li><strong>Primair standaardrapport</strong> (alleen ontwikkelaar). Het primaire standaardrapport is het rapport dat aanvankelijk wordt weergegeven. Primaire standaardrapporten kunnen niet worden hernoemd of verwijderd.</li>',
'<li><strong>Alternatief rapport</strong> (alleen ontwikkelaar). Hiermee kunnen ontwikkelaars meerdere rapportlay-outs maken. Alleen ontwikkelaars kunnen een alternatief rapport opslaan, hernoemen of verwijderen.</li>',
'<li><strong>Openbaar rapport</strong> (eindgebruiker). Kan worden opgeslagen, hernoemd of verwijderd door de eindgebruiker die het heeft gemaakt. Andere gebruikers kunnen de lay-out bekijken en opslaan als een ander rapport.</li>',
unistr('<li><strong>Priv\00E9rapport</strong> (eindgebruiker). Alleen de eindgebruiker die het rapport heeft gemaakt, kan het rapport bekijken, opslaan, hernoemen of verwijderen.</li>'),
'</ul>',
'<p>Als u aangepaste rapporten opslaat, wordt er een rapportselector weergegeven in de zoekbalk, links van de rijselector (als deze functie geactiveerd is).</p>',
''))
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127527389607027001)
,p_name=>'APEXIR_HELP_SEARCH_BAR'
,p_message_language=>'nl'
,p_message_text=>'Bovenaan elke rapportpagina bevindt zich een zoekregio. Deze regio (zoekbalk) bevat de volgende functies:'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127593725974027021)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ACTIONS_MENU'
,p_message_language=>'nl'
,p_message_text=>'<li>Met het <strong>Actiemenu</strong> kunt u een rapport aanpassen. Zie de secties hieronder.</li>'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127593256622027021)
,p_name=>'APEXIR_HELP_SEARCH_BAR_FINDER'
,p_message_language=>'nl'
,p_message_text=>'<li>Met het <strong>pictogram ''Kolommen selecteren''</strong> kunt u de kolommen selecteren waarin u wilt zoeken (dit kunnen ook alle kolommen zijn).</li>'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127593505325027021)
,p_name=>'APEXIR_HELP_SEARCH_BAR_REPORTS'
,p_message_language=>'nl'
,p_message_text=>unistr('<li>Met <strong>Rapporten</strong> worden het alternatieve standaardrapport en opgeslagen priv\00E9- of openbare rapporten weergegeven.</li>')
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127593406768027021)
,p_name=>'APEXIR_HELP_SEARCH_BAR_ROWS'
,p_message_language=>'nl'
,p_message_text=>'<li>Met <strong>Rijen</strong> stelt u het aantal weer te geven records per pagina in.</li>'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127593378505027021)
,p_name=>'APEXIR_HELP_SEARCH_BAR_TEXTBOX'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>In het <strong>Tekstgebied</strong> kunt u niet-hoofdlettergevoelige zoekcriteria invoeren (jokertekens zijn impliciet).</li>',
'<li>Met de <strong>knop ''Uitvoeren''</strong> wordt de zoekopdracht uitgevoerd. De zoekopdracht kan ook worden uitgevoerd door op Enter te drukken wanneer de cursor zich in het zoektekstgebied bevindt.</li>'))
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127593686984027021)
,p_name=>'APEXIR_HELP_SEARCH_BAR_VIEW'
,p_message_language=>'nl'
,p_message_text=>'<li>Met <strong>Weergavepictogrammen</strong> schakelt u tussen de pictogram-, rapport-, detail-, grafiek-, GROUP BY- en draaitabelweergave van het rapport indien deze zijn gedefinieerd.</li>'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127527514741027001)
,p_name=>'APEXIR_HELP_SELECT_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Wordt gebruikt om de weergegeven kolommen te wijzigen. De kolommen aan de rechterkant worden weergegeven. De kolommen aan de linkerkant worden verborgen. U kunt de volgorde van de weergegeven kolommen wijzigen met behulp van de pijlen uiterst rechts.'
||' Berekende kolommen worden voorafgegaan door <strong>**</strong>.'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127527763226027001)
,p_name=>'APEXIR_HELP_SORT'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Wordt gebruikt om de kolommen te wijzigen waarop wordt gesorteerd, en bepaalt of in oplopende of aflopende volgorde wordt gesorteerd. U kunt ook opgeven hoe',
'<code>NULL-waarden</code> worden behandeld. Bij de standaardinstelling worden <code>NULL-waarden</code> altijd het laatste of altijd het eerst weergegeven. De resulterende sortering wordt in het rapport rechts van de kolomkoppen weergegeven.</p>'))
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127590876807027020)
,p_name=>'APEXIR_HELP_SUBSCRIPTION'
,p_message_language=>'nl'
,p_message_text=>unistr('Wanneer u een abonnement toevoegt, geeft u een e-mailadres op (of meerdere e-mailadressen, gescheiden door komma''s), een e-mailonderwerp, frequentie en begin- en einddatum. De resulterende e-mailberichten bevatten een ge\00EBxporteerde versie (PDF, Excel')
||', HTML of CSV) van het interactieve rapport met de huidige gegevens en de rapportinstellingen die aanwezig waren toen het abonnement werd toegevoegd.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127532473713027003)
,p_name=>'APEXIR_HIDE_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Kolom verbergen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127522828915027000)
,p_name=>'APEXIR_HIGHLIGHT'
,p_message_language=>'nl'
,p_message_text=>'Markering'
,p_is_js_message=>true
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127533942758027003)
,p_name=>'APEXIR_HIGHLIGHTS'
,p_message_language=>'nl'
,p_message_text=>'Markeringen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127504147197026994)
,p_name=>'APEXIR_HIGHLIGHT_CELL_WITH_COLORS'
,p_message_language=>'nl'
,p_message_text=>'Cel markeren, %0 op %1'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127539013373027004)
,p_name=>'APEXIR_HIGHLIGHT_CONDITION'
,p_message_language=>'nl'
,p_message_text=>'Markeringsvoorwaarde'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127504021852026994)
,p_name=>'APEXIR_HIGHLIGHT_ROW_WITH_COLORS'
,p_message_language=>'nl'
,p_message_text=>'Rij markeren, %0 op %1'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127591446224027020)
,p_name=>'APEXIR_HIGHLIGHT_STYLE'
,p_message_language=>'nl'
,p_message_text=>'Markeringsstijl'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127495640880026992)
,p_name=>'APEXIR_HIGHLIGHT_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Type markering'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127610225357027026)
,p_name=>'APEXIR_HORIZONTAL'
,p_message_language=>'nl'
,p_message_text=>'Horizontaal'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127639219196027035)
,p_name=>'APEXIR_INACTIVE_SETTING'
,p_message_language=>'nl'
,p_message_text=>'1 inactieve instelling'
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127639393233027035)
,p_name=>'APEXIR_INACTIVE_SETTINGS'
,p_message_language=>'nl'
,p_message_text=>'%0 inactieve instellingen'
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127529079733027002)
,p_name=>'APEXIR_INTERACTIVE_REPORT_HELP'
,p_message_language=>'nl'
,p_message_text=>'Help bij interactieve rapporten'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127540020711027005)
,p_name=>'APEXIR_INVALID'
,p_message_language=>'nl'
,p_message_text=>'Ongeldig'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127533466105027003)
,p_name=>'APEXIR_INVALID_COMPUTATION'
,p_message_language=>'nl'
,p_message_text=>'Ongeldig berekeningsuitdrukking. %0'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127489054103026990)
,p_name=>'APEXIR_INVALID_END_DATE'
,p_message_language=>'nl'
,p_message_text=>'De einddatum moet later zijn dan de begindatum.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127548205585027007)
,p_name=>'APEXIR_INVALID_FILTER'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige filteruitdrukking. %0'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127618028536027028)
,p_name=>'APEXIR_INVALID_FILTER_QUERY'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige filterquery'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127639432283027035)
,p_name=>'APEXIR_INVALID_SETTING'
,p_message_language=>'nl'
,p_message_text=>'1 ongeldige instellingen'
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127639566994027035)
,p_name=>'APEXIR_INVALID_SETTINGS'
,p_message_language=>'nl'
,p_message_text=>'%0 ongeldige instellingen'
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127591648194027020)
,p_name=>'APEXIR_IN_MINUTES'
,p_message_language=>'nl'
,p_message_text=>'(in minuten)'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127608691019027025)
,p_name=>'APEXIR_IS_IN_THE_LAST'
,p_message_language=>'nl'
,p_message_text=>'%0 is in de afgelopen %1'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127608808230027025)
,p_name=>'APEXIR_IS_IN_THE_NEXT'
,p_message_language=>'nl'
,p_message_text=>'%0 is in de komende %1'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127608714768027025)
,p_name=>'APEXIR_IS_NOT_IN_THE_LAST'
,p_message_language=>'nl'
,p_message_text=>'%0 is niet in de afgelopen %1'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127608957851027025)
,p_name=>'APEXIR_IS_NOT_IN_THE_NEXT'
,p_message_language=>'nl'
,p_message_text=>'%0 is niet in de komende %1'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127538113582027004)
,p_name=>'APEXIR_KEYPAD'
,p_message_language=>'nl'
,p_message_text=>'Toetsenblok'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127501800276026993)
,p_name=>'APEXIR_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Label %0'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127532066527027002)
,p_name=>'APEXIR_LABEL_AXIS_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Astitel voor label'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127524358233027000)
,p_name=>'APEXIR_LAST_DAY'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen dag'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127524509118027000)
,p_name=>'APEXIR_LAST_HOUR'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen uur'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127524022401027000)
,p_name=>'APEXIR_LAST_MONTH'
,p_message_language=>'nl'
,p_message_text=>'Vorige maand'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127524172084027000)
,p_name=>'APEXIR_LAST_WEEK'
,p_message_language=>'nl'
,p_message_text=>'Vorige week'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127524250276027000)
,p_name=>'APEXIR_LAST_X_DAYS'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen %0 dagen'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127524495585027000)
,p_name=>'APEXIR_LAST_X_HOURS'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen %0 uur'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127523894104027000)
,p_name=>'APEXIR_LAST_X_YEARS'
,p_message_language=>'nl'
,p_message_text=>'Afgelopen %0 jaar'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127523943504027000)
,p_name=>'APEXIR_LAST_YEAR'
,p_message_language=>'nl'
,p_message_text=>'Vorig jaar'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127501754419026993)
,p_name=>'APEXIR_LINE'
,p_message_language=>'nl'
,p_message_text=>'Lijn'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127498597811026992)
,p_name=>'APEXIR_LINE_WITH_AREA'
,p_message_language=>'nl'
,p_message_text=>'Lijn met vlak'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127617913082027028)
,p_name=>'APEXIR_MAP_IT'
,p_message_language=>'nl'
,p_message_text=>'Toewijzen'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127532994326027003)
,p_name=>'APEXIR_MAX_QUERY_COST'
,p_message_language=>'nl'
,p_message_text=>'De query zal waarschijnlijk meer dan de maximaal toegestane resources verbruiken. Wijzig uw rapportinstellingen en probeer het opnieuw.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127514387578026997)
,p_name=>'APEXIR_MAX_ROW_CNT'
,p_message_language=>'nl'
,p_message_text=>'Het maximum aantal rijen voor dit rapport is %0. Pas een filter toe om het aantal records in uw query te verminderen.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127618543280027028)
,p_name=>'APEXIR_MAX_X'
,p_message_language=>'nl'
,p_message_text=>'Maximum %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127618773829027028)
,p_name=>'APEXIR_MEDIAN_X'
,p_message_language=>'nl'
,p_message_text=>'Mediaan %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127461048925026981)
,p_name=>'APEXIR_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Bericht'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127518606423026998)
,p_name=>'APEXIR_MIN_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0 minuten geleden'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127618601834027028)
,p_name=>'APEXIR_MIN_X'
,p_message_language=>'nl'
,p_message_text=>'Minimum %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127617624526027028)
,p_name=>'APEXIR_MONTH'
,p_message_language=>'nl'
,p_message_text=>'Maand'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127592033175027020)
,p_name=>'APEXIR_MONTHLY'
,p_message_language=>'nl'
,p_message_text=>'Maandelijks'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127531294093027002)
,p_name=>'APEXIR_MOVE'
,p_message_language=>'nl'
,p_message_text=>'Verplaatsen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127531150772027002)
,p_name=>'APEXIR_MOVE_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles verplaatsen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127644382219027036)
,p_name=>'APEXIR_MULTIIR_PAGE_REGION_STATIC_ID_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'De statische regio-ID moet worden opgegeven, omdat de pagina meerdere interactieve rapporten bevat.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127497291561026992)
,p_name=>'APEXIR_NAME'
,p_message_language=>'nl'
,p_message_text=>'Naam'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127526988099027001)
,p_name=>'APEXIR_NEW_AGGREGATION'
,p_message_language=>'nl'
,p_message_text=>'Nieuwe aggregatie'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127640170756027035)
,p_name=>'APEXIR_NEW_CATEGORY_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Nieuwe categorie'
,p_is_js_message=>true
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127527032401027001)
,p_name=>'APEXIR_NEW_COMPUTATION'
,p_message_language=>'nl'
,p_message_text=>'Nieuwe berekening'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127521778850026999)
,p_name=>'APEXIR_NEXT'
,p_message_language=>'nl'
,p_message_text=>'Volgende'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127524832754027000)
,p_name=>'APEXIR_NEXT_DAY'
,p_message_language=>'nl'
,p_message_text=>'Volgende dag'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127524620474027000)
,p_name=>'APEXIR_NEXT_HOUR'
,p_message_language=>'nl'
,p_message_text=>'Komende uur'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127525181644027000)
,p_name=>'APEXIR_NEXT_MONTH'
,p_message_language=>'nl'
,p_message_text=>'Volgende maand'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127525060720027000)
,p_name=>'APEXIR_NEXT_WEEK'
,p_message_language=>'nl'
,p_message_text=>'Volgende week'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127524921346027000)
,p_name=>'APEXIR_NEXT_X_DAYS'
,p_message_language=>'nl'
,p_message_text=>'Komende %0 dagen'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127524772584027000)
,p_name=>'APEXIR_NEXT_X_HOURS'
,p_message_language=>'nl'
,p_message_text=>'Komende %0 uur'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127525394472027000)
,p_name=>'APEXIR_NEXT_X_YEARS'
,p_message_language=>'nl'
,p_message_text=>'Komende %0 jaar'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127525244796027000)
,p_name=>'APEXIR_NEXT_YEAR'
,p_message_language=>'nl'
,p_message_text=>'Volgend jaar'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127497506202026992)
,p_name=>'APEXIR_NO'
,p_message_language=>'nl'
,p_message_text=>'Nee'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127540237692027005)
,p_name=>'APEXIR_NONE'
,p_message_language=>'nl'
,p_message_text=>'- Geen -'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127591230996027020)
,p_name=>'APEXIR_NOT_VALID_EMAIL'
,p_message_language=>'nl'
,p_message_text=>'Geen geldig e-mailadres'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127463346124026982)
,p_name=>'APEXIR_NO_COLUMNS_SELECTED'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen kolommen geselecteerd voor weergave. Gebruik <strong>Kolommen</strong> in het menu ''Acties'' om kolommen zichtbaar te maken.'
,p_version_scn=>2693088
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127536727572027004)
,p_name=>'APEXIR_NULLS_ALWAYS_FIRST'
,p_message_language=>'nl'
,p_message_text=>'NULL-waarden altijd eerst'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127536673282027004)
,p_name=>'APEXIR_NULLS_ALWAYS_LAST'
,p_message_language=>'nl'
,p_message_text=>'NULL-waarden altijd laatst'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127537135913027004)
,p_name=>'APEXIR_NULL_SORTING'
,p_message_language=>'nl'
,p_message_text=>'NULL-waardensortering %0'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127533532087027003)
,p_name=>'APEXIR_NUMERIC_FLASHBACK_TIME'
,p_message_language=>'nl'
,p_message_text=>'Flashback-tijd moet numeriek zijn.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127533124472027003)
,p_name=>'APEXIR_NUMERIC_SEQUENCE'
,p_message_language=>'nl'
,p_message_text=>'Volgnummer moet numeriek zijn.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127537618157027004)
,p_name=>'APEXIR_OPERATOR'
,p_message_language=>'nl'
,p_message_text=>'Operator'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127496169483026992)
,p_name=>'APEXIR_ORANGE'
,p_message_language=>'nl'
,p_message_text=>'oranje'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127610145961027026)
,p_name=>'APEXIR_ORIENTATION'
,p_message_language=>'nl'
,p_message_text=>'Afdrukstand'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127498069148026992)
,p_name=>'APEXIR_OTHER'
,p_message_language=>'nl'
,p_message_text=>'Anders'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127464288183026982)
,p_name=>'APEXIR_PAGINATION_OF'
,p_message_language=>'nl'
,p_message_text=>'Paginering van %0'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127478252569026986)
,p_name=>'APEXIR_PDF_ORIENTATION'
,p_message_language=>'nl'
,p_message_text=>'Afdrukstand pagina'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127478982310026987)
,p_name=>'APEXIR_PDF_ORIENTATION_HORIZONTAL'
,p_message_language=>'nl'
,p_message_text=>'Liggend'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127479091993026987)
,p_name=>'APEXIR_PDF_ORIENTATION_VERTICAL'
,p_message_language=>'nl'
,p_message_text=>'Staand'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127478151341026986)
,p_name=>'APEXIR_PDF_PAGE_SIZE'
,p_message_language=>'nl'
,p_message_text=>'Paginagrootte'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127478743442026987)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A3'
,p_message_language=>'nl'
,p_message_text=>'A3'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127478603806026987)
,p_name=>'APEXIR_PDF_PAGE_SIZE_A4'
,p_message_language=>'nl'
,p_message_text=>'A4'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127478851188026987)
,p_name=>'APEXIR_PDF_PAGE_SIZE_CUSTOM'
,p_message_language=>'nl'
,p_message_text=>'Aangepast'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127478465718026986)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LEGAL'
,p_message_language=>'nl'
,p_message_text=>'Legal'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127478355153026986)
,p_name=>'APEXIR_PDF_PAGE_SIZE_LETTER'
,p_message_language=>'nl'
,p_message_text=>'Letter'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127478527142026986)
,p_name=>'APEXIR_PDF_PAGE_SIZE_TABLOID'
,p_message_language=>'nl'
,p_message_text=>'Tabloid'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127619052782027028)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_COUNT_X'
,p_message_language=>'nl'
,p_message_text=>'Percentage van totaal aantal %0 (%)'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127618296833027028)
,p_name=>'APEXIR_PERCENT_OF_TOTAL_SUM_X'
,p_message_language=>'nl'
,p_message_text=>'Percentage van totale som %0 (%)'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127617208477027028)
,p_name=>'APEXIR_PERCENT_TOTAL_COUNT'
,p_message_language=>'nl'
,p_message_text=>'Percentage van totaal aantal'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127617131412027028)
,p_name=>'APEXIR_PERCENT_TOTAL_SUM'
,p_message_language=>'nl'
,p_message_text=>'Percentage van totale som'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127501630582026993)
,p_name=>'APEXIR_PIE'
,p_message_language=>'nl'
,p_message_text=>'Cirkel'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127567308121027013)
,p_name=>'APEXIR_PIVOT'
,p_message_language=>'nl'
,p_message_text=>'Draaitabel'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127568858744027013)
,p_name=>'APEXIR_PIVOT_AGG_NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'Aggregatie moet worden opgegeven.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127569068593027013)
,p_name=>'APEXIR_PIVOT_AGG_NOT_ON_ROW_COL'
,p_message_language=>'nl'
,p_message_text=>'U kunt niet aggregeren op een kolom die is geselecteerd als rijkolom.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127568284664027013)
,p_name=>'APEXIR_PIVOT_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Draaikolommen'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127568063253027013)
,p_name=>'APEXIR_PIVOT_COLUMN_N'
,p_message_language=>'nl'
,p_message_text=>'Draaikolom %0'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127568689116027013)
,p_name=>'APEXIR_PIVOT_COLUMN_NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'Draaikolom moet worden opgegeven.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127421110540026968)
,p_name=>'APEXIR_PIVOT_MAX_ROW_CNT'
,p_message_language=>'nl'
,p_message_text=>'Het maximum aantal rijen voor een draaitabelquery beperkt het aantal rijen en de basisquery, niet het aantal weergegeven rijen. Uw basisquery overschrijdt het maximum aantal rijen, %0. Pas een filter toe om het aantal records in uw basisquery te verm'
||'inderen.'
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127568525434027013)
,p_name=>'APEXIR_PIVOT_SORT'
,p_message_language=>'nl'
,p_message_text=>'Sortering draaitabel'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127534521511027003)
,p_name=>'APEXIR_PIVOT_TOO_MANY_VALUES'
,p_message_language=>'nl'
,p_message_text=>'De draaikolom bevat te veel afzonderlijke waarden. De draai-SQL kan niet worden gegenereerd.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127465502379026983)
,p_name=>'APEXIR_PIVOT_VIEW_OF'
,p_message_language=>'nl'
,p_message_text=>'Draaitabelweergave van %0'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127591331155027020)
,p_name=>'APEXIR_PREVIEW'
,p_message_language=>'nl'
,p_message_text=>'Voorbeeld'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127521821086026999)
,p_name=>'APEXIR_PREVIOUS'
,p_message_language=>'nl'
,p_message_text=>'Vorige'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127616135773027028)
,p_name=>'APEXIR_PRIMARY'
,p_message_language=>'nl'
,p_message_text=>'Primair'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127592389096027020)
,p_name=>'APEXIR_PRIMARY_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Primair rapport'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127478004402026986)
,p_name=>'APEXIR_PRINT_ACCESSIBLE'
,p_message_language=>'nl'
,p_message_text=>'Toegankelijkheidstags opnemen'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127438855252026974)
,p_name=>'APEXIR_PRINT_STRIP_RICH_TEXT'
,p_message_language=>'nl'
,p_message_text=>'Opmaak verwijderen uit opgemaakte tekst'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127547243312027007)
,p_name=>'APEXIR_PRIVATE'
,p_message_language=>'nl'
,p_message_text=>unistr('Priv\00E9')
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127502226805026993)
,p_name=>'APEXIR_PUBLIC'
,p_message_language=>'nl'
,p_message_text=>'Openbaar'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127497880981026992)
,p_name=>'APEXIR_RED'
,p_message_language=>'nl'
,p_message_text=>'rood'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127644290297027036)
,p_name=>'APEXIR_REGION_STATIC_ID_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Statische regio-ID %0 bestaat niet.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127531372832027002)
,p_name=>'APEXIR_REMOVE'
,p_message_language=>'nl'
,p_message_text=>'Verwijderen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127531435370027002)
,p_name=>'APEXIR_REMOVE_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles verwijderen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127639695482027035)
,p_name=>'APEXIR_REMOVE_CHART'
,p_message_language=>'nl'
,p_message_text=>'Grafiek verwijderen'
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127530939633027002)
,p_name=>'APEXIR_REMOVE_CONTROL_BREAK'
,p_message_language=>'nl'
,p_message_text=>'Groepsverandering verwijderen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127530698334027002)
,p_name=>'APEXIR_REMOVE_FILTER'
,p_message_language=>'nl'
,p_message_text=>'Filter verwijderen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127530746250027002)
,p_name=>'APEXIR_REMOVE_FLASHBACK'
,p_message_language=>'nl'
,p_message_text=>'Flashback verwijderen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127639749232027035)
,p_name=>'APEXIR_REMOVE_GROUP_BY'
,p_message_language=>'nl'
,p_message_text=>'GROUP BY verwijderen'
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127531091758027002)
,p_name=>'APEXIR_REMOVE_HIGHLIGHT'
,p_message_language=>'nl'
,p_message_text=>'Markering verwijderen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127639855690027035)
,p_name=>'APEXIR_REMOVE_PIVOT'
,p_message_language=>'nl'
,p_message_text=>'Draaitabel verwijderen'
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127620952173027029)
,p_name=>'APEXIR_REMOVE_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Rapport verwijderen'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127602766743027023)
,p_name=>'APEXIR_RENAME_DEFAULT_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Standaardrapport hernoemen'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127540518930027005)
,p_name=>'APEXIR_RENAME_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Rapport hernoemen'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127522190894026999)
,p_name=>'APEXIR_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Rapport'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127619185456027028)
,p_name=>'APEXIR_REPORTS'
,p_message_language=>'nl'
,p_message_text=>'Rapporten'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127494342689026991)
,p_name=>'APEXIR_REPORT_ALIAS_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Opgeslagen interactief rapport met alias %0 bestaat niet.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127547555527027007)
,p_name=>'APEXIR_REPORT_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Rapport bestaat niet.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127494456898026991)
,p_name=>'APEXIR_REPORT_ID_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Opgeslagen interactief rapport met ID %0 bestaat niet.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127538822964027004)
,p_name=>'APEXIR_REPORT_SETTINGS'
,p_message_language=>'nl'
,p_message_text=>'Rapportinstellingen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127463038113026982)
,p_name=>'APEXIR_REPORT_SETTINGS_OF'
,p_message_language=>'nl'
,p_message_text=>'Rapportinstellingen van %0'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127519185472026999)
,p_name=>'APEXIR_REPORT_VIEW'
,p_message_language=>'nl'
,p_message_text=>'Rapportweergave'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127523354915027000)
,p_name=>'APEXIR_RESET'
,p_message_language=>'nl'
,p_message_text=>'Opnieuw instellen'
,p_is_js_message=>true
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127502421466026994)
,p_name=>'APEXIR_RESET_CONFIRM'
,p_message_language=>'nl'
,p_message_text=>'Herstel de standaardinstellingen van het rapport.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127497634384026992)
,p_name=>'APEXIR_ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127615275729027027)
,p_name=>'APEXIR_ROWID_NOT_SUPPORTED_FOR_WEBSOURCE'
,p_message_language=>'nl'
,p_message_text=>'U kunt ROWID niet gebruiken als de primaire sleutelkolom voor een REST-gegevensbron.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127530096818027002)
,p_name=>'APEXIR_ROWS'
,p_message_language=>'nl'
,p_message_text=>'Rijen'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127593032696027021)
,p_name=>'APEXIR_ROWS_PER_PAGE'
,p_message_language=>'nl'
,p_message_text=>'Rijen per pagina'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127568313810027013)
,p_name=>'APEXIR_ROW_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Rijkolommen'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127568112649027013)
,p_name=>'APEXIR_ROW_COLUMN_N'
,p_message_language=>'nl'
,p_message_text=>'Rijkolom %0'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127568740941027013)
,p_name=>'APEXIR_ROW_COLUMN_NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'Rijkolom moet worden opgegeven.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127568956541027013)
,p_name=>'APEXIR_ROW_COL_DIFF_FROM_PIVOT_COL'
,p_message_language=>'nl'
,p_message_text=>'De rijkolom moet verschillen van de draaikolom.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127544566992027006)
,p_name=>'APEXIR_ROW_FILTER'
,p_message_language=>'nl'
,p_message_text=>'Rijfilter'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127519232837026999)
,p_name=>'APEXIR_ROW_OF'
,p_message_language=>'nl'
,p_message_text=>'Rij %0 van %1'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127523517048027000)
,p_name=>'APEXIR_ROW_TEXT_CONTAINS'
,p_message_language=>'nl'
,p_message_text=>'Rijtekst bevat'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127496987075026992)
,p_name=>'APEXIR_SAVE'
,p_message_language=>'nl'
,p_message_text=>'Opslaan'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127534195765027003)
,p_name=>'APEXIR_SAVED_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Opgeslagen rapport'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127534091880027003)
,p_name=>'APEXIR_SAVED_REPORT_MSG'
,p_message_language=>'nl'
,p_message_text=>'Opgeslagen rapport = "%0"'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127536262706027004)
,p_name=>'APEXIR_SAVE_DEFAULT_CONFIRM'
,p_message_language=>'nl'
,p_message_text=>'De huidige rapportinstellingen worden gebruikt als de standaardinstellingen voor alle gebruikers.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127602644526027023)
,p_name=>'APEXIR_SAVE_DEFAULT_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Standaardrapport opslaan'
,p_is_js_message=>true
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127523295839027000)
,p_name=>'APEXIR_SAVE_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Rapport opslaan'
,p_is_js_message=>true
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127640067445027035)
,p_name=>'APEXIR_SAVE_REPORT_DEFAULT'
,p_message_language=>'nl'
,p_message_text=>'Rapport opslaan *'
,p_is_js_message=>true
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127594033873027021)
,p_name=>'APEXIR_SEARCH'
,p_message_language=>'nl'
,p_message_text=>'Zoeken'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127528963135027002)
,p_name=>'APEXIR_SEARCH_BAR'
,p_message_language=>'nl'
,p_message_text=>'Zoekbalk'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127462334749026982)
,p_name=>'APEXIR_SEARCH_BAR_OF'
,p_message_language=>'nl'
,p_message_text=>'Zoekbalk van %0'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127639996419027035)
,p_name=>'APEXIR_SEARCH_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Zoeken: %0'
,p_is_js_message=>true
,p_version_scn=>2693124
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127599569270027023)
,p_name=>'APEXIR_SEARCH_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Zoekrapport'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127583545024027018)
,p_name=>'APEXIR_SELECTED_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Geselecteerde kolommen'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127498625330026992)
,p_name=>'APEXIR_SELECT_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'- Selecteer kolom -'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127522535370027000)
,p_name=>'APEXIR_SELECT_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Kolommen selecteren'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127502107756026993)
,p_name=>'APEXIR_SELECT_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'- Functie selecteren -'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127529797005027002)
,p_name=>'APEXIR_SELECT_GROUP_BY_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'- Selecteer kolom om op te groeperen -'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127567815734027013)
,p_name=>'APEXIR_SELECT_PIVOT_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'- Selecteer draaikolom -'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127618153652027028)
,p_name=>'APEXIR_SELECT_ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij selecteren'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127567937231027013)
,p_name=>'APEXIR_SELECT_ROW_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'- Selecteer rijkolom -'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127449490816026978)
,p_name=>'APEXIR_SEND'
,p_message_language=>'nl'
,p_message_text=>'Versturen'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127471985299026984)
,p_name=>'APEXIR_SEND_AS_EMAIL'
,p_message_language=>'nl'
,p_message_text=>'Versturen als e-mail'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127497374003026992)
,p_name=>'APEXIR_SEQUENCE'
,p_message_language=>'nl'
,p_message_text=>'Volgnummer'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127522766271027000)
,p_name=>'APEXIR_SORT'
,p_message_language=>'nl'
,p_message_text=>'Sorteren'
,p_is_js_message=>true
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127532268992027003)
,p_name=>'APEXIR_SORT_ASCENDING'
,p_message_language=>'nl'
,p_message_text=>'Oplopend sorteren'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127532336361027003)
,p_name=>'APEXIR_SORT_DESCENDING'
,p_message_language=>'nl'
,p_message_text=>'Aflopend sorteren'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127620334940027029)
,p_name=>'APEXIR_SORT_ORDER'
,p_message_language=>'nl'
,p_message_text=>'Sorteervolgorde'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127526648129027001)
,p_name=>'APEXIR_SPACE_AS_IN_ONE_EMPTY_STRING'
,p_message_language=>'nl'
,p_message_text=>'spatie'
,p_version_scn=>2693099
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127537877598027004)
,p_name=>'APEXIR_STATUS'
,p_message_language=>'nl'
,p_message_text=>'Status %0'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127591753595027020)
,p_name=>'APEXIR_SUBSCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Abonnement'
,p_is_js_message=>true
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127617537370027028)
,p_name=>'APEXIR_SUBSCRIPTION_ENDING'
,p_message_language=>'nl'
,p_message_text=>'T/m'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127436539712026973)
,p_name=>'APEXIR_SUBSCRIPTION_SKIP_IF_NDF'
,p_message_language=>'nl'
,p_message_text=>'Overslaan als geen gegevens zijn gevonden'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127617416557027028)
,p_name=>'APEXIR_SUBSCRIPTION_STARTING_FROM'
,p_message_language=>'nl'
,p_message_text=>'Beginnend bij'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127618387388027028)
,p_name=>'APEXIR_SUM_X'
,p_message_language=>'nl'
,p_message_text=>'Som %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127609203438027026)
,p_name=>'APEXIR_TABLE_SUMMARY'
,p_message_language=>'nl'
,p_message_text=>'%0, rapport = %1, weergave = %2'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127496299453026992)
,p_name=>'APEXIR_TEXT_COLOR'
,p_message_language=>'nl'
,p_message_text=>'Tekstkleur'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127514975586026997)
,p_name=>'APEXIR_TIME_DAYS'
,p_message_language=>'nl'
,p_message_text=>'dagen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127514874471026997)
,p_name=>'APEXIR_TIME_HOURS'
,p_message_language=>'nl'
,p_message_text=>'uur'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127514711012026997)
,p_name=>'APEXIR_TIME_MINS'
,p_message_language=>'nl'
,p_message_text=>'minuten'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127515180887026997)
,p_name=>'APEXIR_TIME_MONTHS'
,p_message_language=>'nl'
,p_message_text=>'maanden'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127515010729026997)
,p_name=>'APEXIR_TIME_WEEKS'
,p_message_language=>'nl'
,p_message_text=>'weken'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127515246624026997)
,p_name=>'APEXIR_TIME_YEARS'
,p_message_language=>'nl'
,p_message_text=>'jaar'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127620767135027029)
,p_name=>'APEXIR_TOGGLE'
,p_message_language=>'nl'
,p_message_text=>'In-/Uitschakelen'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127531542478027002)
,p_name=>'APEXIR_TOP'
,p_message_language=>'nl'
,p_message_text=>'Bovenaan'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127614274068027027)
,p_name=>'APEXIR_UNGROUPED_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Niet-gegroepeerde kolom'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127533032300027003)
,p_name=>'APEXIR_UNIQUE_HIGHLIGHT_NAME'
,p_message_language=>'nl'
,p_message_text=>'De naam van de markering moet uniek zijn.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127500990851026993)
,p_name=>'APEXIR_UNSUPPORTED_DATA_TYPE'
,p_message_language=>'nl'
,p_message_text=>'niet-ondersteund gegevenssoort'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127531683404027002)
,p_name=>'APEXIR_UP'
,p_message_language=>'nl'
,p_message_text=>'Omhoog'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127533279750027003)
,p_name=>'APEXIR_VALID_COLOR'
,p_message_language=>'nl'
,p_message_text=>'Geef een geldige kleur op.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127533330966027003)
,p_name=>'APEXIR_VALID_FORMAT_MASK'
,p_message_language=>'nl'
,p_message_text=>'Voer een geldig opmaakmasker in.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127498157171026992)
,p_name=>'APEXIR_VALUE'
,p_message_language=>'nl'
,p_message_text=>'Waarde'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127532157147027002)
,p_name=>'APEXIR_VALUE_AXIS_TITLE'
,p_message_language=>'nl'
,p_message_text=>'Astitel voor waarde'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127539998879027005)
,p_name=>'APEXIR_VALUE_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'Waarde vereist'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127501510460026993)
,p_name=>'APEXIR_VCOLUMN'
,p_message_language=>'nl'
,p_message_text=>'Verticale kolom'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127610326395027026)
,p_name=>'APEXIR_VERTICAL'
,p_message_language=>'nl'
,p_message_text=>'Verticaal'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127539293523027005)
,p_name=>'APEXIR_VIEW_CHART'
,p_message_language=>'nl'
,p_message_text=>'Grafiek weergeven'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127597889147027022)
,p_name=>'APEXIR_VIEW_DETAIL'
,p_message_language=>'nl'
,p_message_text=>'Detail weergeven'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127642113307027035)
,p_name=>'APEXIR_VIEW_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Er is geen %0-weergave gedefinieerd voor het rapport.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127597961160027022)
,p_name=>'APEXIR_VIEW_GROUP_BY'
,p_message_language=>'nl'
,p_message_text=>'GROUP BY weergeven'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127597716666027022)
,p_name=>'APEXIR_VIEW_ICONS'
,p_message_language=>'nl'
,p_message_text=>'Weergavepictogrammen'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127567662629027013)
,p_name=>'APEXIR_VIEW_PIVOT'
,p_message_language=>'nl'
,p_message_text=>'Draaitabel weergeven'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127539345173027005)
,p_name=>'APEXIR_VIEW_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Rapport weergeven'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127591944205027020)
,p_name=>'APEXIR_WEEKLY'
,p_message_language=>'nl'
,p_message_text=>'Wekelijks'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127522030345026999)
,p_name=>'APEXIR_WORKING_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Werkrapport'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127619714320027029)
,p_name=>'APEXIR_X_DAYS'
,p_message_language=>'nl'
,p_message_text=>'%0 dagen'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127619602467027029)
,p_name=>'APEXIR_X_HOURS'
,p_message_language=>'nl'
,p_message_text=>'%0 uur'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127619511662027029)
,p_name=>'APEXIR_X_MINS'
,p_message_language=>'nl'
,p_message_text=>'%0 minuten'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127619967943027029)
,p_name=>'APEXIR_X_MONTHS'
,p_message_language=>'nl'
,p_message_text=>'%0 maanden'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127619884859027029)
,p_name=>'APEXIR_X_WEEKS'
,p_message_language=>'nl'
,p_message_text=>'%0 weken'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127620098005027029)
,p_name=>'APEXIR_X_YEARS'
,p_message_language=>'nl'
,p_message_text=>'%0 jaar'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127617725862027028)
,p_name=>'APEXIR_YEAR'
,p_message_language=>'nl'
,p_message_text=>'Jaar'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127495985101026992)
,p_name=>'APEXIR_YELLOW'
,p_message_language=>'nl'
,p_message_text=>'geel'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127497456120026992)
,p_name=>'APEXIR_YES'
,p_message_language=>'nl'
,p_message_text=>'Ja'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127531981057027002)
,p_name=>'APEX_GROUP.SESSION_STATE.RESTRICTED_CHAR.WEB_SAFE'
,p_message_language=>'nl'
,p_message_text=>'%0 bevat < of >, wat ongeldige tekens zijn.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127555839192027009)
,p_name=>'APEX_REGION'
,p_message_language=>'nl'
,p_message_text=>'Regio'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127446940215026977)
,p_name=>'APEX_ZIP.EXTRACT_FAILED'
,p_message_language=>'nl'
,p_message_text=>unistr('Het ZIP-bestand is niet ge\00EBxtraheerd.')
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127446820727026977)
,p_name=>'APEX_ZIP.INVALID_ZIPFILE'
,p_message_language=>'nl'
,p_message_text=>'Handtekening voor einde van centrale directory niet gevonden. Dit is geen ZIP-bestand.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127477908361026986)
,p_name=>'API_PRECONDITION_VIOLATED'
,p_message_language=>'nl'
,p_message_text=>'API-voorwaarde vooraf overtreden'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127500043884026993)
,p_name=>'APP.SETTING.CANNOT.GET'
,p_message_language=>'nl'
,p_message_text=>'De waarde voor applicatie-instelling %0 kan niet worden opgehaald, omdat de gekoppelde build-optie inactief is.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127499994537026993)
,p_name=>'APP.SETTING.CANNOT.SET'
,p_message_language=>'nl'
,p_message_text=>'De waarde voor applicatie-instelling %0 kan niet worden ingesteld, omdat de gekoppelde build-optie inactief is.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127612527990027026)
,p_name=>'APP.SETTING.INVALID.VALUE'
,p_message_language=>'nl'
,p_message_text=>'De waarde van applicatie-instelling %0 is ongeldig.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127612442814027026)
,p_name=>'APP.SETTING.NOT.DEFINED'
,p_message_language=>'nl'
,p_message_text=>'Gevraagde applicatie-instelling %0 is niet gedefinieerd.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127612676682027027)
,p_name=>'APP.SETTING.VALUE.NOT.NULL'
,p_message_language=>'nl'
,p_message_text=>'Applicatie-instelling %0 mag niet worden ingesteld op een NULL-waarde.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127486597707026989)
,p_name=>'BACK'
,p_message_language=>'nl'
,p_message_text=>'Terug'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127468935718026984)
,p_name=>'BUILDER'
,p_message_language=>'nl'
,p_message_text=>'Builder'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127542588510027006)
,p_name=>'BUTTON LABEL'
,p_message_language=>'nl'
,p_message_text=>'Knoplabel'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127465852819026983)
,p_name=>'BUTTON_CSS_CLASSES'
,p_message_language=>'nl'
,p_message_text=>'CSS-klassen voor knoppen'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127504335812026994)
,p_name=>'BUTTON_ID'
,p_message_language=>'nl'
,p_message_text=>'De gegenereerde knop-ID is de statische ID van de knop als deze is gedefinieerd, of anders een intern gegenereerde ID met de notatie ''B'' || [interne knop-ID].'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127438358060026974)
,p_name=>'CANDLESTICK'
,p_message_language=>'nl'
,p_message_text=>'Kaars'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127552339553027008)
,p_name=>'CENTER'
,p_message_language=>'nl'
,p_message_text=>'Midden'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127498938151026993)
,p_name=>'CHANGE_PW_REQUEST'
,p_message_language=>'nl'
,p_message_text=>'%0 Aanvraag'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127488977121026990)
,p_name=>'CHECK$'
,p_message_language=>'nl'
,p_message_text=>'rijselector'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127614333440027027)
,p_name=>'CHECKED'
,p_message_language=>'nl'
,p_message_text=>'ingeschakeld'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127590785643027020)
,p_name=>'COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Kolom'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127548388467027007)
,p_name=>'COMMENTS'
,p_message_language=>'nl'
,p_message_text=>'Toelichting'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127529348143027002)
,p_name=>'CONTINUE'
,p_message_language=>'nl'
,p_message_text=>'Doorgaan'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127486867668026989)
,p_name=>'COPYRIGHT'
,p_message_language=>'nl'
,p_message_text=>'Copyright &copy; 1999, %0, Oracle en/of geaffilieerde bedrijven.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127535026908027003)
,p_name=>'COUNT'
,p_message_language=>'nl'
,p_message_text=>'Aantal'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127542091398027005)
,p_name=>'CREATE'
,p_message_language=>'nl'
,p_message_text=>'Maken'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127597478810027022)
,p_name=>'CREATED'
,p_message_language=>'nl'
,p_message_text=>'Gemaakt'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127597539280027022)
,p_name=>'CREATED_BY'
,p_message_language=>'nl'
,p_message_text=>'Gemaakt door'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127518475699026998)
,p_name=>'CREATED_ON'
,p_message_language=>'nl'
,p_message_text=>'Gemaakt op'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127529514616027002)
,p_name=>'CUSTOM'
,p_message_language=>'nl'
,p_message_text=>'Aangepast'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127540766718027005)
,p_name=>'CUSTOMIZE'
,p_message_language=>'nl'
,p_message_text=>'Aanpassen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127542706221027006)
,p_name=>'CUSTOMIZE.USER_PAGE_PREFS_RESET'
,p_message_language=>'nl'
,p_message_text=>'Paginavoorkeuren voor gebruiker %0 opnieuw ingesteld.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127542894634027006)
,p_name=>'CUSTOMIZE.USER_PREFS_CHANGED'
,p_message_language=>'nl'
,p_message_text=>'Voorkeuren voor gebruiker %0 gewijzigd.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127542680186027006)
,p_name=>'CUSTOMIZE.USER_PREFS_RESET'
,p_message_language=>'nl'
,p_message_text=>'Paginavoorkeuren voor gebruiker %0 opnieuw ingesteld.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127503728006026994)
,p_name=>'DAILY'
,p_message_language=>'nl'
,p_message_text=>'Dagelijks'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127467199979026983)
,p_name=>'DATA.LOAD.INVALID_FILE'
,p_message_language=>'nl'
,p_message_text=>'Geladen bestand is ongeldig of heeft een onjuiste extensie.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127499169383026993)
,p_name=>'DATA.LOAD.INVALID_SELECTOR'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige XML- of JSON-selector gebruikt.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127444263732026976)
,p_name=>'DATA.LOAD.NO_COMMON_COLUMNS'
,p_message_language=>'nl'
,p_message_text=>'Gegevensprofiel en geladen bestand bevatten geen doeltabelkolom.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127558154417027010)
,p_name=>'DATA.LOAD.NO_FILE_CONTENTS'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen gegevens gevonden in het geladen bestand.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127558237787027010)
,p_name=>'DATA.LOAD.NO_WORKSHEET_CONTENTS'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen gegevens gevonden op het werkblad "%0".'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127464055736026982)
,p_name=>'DATA.LOAD.NO_XLSX_FILE'
,p_message_language=>'nl'
,p_message_text=>'Het opgegeven bestand is geen XLSX-bestand.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127430016963026971)
,p_name=>'DATA.LOAD.ROWS_PROCESSED'
,p_message_language=>'nl'
,p_message_text=>'Laden van gegevens is voltooid. %0 rijen verwerkt.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127432391959026972)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROW'
,p_message_language=>'nl'
,p_message_text=>'Laden van gegevens is voltooid. %0 rijen verwerkt met 1 fout.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127432638255026972)
,p_name=>'DATA.LOAD.ROWS_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'nl'
,p_message_text=>'Laden van gegevens is voltooid. %0 rijen verwerkt met %1 fouten.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127432444919026972)
,p_name=>'DATA.LOAD.ROW_PROCESSED'
,p_message_language=>'nl'
,p_message_text=>'Laden van gegevens is voltooid. 1 rij verwerkt.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127446731051026977)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROW'
,p_message_language=>'nl'
,p_message_text=>'Laden van gegevens is voltooid. 1 rij verwerkt met fouten.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127432564561026972)
,p_name=>'DATA.LOAD.ROW_PROCESSED_W_ERROR_ROWS'
,p_message_language=>'nl'
,p_message_text=>'Laden van gegevens is voltooid. 1 rij verwerkt zonder fouten.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127565256940027012)
,p_name=>'DATA_LOAD.COLUMN_NAMES_MAPPING'
,p_message_language=>'nl'
,p_message_text=>'Doelkolom'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127472487680026985)
,p_name=>'DATA_LOAD.DO_NOT_LOAD'
,p_message_language=>'nl'
,p_message_text=>'Niet laden'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127472541913026985)
,p_name=>'DATA_LOAD.FAILED'
,p_message_language=>'nl'
,p_message_text=>'Fout bij voorverwerking'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127565362941027012)
,p_name=>'DATA_LOAD.FIRST_COLUMN_NAMES'
,p_message_language=>'nl'
,p_message_text=>'Bronkolom'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127566150565027013)
,p_name=>'DATA_LOAD.FORMAT'
,p_message_language=>'nl'
,p_message_text=>'Datum-/Getalnotatie'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127472274491026985)
,p_name=>'DATA_LOAD.INSERT'
,p_message_language=>'nl'
,p_message_text=>'Rij invoegen'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127628392205027031)
,p_name=>'DATA_LOAD.LOOKUP_FAILED'
,p_message_language=>'nl'
,p_message_text=>'Het ophalen van de referentiewaarde is mislukt.'
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127598027068027022)
,p_name=>'DATA_LOAD.MAPPING'
,p_message_language=>'nl'
,p_message_text=>'Gegevens-/Tabelafstemming'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127566228922027013)
,p_name=>'DATA_LOAD.ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127472633375026985)
,p_name=>'DATA_LOAD.SEQUENCE_ACTION'
,p_message_language=>'nl'
,p_message_text=>'Volgnummer : Actie'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127559971770027011)
,p_name=>'DATA_LOAD.TRANSFORMATION_FAILED'
,p_message_language=>'nl'
,p_message_text=>'De transformatieregel is mislukt.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127472335240026985)
,p_name=>'DATA_LOAD.UPDATE'
,p_message_language=>'nl'
,p_message_text=>'Rij bijwerken'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127534613727027003)
,p_name=>'DATE'
,p_message_language=>'nl'
,p_message_text=>'Datum'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127507594387026995)
,p_name=>'DAY'
,p_message_language=>'nl'
,p_message_text=>'dag'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127507634438026995)
,p_name=>'DAYS'
,p_message_language=>'nl'
,p_message_text=>'dagen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127548086369027007)
,p_name=>'DEBUGGING_OFF'
,p_message_language=>'nl'
,p_message_text=>'Foutopsporing is niet geactiveerd voor deze applicatie.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127599733047027023)
,p_name=>'DEFAULT'
,p_message_language=>'nl'
,p_message_text=>'Standaard'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127508316457026995)
,p_name=>'DELETE'
,p_message_language=>'nl'
,p_message_text=>'verwijderen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127483936767026988)
,p_name=>'DELETE_MSG'
,p_message_language=>'nl'
,p_message_text=>'Wilt u deze verwijderactie uitvoeren?'
,p_version_scn=>2693093
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127463579889026982)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES'
,p_message_language=>'nl'
,p_message_text=>'Sessieoverschrijvingen'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127464451444026982)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ENABLE'
,p_message_language=>'nl'
,p_message_text=>'Sessieoverschrijvingen inschakelen'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127465375472026982)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_LOAD'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het laden van sessieoverschrijvingen.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127465173761026982)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_ERROR_SAVE'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het opslaan van sessieoverschrijvingen.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127465041638026982)
,p_name=>'DEVELOPER_TOOLBAR_SESSION_OVERRIDES_SAVED'
,p_message_language=>'nl'
,p_message_text=>'Sessieoverschrijvingen opgeslagen. Sluit dit dialoogvenster om de wijzigingen te bekijken.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127438292185026974)
,p_name=>'DIAL_PCT'
,p_message_language=>'nl'
,p_message_text=>'Wijzer (percentage)'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127479220449026987)
,p_name=>'DOWNLOAD'
,p_message_language=>'nl'
,p_message_text=>'Download'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127598888442027022)
,p_name=>'DUP_USER'
,p_message_language=>'nl'
,p_message_text=>'Dubbele gebruikersnaam in lijst'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127487629543026989)
,p_name=>'EDIT'
,p_message_language=>'nl'
,p_message_text=>'Bewerken'
,p_is_js_message=>true
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127498880824026992)
,p_name=>'EMAIL_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'E-mailadres "%0" is niet gevonden.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127481502833026987)
,p_name=>'EMAIL_SENT_BY'
,p_message_language=>'nl'
,p_message_text=>'Dit e-mailbericht is verzonden door %0.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127599066268027022)
,p_name=>'EMAIL_TOO_LONG'
,p_message_language=>'nl'
,p_message_text=>'Het e-mailadres is te lang. De limiet is 240 tekens.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127529260853027002)
,p_name=>'ERROR'
,p_message_language=>'nl'
,p_message_text=>'Fout'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127560000232027011)
,p_name=>'ERROR_SET_ITEM_STATE_FOR_PPR_REGION'
,p_message_language=>'nl'
,p_message_text=>'Kan de bronwaarde van het pagina-item voor de regio voor gedeeltelijk vernieuwen van de pagina niet instellen.'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127520546199026999)
,p_name=>'F4500_P10_CREATED_BY'
,p_message_language=>'nl'
,p_message_text=>'Gemaakt door'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127481883968026987)
,p_name=>'F4500_P2613_EXPIRED'
,p_message_language=>'nl'
,p_message_text=>'Wachtwoord verlopen'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127474290003026985)
,p_name=>'FILE_EMPTY'
,p_message_language=>'nl'
,p_message_text=>'Het bestand is leeg.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127564079596027012)
,p_name=>'FILE_TOO_LARGE'
,p_message_language=>'nl'
,p_message_text=>'Het geladen bestand was groter dan %0 MB. Upload een kleiner bestand.'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127484179760026988)
,p_name=>'FILE_UPLOAD_AUTHENTICATION_ERR'
,p_message_language=>'nl'
,p_message_text=>'De gebruikersverificatie is mislukt en een of meer bestanden zijn niet geladen.'
,p_version_scn=>2693093
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127484280615026988)
,p_name=>'FILE_UPLOAD_PUBLICUSER_ERR'
,p_message_language=>'nl'
,p_message_text=>'In deze instance mogen niet-geverifieerde gebruikers geen bestanden laden.'
,p_version_scn=>2693093
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127564171678027012)
,p_name=>'FILTERS'
,p_message_language=>'nl'
,p_message_text=>'Filters'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127542199515027005)
,p_name=>'FLOW.SINGLE_VALIDATION_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is 1 fout opgetreden.'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127541353223027005)
,p_name=>'FLOW.VALIDATION_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er zijn %0 fouten opgetreden.'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127486785142026989)
,p_name=>'FORM_OF'
,p_message_language=>'nl'
,p_message_text=>'%0 van %1'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127525759831027001)
,p_name=>'GO'
,p_message_language=>'nl'
,p_message_text=>'Uitvoeren'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127627925980027031)
,p_name=>'HELP'
,p_message_language=>'nl'
,p_message_text=>'Help'
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127469064428026984)
,p_name=>'HOME'
,p_message_language=>'nl'
,p_message_text=>'Beginpagina'
,p_is_js_message=>true
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127507345055026995)
,p_name=>'HOUR'
,p_message_language=>'nl'
,p_message_text=>'uur'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127507436582026995)
,p_name=>'HOURS'
,p_message_language=>'nl'
,p_message_text=>'uur'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127488851744026990)
,p_name=>'ICON'
,p_message_language=>'nl'
,p_message_text=>'Pictogram %0'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127466171601026983)
,p_name=>'ICON.EDITOR.CROP.HELP'
,p_message_language=>'nl'
,p_message_text=>'Help bij pictogram ''Bijsnijden'''
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127467300267026983)
,p_name=>'ICON.EDITOR.CROPPER.HELPTEXT'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Sleep uw pictogram en gebruik de schuifregelaar voor zoomen om de positie in het frame te wijzigen.</p>',
'',
'<p>Wanneer u een nieuw pictogram uploadt, wordt de grootte ervan aangepast aan drie formaten: het formaat van een favicon, een klein pictogram en een groot pictogram.</p>',
'',
'<p>Als de functie voor het bijsnijden van een pictogram de focus heeft, zijn de volgende sneltoetsen beschikbaar:</p>',
'<ul>',
'    <li>Pijl naar links: afbeelding naar links verplaatsen*</li>',
'    <li>Pijl omhoog: afbeelding omhoog verplaatsen*</li>',
'    <li>Pijl naar rechts: afbeelding naar rechts verplaatsen*</li>',
'    <li>Pijl omlaag: afbeelding omlaag verplaatsen*</li>',
'    <li>I: inzoomen</li>',
'    <li>O: uitzoomen</li>',
'    <li>L: links roteren</li>',
'    <li>R: rechts roteren</li>',
'</ul>',
'',
'<p class="margin-top-md"><em>*Houd Shift ingedrukt als u de afbeelding sneller wilt verplaatsen.</em></p>'))
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127472806392026985)
,p_name=>'ICON.EDITOR.CROPPER.SUBTITLE'
,p_message_language=>'nl'
,p_message_text=>'Slepen om positie van pictogram aan te passen'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127472954969026985)
,p_name=>'ICON.EDITOR.CROPPER.ZOOM_SLIDER_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Schuifregelaar verplaatsen om zoomniveau te wijzigen'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127465948327026983)
,p_name=>'ICON.EDITOR.DIALOG.TITLE'
,p_message_language=>'nl'
,p_message_text=>'Pictogram van applicatie bewerken'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127466278327026983)
,p_name=>'ICON.EDITOR.ERROR.SAVING'
,p_message_language=>'nl'
,p_message_text=>'Fout bij opslaan van pictogram'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127548629727027007)
,p_name=>'ICON.EDITOR.LEGACY_DATA'
,p_message_language=>'nl'
,p_message_text=>'<p><span class="a-Icon icon-tr-warning"></span> Deze applicatie gebruikt oude pictogrammen. Wanneer u een nieuw pictogram uploadt, worden alle oude pictogrammen vervangen.</p>'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127466889308026983)
,p_name=>'ICON.EDITOR.UPLOAD.ICON'
,p_message_language=>'nl'
,p_message_text=>'Nieuw pictogram uploaden'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127543005135027006)
,p_name=>'INVALID_CREDENTIALS'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige inlogreferenties'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127644141565027036)
,p_name=>'INVALID_VALUE_FOR_PARAMETER'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige waarde voor parameter: %0'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127537349248027004)
,p_name=>'IR_AS_DEFAULT_REPORT_SETTING'
,p_message_language=>'nl'
,p_message_text=>'Als standaardrapportinstellingen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127537464451027004)
,p_name=>'IR_AS_NAMED_REPORT'
,p_message_language=>'nl'
,p_message_text=>'Als benoemd rapport'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127519395505026999)
,p_name=>'IR_ERROR'
,p_message_language=>'nl'
,p_message_text=>'%0-fout. %1'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127519056516026998)
,p_name=>'IR_FRM_NAV_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Schermnavigatie kan niet worden berekend. %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127494659373026991)
,p_name=>'IR_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Interactief rapport niet gevonden'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127494086048026991)
,p_name=>'IR_REGION_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Interactieve rapportregio bestaat niet in applicatie %0, pagina %1 en regio %2.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127537200098027004)
,p_name=>'IR_STAR'
,p_message_language=>'nl'
,p_message_text=>'Alleen weergegeven aan ontwikkelaars'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127525470661027000)
,p_name=>'IR_UNIQUE_KEY_ERROR'
,p_message_language=>'nl'
,p_message_text=>'De rapportquery moet een unieke sleutel bevatten om elke rij te identificeren. De opgegeven sleutel kan niet voor deze query worden gebruikt. Definieer een unieke sleutelkolom. %0'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127525515653027000)
,p_name=>'IR_UNIQUE_KEY_ERROR2'
,p_message_language=>'nl'
,p_message_text=>unistr('De rapportquery moet een unieke sleutel bevatten om elke rij te identificeren. De opgegeven sleutel kan niet voor deze query worden gebruikt. Bewerk de rapportattributen om een unieke sleutelkolom te defini\00EBren. %0')
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127566454275027013)
,p_name=>'ITEM.FILE_UPLOAD.CHOOSE_FILE'
,p_message_language=>'nl'
,p_message_text=>'Bestand kiezen'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127566333689027013)
,p_name=>'ITEM.FILE_UPLOAD.DRAG_DROP_FILE_HERE'
,p_message_language=>'nl'
,p_message_text=>'Bestand slepen en hier neerzetten of'
,p_is_js_message=>true
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127487092087026989)
,p_name=>'ITEMS'
,p_message_language=>'nl'
,p_message_text=>'Items'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127520786931026999)
,p_name=>'ITEM_VALUE'
,p_message_language=>'nl'
,p_message_text=>'Itemwaarde'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127535346120027003)
,p_name=>'LABEL'
,p_message_language=>'nl'
,p_message_text=>'Label'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127547946774027007)
,p_name=>'LANGUAGE'
,p_message_language=>'nl'
,p_message_text=>'Taal'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127508079296026995)
,p_name=>'LAST'
,p_message_language=>'nl'
,p_message_text=>'laatste'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127484091869026988)
,p_name=>'LENGTH'
,p_message_language=>'nl'
,p_message_text=>'Lengte'
,p_version_scn=>2693093
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127542362827027005)
,p_name=>'LOGIN'
,p_message_language=>'nl'
,p_message_text=>'Inloggen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127583968510027018)
,p_name=>'MANAGE'
,p_message_language=>'nl'
,p_message_text=>'Beheren'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127647052409027037)
,p_name=>'MAXIMIZE'
,p_message_language=>'nl'
,p_message_text=>'Maximaliseren'
,p_is_js_message=>true
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127507151261026995)
,p_name=>'MINUTE'
,p_message_language=>'nl'
,p_message_text=>' minuut'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127507213250026995)
,p_name=>'MINUTES'
,p_message_language=>'nl'
,p_message_text=>'minuten'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127599245276027022)
,p_name=>'MISSING_AT'
,p_message_language=>'nl'
,p_message_text=>'Het "@" ontbreekt in het e-mailadres.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127599478586027022)
,p_name=>'MISSING_DIALOG_PAGE_TEMPLATE_WARNING'
,p_message_language=>'nl'
,p_message_text=>'Waarschuwing: er is geen dialoogpaginasjabloon gedefinieerd voor dialoogpagina %0 in applicatie %1.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127599148722027022)
,p_name=>'MISSING_DOT'
,p_message_language=>'nl'
,p_message_text=>'De "." ontbreekt in het domein van het e-mailadres.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127545460355027006)
,p_name=>'MODULE'
,p_message_language=>'nl'
,p_message_text=>'Module'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127499656324026993)
,p_name=>'MONTH'
,p_message_language=>'nl'
,p_message_text=>'Maand'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127503574218026994)
,p_name=>'MONTHLY'
,p_message_language=>'nl'
,p_message_text=>'Maandelijks'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127499797040026993)
,p_name=>'MONTHS'
,p_message_language=>'nl'
,p_message_text=>'maanden'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127534977397027003)
,p_name=>'MOVE'
,p_message_language=>'nl'
,p_message_text=>'Verplaatsen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127605708190027024)
,p_name=>'MOVE_FROM'
,p_message_language=>'nl'
,p_message_text=>'Verplaatsen van'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127605886446027024)
,p_name=>'MOVE_TO'
,p_message_language=>'nl'
,p_message_text=>'Verplaatsen naar'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127521980475026999)
,p_name=>'MRU.ERROR_IN_MRD'
,p_message_language=>'nl'
,p_message_text=>'Fout bij verwijderen meerdere rijen: rij= %0, %1, %2'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127520900732026999)
,p_name=>'MUST_NOT_BE_PUBLIC_USER'
,p_message_language=>'nl'
,p_message_text=>'Mag geen openbare gebruiker zijn.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127469525561026984)
,p_name=>'NAME'
,p_message_language=>'nl'
,p_message_text=>'Naam'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127535156378027003)
,p_name=>'NEW'
,p_message_language=>'nl'
,p_message_text=>'Nieuw'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127499417471026993)
,p_name=>'NEW_ACCOUNT_LOGIN_INSTRUCTIONS'
,p_message_language=>'nl'
,p_message_text=>'Ga om u aan te melden bij %0 naar:'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127499580336026993)
,p_name=>'NEW_ACCOUNT_NOTIFICATION'
,p_message_language=>'nl'
,p_message_text=>'Melding over nieuwe %0 account'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127628135226027031)
,p_name=>'NEXT'
,p_message_language=>'nl'
,p_message_text=>'Volgende'
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127545325795027006)
,p_name=>'NO'
,p_message_language=>'nl'
,p_message_text=>'Nee'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127642294741027035)
,p_name=>'NOBODY'
,p_message_language=>'nl'
,p_message_text=>'niemand'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127508444711026995)
,p_name=>'NOT'
,p_message_language=>'nl'
,p_message_text=>'Niet'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127551382471027008)
,p_name=>'NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'Niet NULL'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127521023034026999)
,p_name=>'NOT_W_ARGUMENT'
,p_message_language=>'nl'
,p_message_text=>'Niet %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127540864608027005)
,p_name=>'NO_DATA_FOUND'
,p_message_language=>'nl'
,p_message_text=>'geen gegevens gevonden'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127550844875027008)
,p_name=>'NO_UPDATEABLE_REPORT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Er is geen rapport gevonden dat kan worden bijgewerkt. Bewerkingen voor het bijwerken of verwijderen van meerdere rijen kunnen alleen worden uitgevoerd op tabelschermen van het type ''Bijwerkbaar rapport''.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127551723131027008)
,p_name=>'OK'
,p_message_language=>'nl'
,p_message_text=>'OK'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127547004576027007)
,p_name=>'ORACLE_APPLICATION_EXPRESS'
,p_message_language=>'nl'
,p_message_text=>'Oracle APEX'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127645999632027037)
,p_name=>'ORA_06550'
,p_message_language=>'nl'
,p_message_text=>'ORA-06550: regel %0, kolom %1'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127596846518027022)
,p_name=>'OUTDATED_BROWSER'
,p_message_language=>'nl'
,p_message_text=>'U gebruikt een verouderde webbrowser. Zie de Oracle APEX Installation Guide voor een lijst met ondersteunde browsers.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127491888071026990)
,p_name=>'OUT_OF_RANGE'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige set rijen opgevraagd, de brongegevens van het rapport zijn gewijzigd.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127513816847026997)
,p_name=>'P.VALID_PAGE_ERR'
,p_message_language=>'nl'
,p_message_text=>'Er moet een geldig paginanummer worden opgegeven. Voorbeeld: p?n=1234.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127518008028026998)
,p_name=>'PAGINATION.NEXT'
,p_message_language=>'nl'
,p_message_text=>'Volgende'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127518163513026998)
,p_name=>'PAGINATION.NEXT_SET'
,p_message_language=>'nl'
,p_message_text=>'Volgende set'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127518210504026998)
,p_name=>'PAGINATION.PREVIOUS'
,p_message_language=>'nl'
,p_message_text=>'Vorige'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127518390106026998)
,p_name=>'PAGINATION.PREVIOUS_SET'
,p_message_language=>'nl'
,p_message_text=>'Vorige set'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127628073974027031)
,p_name=>'PAGINATION.SELECT'
,p_message_language=>'nl'
,p_message_text=>'Paginering selecteren'
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127558043067027010)
,p_name=>'PASSWORD'
,p_message_language=>'nl'
,p_message_text=>'Wachtwoord'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127498731858026992)
,p_name=>'PASSWORD_CHANGED'
,p_message_language=>'nl'
,p_message_text=>'Uw wachtwoord voor %0 is gewijzigd.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127486483713026989)
,p_name=>'PASSWORD_COMPLEXITY_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Het wachtwoord voldoet niet aan de complexiteitsregels van deze site.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127485506556026989)
,p_name=>'PASSWORD_DIFFERS_BY_ERR'
,p_message_language=>'nl'
,p_message_text=>'Het nieuwe wachtwoord moet met ten minste %0 tekens verschillen van het oude wachtwoord.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127486111160026989)
,p_name=>'PASSWORD_LIKE_USERNAME_ERR'
,p_message_language=>'nl'
,p_message_text=>'De gebruikersnaam mag geen deel uitmaken van het wachtwoord.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127486336531026989)
,p_name=>'PASSWORD_LIKE_WORDS_ERR'
,p_message_language=>'nl'
,p_message_text=>'Het wachtwoord bevat een verboden eenvoudig woord.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127486210192026989)
,p_name=>'PASSWORD_LIKE_WORKSPACE_NAME_ERR'
,p_message_language=>'nl'
,p_message_text=>'De naam van de werkruimte mag geen deel uitmaken van het wachtwoord.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127485452523026989)
,p_name=>'PASSWORD_MIN_LEN_ERR'
,p_message_language=>'nl'
,p_message_text=>'Het wachtwoord moet ten minste %0 tekens bevatten.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127485646717026989)
,p_name=>'PASSWORD_ONE_ALPHA_ERR'
,p_message_language=>'nl'
,p_message_text=>unistr('Het wachtwoord moet ten minste \00E9\00E9n letter (%0) bevatten.')
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127486068998026989)
,p_name=>'PASSWORD_ONE_LOWER_ERR'
,p_message_language=>'nl'
,p_message_text=>unistr('Het wachtwoord moet ten minste \00E9\00E9n kleine letter bevatten.')
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127485758503026989)
,p_name=>'PASSWORD_ONE_NUMERIC_ERR'
,p_message_language=>'nl'
,p_message_text=>unistr('Het wachtwoord moet ten minste \00E9\00E9n cijfer bevatten (0123456789).')
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127485871273026989)
,p_name=>'PASSWORD_ONE_PUNCTUATION_ERR'
,p_message_language=>'nl'
,p_message_text=>unistr('Het wachtwoord moet ten minste \00E9\00E9n interpunctieteken (%0) bevatten.')
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127485948163026989)
,p_name=>'PASSWORD_ONE_UPPER_ERR'
,p_message_language=>'nl'
,p_message_text=>unistr('Het wachtwoord moet ten minste \00E9\00E9n hoofdletter bevatten.')
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127499216291026993)
,p_name=>'PASSWORD_RESET_NOTIFICATION'
,p_message_language=>'nl'
,p_message_text=>'Melding over opnieuw instellen wachtwoord'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127484352182026988)
,p_name=>'PASSWORD_REUSE_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Het wachtwoord kan niet worden gebruikt, omdat het in de afgelopen %0 dagen is gebruikt.'
,p_version_scn=>2693093
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127481024062026987)
,p_name=>'PCT_GRAPH_ARIA_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Procentuele grafiek'
,p_is_js_message=>true
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127572600364027014)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.PLURAL'
,p_message_language=>'nl'
,p_message_text=>'Items'
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127572709473027014)
,p_name=>'PE.COMPONEN.TYPE.PAGE_ITEM.SINGULAR'
,p_message_language=>'nl'
,p_message_text=>'Item'
,p_version_scn=>2693109
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127546805374027007)
,p_name=>'PERCENT'
,p_message_language=>'nl'
,p_message_text=>'Percentage'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127516107171026998)
,p_name=>'PLEASE_CONTACT_ADMINISTRATOR'
,p_message_language=>'nl'
,p_message_text=>'Neem contact op met de beheerder.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127628270737027031)
,p_name=>'PREVIOUS'
,p_message_language=>'nl'
,p_message_text=>'Vorige'
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127564876019027012)
,p_name=>'PRINT'
,p_message_language=>'nl'
,p_message_text=>'Afdrukken'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127545648348027006)
,p_name=>'PRIVILEGES'
,p_message_language=>'nl'
,p_message_text=>'Rechten'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127514291151026997)
,p_name=>'REGIOIN_REFERENCES'
,p_message_language=>'nl'
,p_message_text=>'Regioreferenties'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127535225246027003)
,p_name=>'REPORT'
,p_message_language=>'nl'
,p_message_text=>'Rapport'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127545552770027006)
,p_name=>'REPORTING_PERIOD'
,p_message_language=>'nl'
,p_message_text=>'Rapportageperiode'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127628483332027031)
,p_name=>'REPORT_LABEL'
,p_message_language=>'nl'
,p_message_text=>'Rapport: %0'
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127546238232027007)
,p_name=>'REPORT_TOTAL'
,p_message_language=>'nl'
,p_message_text=>'Totaal rapport'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127491903651026990)
,p_name=>'RESET'
,p_message_language=>'nl'
,p_message_text=>'Paginering opnieuw instellen'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127520699625026999)
,p_name=>'RESET_PAGINATION'
,p_message_language=>'nl'
,p_message_text=>'Paginering opnieuw instellen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127550718075027008)
,p_name=>'RESET_PASSWORD'
,p_message_language=>'nl'
,p_message_text=>'Wachtwoord opnieuw instellen'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127526539797027001)
,p_name=>'RESTORE'
,p_message_language=>'nl'
,p_message_text=>'Herstellen'
,p_is_js_message=>true
,p_version_scn=>2693099
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127560177982027011)
,p_name=>'RESULTS'
,p_message_language=>'nl'
,p_message_text=>'Resultaten'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127551890086027008)
,p_name=>'RETURN_TO_APPLICATION'
,p_message_language=>'nl'
,p_message_text=>'Terug naar applicatie'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127552252424027008)
,p_name=>'RIGHT'
,p_message_language=>'nl'
,p_message_text=>'Rechts'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127584231881027018)
,p_name=>'ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij %0'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127534878238027003)
,p_name=>'ROW_COUNT'
,p_message_language=>'nl'
,p_message_text=>'Aantal rijen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127424642183026970)
,p_name=>'RW_AO_ASK_ORACLE'
,p_message_language=>'nl'
,p_message_text=>'Oracle vragen'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127424985227026970)
,p_name=>'RW_AO_CLOSE_ASK_ORACLE'
,p_message_language=>'nl'
,p_message_text=>'Oracle vragen sluiten'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127425215710026970)
,p_name=>'RW_AO_NOTIFICATIONS_LIST'
,p_message_language=>'nl'
,p_message_text=>'Lijst met meldingen'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127424891801026970)
,p_name=>'RW_AO_OPEN_ASK_ORACLE'
,p_message_language=>'nl'
,p_message_text=>'Oracle vragen openen'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127425158398026970)
,p_name=>'RW_AO_PRODUCT_MAP'
,p_message_language=>'nl'
,p_message_text=>'Productkaart'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127425082947026970)
,p_name=>'RW_AO_SUGGESTIONS_LIST'
,p_message_language=>'nl'
,p_message_text=>'Lijst met suggesties'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127425923077026970)
,p_name=>'RW_CLEAR'
,p_message_language=>'nl'
,p_message_text=>'Wissen'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127425882116026970)
,p_name=>'RW_CLOSE'
,p_message_language=>'nl'
,p_message_text=>'Sluiten'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127425652527026970)
,p_name=>'RW_FO_VIEW_MORE'
,p_message_language=>'nl'
,p_message_text=>'Meer weergeven'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127426084193026970)
,p_name=>'RW_GO_TO'
,p_message_language=>'nl'
,p_message_text=>'Ga naar'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127425429136026970)
,p_name=>'RW_GP_STEP'
,p_message_language=>'nl'
,p_message_text=>'Stap'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127425512990026970)
,p_name=>'RW_GP_STEP_OF'
,p_message_language=>'nl'
,p_message_text=>'van'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127425397832026970)
,p_name=>'RW_GP_TOGGLE_STEPS'
,p_message_language=>'nl'
,p_message_text=>'Weergave van stappen in-/uitschakelen'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127424450539026970)
,p_name=>'RW_HIDE_PASSWORD'
,p_message_language=>'nl'
,p_message_text=>'Wachtwoord verbergen'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127425778738026970)
,p_name=>'RW_OPEN'
,p_message_language=>'nl'
,p_message_text=>'Openen'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127424298469026969)
,p_name=>'RW_ORACLE'
,p_message_language=>'nl'
,p_message_text=>'Oracle'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127424340928026970)
,p_name=>'RW_SHOW_PASSWORD'
,p_message_language=>'nl'
,p_message_text=>'Wachtwoord tonen'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127426150437026970)
,p_name=>'RW_START'
,p_message_language=>'nl'
,p_message_text=>'Begin'
,p_is_js_message=>true
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127551223606027008)
,p_name=>'SAVE'
,p_message_language=>'nl'
,p_message_text=>'Opslaan'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127547489435027007)
,p_name=>'SAVED_REPORTS.ALTERNATIVE.DEFAULT'
,p_message_language=>'nl'
,p_message_text=>'Alternatief standaardrapport'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127547840743027007)
,p_name=>'SAVED_REPORTS.DESCRIPTION'
,p_message_language=>'nl'
,p_message_text=>'Beschrijving'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127547374075027007)
,p_name=>'SAVED_REPORTS.PRIMARY.DEFAULT'
,p_message_language=>'nl'
,p_message_text=>'Primair standaardrapport'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127548175692027007)
,p_name=>'SC_REPORT_ROWS'
,p_message_language=>'nl'
,p_message_text=>'Er zijn meer dan %0 rijen beschikbaar. Verhoog de rijselector om meer rijen te zien.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127615573974027027)
,p_name=>'SEARCH'
,p_message_language=>'nl'
,p_message_text=>'Zoeken'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127507083106026995)
,p_name=>'SECONDS'
,p_message_language=>'nl'
,p_message_text=>'seconden'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127546900475027007)
,p_name=>'SEE_ATTACHED'
,p_message_language=>'nl'
,p_message_text=>'Zie bijlage'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127607557646027025)
,p_name=>'SELECT_ROW'
,p_message_language=>'nl'
,p_message_text=>'Rij selecteren'
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127546652027027007)
,p_name=>'SET_SCREEN_READER_MODE_OFF'
,p_message_language=>'nl'
,p_message_text=>'Schermlezermodus uitzetten'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127546738548027007)
,p_name=>'SET_SCREEN_READER_MODE_ON'
,p_message_language=>'nl'
,p_message_text=>'Schermlezermodus aanzetten'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127542900657027006)
,p_name=>'SHOW'
,p_message_language=>'nl'
,p_message_text=>'Tonen'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127609310238027026)
,p_name=>'SHOW_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles tonen'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127634195649027033)
,p_name=>'SIGN_IN'
,p_message_language=>'nl'
,p_message_text=>'Aanmelden'
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127585048374027018)
,p_name=>'SIGN_OUT'
,p_message_language=>'nl'
,p_message_text=>'Afmelden'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127535878177027004)
,p_name=>'SINCE_DAYS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0 dagen geleden'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127543481398027006)
,p_name=>'SINCE_DAYS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'%0 dagen na nu'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127535725576027004)
,p_name=>'SINCE_HOURS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0 uur geleden'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127543373448027006)
,p_name=>'SINCE_HOURS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'%0 uur na nu'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127535608498027003)
,p_name=>'SINCE_MINUTES_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0 minuten geleden'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127543254306027006)
,p_name=>'SINCE_MINUTES_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'%0 minuten na nu'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127536080221027004)
,p_name=>'SINCE_MONTHS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0 maanden geleden'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127543629686027006)
,p_name=>'SINCE_MONTHS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'%0 maanden na nu'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127543864329027006)
,p_name=>'SINCE_NOW'
,p_message_language=>'nl'
,p_message_text=>'Nu'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127535588446027003)
,p_name=>'SINCE_SECONDS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0 seconden geleden'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127543136771027006)
,p_name=>'SINCE_SECONDS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'%0 seconden na nu'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127535955392027004)
,p_name=>'SINCE_WEEKS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0 weken geleden'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127543507927027006)
,p_name=>'SINCE_WEEKS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'%0 weken na nu'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127536113303027004)
,p_name=>'SINCE_YEARS_AGO'
,p_message_language=>'nl'
,p_message_text=>'%0 jaar geleden'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127543793533027006)
,p_name=>'SINCE_YEARS_FROM_NOW'
,p_message_language=>'nl'
,p_message_text=>'%0 jaar na nu'
,p_is_js_message=>true
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127529615827027002)
,p_name=>'STANDARD'
,p_message_language=>'nl'
,p_message_text=>'Standaard'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127546505513027007)
,p_name=>'START_DATE'
,p_message_language=>'nl'
,p_message_text=>'Begindatum'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127481754621026987)
,p_name=>'SUBSCRIPTION_CREATED_BY'
,p_message_language=>'nl'
,p_message_text=>'U ontvangt dit e-mailbericht vanwege een abonnement op een interactief rapport dat gemaakt is door %0.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127643346296027036)
,p_name=>'SUBSCRIPTION_REFERENCES'
,p_message_language=>'nl'
,p_message_text=>'Abonnementen'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127592719875027021)
,p_name=>'TAB'
,p_message_language=>'nl'
,p_message_text=>'Tab'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127506966973026995)
,p_name=>'TITLE'
,p_message_language=>'nl'
,p_message_text=>'Titel'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127486671891026989)
,p_name=>'TODAY'
,p_message_language=>'nl'
,p_message_text=>'Vandaag'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127546150588027007)
,p_name=>'TOTAL'
,p_message_language=>'nl'
,p_message_text=>'Totaal'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127487982784026989)
,p_name=>'TO_MANY_COLUMNS_SELECTED'
,p_message_language=>'nl'
,p_message_text=>'U kunt maximaal %0 kolommen selecteren.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127443751467026976)
,p_name=>'TREE.COLLAPSE_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles samenvouwen'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127444344440026976)
,p_name=>'TREE.COLLAPSE_ALL_BELOW'
,p_message_language=>'nl'
,p_message_text=>'Alle onderstaande samenvouwen'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127443369235026975)
,p_name=>'TREE.EXPAND_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles uitvouwen'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127444053623026976)
,p_name=>'TREE.EXPAND_ALL_BELOW'
,p_message_language=>'nl'
,p_message_text=>'Alle onderstaande uitvouwen'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127444582099026976)
,p_name=>'TREE.REPARENT'
,p_message_language=>'nl'
,p_message_text=>'Verplaatsen naar ander bovenliggend item'
,p_is_js_message=>true
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127566614518027013)
,p_name=>'TREES'
,p_message_language=>'nl'
,p_message_text=>'Boomstructuren'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127609410812027026)
,p_name=>'UI.FORM.REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'Vereist'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127530388923027002)
,p_name=>'UNAUTHORIZED'
,p_message_language=>'nl'
,p_message_text=>'Niet geautoriseerd'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127580524120027017)
,p_name=>'UNAVAILABLE'
,p_message_language=>'nl'
,p_message_text=>'Niet beschikbaar'
,p_version_scn=>2693112
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127544283829027006)
,p_name=>'UNKNOWN'
,p_message_language=>'nl'
,p_message_text=>'Onbekend'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127482695658026988)
,p_name=>'UNKNOWN_AUTHENTICATION_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een niet-herkende verificatiefout opgetreden.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127484870448026988)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_HTML'
,p_message_language=>'nl'
,p_message_text=>'Als u deze e-mailberichten niet meer wilt ontvangen, klikt u op <a href="%0">afmelden</a> om uw abonnement te beheren.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127481640444026987)
,p_name=>'UNSUBSCRIBE_SUBSCRIPTION_MSG_TXT'
,p_message_language=>'nl'
,p_message_text=>'Als u deze e-mailberichten niet meer wilt ontvangen, ga dan naar de volgende URL om uw abonnement te beheren:'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127521186867026999)
,p_name=>'UNSUPPORTED_DATA_TYPE'
,p_message_language=>'nl'
,p_message_text=>'niet-ondersteund gegevenssoort'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127508200125026995)
,p_name=>'UPDATE'
,p_message_language=>'nl'
,p_message_text=>'bijwerken'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127506872477026995)
,p_name=>'UPDATED'
,p_message_language=>'nl'
,p_message_text=>'Bijgewerkt'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127450056597026978)
,p_name=>'UPGRADE_IN_PROGRESS'
,p_message_language=>'nl'
,p_message_text=>'Upgrade wordt uitgevoerd.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127450339728026978)
,p_name=>'UPGRADE_IN_PROGRESS_DETAIL'
,p_message_language=>'nl'
,p_message_text=>'Oracle APEX wordt bijgewerkt naar een. nieuwere versie. Dit proces duurt doorgaans tot 3 minuten.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127513604598026997)
,p_name=>'URL_PROHIBITED'
,p_message_language=>'nl'
,p_message_text=>'De gevraagde URL is verboden. Neem contact op met de beheerder.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127534785007027003)
,p_name=>'USER'
,p_message_language=>'nl'
,p_message_text=>'Gebruiker'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127557961004027010)
,p_name=>'USERNAME'
,p_message_language=>'nl'
,p_message_text=>'Gebruikersnaam'
,p_version_scn=>2693105
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127599302553027022)
,p_name=>'USERNAME_TOO_LONG'
,p_message_language=>'nl'
,p_message_text=>'De gebruikersnaam is te lang. De limiet is %0 tekens.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127541864998027005)
,p_name=>'USERS'
,p_message_language=>'nl'
,p_message_text=>'gebruikers'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127598913312027022)
,p_name=>'USER_EXISTS'
,p_message_language=>'nl'
,p_message_text=>'Gebruikersnaam bestaat al.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127612741746027027)
,p_name=>'USER_PROFILE_IMAGE'
,p_message_language=>'nl'
,p_message_text=>'Profielafbeelding voor gebruiker %0'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127474666557026985)
,p_name=>'UTILIZATION_REPORTS.AUTOMATION'
,p_message_language=>'nl'
,p_message_text=>'Automatisering: %0'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127473160611026985)
,p_name=>'UTILIZATION_REPORTS.PAGE'
,p_message_language=>'nl'
,p_message_text=>'Pagina %0 - %1 '
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127476098195026986)
,p_name=>'UTILIZATION_REPORTS.PLUG_NAME'
,p_message_language=>'nl'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127476134039026986)
,p_name=>'UTILIZATION_REPORTS.PROCESS_NAME'
,p_message_language=>'nl'
,p_message_text=>'%0 - %1'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127475023758026985)
,p_name=>'UTILIZATION_REPORTS.SEARCH_CONFIG'
,p_message_language=>'nl'
,p_message_text=>'Zoekconfiguratie: %0'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127474921693026985)
,p_name=>'UTILIZATION_REPORTS.SHARED_DYNAMIC_LOV'
,p_message_language=>'nl'
,p_message_text=>'Gedeelde dynamische waardelijst: %0'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127474762808026985)
,p_name=>'UTILIZATION_REPORTS.TASK_DEFINITION'
,p_message_language=>'nl'
,p_message_text=>'Taakdefinitie: %0'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127473299250026985)
,p_name=>'UTILIZATION_REPORTS.WORKFLOW'
,p_message_language=>'nl'
,p_message_text=>'Werkstroom: %0'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127495374122026991)
,p_name=>'VALID'
,p_message_language=>'nl'
,p_message_text=>'Geldig'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127486925278026989)
,p_name=>'VALIDATIONS'
,p_message_language=>'nl'
,p_message_text=>'Validaties'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127547662706027007)
,p_name=>'VALUE_MUST_BE_SPECIFIED'
,p_message_language=>'nl'
,p_message_text=>'Er moet een waarde worden opgegeven.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127593956079027021)
,p_name=>'VALUE_MUST_BE_SPECIFIED_FOR'
,p_message_language=>'nl'
,p_message_text=>'Er moet een waarde worden opgegeven voor %0.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127516501544026998)
,p_name=>'VERTICAL'
,p_message_language=>'nl'
,p_message_text=>'verticaal'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127508162848026995)
,p_name=>'VIEW'
,p_message_language=>'nl'
,p_message_text=>'weergeven'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127541971675027005)
,p_name=>'VIEWS'
,p_message_language=>'nl'
,p_message_text=>'weergaven'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127548416135027007)
,p_name=>'VIEW_ALL'
,p_message_language=>'nl'
,p_message_text=>'Alles weergeven'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127488366200026989)
,p_name=>'VISUALLY_HIDDEN_LINK'
,p_message_language=>'nl'
,p_message_text=>'Visueel verborgen koppeling'
,p_is_js_message=>true
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127529150309027002)
,p_name=>'WARNING'
,p_message_language=>'nl'
,p_message_text=>'Waarschuwing'
,p_is_js_message=>true
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127507756193026995)
,p_name=>'WEEK'
,p_message_language=>'nl'
,p_message_text=>'week'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127503647360026994)
,p_name=>'WEEKLY'
,p_message_language=>'nl'
,p_message_text=>'Wekelijks'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127507839889026995)
,p_name=>'WEEKS'
,p_message_language=>'nl'
,p_message_text=>'weken'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127547789751027007)
,p_name=>'WELCOME_USER'
,p_message_language=>'nl'
,p_message_text=>'Welkom: %0'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127545973007027007)
,p_name=>'WWV_DBMS_SQL.INVALID_CLOB'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige waarde aangetroffen. Controleer de ingevoerde gegevens.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127546022393027007)
,p_name=>'WWV_DBMS_SQL.INVALID_DATATYPE'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige waarde aangetroffen. Controleer de ingevoerde gegevens.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127483884050026988)
,p_name=>'WWV_DBMS_SQL.INVALID_DATE'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige datumwaarde aangetroffen. Controleer de datumnotatie.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127545818968027007)
,p_name=>'WWV_DBMS_SQL.INVALID_NUMBER'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige getalwaarde aangetroffen. Controleer de getalnotatie.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127494955573026991)
,p_name=>'WWV_DBMS_SQL.INVALID_TIMESTAMP'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige tijdstempelwaarde aangetroffen. Controleer de datumnotatie.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127519414395026999)
,p_name=>'WWV_DBMS_SQL.UNABLE_TO_BIND_ERR'
,p_message_language=>'nl'
,p_message_text=>'Kan "%0" niet binden. Gebruik dubbele aanhalingstekens voor items die uit meerdere bytes bestaan, of controleer of het item 30 bytes of minder is. Gebruik de syntaxis v() om te verwijzen naar items van meer dan 30 bytes.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127509265816026996)
,p_name=>'WWV_FLOW.ACCESS_DENIED'
,p_message_language=>'nl'
,p_message_text=>'Toegang geweigerd door %0 beveiligingscontrole'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127511741690026996)
,p_name=>'WWV_FLOW.APP_NOT_AVAILABLE'
,p_message_language=>'nl'
,p_message_text=>'Applicatie niet beschikbaar'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127510106352026996)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_ERR'
,p_message_language=>'nl'
,p_message_text=>'Applicatie is niet gevonden.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127510220775026996)
,p_name=>'WWV_FLOW.APP_NOT_FOUND_FOOTER_ERR'
,p_message_language=>'nl'
,p_message_text=>'applicatie=%0  werkruimte=%1'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127510638572026996)
,p_name=>'WWV_FLOW.APP_RESTRICTED'
,p_message_language=>'nl'
,p_message_text=>'Toegang tot deze applicatie is beperkt. Probeer het later opnieuw.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127510571904026996)
,p_name=>'WWV_FLOW.APP_RESTRICTED_TO_DEV'
,p_message_language=>'nl'
,p_message_text=>'Toegang tot deze applicatie is beperkt tot applicatieontwikkelaars. Probeer het later opnieuw.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127509719140026996)
,p_name=>'WWV_FLOW.BRANCH_FUNC_RETURNING_URL_ERROR'
,p_message_language=>'nl'
,p_message_text=>'ERR-7744: vertakking naar URL-retournerende functie kan niet worden verwerkt.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127509621178026996)
,p_name=>'WWV_FLOW.BRANCH_TO_FUNCT_RET_PAGE_ERR'
,p_message_language=>'nl'
,p_message_text=>'ERR-7744: vertakking naar pagina-retournerende functie kan niet worden verwerkt.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127509940026026996)
,p_name=>'WWV_FLOW.CALL_TO_SHOW_FROM_PROC_ERR'
,p_message_language=>'nl'
,p_message_text=>'ERR-1430: aanroep voor weergave van paginaproces niet ondersteund: G_FLOW_STEP_ID (%0).'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127511025768026996)
,p_name=>'WWV_FLOW.CLEAR_STEP_CACHE_ERR'
,p_message_language=>'nl'
,p_message_text=>'ERR-1018: fout bij wissen stapcache'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127509442204026996)
,p_name=>'WWV_FLOW.COMP_UNKNOWN_ERR'
,p_message_language=>'nl'
,p_message_text=>'ERR-1005: onbekend berekeningstype.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127510329888026996)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_ERR'
,p_message_language=>'nl'
,p_message_text=>'ERR-1201: sessie-ID niet ingesteld in aangepaste verificatie'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127510425194026996)
,p_name=>'WWV_FLOW.CUSTOM_AUTH_SESSION_FOOTER_ERR'
,p_message_language=>'nl'
,p_message_text=>'pagina=%0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127510050086026996)
,p_name=>'WWV_FLOW.DET_COMPANY_ERR'
,p_message_language=>'nl'
,p_message_text=>'ERR-7620: werkruimte voor applicatie (%0) kan niet worden bepaald.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127490532620026990)
,p_name=>'WWV_FLOW.EDIT'
,p_message_language=>'nl'
,p_message_text=>'Bewerken'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127509111934026996)
,p_name=>'WWV_FLOW.FIND_ITEM_ERR2'
,p_message_language=>'nl'
,p_message_text=>'ERR-1802: kan item-ID "%0" niet vinden.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127508854006026995)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR'
,p_message_language=>'nl'
,p_message_text=>'ERR-1002: kan geen item-ID vinden voor item "%0" in applicatie "%1".'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127508992201026995)
,p_name=>'WWV_FLOW.FIND_ITEM_ID_ERR2'
,p_message_language=>'nl'
,p_message_text=>'Onverwachte fout: kan itemnaam niet vinden op applicatie- of paginaniveau.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127509394416026996)
,p_name=>'WWV_FLOW.FIRST_PAGE_DATA_ERR'
,p_message_language=>'nl'
,p_message_text=>'U bent al bij de eerste pagina met gegevens.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127525882207027001)
,p_name=>'WWV_FLOW.ITEM_POSTING_VIOLATION'
,p_message_language=>'nl'
,p_message_text=>'Item-ID (%0) is geen item dat op de huidige pagina is gedefinieerd.'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127483474368026988)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.INTERNAL_ONLY'
,p_message_language=>'nl'
,p_message_text=>'Item kan niet worden ingesteld door argumenten door te geven aan de applicatie.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127483747187026988)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.NO_CHECKSUM'
,p_message_language=>'nl'
,p_message_text=>'(Er is geen controletelling opgegeven.)'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127483248075026988)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PRIVATE_BOOKMARK'
,p_message_language=>'nl'
,p_message_text=>'Item kan worden ingesteld indien vergezeld van een "user-level bookmark"-controletelling.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127483130878026988)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.PUBLIC_BOOKMARK'
,p_message_language=>'nl'
,p_message_text=>'Item kan worden ingesteld indien vergezeld van een "application-level bookmark"-controletelling.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127483315049026988)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.SESSION'
,p_message_language=>'nl'
,p_message_text=>'Item kan worden ingesteld indien vergezeld van een "session"-controletelling.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127483084088026988)
,p_name=>'WWV_FLOW.ITEM_PROTECTION.UNPROTECTED'
,p_message_language=>'nl'
,p_message_text=>'Item heeft geen bescherming.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127511153653026996)
,p_name=>'WWV_FLOW.NO_PAGE_HELP'
,p_message_language=>'nl'
,p_message_text=>'Er is geen pagina-help beschikbaar.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127499075700026993)
,p_name=>'WWV_FLOW.NO_PRIV_ON_SCHEMA'
,p_message_language=>'nl'
,p_message_text=>'Werkruimte %0 heeft niet de rechten om te worden ontleed als schema %1.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127509592143026996)
,p_name=>'WWV_FLOW.PAGE_ACCEPT_RECUR_ERR'
,p_message_language=>'nl'
,p_message_text=>'ERR-1010: recursielimiet voor vertakking naar verwerking pagina-acceptatie overschreden. %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127466044248026983)
,p_name=>'WWV_FLOW.PAGE_PATTERN_NOT_RUNNABLE'
,p_message_language=>'nl'
,p_message_text=>'Pagina is niet beschikbaar. U kunt geen paginapatroon uitvoeren.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127483679415026988)
,p_name=>'WWV_FLOW.PAGE_PROTECTION.SHOW_NO_URL_ALLOWED'
,p_message_language=>'nl'
,p_message_text=>'Deze pagina kan niet worden aangeroepen via een URL of met een GET of POST naar de weergaveprocedure; hij moet worden aangeroepen met behulp van het vertakkingstype "Branch to Page".'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127568494615027013)
,p_name=>'WWV_FLOW.SAVE_ROUTINE_NUMERIC_ERR'
,p_message_language=>'nl'
,p_message_text=>'Fout bij poging een niet-numerieke waarde op te slaan in item %0. '
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127500774528026993)
,p_name=>'WWV_FLOW.SCHEMA_NOT_EXISTS'
,p_message_language=>'nl'
,p_message_text=>'Ontleedschema "%0" van de applicatie bestaat niet in de database.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127500869543026993)
,p_name=>'WWV_FLOW.SERVICE_ADMIN_LINK'
,p_message_language=>'nl'
,p_message_text=>'Accounts in de werkruimte INTERNAL kunnen alleen worden gebruikt om toegang te krijgen tot &PRODUCT_NAME. <a href="%0">Administration Services</a>.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127508769207026995)
,p_name=>'WWV_FLOW.SESSION_INFO_ERR'
,p_message_language=>'nl'
,p_message_text=>'ERR-1029: kan sessiegegevens niet opslaan. sessie=%0 item=%1'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127511830210026996)
,p_name=>'WWV_FLOW.UNABLE_TO_STOP_TRACE_ERR'
,p_message_language=>'nl'
,p_message_text=>'Kan tracering niet stoppen: %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127509030791026996)
,p_name=>'WWV_FLOW.UNEXPECTED_ERR'
,p_message_language=>'nl'
,p_message_text=>'Onverwachte fout'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127519842299026999)
,p_name=>'WWV_FLOW.UPDATE_SUB_ERR'
,p_message_language=>'nl'
,p_message_text=>'Fout in update_substitution_cache: %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127511946951026996)
,p_name=>'WWV_FLOW.VIEW_HELP_ERR'
,p_message_language=>'nl'
,p_message_text=>'Applicatie en pagina moeten worden opgegeven om help te bekijken.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127533683165027003)
,p_name=>'WWV_FLOW_AUTOMATION.AUTOMATION_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Automatisering niet gevonden.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127469139367026984)
,p_name=>'WWV_FLOW_AUTOMATION.QUERY_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Fout bij automatische zoekopdracht: %0'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127513036718026997)
,p_name=>'WWV_FLOW_CACHE.PURGE_SESSION'
,p_message_language=>'nl'
,p_message_text=>'%0 sessies opgeschoond'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127454302970026979)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.LANGUAGE_NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'Kan %0 code niet uitvoeren. Deze wordt niet ondersteund door de database of is niet ingeschakeld door de instanceparameter MLE_LANGUAGES.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127451923934026979)
,p_name=>'WWV_FLOW_CODE_EXEC_MLE.MLE_NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'Multi Lingual Engine is niet beschikbaar voor deze databaseversie.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127491157056026990)
,p_name=>'WWV_FLOW_COLLECTION.ARRAY_NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'Applicatieverzamelingsreeks %0 bestaat niet.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127490998147026990)
,p_name=>'WWV_FLOW_COLLECTION.ATTRIBUTE_NUMBER_OUTSIDE_RANGE'
,p_message_language=>'nl'
,p_message_text=>'Het opgegeven onderdeelattribuutnummer, %0, is ongeldig. Het attribuutnummer moet tussen 1 en %1 liggen.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127491450445026990)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_EXISTS'
,p_message_language=>'nl'
,p_message_text=>'Applicatieverzameling bestaat.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127491214399026990)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_NOT_NULL'
,p_message_language=>'nl'
,p_message_text=>'Verzamelingsnaam mag niet NULL zijn.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127491364259026990)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NAME_TOO_LARGE'
,p_message_language=>'nl'
,p_message_text=>'Verzamelingsnaam mag niet langer zijn dan 255 tekens.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127490763548026990)
,p_name=>'WWV_FLOW_COLLECTION.COLLECTION_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Applicatieverzameling %0 bestaat niet.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127491556495026990)
,p_name=>'WWV_FLOW_COLLECTION.CURSOR_NOT_OPEN'
,p_message_language=>'nl'
,p_message_text=>'Cursor is nog niet open.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127490863060026990)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Onderdeelvolgnummer %0 bestaat niet in applicatieverzameling %1.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127491080256026990)
,p_name=>'WWV_FLOW_COLLECTION.MEMBER_SEQUENCE_NUMBER_INVALID'
,p_message_language=>'nl'
,p_message_text=>'Onderdeelvolgnummer %0 bestaat niet in applicatieverzameling "%1".'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127443843569026976)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_ALGORITHM'
,p_message_language=>'nl'
,p_message_text=>'Algoritme %0 wordt niet ondersteund voor ECDSA.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127443598179026975)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_EC_CURVE'
,p_message_language=>'nl'
,p_message_text=>'Elliptische curve %0 wordt niet ondersteund.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127569219785027013)
,p_name=>'WWV_FLOW_CRYPTO.UNSUPPORTED_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'De cryptografische functie ''%0"wordt niet ondersteund op dit systeem.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127621568093027029)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_ACCESSIBLE'
,p_message_language=>'nl'
,p_message_text=>'Toegankelijkheid getest'
,p_version_scn=>2693119
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127512528772026997)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CLOSE'
,p_message_language=>'nl'
,p_message_text=>'Sluiten'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127512636645026997)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_CUST_OPT'
,p_message_language=>'nl'
,p_message_text=>'Pagina-aanpassingsopties'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127512706520026997)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DEFAULT'
,p_message_language=>'nl'
,p_message_text=>'Standaard'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127512852602026997)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_DISP'
,p_message_language=>'nl'
,p_message_text=>'Weergegeven'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127512994963026997)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_HIDDEN'
,p_message_language=>'nl'
,p_message_text=>'Verborgen'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127512364672026996)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE1'
,p_message_language=>'nl'
,p_message_text=>'Schakel de regio''s in die u op deze pagina wilt weergeven. Ingeschakelde regio''s worden mogelijk niet weergegeven als u zich niet in de juiste applicatiecontext bevindt of als u niet de juiste rechten hebt.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127512417163026997)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE2'
,p_message_language=>'nl'
,p_message_text=>'Deze pagina kan niet worden aangepast.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127621830096027029)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_MESSAGE3'
,p_message_language=>'nl'
,p_message_text=>'U kunt het uiterlijk van deze applicatie aanpassen door de themastijl te wijzigen. Selecteer een themastijl in de onderstaande lijst en klik op ''Wijzigingen toepassen''.'
,p_version_scn=>2693119
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127622620811027030)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REGION_DISP'
,p_message_language=>'nl'
,p_message_text=>'Regioweergave'
,p_version_scn=>2693120
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127621726439027029)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_REMOVE_STYLE'
,p_message_language=>'nl'
,p_message_text=>'Standaardstijl van applicatie gebruiken'
,p_version_scn=>2693119
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127621631439027029)
,p_name=>'WWV_FLOW_CUSTOMIZE.T_THEME_STYLE'
,p_message_language=>'nl'
,p_message_text=>'Vormgeving '
,p_version_scn=>2693119
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127565832331027012)
,p_name=>'WWV_FLOW_DATA_EXPORT.AGG_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'De kolomindex waarnaar wordt verwezen in aggregatie %0 bestaat niet.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127458507741026980)
,p_name=>'WWV_FLOW_DATA_EXPORT.APPEND_NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'Het bijvoegen van de gegevensexport wordt niet ondersteund voor de indeling %0.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127421552540026969)
,p_name=>'WWV_FLOW_DATA_EXPORT.CLOB_NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'CLOB-uitvoer wordt niet ondersteund voor de uitvoerindeling %0.'
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127565578534027012)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_BREAK_MUST_BE_IN_THE_BEGGINING'
,p_message_language=>'nl'
,p_message_text=>'Het kolomeinde moet aan het begin van de kolommenreeks staan.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127565685480027012)
,p_name=>'WWV_FLOW_DATA_EXPORT.COLUMN_GROUP_IDX_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'De kolomgroepindex waarnaar in %0 wordt verwezen bestaat niet.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127472781062026985)
,p_name=>'WWV_FLOW_DATA_EXPORT.EXPORT'
,p_message_language=>'nl'
,p_message_text=>'exporteren'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127479943296026987)
,p_name=>'WWV_FLOW_DATA_EXPORT.FORMAT_MUST_BE_XML'
,p_message_language=>'nl'
,p_message_text=>'De uitvoerindeling moet XML zijn, en ORDS moet worden gebruikt als afdrukserver.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127565945493027012)
,p_name=>'WWV_FLOW_DATA_EXPORT.HIGHLIGHT_COLUMN_IDX_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'De kolomindex waarnaar wordt verwezen in markering %0 bestaat niet.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127469365572026984)
,p_name=>'WWV_FLOW_DATA_EXPORT.INVALID_FORMAT'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige exportindeling: %0'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127565739336027012)
,p_name=>'WWV_FLOW_DATA_EXPORT.PARENT_GROUP_IDX_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'De bovenliggende groepindex waarnaar in %0 wordt verwezen bestaat niet.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127590900618027020)
,p_name=>'WWV_FLOW_DATA_LOADER.CANNOT_LOAD_INTO_GENERATED_ALWAYS_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Kolom %1 van tabel %0 is een ID-kolom die altijd wordt gegenereerd ("GENERATED ALWAYS"). Zorg ervoor dat er geen bronkolom wordt afgestemd op kolom %1 in het dialoogvenster ''Configureren''.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127502500686026994)
,p_name=>'WWV_FLOW_DATA_LOADER.COMMIT_INTERVAL_TOO_LOW'
,p_message_language=>'nl'
,p_message_text=>'Het opgegeven vastleginterval is te klein.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127502670536026994)
,p_name=>'WWV_FLOW_DATA_LOADER.NO_COLUMNS_PROVIDED'
,p_message_language=>'nl'
,p_message_text=>'Er zijn geen kolommen opgegeven voor het laden van gegevens.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127503963067026994)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_COLUMNS_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Geen kolommen gevonden voor rijselector "%0". Probeer automatisch te detecteren of controleer de JSON-structuur.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127513326566026997)
,p_name=>'WWV_FLOW_DATA_PARSER.NO_WORKSHEETS_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Geen werkbladen gevonden in XLSX-bestand'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127458439533026980)
,p_name=>'WWV_FLOW_DATA_PARSER.REQUESTED_HIERARCHY_LEVELS_EXCEED_MAXIMUM'
,p_message_language=>'nl'
,p_message_text=>unistr('Aangevraagde aantal hi\00EBrarchieniveaus voor het verkennen van (%0) overschrijdt het maximumaantal van %1.')
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127513298839026997)
,p_name=>'WWV_FLOW_DATA_PARSER.WORKSHEET_DOES_NOT_EXIST'
,p_message_language=>'nl'
,p_message_text=>'Het opgegeven werkblad bevindt zich niet in het XLSX-bestand.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127491641168026990)
,p_name=>'WWV_FLOW_DML.VERSION_OF_DATA_CHANGED'
,p_message_language=>'nl'
,p_message_text=>'De huidige versie van de gegevens in de database is gewijzigd nadat de gebruiker het updateproces heeft gestart.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127494584204026991)
,p_name=>'WWV_FLOW_EDIT_REPORT.ERR_UPDATING_COLS'
,p_message_language=>'nl'
,p_message_text=>'Fout bij bijwerken van kolommen: %0'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127605099974027024)
,p_name=>'WWV_FLOW_EXEC.CANNOT_CONVERT_TO_SDOGEOMETRY'
,p_message_language=>'nl'
,p_message_text=>'%0 kan niet worden geconverteerd naar SDO_GEOMETRY.'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127541553047027005)
,p_name=>'WWV_FLOW_EXEC.CAN_NOT_CONVERT_TO_VARCHAR2'
,p_message_language=>'nl'
,p_message_text=>'Kolom %0 met gegevenssoort %1 kan niet worden geconverteerd naar VARCHAR2.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127548903093027007)
,p_name=>'WWV_FLOW_EXEC.COLUMN_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Kolom "%0" die is opgegeven voor attribuut "%1" is niet gevonden in de gegevensbron.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127485038581026988)
,p_name=>'WWV_FLOW_EXEC.FILTER_NOT_SUPPORTED_WITH_MULTIPLE_VALUES'
,p_message_language=>'nl'
,p_message_text=>'Filtertype %0 wordt niet ondersteund voor kolommen met meerder waarden.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127608542809027025)
,p_name=>'WWV_FLOW_EXEC.INVALID_BETWEEN_FILTER'
,p_message_language=>'nl'
,p_message_text=>'Ongeldig "tussen"-filter.'
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127464174887026982)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_DATATYPE'
,p_message_language=>'nl'
,p_message_text=>'Geen %2 waarde gevonden in kolom %0, rij #%1.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127460815876026981)
,p_name=>'WWV_FLOW_EXEC.INVALID_COLUMN_OR_ROW_REFERENCE'
,p_message_language=>'nl'
,p_message_text=>'Kolom %0 van rij #%1 bestaat niet.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127447462220026977)
,p_name=>'WWV_FLOW_EXEC.INVALID_LOV_SPECIFICATION'
,p_message_language=>'nl'
,p_message_text=>'Ongeldig waardelijsttype opgegeven'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127447316829026977)
,p_name=>'WWV_FLOW_EXEC.INVALID_QUERY_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Ongeldig querytype. Het querytype moet Tabel, SQL-query of een PL/SQL-functie die een SQL-query retourneert zijn.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127541668521027005)
,p_name=>'WWV_FLOW_EXEC.INVALID_SQL_QUERY'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Ontleden van SQL-query is mislukt.',
'%0'))
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127549005980027007)
,p_name=>'WWV_FLOW_EXEC.LEGACY_COLUMN_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'De opgegeven kolompositie %0 voor attribuut "%1" is niet gevonden in het SQL-statement.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127439072023026974)
,p_name=>'WWV_FLOW_EXEC.MULTI_VALUE_TOO_MANY_ITEMS'
,p_message_language=>'nl'
,p_message_text=>'Te veel items gebruikt in meerwaardig filter.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127548807825027007)
,p_name=>'WWV_FLOW_EXEC.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'nl'
,p_message_text=>'Er is geen kolom opgegeven voor attribuut "%0".'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127447219599026977)
,p_name=>'WWV_FLOW_EXEC.NULL_QUERY_RETURNED_BY_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'Hoofdtekst PL/SQL-functie heeft geen waarde geretourneerd.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127564638879027012)
,p_name=>'WWV_FLOW_EXEC.OPERATION_NOT_PRESENT_IN_WEB_SRC_MODULE'
,p_message_language=>'nl'
,p_message_text=>'De REST-gegevensbron bevat geen bewerking voor het afhandelen van de gevraagde DML-actie.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127606326952027025)
,p_name=>'WWV_FLOW_EXEC.RANGE_BUCKET.NOT.SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'Bereikfilters worden alleen ondersteund voor gegevenstypen NUMBER, DATE of TIMESTAMP.'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127427221174026970)
,p_name=>'WWV_FLOW_EXEC.REST_REQUEST_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Aanvraag is mislukt met %0.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127430766827026972)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_JSON_NOT_AVAILABLE'
,p_message_language=>'nl'
,p_message_text=>'Conversie van GeoJSON naar SDO_GEOMETRY (kolom %0) is niet beschikbaar in deze database.'
,p_version_scn=>2693083
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127434115723026973)
,p_name=>'WWV_FLOW_EXEC.SPATIAL_NOT_SUPPORTED_FOR_XML'
,p_message_language=>'nl'
,p_message_text=>'SDO_GEOMETRY-conversie (column %0) wordt niet ondersteund voor XML-gegevensbronnen.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127458244535026980)
,p_name=>'WWV_FLOW_EXEC.UNSUPPPORTED_MULTI_VALUE_SEPARATOR'
,p_message_language=>'nl'
,p_message_text=>'Het teken %0 wordt niet ondersteund als scheidingsteken voor meerdere waarden.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127606456317027025)
,p_name=>'WWV_FLOW_EXEC.WRONG_CONTEXT_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Deze functie kan niet worden gebruikt in een querycontext.'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127434242895026973)
,p_name=>'WWV_FLOW_EXEC_API.INVALID_DATA_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Niet-overeenkomend kolomgegevenssoort'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127467734826026983)
,p_name=>'WWV_FLOW_EXEC_DOC_SRC.REMOTE_MULTI_ROW_DML_NOT_SUPPORTED_WITHOUT_JSON_BINDS'
,p_message_language=>'nl'
,p_message_text=>'Deze gegevensbron ondersteunt het wijzigen van meerdere rijen niet.'
,p_version_scn=>2693090
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127447168203026977)
,p_name=>'WWV_FLOW_EXEC_REMOTE.ORDS_OUT_BIND_LIMIT_EXCEEDED'
,p_message_language=>'nl'
,p_message_text=>'Interne ORDS OUT bindlimieten overschreden. Verminder het aantal DML-rijen.'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127549866071027008)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RESPONSE_PARSING_ERROR'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'De JSON-respons van de externe server kan niet worden ontleed: ',
'%0'))
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127447024578026977)
,p_name=>'WWV_FLOW_EXEC_REMOTE.RUN_PLSQL_ERR'
,p_message_language=>'nl'
,p_message_text=>'Onbekend of onjuist contexttype'
,p_version_scn=>2693086
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127471164028026984)
,p_name=>'WWV_FLOW_EXPORT_INT.UNSUPPORTED_READABLE_EXPORT'
,p_message_language=>'nl'
,p_message_text=>'Niet-ondersteunde componenten voor leesbare export: %0.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127569134009027013)
,p_name=>'WWV_FLOW_FILE_PARSER.UNKNOWN_FILE_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Dit bestandstype wordt niet ondersteund door de parser.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127519985835026999)
,p_name=>'WWV_FLOW_FND_DEVELOPER_API.CREDENTIALS_ERR'
,p_message_language=>'nl'
,p_message_text=>'Niet-geautoriseerde toegang (wwv_flow_api.set_credentials niet ingesteld).'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127494801510026991)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_COMPANY'
,p_message_language=>'nl'
,p_message_text=>'Werkruimte is niet gemaakt, omdat deze al bestaat.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127494716078026991)
,p_name=>'WWV_FLOW_FND_USER_API.CREATE_USER_GROUP'
,p_message_language=>'nl'
,p_message_text=>'Gebruikersgroep is niet gemaakt, omdat deze al bestaat.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127506138202026995)
,p_name=>'WWV_FLOW_FND_USER_API.DUP_USER'
,p_message_language=>'nl'
,p_message_text=>'Er is een dubbele gebruikersnaam gevonden voor %0.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127506264199026995)
,p_name=>'WWV_FLOW_FND_USER_API.LOAD_ERR'
,p_message_language=>'nl'
,p_message_text=>'Fout bij laden van gebruikers. Mislukt bij gebruiker %0.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127517030375026998)
,p_name=>'WWV_FLOW_FND_USER_API.T_MESSAGE'
,p_message_language=>'nl'
,p_message_text=>'Zou %0 gebruikers hebben geladen.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127516844894026998)
,p_name=>'WWV_FLOW_FND_USER_API.T_PASSWORD'
,p_message_language=>'nl'
,p_message_text=>'Wachtwoord'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127516981287026998)
,p_name=>'WWV_FLOW_FND_USER_API.T_PRIVILEGE'
,p_message_language=>'nl'
,p_message_text=>'Rechten'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127516684712026998)
,p_name=>'WWV_FLOW_FND_USER_API.T_USERNAME'
,p_message_language=>'nl'
,p_message_text=>'Gebruikersnaam'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127597059176027022)
,p_name=>'WWV_FLOW_FORM.UNHANDLED_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Er is een fout opgetreden bij het weergeven van pagina-item #COMPONENT_NAME#.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127512067934026996)
,p_name=>'WWV_FLOW_FORMS.FORM_NOT_OPEN_ERR'
,p_message_language=>'nl'
,p_message_text=>'Kan pagina-item niet weergeven, omdat het HTML-scherm nog niet was geopend.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127470411558026984)
,p_name=>'WWV_FLOW_FORMS.ITEM_DEFAULT_ERR'
,p_message_language=>'nl'
,p_message_text=>'Fout bij berekenen van standaardwaarde item voor pagina-item #COMPONENT_NAME#'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127511382297026996)
,p_name=>'WWV_FLOW_FORMS.ITEM_POST_CALC_ERR'
,p_message_language=>'nl'
,p_message_text=>'Fout in naberekening van item voor pagina-item #COMPONENT_NAME#'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127511228720026996)
,p_name=>'WWV_FLOW_FORMS.ITEM_SOURCE_ERR'
,p_message_language=>'nl'
,p_message_text=>'Fout bij berekenen van itembronwaarde voor pagina-item #COMPONENT_NAME#'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127488056785026989)
,p_name=>'WWV_FLOW_HELP.UNAUTHORIZED'
,p_message_language=>'nl'
,p_message_text=>'Niet-geautoriseerde toegang'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127437570295026974)
,p_name=>'WWV_FLOW_INTERACTIVE_GRID.INVALID_JSON_ARRAY'
,p_message_language=>'nl'
,p_message_text=>'De waarde %0 van %1 is geen geldige JSON-reeks.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127511528666026996)
,p_name=>'WWV_FLOW_ITEM.JS_NOT_SUPPORTED'
,p_message_language=>'nl'
,p_message_text=>'JavaScript wordt niet ondersteund.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127511608826026996)
,p_name=>'WWV_FLOW_ITEM.LIST'
,p_message_language=>'nl'
,p_message_text=>'Weergeven'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127512280296026996)
,p_name=>'WWV_FLOW_ITEM.UNABLE_INIT_QUERY'
,p_message_language=>'nl'
,p_message_text=>unistr('De query kan niet worden ge\00EFnitialiseerd.')
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127520258140026999)
,p_name=>'WWV_FLOW_ITEM.UPDATE_NOT_SUPPORTED_ERR'
,p_message_language=>'nl'
,p_message_text=>'Bijwerken van %0 wordt niet ondersteund.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127513751788026997)
,p_name=>'WWV_FLOW_ITEM_HELP.INVALID_ITEM_ERR'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige item-ID: %0 '
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127541489244027005)
,p_name=>'WWV_FLOW_ITEM_HELP.NO_HELP_EXISTS'
,p_message_language=>'nl'
,p_message_text=>'Voor dit item is geen helptekst beschikbaar.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127503217841026994)
,p_name=>'WWV_FLOW_JET_CHART.QUERY_GENERATION_FAILED'
,p_message_language=>'nl'
,p_message_text=>'Genereren van grafiekquery is mislukt. Controleer de instellingen voor het afstemmen van bron en kolommen.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127504528973026994)
,p_name=>'WWV_FLOW_MAIL.ADD_ATTACHMENT.INVALID_MAIL_ID'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige waarde voor parameter p_mail_id: %0'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127541258927027005)
,p_name=>'WWV_FLOW_MAIL.CANNOT_USE_TO_OR_REPLYTO_AS_FROM'
,p_message_language=>'nl'
,p_message_text=>'Het adres bij "Aan" of "Beantwoorden" kan niet worden gebruikt als adres bij "Van" omdat deze velden meerdere e-mailadressen bevatten.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127626194849027031)
,p_name=>'WWV_FLOW_MAIL.EMAIL_LIMIT_EXCEEDED'
,p_message_language=>'nl'
,p_message_text=>'Het maximum aantal e-mailberichten per werkruimte is overschreden. Neem contact op met de beheerder.'
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127482752521026988)
,p_name=>'WWV_FLOW_MAIL.INVALID_CONTEXT'
,p_message_language=>'nl'
,p_message_text=>'Deze procedure moet worden aangeroepen vanuit een applicatiesessie.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127504440153026994)
,p_name=>'WWV_FLOW_MAIL.PARAMETER_NULL'
,p_message_language=>'nl'
,p_message_text=>'Er is een NULL-waarde opgegeven voor de parameter %0.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127562517227027011)
,p_name=>'WWV_FLOW_MAIL.PREPARE_TEMPLATE.NO_DATA_FOUND'
,p_message_language=>'nl'
,p_message_text=>'E-mailsjabloon"%0" niet gevonden in applicatie %1.'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127639003312027034)
,p_name=>'WWV_FLOW_MAIL.SMTP_HOST_ADDRESS_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'De instanceparameter SMTP_HOST_ADDRESS moet zijn ingesteld om e-mailberichten te kunnen versturen.'
,p_version_scn=>2693123
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127503891848026994)
,p_name=>'WWV_FLOW_MAIL.TO_IS_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'U moet een ontvanger voor het bericht opgeven om e-mail te verzenden.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127628505421027031)
,p_name=>'WWV_FLOW_MAIL.UNABLE_TO_OPEN_SMTP_CONNECTION'
,p_message_language=>'nl'
,p_message_text=>'Kan geen SMTP-verbinding tot stand brengen met de geconfigureerde e-mailserver.'
,p_version_scn=>2693121
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127603831776027024)
,p_name=>'WWV_FLOW_PLUGIN.INVALID_AJAX_CALL'
,p_message_language=>'nl'
,p_message_text=>'Ongeldige Ajax-aanroep'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127487738441026989)
,p_name=>'WWV_FLOW_PLUGIN.NO_AJAX_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'Er is geen Ajax-functie gedefinieerd voor de plug-in %0.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127594340335027021)
,p_name=>'WWV_FLOW_PLUGIN.NO_EXECUTION_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'Er is geen uitvoeringsfunctie gedefinieerd voor de plug-in %0.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127487811532026989)
,p_name=>'WWV_FLOW_PLUGIN.NO_RENDER_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'Er is geen weergavefunctie gedefinieerd voor de plug-in %0.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127604726020027024)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_CAPABILITIES_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'De REST-gegevensbronplug-in "%0" bevat geen "Capabilities"-functie.'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127604655590027024)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_DML_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'De REST-gegevensbronplug-in "%0" bevat geen DML-functie.'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127604839067027024)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_EXECUTE_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'De REST-gegevensbronplug-in "%0" bevat geen uitvoeringsfunctie.'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127604994761027024)
,p_name=>'WWV_FLOW_PLUGIN.NO_WSM_FETCH_FUNCTION'
,p_message_language=>'nl'
,p_message_text=>'De REST-gegevensbronplug-in "%0" bevat geen ophaalfunctie.'
,p_version_scn=>2693115
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127485255980026989)
,p_name=>'WWV_FLOW_PLUGIN.RUN_PLSQL_ERR'
,p_message_language=>'nl'
,p_message_text=>'Fout in PLSQL-code opgetreden tijdens verwerking plug-in.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127493864683026991)
,p_name=>'WWV_FLOW_PLUGIN_DEV.IS_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'Er moet een waarde worden opgegeven.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127526807367027001)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.CANT_CONVERT_TO_VARCHAR2'
,p_message_language=>'nl'
,p_message_text=>'Gegevenssoort %0 kan niet worden geconverteerd naar VARCHAR2.'
,p_version_scn=>2693101
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127615025850027027)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.COLUMN_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'Kolom "%0" die is opgegeven voor attribuut "%1" is niet gevonden in het SQL-statement.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127442324413026975)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.INVALID_JSON_ARRAY'
,p_message_language=>'nl'
,p_message_text=>'De waarde %0 van %1 is geen geldige JSON-reeks.'
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127592216846027020)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_REQUIRED'
,p_message_language=>'nl'
,p_message_text=>'Er moet een waardelijstquery of benoemde waardelijst worden opgegeven voor %0.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127593838305027021)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.LOV_SQL_WRONG_COLUMN_COUNT'
,p_message_language=>'nl'
,p_message_text=>'Onjuist aantal kolommen geselecteerd in de waardelijst-SQL-query voor %0. Zie voorbeelden voor geldige statements.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127614821712027027)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NO_COLUMN_FOR_ATTRIBUTE'
,p_message_language=>'nl'
,p_message_text=>'Er is geen kolom opgegeven voor attribuut "%0".'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127644072486027036)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.NUMBER_ATTRIBUTE_VALUE_INVALID'
,p_message_language=>'nl'
,p_message_text=>'Ingevoerde waarde %0 voor attribuut "%1" is niet numeriek.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127597365518027022)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.SQL_WRONG_DATA_TYPE'
,p_message_language=>'nl'
,p_message_text=>'%0 heeft een onjuist gegevenssoort in het SQL-statement. Kolomnummer %1 is %2, maar %3 wordt verwacht.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127614901745027027)
,p_name=>'WWV_FLOW_PLUGIN_UTIL.WRONG_COLUMN_DATA_TYPE'
,p_message_language=>'nl'
,p_message_text=>'Kolom "%0" die is opgegeven voor attribuut "%1" heeft het gegevenssoort %2, maar dit zou %3 moeten zijn.'
,p_version_scn=>2693118
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127484447578026988)
,p_name=>'WWV_FLOW_PRINT_UTIL.REPORT_LAYOUT_NOT_FOUND'
,p_message_language=>'nl'
,p_message_text=>'De rapportlay-out is niet gevonden.'
,p_version_scn=>2693093
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127472001265026985)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTIONS_LIMIT_EXCEEDED'
,p_message_language=>'nl'
,p_message_text=>'Limiet voor aantal uitvoeringen op achtergrond overschreden voor %0.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127422331084026969)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING'
,p_message_language=>'nl'
,p_message_text=>'Er wordt al een andere uitvoering van %0 uitgevoerd.'
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127422208511026969)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.EXECUTION_ALREADY_RUNNING_CTX'
,p_message_language=>'nl'
,p_message_text=>'Er wordt al een andere uitvoering van %0 uitgevoerd voor context %1.'
,p_version_scn=>2693081
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127437254238026974)
,p_name=>'WWV_FLOW_PROCESS_BACKGROUND.FILES_NOT_VISIBLE_IN_WORKING_SESSION'
,p_message_language=>'nl'
,p_message_text=>unistr('De ge\00FCploade bestanden zijn niet zichtbaar in de werksessie voor de uitvoering van %0.')
,p_version_scn=>2693084
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127549795029027008)
,p_name=>'WWV_FLOW_RENDER_REPORT3.COMPUTE_SUM_NOT_SUPPORTED_FOR_WEB_SOURCES'
,p_message_language=>'nl'
,p_message_text=>'De functie ''Som berekenen'' kan niet worden gebruikt voor rapporten op basis van een REST-gegevensbron.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127511444524026996)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNABLE_SET_SHORT_VAL_ERR'
,p_message_language=>'nl'
,p_message_text=>'ERR-2904: waarde snelkoppeling kan niet worden ingesteld.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127516402574026998)
,p_name=>'WWV_FLOW_RENDER_SHORTCUT.UNKNOWN_TYPE_ERR'
,p_message_language=>'nl'
,p_message_text=>'Fout: Onbekend type snelkoppeling:'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127454199540026979)
,p_name=>'WWV_FLOW_SEARCH_API.TEXT_QUERY_TOO_LONG'
,p_message_language=>'nl'
,p_message_text=>'Zoekvraag is te lang.'
,p_version_scn=>2693087
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127505553946026994)
,p_name=>'WWV_FLOW_SECURITY.AUTH_SCHEME_FETCH_ERR'
,p_message_language=>'nl'
,p_message_text=>'Kan authentication_scheme % niet ophalen in applicatie %0.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127513530281026997)
,p_name=>'WWV_FLOW_SECURITY.COMPONENT_FETCH_ERR'
,p_message_language=>'nl'
,p_message_text=>'Component %0 is niet opgehaald.'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127583895249027018)
,p_name=>'WWV_FLOW_SESSION_API.TENANT_ID_EXISTS'
,p_message_language=>'nl'
,p_message_text=>'De tenant-ID bestaat al voor de huidige sessie.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127516766900026998)
,p_name=>'WWV_FLOW_USER_API.T_EMAIL'
,p_message_language=>'nl'
,p_message_text=>'E-mail'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127643593648027036)
,p_name=>'WWV_FLOW_WEB_SERVICES.AUTHENTICATION_FAILED'
,p_message_language=>'nl'
,p_message_text=>'Verificatie is mislukt.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127544109573027006)
,p_name=>'WWV_FLOW_WEB_SERVICES.COOKIE_INVALID'
,p_message_language=>'nl'
,p_message_text=>'Een of meer in apex_util.g_request_cookies ingestelde cookies bevatten een ongeldige waarde.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127526070144027001)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_UDDI_RESPONSE'
,p_message_language=>'nl'
,p_message_text=>'De respons van het UDDI-register was ongeldig.'
,p_version_scn=>2693098
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127485333013026989)
,p_name=>'WWV_FLOW_WEB_SERVICES.INVALID_WSDL'
,p_message_language=>'nl'
,p_message_text=>'De opgegeven URL heeft geen geldig WSDL-document geretourneerd.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127488103726026989)
,p_name=>'WWV_FLOW_WEB_SERVICES.MULTIPLE_SOAP'
,p_message_language=>'nl'
,p_message_text=>unistr('Het WSDL-document bevat meerdere SOAP-bindingen. &PRODUCT_NAME. ondersteunt alleen WSDL''s met \00E9\00E9n SOAP binding. Klik op ''Handmatig webservicereferentie maken'' om door te gaan met het maken van een referentie voor deze service.')
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127563749990027012)
,p_name=>'WWV_FLOW_WEB_SERVICES.NOT_XML'
,p_message_language=>'nl'
,p_message_text=>'De respons van de service was geen XML.'
,p_version_scn=>2693106
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127643498311027036)
,p_name=>'WWV_FLOW_WEB_SERVICES.NO_VALID_OAUTH_TOKEN'
,p_message_language=>'nl'
,p_message_text=>'OAuth-toegangstoken is niet beschikbaar of is verlopen.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127607982645027025)
,p_name=>'WWV_FLOW_WEB_SERVICES.REQUEST_LIMIT_EXCEEDED'
,p_message_language=>'nl'
,p_message_text=>'Het maximum aantal webserviceaanvragen per werkruimte is overschreden. Neem contact op met de beheerder.'
,p_version_scn=>2693117
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127643613666027036)
,p_name=>'WWV_FLOW_WEB_SERVICES.UNSUPPORTED_OAUTH_TOKEN'
,p_message_language=>'nl'
,p_message_text=>'Server heeft gereageerd met een niet-ondersteund type OAuth-token.'
,p_version_scn=>2693125
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127487535925026989)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_NO_SOAP'
,p_message_language=>'nl'
,p_message_text=>'Het WSDL-document bevatte geen binding voor SOAP, die vereist is om de referentie toe te voegen.'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127482931085026988)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_REQUIRES_AUTH'
,p_message_language=>'nl'
,p_message_text=>'Er zijn verificatiereferenties vereist voor deze WSDL. Geef hieronder de gebruikersnaam en het wachtwoord op.'
,p_version_scn=>2693091
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127493951388026991)
,p_name=>'WWV_FLOW_WEB_SERVICES.WSDL_UNHANDLED'
,p_message_language=>'nl'
,p_message_text=>unistr('Het WSDL-document kan niet worden ge\00EFnterpreteerd door de weergave-engine. Klik op ''Handmatig webservicereferentie maken'' om door te gaan met het maken van een referentie voor deze service.')
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127566776071027013)
,p_name=>'WWV_FLOW_WIZARD_API.UPDATE_ERROR'
,p_message_language=>'nl'
,p_message_text=>'Update kan niet worden verwerkt.'
,p_version_scn=>2693108
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127592514175027020)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_DISPLAY_AND_RETURN_COLUMN_EQUAL'
,p_message_language=>'nl'
,p_message_text=>'De retour- en weergavekolom van de waardelijst zijn hetzelfde.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127592464246027020)
,p_name=>'WWV_FLOW_WORKSHEET.LOV_NO_RETURN_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'De waardelijst heeft geen retourkolom.'
,p_version_scn=>2693113
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127520102419026999)
,p_name=>'WWV_RENDER_REPORT3.COLUMN_VALUE_ERR'
,p_message_language=>'nl'
,p_message_text=>'Fout bij ophalen kolomwaarde: %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127545087863027006)
,p_name=>'WWV_RENDER_REPORT3.DATA_TOO_OLD'
,p_message_language=>'nl'
,p_message_text=>'De huidige gegevens in het tabelscherm zijn verouderd; de brongegevens zijn gewijzigd.<br/> Klik <strong><a href="%0">hier</a></strong> om uw wijzigingen te negeren en de gegevens opnieuw te laden vanuit de database.'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127500279326026993)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_PAGINATION'
,p_message_language=>'nl'
,p_message_text=>'Fout bij bepalen pagineringsstring'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127500155652026993)
,p_name=>'WWV_RENDER_REPORT3.ERR_DETERMINE_QUERY_HEADINGS'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'querykopteksten kunnen niet worden bepaald:',
'%0'))
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127500336332026993)
,p_name=>'WWV_RENDER_REPORT3.ERR_REPORT_FOOTER'
,p_message_language=>'nl'
,p_message_text=>'fout bij uitvoeren vervanging rapportvoettekst'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127500418511026993)
,p_name=>'WWV_RENDER_REPORT3.FAILED_PARSING_QUERY'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ontleden SQL-query mislukt:',
'%0',
'%1'))
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127506514354026995)
,p_name=>'WWV_RENDER_REPORT3.FOUND_BUT_NOT_DISPLAYED'
,p_message_language=>'nl'
,p_message_text=>'Minimumrij gevraagd: %0, rijen gevonden maar niet weergegeven: %1'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127502940654026994)
,p_name=>'WWV_RENDER_REPORT3.HTML_USE_COLUMN_ALIAS'
,p_message_language=>'nl'
,p_message_text=>'querykolom #%0 (%1) is ongeldig; kolommen waar HTML wordt gebruikt moeten aliasnamen hebben.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127520003058026999)
,p_name=>'WWV_RENDER_REPORT3.QUERY_HEADING_ERR'
,p_message_language=>'nl'
,p_message_text=>'Fout bij ophalen querykopteksten: %0'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127500538052026993)
,p_name=>'WWV_RENDER_REPORT3.REPORT_ERROR'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'fout rapporteren:',
'%0'))
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127540610797027005)
,p_name=>'WWV_RENDER_REPORT3.SORT_BY_THIS_COLUMN'
,p_message_language=>'nl'
,p_message_text=>'Sorteren op deze kolom'
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127503019246026994)
,p_name=>'WWV_RENDER_REPORT3.SYNTAX_ERROR'
,p_message_language=>'nl'
,p_message_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Query kan niet worden ontleed. Controleer de syntaxis van uw query.',
'(%0)',
'</p>'))
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127545144750027006)
,p_name=>'WWV_RENDER_REPORT3.UNSAVED_DATA'
,p_message_language=>'nl'
,p_message_text=>'Dit scherm bevat niet-opgeslagen wijzigingen. Klik op OK om door te gaan zonder uw wijzigingen op te slaan. '
,p_version_scn=>2693102
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127549668935027008)
,p_name=>'WWV_RENDER_REPORT3.UNSUPPORTED_PAGINATION_SCHEME'
,p_message_language=>'nl'
,p_message_text=>'Het rapportpagineringsschema (%0) wordt niet ondersteund met de gekozen gegevensbron.'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127502802079026994)
,p_name=>'WWV_RENDER_REPORT3.USE_COLUMN_ALIAS'
,p_message_language=>'nl'
,p_message_text=>'querykolom #%0 (%1) is ongeldig, gebruik kolomalias.'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127506607746026995)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z'
,p_message_language=>'nl'
,p_message_text=>'rij(en) %0 - %1 van meer dan %2'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127547193321027007)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_MORE_THAN_Z_2'
,p_message_language=>'nl'
,p_message_text=>'%0 - %1 van meer dan %2'
,p_version_scn=>2693103
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127506421292026995)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z'
,p_message_language=>'nl'
,p_message_text=>'rij(en) %0 - %1 van %2'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127487279573026989)
,p_name=>'WWV_RENDER_REPORT3.X_Y_OF_Z_2'
,p_message_language=>'nl'
,p_message_text=>'%0 - %1 van %2'
,p_version_scn=>2693094
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127500683019026993)
,p_name=>'Y'
,p_message_language=>'nl'
,p_message_text=>'J'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127507929700026995)
,p_name=>'YEAR'
,p_message_language=>'nl'
,p_message_text=>'jaar'
,p_version_scn=>2693096
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127499809282026993)
,p_name=>'YEARS'
,p_message_language=>'nl'
,p_message_text=>'jaar'
,p_version_scn=>2693095
);
wwv_flow_imp_shared.create_message(
 p_id=>wwv_flow_imp.id(127545281011027006)
,p_name=>'YES'
,p_message_language=>'nl'
,p_message_text=>'Ja'
,p_version_scn=>2693102
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
 p_id=>wwv_flow_imp.id(109678305570583962.4494)
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
 p_id=>1.4494
,p_name=>'Berichten'
,p_alias=>'MESSAGES'
,p_step_title=>'Berichten'
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
